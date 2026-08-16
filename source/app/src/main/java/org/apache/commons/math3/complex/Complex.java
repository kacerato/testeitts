package org.apache.commons.math3.complex;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.Precision;

public class Complex implements FieldElement<Complex>, Serializable {
    private static final long serialVersionUID = -6195664516687396620L;
    private final double imaginary;
    private final transient boolean isInfinite;
    private final transient boolean isNaN;
    private final double real;

    public static final Complex f100140I = new Complex(0.0d, 1.0d);
    public static final Complex NaN = new Complex(Double.NaN, Double.NaN);
    public static final Complex INF = new Complex(Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY);
    public static final Complex ONE = new Complex(1.0d, 0.0d);
    public static final Complex ZERO = new Complex(0.0d, 0.0d);

    public Complex(double d10) {
        this(d10, 0.0d);
    }

    public static boolean equalsWithRelativeTolerance(Complex complex, Complex complex2, double d10) {
        return Precision.equalsWithRelativeTolerance(complex.real, complex2.real, d10) && Precision.equalsWithRelativeTolerance(complex.imaginary, complex2.imaginary, d10);
    }

    public static Complex valueOf(double d10, double d11) {
        if (!Double.isNaN(d10) && !Double.isNaN(d11)) {
            return new Complex(d10, d11);
        }
        return NaN;
    }

    public double abs() {
        double abs;
        double sqrt;
        if (this.isNaN) {
            return Double.NaN;
        }
        if (isInfinite()) {
            return Double.POSITIVE_INFINITY;
        }
        if (FastMath.abs(this.real) < FastMath.abs(this.imaginary)) {
            double d10 = this.imaginary;
            if (d10 == 0.0d) {
                return FastMath.abs(this.real);
            }
            double d11 = this.real / d10;
            abs = FastMath.abs(d10);
            sqrt = FastMath.sqrt((d11 * d11) + 1.0d);
        } else {
            double d12 = this.real;
            if (d12 == 0.0d) {
                return FastMath.abs(this.imaginary);
            }
            double d13 = this.imaginary / d12;
            abs = FastMath.abs(d12);
            sqrt = FastMath.sqrt((d13 * d13) + 1.0d);
        }
        return abs * sqrt;
    }

    public Complex acos() {
        if (this.isNaN) {
            return NaN;
        }
        Complex sqrt1z = sqrt1z();
        Complex complex = f100140I;
        return add(sqrt1z.multiply(complex)).log().multiply(complex.negate());
    }

    public Complex asin() {
        if (this.isNaN) {
            return NaN;
        }
        Complex sqrt1z = sqrt1z();
        Complex complex = f100140I;
        return sqrt1z.add(multiply(complex)).log().multiply(complex.negate());
    }

    public Complex atan() {
        if (this.isNaN) {
            return NaN;
        }
        Complex complex = f100140I;
        return add(complex).divide(complex.subtract(this)).log().multiply(complex.divide(createComplex(2.0d, 0.0d)));
    }

    public Complex conjugate() {
        return this.isNaN ? NaN : createComplex(this.real, -this.imaginary);
    }

    public Complex cos() {
        return this.isNaN ? NaN : createComplex(FastMath.cos(this.real) * FastMath.cosh(this.imaginary), (-FastMath.sin(this.real)) * FastMath.sinh(this.imaginary));
    }

    public Complex cosh() {
        return this.isNaN ? NaN : createComplex(FastMath.cosh(this.real) * FastMath.cos(this.imaginary), FastMath.sinh(this.real) * FastMath.sin(this.imaginary));
    }

    public Complex createComplex(double d10, double d11) {
        return new Complex(d10, d11);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Complex)) {
            return false;
        }
        Complex complex = (Complex) obj;
        if (complex.isNaN) {
            return this.isNaN;
        }
        return MathUtils.equals(this.real, complex.real) && MathUtils.equals(this.imaginary, complex.imaginary);
    }

    public Complex exp() {
        if (this.isNaN) {
            return NaN;
        }
        double exp = FastMath.exp(this.real);
        return createComplex(FastMath.cos(this.imaginary) * exp, exp * FastMath.sin(this.imaginary));
    }

    public double getArgument() {
        return FastMath.atan2(getImaginary(), getReal());
    }

    public double getImaginary() {
        return this.imaginary;
    }

    public double getReal() {
        return this.real;
    }

    public int hashCode() {
        if (this.isNaN) {
            return 7;
        }
        return ((MathUtils.hash(this.imaginary) * 17) + MathUtils.hash(this.real)) * 37;
    }

    public boolean isInfinite() {
        return this.isInfinite;
    }

    public boolean isNaN() {
        return this.isNaN;
    }

    public Complex log() {
        return this.isNaN ? NaN : createComplex(FastMath.log(abs()), FastMath.atan2(this.imaginary, this.real));
    }

    public List<Complex> nthRoot(int i10) throws NotPositiveException {
        if (i10 <= 0) {
            throw new NotPositiveException(LocalizedFormats.CANNOT_COMPUTE_NTH_ROOT_FOR_NEGATIVE_N, Integer.valueOf(i10));
        }
        ArrayList arrayList = new ArrayList();
        if (this.isNaN) {
            arrayList.add(NaN);
            return arrayList;
        }
        if (isInfinite()) {
            arrayList.add(INF);
            return arrayList;
        }
        double d10 = i10;
        double pow = FastMath.pow(abs(), 1.0d / d10);
        double argument = getArgument() / d10;
        double d11 = 6.283185307179586d / d10;
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add(createComplex(FastMath.cos(argument) * pow, FastMath.sin(argument) * pow));
            argument += d11;
        }
        return arrayList;
    }

    public Complex pow(Complex complex) throws NullArgumentException {
        MathUtils.checkNotNull(complex);
        return log().multiply(complex).exp();
    }

    public final Object readResolve() {
        return createComplex(this.real, this.imaginary);
    }

    public Complex sin() {
        return this.isNaN ? NaN : createComplex(FastMath.sin(this.real) * FastMath.cosh(this.imaginary), FastMath.cos(this.real) * FastMath.sinh(this.imaginary));
    }

    public Complex sinh() {
        return this.isNaN ? NaN : createComplex(FastMath.sinh(this.real) * FastMath.cos(this.imaginary), FastMath.cosh(this.real) * FastMath.sin(this.imaginary));
    }

    public Complex sqrt() {
        if (this.isNaN) {
            return NaN;
        }
        double d10 = this.real;
        if (d10 == 0.0d && this.imaginary == 0.0d) {
            return createComplex(0.0d, 0.0d);
        }
        double sqrt = FastMath.sqrt((FastMath.abs(d10) + abs()) / 2.0d);
        return this.real >= 0.0d ? createComplex(sqrt, this.imaginary / (2.0d * sqrt)) : createComplex(FastMath.abs(this.imaginary) / (2.0d * sqrt), FastMath.copySign(1.0d, this.imaginary) * sqrt);
    }

    public Complex sqrt1z() {
        return createComplex(1.0d, 0.0d).subtract(multiply(this)).sqrt();
    }

    public Complex tan() {
        if (this.isNaN || Double.isInfinite(this.real)) {
            return NaN;
        }
        double d10 = this.imaginary;
        if (d10 > 20.0d) {
            return createComplex(0.0d, 1.0d);
        }
        if (d10 < -20.0d) {
            return createComplex(0.0d, -1.0d);
        }
        double d11 = this.real * 2.0d;
        double d12 = d10 * 2.0d;
        double cos = FastMath.cos(d11) + FastMath.cosh(d12);
        return createComplex(FastMath.sin(d11) / cos, FastMath.sinh(d12) / cos);
    }

    public Complex tanh() {
        if (this.isNaN || Double.isInfinite(this.imaginary)) {
            return NaN;
        }
        double d10 = this.real;
        if (d10 > 20.0d) {
            return createComplex(1.0d, 0.0d);
        }
        if (d10 < -20.0d) {
            return createComplex(-1.0d, 0.0d);
        }
        double d11 = d10 * 2.0d;
        double d12 = this.imaginary * 2.0d;
        double cosh = FastMath.cosh(d11) + FastMath.cos(d12);
        return createComplex(FastMath.sinh(d11) / cosh, FastMath.sin(d12) / cosh);
    }

    public String toString() {
        return "(" + this.real + ", " + this.imaginary + ")";
    }

    public Complex(double d10, double d11) {
        this.real = d10;
        this.imaginary = d11;
        boolean z10 = true;
        boolean z11 = Double.isNaN(d10) || Double.isNaN(d11);
        this.isNaN = z11;
        if (z11 || (!Double.isInfinite(d10) && !Double.isInfinite(d11))) {
            z10 = false;
        }
        this.isInfinite = z10;
    }

    @Override
    public Complex add(Complex complex) throws NullArgumentException {
        MathUtils.checkNotNull(complex);
        if (!this.isNaN && !complex.isNaN) {
            return createComplex(this.real + complex.getReal(), this.imaginary + complex.getImaginary());
        }
        return NaN;
    }

    @Override
    public Complex divide(Complex complex) throws NullArgumentException {
        MathUtils.checkNotNull(complex);
        if (!this.isNaN && !complex.isNaN) {
            double real = complex.getReal();
            double imaginary = complex.getImaginary();
            if (real == 0.0d && imaginary == 0.0d) {
                return NaN;
            }
            if (complex.isInfinite() && !isInfinite()) {
                return ZERO;
            }
            if (FastMath.abs(real) < FastMath.abs(imaginary)) {
                double d10 = real / imaginary;
                double d11 = (real * d10) + imaginary;
                double d12 = this.real;
                double d13 = this.imaginary;
                return createComplex(((d12 * d10) + d13) / d11, ((d13 * d10) - d12) / d11);
            }
            double d14 = imaginary / real;
            double d15 = (imaginary * d14) + real;
            double d16 = this.imaginary;
            double d17 = this.real;
            return createComplex(((d16 * d14) + d17) / d15, (d16 - (d17 * d14)) / d15);
        }
        return NaN;
    }

    @Override
    public Field<Complex> getField() {
        return ComplexField.getInstance();
    }

    @Override
    public Complex negate() {
        if (this.isNaN) {
            return NaN;
        }
        return createComplex(-this.real, -this.imaginary);
    }

    @Override
    public Complex reciprocal() {
        if (this.isNaN) {
            return NaN;
        }
        double d10 = this.real;
        if (d10 == 0.0d && this.imaginary == 0.0d) {
            return INF;
        }
        if (this.isInfinite) {
            return ZERO;
        }
        if (FastMath.abs(d10) < FastMath.abs(this.imaginary)) {
            double d11 = this.real;
            double d12 = this.imaginary;
            double d13 = d11 / d12;
            double d14 = 1.0d / ((d11 * d13) + d12);
            return createComplex(d13 * d14, -d14);
        }
        double d15 = this.imaginary;
        double d16 = this.real;
        double d17 = d15 / d16;
        double d18 = 1.0d / ((d15 * d17) + d16);
        return createComplex(d18, (-d18) * d17);
    }

    @Override
    public Complex subtract(Complex complex) throws NullArgumentException {
        MathUtils.checkNotNull(complex);
        if (!this.isNaN && !complex.isNaN) {
            return createComplex(this.real - complex.getReal(), this.imaginary - complex.getImaginary());
        }
        return NaN;
    }

    @Override
    public Complex multiply(Complex complex) throws NullArgumentException {
        MathUtils.checkNotNull(complex);
        if (!this.isNaN && !complex.isNaN) {
            if (!Double.isInfinite(this.real) && !Double.isInfinite(this.imaginary) && !Double.isInfinite(complex.real) && !Double.isInfinite(complex.imaginary)) {
                double d10 = this.real;
                double d11 = complex.real;
                double d12 = this.imaginary;
                double d13 = complex.imaginary;
                return createComplex((d10 * d11) - (d12 * d13), (d10 * d13) + (d12 * d11));
            }
            return INF;
        }
        return NaN;
    }

    public Complex pow(double d10) {
        return log().multiply(d10).exp();
    }

    public static Complex valueOf(double d10) {
        if (Double.isNaN(d10)) {
            return NaN;
        }
        return new Complex(d10);
    }

    public static boolean equals(Complex complex, Complex complex2, int i10) {
        return Precision.equals(complex.real, complex2.real, i10) && Precision.equals(complex.imaginary, complex2.imaginary, i10);
    }

    public Complex add(double d10) {
        if (!this.isNaN && !Double.isNaN(d10)) {
            return createComplex(this.real + d10, this.imaginary);
        }
        return NaN;
    }

    public Complex subtract(double d10) {
        if (!this.isNaN && !Double.isNaN(d10)) {
            return createComplex(this.real - d10, this.imaginary);
        }
        return NaN;
    }

    public static boolean equals(Complex complex, Complex complex2) {
        return equals(complex, complex2, 1);
    }

    public static boolean equals(Complex complex, Complex complex2, double d10) {
        return Precision.equals(complex.real, complex2.real, d10) && Precision.equals(complex.imaginary, complex2.imaginary, d10);
    }

    @Override
    public Complex multiply(int i10) {
        if (this.isNaN) {
            return NaN;
        }
        if (!Double.isInfinite(this.real) && !Double.isInfinite(this.imaginary)) {
            double d10 = i10;
            return createComplex(this.real * d10, this.imaginary * d10);
        }
        return INF;
    }

    public Complex divide(double d10) {
        if (this.isNaN || Double.isNaN(d10)) {
            return NaN;
        }
        if (d10 == 0.0d) {
            return NaN;
        }
        if (Double.isInfinite(d10)) {
            return !isInfinite() ? ZERO : NaN;
        }
        return createComplex(this.real / d10, this.imaginary / d10);
    }

    public Complex multiply(double d10) {
        if (!this.isNaN && !Double.isNaN(d10)) {
            if (!Double.isInfinite(this.real) && !Double.isInfinite(this.imaginary) && !Double.isInfinite(d10)) {
                return createComplex(this.real * d10, this.imaginary * d10);
            }
            return INF;
        }
        return NaN;
    }
}
