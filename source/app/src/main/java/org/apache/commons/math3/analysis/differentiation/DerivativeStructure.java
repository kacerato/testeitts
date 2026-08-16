package org.apache.commons.math3.analysis.differentiation;

import java.io.Serializable;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

public class DerivativeStructure implements RealFieldElement<DerivativeStructure>, Serializable {
    private static final long serialVersionUID = 20120730;
    private transient DSCompiler compiler;
    private final double[] data;

    public static class DataTransferObject implements Serializable {
        private static final long serialVersionUID = 20120730;
        private final double[] data;
        private final int order;
        private final int variables;

        public DataTransferObject(int i10, int i11, double[] dArr) {
            this.variables = i10;
            this.order = i11;
            this.data = dArr;
        }

        private Object readResolve() {
            return new DerivativeStructure(this.variables, this.order, this.data);
        }
    }

    private DerivativeStructure(DSCompiler dSCompiler) {
        this.compiler = dSCompiler;
        this.data = new double[dSCompiler.getSize()];
    }

    private Object writeReplace() {
        return new DataTransferObject(this.compiler.getFreeParameters(), this.compiler.getOrder(), this.data);
    }

    public DerivativeStructure compose(double... dArr) throws DimensionMismatchException {
        if (dArr.length != getOrder() + 1) {
            throw new DimensionMismatchException(dArr.length, getOrder() + 1);
        }
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        this.compiler.compose(this.data, 0, dArr, derivativeStructure.data, 0);
        return derivativeStructure;
    }

    public DerivativeStructure createConstant(double d10) {
        return new DerivativeStructure(getFreeParameters(), getOrder(), d10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DerivativeStructure)) {
            return false;
        }
        DerivativeStructure derivativeStructure = (DerivativeStructure) obj;
        return getFreeParameters() == derivativeStructure.getFreeParameters() && getOrder() == derivativeStructure.getOrder() && MathArrays.equals(this.data, derivativeStructure.data);
    }

    public double[] getAllDerivatives() {
        return (double[]) this.data.clone();
    }

    public int getExponent() {
        return FastMath.getExponent(this.data[0]);
    }

    @Override
    public Field<DerivativeStructure> getField() {
        return new Field<DerivativeStructure>() {
            @Override
            public Class<? extends FieldElement<DerivativeStructure>> getRuntimeClass() {
                return DerivativeStructure.class;
            }

            @Override
            public DerivativeStructure getOne() {
                return new DerivativeStructure(DerivativeStructure.this.compiler.getFreeParameters(), DerivativeStructure.this.compiler.getOrder(), 1.0d);
            }

            @Override
            public DerivativeStructure getZero() {
                return new DerivativeStructure(DerivativeStructure.this.compiler.getFreeParameters(), DerivativeStructure.this.compiler.getOrder(), 0.0d);
            }
        };
    }

    public int getFreeParameters() {
        return this.compiler.getFreeParameters();
    }

    public int getOrder() {
        return this.compiler.getOrder();
    }

    public double getPartialDerivative(int... iArr) throws DimensionMismatchException, NumberIsTooLargeException {
        return this.data[this.compiler.getPartialDerivativeIndex(iArr)];
    }

    @Override
    public double getReal() {
        return this.data[0];
    }

    public double getValue() {
        return this.data[0];
    }

    public int hashCode() {
        return (getFreeParameters() * 229) + 227 + (getOrder() * 233) + (MathUtils.hash(this.data) * 239);
    }

    public DerivativeStructure log10() {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        this.compiler.log10(this.data, 0, derivativeStructure.data, 0);
        return derivativeStructure;
    }

    @Override
    public long round() {
        return FastMath.round(this.data[0]);
    }

    public double taylor(double... dArr) throws MathArithmeticException {
        return this.compiler.taylor(this.data, 0, dArr);
    }

    public DerivativeStructure toDegrees() {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        int i10 = 0;
        while (true) {
            double[] dArr = derivativeStructure.data;
            if (i10 >= dArr.length) {
                return derivativeStructure;
            }
            dArr[i10] = FastMath.toDegrees(this.data[i10]);
            i10++;
        }
    }

    public DerivativeStructure toRadians() {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        int i10 = 0;
        while (true) {
            double[] dArr = derivativeStructure.data;
            if (i10 >= dArr.length) {
                return derivativeStructure;
            }
            dArr[i10] = FastMath.toRadians(this.data[i10]);
            i10++;
        }
    }

    @Override
    public DerivativeStructure abs() {
        return Double.doubleToLongBits(this.data[0]) < 0 ? negate() : this;
    }

    @Override
    public DerivativeStructure acos() {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        this.compiler.acos(this.data, 0, derivativeStructure.data, 0);
        return derivativeStructure;
    }

    @Override
    public DerivativeStructure acosh() {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        this.compiler.acosh(this.data, 0, derivativeStructure.data, 0);
        return derivativeStructure;
    }

    @Override
    public DerivativeStructure asin() {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        this.compiler.asin(this.data, 0, derivativeStructure.data, 0);
        return derivativeStructure;
    }

    @Override
    public DerivativeStructure asinh() {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        this.compiler.asinh(this.data, 0, derivativeStructure.data, 0);
        return derivativeStructure;
    }

    @Override
    public DerivativeStructure atan() {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        this.compiler.atan(this.data, 0, derivativeStructure.data, 0);
        return derivativeStructure;
    }

    @Override
    public DerivativeStructure atan2(DerivativeStructure derivativeStructure) throws DimensionMismatchException {
        this.compiler.checkCompatibility(derivativeStructure.compiler);
        DerivativeStructure derivativeStructure2 = new DerivativeStructure(this.compiler);
        this.compiler.atan2(this.data, 0, derivativeStructure.data, 0, derivativeStructure2.data, 0);
        return derivativeStructure2;
    }

    @Override
    public DerivativeStructure atanh() {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        this.compiler.atanh(this.data, 0, derivativeStructure.data, 0);
        return derivativeStructure;
    }

    @Override
    public DerivativeStructure cbrt() {
        return rootN(3);
    }

    @Override
    public DerivativeStructure ceil() {
        return new DerivativeStructure(this.compiler.getFreeParameters(), this.compiler.getOrder(), FastMath.ceil(this.data[0]));
    }

    @Override
    public DerivativeStructure cos() {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        this.compiler.cos(this.data, 0, derivativeStructure.data, 0);
        return derivativeStructure;
    }

    @Override
    public DerivativeStructure cosh() {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        this.compiler.cosh(this.data, 0, derivativeStructure.data, 0);
        return derivativeStructure;
    }

    @Override
    public DerivativeStructure exp() {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        this.compiler.exp(this.data, 0, derivativeStructure.data, 0);
        return derivativeStructure;
    }

    @Override
    public DerivativeStructure expm1() {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        this.compiler.expm1(this.data, 0, derivativeStructure.data, 0);
        return derivativeStructure;
    }

    @Override
    public DerivativeStructure floor() {
        return new DerivativeStructure(this.compiler.getFreeParameters(), this.compiler.getOrder(), FastMath.floor(this.data[0]));
    }

    @Override
    public DerivativeStructure hypot(DerivativeStructure derivativeStructure) throws DimensionMismatchException {
        this.compiler.checkCompatibility(derivativeStructure.compiler);
        if (!Double.isInfinite(this.data[0]) && !Double.isInfinite(derivativeStructure.data[0])) {
            if (!Double.isNaN(this.data[0]) && !Double.isNaN(derivativeStructure.data[0])) {
                int exponent = getExponent();
                int exponent2 = derivativeStructure.getExponent();
                if (exponent > exponent2 + 27) {
                    return abs();
                }
                if (exponent2 > exponent + 27) {
                    return derivativeStructure.abs();
                }
                int i10 = (exponent + exponent2) / 2;
                int i11 = -i10;
                DerivativeStructure scalb = scalb(i11);
                DerivativeStructure scalb2 = derivativeStructure.scalb(i11);
                return scalb.multiply(scalb).add(scalb2.multiply(scalb2)).sqrt().scalb(i10);
            }
            return new DerivativeStructure(this.compiler.getFreeParameters(), this.compiler.getFreeParameters(), Double.NaN);
        }
        return new DerivativeStructure(this.compiler.getFreeParameters(), this.compiler.getFreeParameters(), Double.POSITIVE_INFINITY);
    }

    @Override
    public DerivativeStructure log() {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        this.compiler.log(this.data, 0, derivativeStructure.data, 0);
        return derivativeStructure;
    }

    @Override
    public DerivativeStructure log1p() {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        this.compiler.log1p(this.data, 0, derivativeStructure.data, 0);
        return derivativeStructure;
    }

    @Override
    public DerivativeStructure negate() {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        int i10 = 0;
        while (true) {
            double[] dArr = derivativeStructure.data;
            if (i10 >= dArr.length) {
                return derivativeStructure;
            }
            dArr[i10] = -this.data[i10];
            i10++;
        }
    }

    @Override
    public DerivativeStructure reciprocal() {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        this.compiler.pow(this.data, 0, -1, derivativeStructure.data, 0);
        return derivativeStructure;
    }

    @Override
    public DerivativeStructure rint() {
        return new DerivativeStructure(this.compiler.getFreeParameters(), this.compiler.getOrder(), FastMath.rint(this.data[0]));
    }

    @Override
    public DerivativeStructure rootN(int i10) {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        this.compiler.rootN(this.data, 0, i10, derivativeStructure.data, 0);
        return derivativeStructure;
    }

    @Override
    public DerivativeStructure scalb(int i10) {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        int i11 = 0;
        while (true) {
            double[] dArr = derivativeStructure.data;
            if (i11 >= dArr.length) {
                return derivativeStructure;
            }
            dArr[i11] = FastMath.scalb(this.data[i11], i10);
            i11++;
        }
    }

    @Override
    public DerivativeStructure signum() {
        return new DerivativeStructure(this.compiler.getFreeParameters(), this.compiler.getOrder(), FastMath.signum(this.data[0]));
    }

    @Override
    public DerivativeStructure sin() {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        this.compiler.sin(this.data, 0, derivativeStructure.data, 0);
        return derivativeStructure;
    }

    @Override
    public DerivativeStructure sinh() {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        this.compiler.sinh(this.data, 0, derivativeStructure.data, 0);
        return derivativeStructure;
    }

    @Override
    public DerivativeStructure sqrt() {
        return rootN(2);
    }

    @Override
    public DerivativeStructure tan() {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        this.compiler.tan(this.data, 0, derivativeStructure.data, 0);
        return derivativeStructure;
    }

    @Override
    public DerivativeStructure tanh() {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        this.compiler.tanh(this.data, 0, derivativeStructure.data, 0);
        return derivativeStructure;
    }

    @Override
    public DerivativeStructure add(double d10) {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this);
        double[] dArr = derivativeStructure.data;
        dArr[0] = dArr[0] + d10;
        return derivativeStructure;
    }

    @Override
    public DerivativeStructure copySign(DerivativeStructure derivativeStructure) {
        long doubleToLongBits = Double.doubleToLongBits(this.data[0]);
        long doubleToLongBits2 = Double.doubleToLongBits(derivativeStructure.data[0]);
        return ((doubleToLongBits < 0 || doubleToLongBits2 < 0) && (doubleToLongBits >= 0 || doubleToLongBits2 >= 0)) ? negate() : this;
    }

    @Override
    public DerivativeStructure divide(double d10) {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this);
        int i10 = 0;
        while (true) {
            double[] dArr = derivativeStructure.data;
            if (i10 >= dArr.length) {
                return derivativeStructure;
            }
            dArr[i10] = dArr[i10] / d10;
            i10++;
        }
    }

    @Override
    public DerivativeStructure remainder(double d10) {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this);
        double[] dArr = derivativeStructure.data;
        dArr[0] = FastMath.IEEEremainder(dArr[0], d10);
        return derivativeStructure;
    }

    @Override
    public DerivativeStructure subtract(double d10) {
        return add(-d10);
    }

    public DerivativeStructure(int i10, int i11) throws NumberIsTooLargeException {
        this(DSCompiler.getCompiler(i10, i11));
    }

    public static DerivativeStructure pow(double d10, DerivativeStructure derivativeStructure) {
        DerivativeStructure derivativeStructure2 = new DerivativeStructure(derivativeStructure.compiler);
        derivativeStructure.compiler.pow(d10, derivativeStructure.data, 0, derivativeStructure2.data, 0);
        return derivativeStructure2;
    }

    @Override
    public DerivativeStructure multiply(int i10) {
        return multiply(i10);
    }

    @Override
    public DerivativeStructure subtract(DerivativeStructure derivativeStructure) throws DimensionMismatchException {
        this.compiler.checkCompatibility(derivativeStructure.compiler);
        DerivativeStructure derivativeStructure2 = new DerivativeStructure(this);
        this.compiler.subtract(this.data, 0, derivativeStructure.data, 0, derivativeStructure2.data, 0);
        return derivativeStructure2;
    }

    public DerivativeStructure(int i10, int i11, double d10) throws NumberIsTooLargeException {
        this(i10, i11);
        this.data[0] = d10;
    }

    public static DerivativeStructure atan2(DerivativeStructure derivativeStructure, DerivativeStructure derivativeStructure2) throws DimensionMismatchException {
        return derivativeStructure.atan2(derivativeStructure2);
    }

    @Override
    public DerivativeStructure add(DerivativeStructure derivativeStructure) throws DimensionMismatchException {
        this.compiler.checkCompatibility(derivativeStructure.compiler);
        DerivativeStructure derivativeStructure2 = new DerivativeStructure(this);
        this.compiler.add(this.data, 0, derivativeStructure.data, 0, derivativeStructure2.data, 0);
        return derivativeStructure2;
    }

    @Override
    public DerivativeStructure multiply(double d10) {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this);
        int i10 = 0;
        while (true) {
            double[] dArr = derivativeStructure.data;
            if (i10 >= dArr.length) {
                return derivativeStructure;
            }
            dArr[i10] = dArr[i10] * d10;
            i10++;
        }
    }

    @Override
    public DerivativeStructure remainder(DerivativeStructure derivativeStructure) throws DimensionMismatchException {
        this.compiler.checkCompatibility(derivativeStructure.compiler);
        DerivativeStructure derivativeStructure2 = new DerivativeStructure(this.compiler);
        this.compiler.remainder(this.data, 0, derivativeStructure.data, 0, derivativeStructure2.data, 0);
        return derivativeStructure2;
    }

    @Override
    public DerivativeStructure copySign(double d10) {
        long doubleToLongBits = Double.doubleToLongBits(this.data[0]);
        long doubleToLongBits2 = Double.doubleToLongBits(d10);
        return ((doubleToLongBits < 0 || doubleToLongBits2 < 0) && (doubleToLongBits >= 0 || doubleToLongBits2 >= 0)) ? negate() : this;
    }

    @Override
    public DerivativeStructure divide(DerivativeStructure derivativeStructure) throws DimensionMismatchException {
        this.compiler.checkCompatibility(derivativeStructure.compiler);
        DerivativeStructure derivativeStructure2 = new DerivativeStructure(this.compiler);
        this.compiler.divide(this.data, 0, derivativeStructure.data, 0, derivativeStructure2.data, 0);
        return derivativeStructure2;
    }

    @Override
    public DerivativeStructure pow(double d10) {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        this.compiler.pow(this.data, 0, d10, derivativeStructure.data, 0);
        return derivativeStructure;
    }

    public DerivativeStructure(int i10, int i11, int i12, double d10) throws NumberIsTooLargeException {
        this(i10, i11, d10);
        if (i12 >= i10) {
            throw new NumberIsTooLargeException(Integer.valueOf(i12), Integer.valueOf(i10), false);
        }
        if (i11 > 0) {
            this.data[DSCompiler.getCompiler(i12, i11).getSize()] = 1.0d;
        }
    }

    @Override
    public DerivativeStructure multiply(DerivativeStructure derivativeStructure) throws DimensionMismatchException {
        this.compiler.checkCompatibility(derivativeStructure.compiler);
        DerivativeStructure derivativeStructure2 = new DerivativeStructure(this.compiler);
        this.compiler.multiply(this.data, 0, derivativeStructure.data, 0, derivativeStructure2.data, 0);
        return derivativeStructure2;
    }

    @Override
    public DerivativeStructure pow(int i10) {
        DerivativeStructure derivativeStructure = new DerivativeStructure(this.compiler);
        this.compiler.pow(this.data, 0, i10, derivativeStructure.data, 0);
        return derivativeStructure;
    }

    @Override
    public DerivativeStructure linearCombination(DerivativeStructure[] derivativeStructureArr, DerivativeStructure[] derivativeStructureArr2) throws DimensionMismatchException {
        double[] dArr = new double[derivativeStructureArr.length];
        for (int i10 = 0; i10 < derivativeStructureArr.length; i10++) {
            dArr[i10] = derivativeStructureArr[i10].getValue();
        }
        double[] dArr2 = new double[derivativeStructureArr2.length];
        for (int i11 = 0; i11 < derivativeStructureArr2.length; i11++) {
            dArr2[i11] = derivativeStructureArr2[i11].getValue();
        }
        double linearCombination = MathArrays.linearCombination(dArr, dArr2);
        DerivativeStructure zero = derivativeStructureArr[0].getField().getZero();
        for (int i12 = 0; i12 < derivativeStructureArr.length; i12++) {
            zero = zero.add(derivativeStructureArr[i12].multiply(derivativeStructureArr2[i12]));
        }
        double[] allDerivatives = zero.getAllDerivatives();
        allDerivatives[0] = linearCombination;
        return new DerivativeStructure(zero.getFreeParameters(), zero.getOrder(), allDerivatives);
    }

    public DerivativeStructure(double d10, DerivativeStructure derivativeStructure, double d11, DerivativeStructure derivativeStructure2) throws DimensionMismatchException {
        this(derivativeStructure.compiler);
        this.compiler.checkCompatibility(derivativeStructure2.compiler);
        this.compiler.linearCombination(d10, derivativeStructure.data, 0, d11, derivativeStructure2.data, 0, this.data, 0);
    }

    @Override
    public DerivativeStructure pow(DerivativeStructure derivativeStructure) throws DimensionMismatchException {
        this.compiler.checkCompatibility(derivativeStructure.compiler);
        DerivativeStructure derivativeStructure2 = new DerivativeStructure(this.compiler);
        this.compiler.pow(this.data, 0, derivativeStructure.data, 0, derivativeStructure2.data, 0);
        return derivativeStructure2;
    }

    public DerivativeStructure(double d10, DerivativeStructure derivativeStructure, double d11, DerivativeStructure derivativeStructure2, double d12, DerivativeStructure derivativeStructure3) throws DimensionMismatchException {
        this(derivativeStructure.compiler);
        this.compiler.checkCompatibility(derivativeStructure2.compiler);
        this.compiler.checkCompatibility(derivativeStructure3.compiler);
        this.compiler.linearCombination(d10, derivativeStructure.data, 0, d11, derivativeStructure2.data, 0, d12, derivativeStructure3.data, 0, this.data, 0);
    }

    public static DerivativeStructure hypot(DerivativeStructure derivativeStructure, DerivativeStructure derivativeStructure2) throws DimensionMismatchException {
        return derivativeStructure.hypot(derivativeStructure2);
    }

    public DerivativeStructure(double d10, DerivativeStructure derivativeStructure, double d11, DerivativeStructure derivativeStructure2, double d12, DerivativeStructure derivativeStructure3, double d13, DerivativeStructure derivativeStructure4) throws DimensionMismatchException {
        this(derivativeStructure.compiler);
        this.compiler.checkCompatibility(derivativeStructure2.compiler);
        this.compiler.checkCompatibility(derivativeStructure3.compiler);
        this.compiler.checkCompatibility(derivativeStructure4.compiler);
        this.compiler.linearCombination(d10, derivativeStructure.data, 0, d11, derivativeStructure2.data, 0, d12, derivativeStructure3.data, 0, d13, derivativeStructure4.data, 0, this.data, 0);
    }

    public DerivativeStructure(int i10, int i11, double... dArr) throws DimensionMismatchException, NumberIsTooLargeException {
        this(i10, i11);
        int length = dArr.length;
        double[] dArr2 = this.data;
        if (length == dArr2.length) {
            System.arraycopy(dArr, 0, dArr2, 0, dArr2.length);
            return;
        }
        throw new DimensionMismatchException(dArr.length, this.data.length);
    }

    @Override
    public DerivativeStructure linearCombination(double[] dArr, DerivativeStructure[] derivativeStructureArr) throws DimensionMismatchException {
        double[] dArr2 = new double[derivativeStructureArr.length];
        for (int i10 = 0; i10 < derivativeStructureArr.length; i10++) {
            dArr2[i10] = derivativeStructureArr[i10].getValue();
        }
        double linearCombination = MathArrays.linearCombination(dArr, dArr2);
        DerivativeStructure zero = derivativeStructureArr[0].getField().getZero();
        for (int i11 = 0; i11 < dArr.length; i11++) {
            zero = zero.add(derivativeStructureArr[i11].multiply(dArr[i11]));
        }
        double[] allDerivatives = zero.getAllDerivatives();
        allDerivatives[0] = linearCombination;
        return new DerivativeStructure(zero.getFreeParameters(), zero.getOrder(), allDerivatives);
    }

    private DerivativeStructure(DerivativeStructure derivativeStructure) {
        this.compiler = derivativeStructure.compiler;
        this.data = (double[]) derivativeStructure.data.clone();
    }

    @Override
    public DerivativeStructure linearCombination(DerivativeStructure derivativeStructure, DerivativeStructure derivativeStructure2, DerivativeStructure derivativeStructure3, DerivativeStructure derivativeStructure4) throws DimensionMismatchException {
        double linearCombination = MathArrays.linearCombination(derivativeStructure.getValue(), derivativeStructure2.getValue(), derivativeStructure3.getValue(), derivativeStructure4.getValue());
        double[] allDerivatives = derivativeStructure.multiply(derivativeStructure2).add(derivativeStructure3.multiply(derivativeStructure4)).getAllDerivatives();
        allDerivatives[0] = linearCombination;
        return new DerivativeStructure(getFreeParameters(), getOrder(), allDerivatives);
    }

    @Override
    public DerivativeStructure linearCombination(double d10, DerivativeStructure derivativeStructure, double d11, DerivativeStructure derivativeStructure2) throws DimensionMismatchException {
        double linearCombination = MathArrays.linearCombination(d10, derivativeStructure.getValue(), d11, derivativeStructure2.getValue());
        double[] allDerivatives = derivativeStructure.multiply(d10).add(derivativeStructure2.multiply(d11)).getAllDerivatives();
        allDerivatives[0] = linearCombination;
        return new DerivativeStructure(getFreeParameters(), getOrder(), allDerivatives);
    }

    @Override
    public DerivativeStructure linearCombination(DerivativeStructure derivativeStructure, DerivativeStructure derivativeStructure2, DerivativeStructure derivativeStructure3, DerivativeStructure derivativeStructure4, DerivativeStructure derivativeStructure5, DerivativeStructure derivativeStructure6) throws DimensionMismatchException {
        double linearCombination = MathArrays.linearCombination(derivativeStructure.getValue(), derivativeStructure2.getValue(), derivativeStructure3.getValue(), derivativeStructure4.getValue(), derivativeStructure5.getValue(), derivativeStructure6.getValue());
        double[] allDerivatives = derivativeStructure.multiply(derivativeStructure2).add(derivativeStructure3.multiply(derivativeStructure4)).add(derivativeStructure5.multiply(derivativeStructure6)).getAllDerivatives();
        allDerivatives[0] = linearCombination;
        return new DerivativeStructure(getFreeParameters(), getOrder(), allDerivatives);
    }

    @Override
    public DerivativeStructure linearCombination(double d10, DerivativeStructure derivativeStructure, double d11, DerivativeStructure derivativeStructure2, double d12, DerivativeStructure derivativeStructure3) throws DimensionMismatchException {
        double linearCombination = MathArrays.linearCombination(d10, derivativeStructure.getValue(), d11, derivativeStructure2.getValue(), d12, derivativeStructure3.getValue());
        double[] allDerivatives = derivativeStructure.multiply(d10).add(derivativeStructure2.multiply(d11)).add(derivativeStructure3.multiply(d12)).getAllDerivatives();
        allDerivatives[0] = linearCombination;
        return new DerivativeStructure(getFreeParameters(), getOrder(), allDerivatives);
    }

    @Override
    public DerivativeStructure linearCombination(DerivativeStructure derivativeStructure, DerivativeStructure derivativeStructure2, DerivativeStructure derivativeStructure3, DerivativeStructure derivativeStructure4, DerivativeStructure derivativeStructure5, DerivativeStructure derivativeStructure6, DerivativeStructure derivativeStructure7, DerivativeStructure derivativeStructure8) throws DimensionMismatchException {
        double linearCombination = MathArrays.linearCombination(derivativeStructure.getValue(), derivativeStructure2.getValue(), derivativeStructure3.getValue(), derivativeStructure4.getValue(), derivativeStructure5.getValue(), derivativeStructure6.getValue(), derivativeStructure7.getValue(), derivativeStructure8.getValue());
        double[] allDerivatives = derivativeStructure.multiply(derivativeStructure2).add(derivativeStructure3.multiply(derivativeStructure4)).add(derivativeStructure5.multiply(derivativeStructure6)).add(derivativeStructure7.multiply(derivativeStructure8)).getAllDerivatives();
        allDerivatives[0] = linearCombination;
        return new DerivativeStructure(getFreeParameters(), getOrder(), allDerivatives);
    }

    @Override
    public DerivativeStructure linearCombination(double d10, DerivativeStructure derivativeStructure, double d11, DerivativeStructure derivativeStructure2, double d12, DerivativeStructure derivativeStructure3, double d13, DerivativeStructure derivativeStructure4) throws DimensionMismatchException {
        double linearCombination = MathArrays.linearCombination(d10, derivativeStructure.getValue(), d11, derivativeStructure2.getValue(), d12, derivativeStructure3.getValue(), d13, derivativeStructure4.getValue());
        double[] allDerivatives = derivativeStructure.multiply(d10).add(derivativeStructure2.multiply(d11)).add(derivativeStructure3.multiply(d12)).add(derivativeStructure4.multiply(d13)).getAllDerivatives();
        allDerivatives[0] = linearCombination;
        return new DerivativeStructure(getFreeParameters(), getOrder(), allDerivatives);
    }
}
