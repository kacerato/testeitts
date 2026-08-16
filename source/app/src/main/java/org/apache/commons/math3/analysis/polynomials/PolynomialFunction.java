package org.apache.commons.math3.analysis.polynomials;

import java.io.Serializable;
import java.util.Arrays;
import org.apache.commons.math3.analysis.DifferentiableUnivariateFunction;
import org.apache.commons.math3.analysis.ParametricUnivariateFunction;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;
import w2.C15883c;

public class PolynomialFunction implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction, Serializable {
    private static final long serialVersionUID = -7726511984200295583L;
    private final double[] coefficients;

    public static class Parametric implements ParametricUnivariateFunction {
        @Override
        public double[] gradient(double d10, double... dArr) {
            double[] dArr2 = new double[dArr.length];
            double d11 = 1.0d;
            for (int i10 = 0; i10 < dArr.length; i10++) {
                dArr2[i10] = d11;
                d11 *= d10;
            }
            return dArr2;
        }

        @Override
        public double value(double d10, double... dArr) throws NoDataException {
            return PolynomialFunction.evaluate(dArr, d10);
        }
    }

    public PolynomialFunction(double[] dArr) throws NullArgumentException, NoDataException {
        MathUtils.checkNotNull(dArr);
        int length = dArr.length;
        if (length == 0) {
            throw new NoDataException(LocalizedFormats.EMPTY_POLYNOMIALS_COEFFICIENTS_ARRAY);
        }
        while (length > 1 && dArr[length - 1] == 0.0d) {
            length--;
        }
        double[] dArr2 = new double[length];
        this.coefficients = dArr2;
        System.arraycopy(dArr, 0, dArr2, 0, length);
    }

    public static double[] differentiate(double[] dArr) throws NullArgumentException, NoDataException {
        MathUtils.checkNotNull(dArr);
        int length = dArr.length;
        if (length == 0) {
            throw new NoDataException(LocalizedFormats.EMPTY_POLYNOMIALS_COEFFICIENTS_ARRAY);
        }
        if (length == 1) {
            return new double[]{0.0d};
        }
        int i10 = length - 1;
        double[] dArr2 = new double[i10];
        while (i10 > 0) {
            dArr2[i10 - 1] = i10 * dArr[i10];
            i10--;
        }
        return dArr2;
    }

    public static double evaluate(double[] dArr, double d10) throws NullArgumentException, NoDataException {
        MathUtils.checkNotNull(dArr);
        int length = dArr.length;
        if (length == 0) {
            throw new NoDataException(LocalizedFormats.EMPTY_POLYNOMIALS_COEFFICIENTS_ARRAY);
        }
        double d11 = dArr[length - 1];
        for (int i10 = length - 2; i10 >= 0; i10--) {
            d11 = (d11 * d10) + dArr[i10];
        }
        return d11;
    }

    public PolynomialFunction add(PolynomialFunction polynomialFunction) {
        int min = FastMath.min(this.coefficients.length, polynomialFunction.coefficients.length);
        int max = FastMath.max(this.coefficients.length, polynomialFunction.coefficients.length);
        double[] dArr = new double[max];
        for (int i10 = 0; i10 < min; i10++) {
            dArr[i10] = this.coefficients[i10] + polynomialFunction.coefficients[i10];
        }
        double[] dArr2 = this.coefficients;
        int length = dArr2.length;
        double[] dArr3 = polynomialFunction.coefficients;
        if (length < dArr3.length) {
            dArr2 = dArr3;
        }
        System.arraycopy(dArr2, min, dArr, min, max - min);
        return new PolynomialFunction(dArr);
    }

    public int degree() {
        return this.coefficients.length - 1;
    }

    @Override
    public UnivariateFunction derivative() {
        return polynomialDerivative();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PolynomialFunction) && Arrays.equals(this.coefficients, ((PolynomialFunction) obj).coefficients);
    }

    public double[] getCoefficients() {
        return (double[]) this.coefficients.clone();
    }

    public int hashCode() {
        return 31 + Arrays.hashCode(this.coefficients);
    }

    public PolynomialFunction multiply(PolynomialFunction polynomialFunction) {
        int length = (this.coefficients.length + polynomialFunction.coefficients.length) - 1;
        double[] dArr = new double[length];
        int i10 = 0;
        while (i10 < length) {
            dArr[i10] = 0.0d;
            int i11 = i10 + 1;
            for (int max = FastMath.max(0, i11 - polynomialFunction.coefficients.length); max < FastMath.min(this.coefficients.length, i11); max++) {
                dArr[i10] = dArr[i10] + (this.coefficients[max] * polynomialFunction.coefficients[i10 - max]);
            }
            i10 = i11;
        }
        return new PolynomialFunction(dArr);
    }

    public PolynomialFunction negate() {
        double[] dArr = new double[this.coefficients.length];
        int i10 = 0;
        while (true) {
            double[] dArr2 = this.coefficients;
            if (i10 >= dArr2.length) {
                return new PolynomialFunction(dArr);
            }
            dArr[i10] = -dArr2[i10];
            i10++;
        }
    }

    public PolynomialFunction polynomialDerivative() {
        return new PolynomialFunction(differentiate(this.coefficients));
    }

    public PolynomialFunction subtract(PolynomialFunction polynomialFunction) {
        int min = FastMath.min(this.coefficients.length, polynomialFunction.coefficients.length);
        int max = FastMath.max(this.coefficients.length, polynomialFunction.coefficients.length);
        double[] dArr = new double[max];
        for (int i10 = 0; i10 < min; i10++) {
            dArr[i10] = this.coefficients[i10] - polynomialFunction.coefficients[i10];
        }
        double[] dArr2 = this.coefficients;
        if (dArr2.length < polynomialFunction.coefficients.length) {
            while (min < max) {
                dArr[min] = -polynomialFunction.coefficients[min];
                min++;
            }
        } else {
            System.arraycopy(dArr2, min, dArr, min, max - min);
        }
        return new PolynomialFunction(dArr);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        double[] dArr = this.coefficients;
        double d10 = dArr[0];
        if (d10 == 0.0d) {
            if (dArr.length == 1) {
                return "0";
            }
        } else {
            sb2.append(toString(d10));
        }
        int i10 = 1;
        while (true) {
            double[] dArr2 = this.coefficients;
            if (i10 >= dArr2.length) {
                return sb2.toString();
            }
            if (dArr2[i10] != 0.0d) {
                if (sb2.length() > 0) {
                    if (this.coefficients[i10] < 0.0d) {
                        sb2.append(" - ");
                    } else {
                        sb2.append(" + ");
                    }
                } else if (this.coefficients[i10] < 0.0d) {
                    sb2.append("-");
                }
                double abs = FastMath.abs(this.coefficients[i10]);
                if (abs - 1.0d != 0.0d) {
                    sb2.append(toString(abs));
                    sb2.append(C15883c.f126249O);
                }
                sb2.append("x");
                if (i10 > 1) {
                    sb2.append('^');
                    sb2.append(Integer.toString(i10));
                }
            }
            i10++;
        }
    }

    @Override
    public double value(double d10) {
        return evaluate(this.coefficients, d10);
    }

    @Override
    public DerivativeStructure value(DerivativeStructure derivativeStructure) throws NullArgumentException, NoDataException {
        MathUtils.checkNotNull(this.coefficients);
        int length = this.coefficients.length;
        if (length != 0) {
            DerivativeStructure derivativeStructure2 = new DerivativeStructure(derivativeStructure.getFreeParameters(), derivativeStructure.getOrder(), this.coefficients[length - 1]);
            for (int i10 = length - 2; i10 >= 0; i10--) {
                derivativeStructure2 = derivativeStructure2.multiply(derivativeStructure).add(this.coefficients[i10]);
            }
            return derivativeStructure2;
        }
        throw new NoDataException(LocalizedFormats.EMPTY_POLYNOMIALS_COEFFICIENTS_ARRAY);
    }

    private static String toString(double d10) {
        String d11 = Double.toString(d10);
        return d11.endsWith(".0") ? d11.substring(0, d11.length() - 2) : d11;
    }
}
