package org.apache.commons.math3.analysis.function;

import org.apache.commons.math3.analysis.DifferentiableUnivariateFunction;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.FastMath;

public class Sinc implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {
    private static final double SHORTCUT = 0.006d;
    private final boolean normalized;

    public Sinc() {
        this(false);
    }

    @Override
    @Deprecated
    public UnivariateFunction derivative() {
        return FunctionUtils.toDifferentiableUnivariateFunction(this).derivative();
    }

    @Override
    public double value(double d10) {
        double sin;
        if (this.normalized) {
            d10 *= 3.141592653589793d;
        }
        if (FastMath.abs(d10) <= SHORTCUT) {
            double d11 = d10 * d10;
            double d12 = (d11 - 20.0d) * d11;
            d10 = 120.0d;
            sin = d12 + 120.0d;
        } else {
            sin = FastMath.sin(d10);
        }
        return sin / d10;
    }

    public Sinc(boolean z10) {
        this.normalized = z10;
    }

    @Override
    public DerivativeStructure value(DerivativeStructure derivativeStructure) throws DimensionMismatchException {
        double[] dArr;
        int i10;
        int i11;
        double d10;
        double[] dArr2;
        Sinc sinc = this;
        double d11 = 1.0d;
        double value = (sinc.normalized ? 3.141592653589793d : 1.0d) * derivativeStructure.getValue();
        double d12 = value * value;
        int i12 = 1;
        int order = derivativeStructure.getOrder() + 1;
        double[] dArr3 = new double[order];
        int i13 = 0;
        if (FastMath.abs(value) <= SHORTCUT) {
            while (i13 < order) {
                int i14 = i13 / 2;
                if ((i13 & 1) == 0) {
                    dArr2 = dArr3;
                    dArr2[i13] = ((i14 & 1) == 0 ? i12 : -1) * ((d11 / (i13 + 1)) - (((d11 / ((i13 * 2) + 6)) - (d12 / ((i13 * 24) + 120))) * d12));
                } else {
                    dArr2 = dArr3;
                    dArr2[i13] = ((i14 & 1) == 0 ? -value : value) * ((1.0d / (i13 + 2)) - (((1.0d / ((i13 * 6) + 24)) - (d12 / ((i13 * 120) + 720))) * d12));
                }
                i13++;
                dArr3 = dArr2;
                d11 = 1.0d;
                i12 = 1;
            }
            dArr = dArr3;
            i10 = order;
        } else {
            dArr = dArr3;
            double d13 = 1.0d / value;
            double cos = FastMath.cos(value);
            double sin = FastMath.sin(value);
            dArr[0] = d13 * sin;
            double[] dArr4 = new double[order];
            dArr4[0] = 1.0d;
            double d14 = d13;
            int i15 = 1;
            while (i15 < order) {
                double d15 = 0.0d;
                if ((i15 & 1) == 0) {
                    dArr4[i15] = 0.0d;
                    i11 = i15;
                    d10 = 0.0d;
                } else {
                    i11 = i15 - 1;
                    d10 = dArr4[i11];
                    dArr4[i15] = d10;
                }
                while (i11 > 1) {
                    int i16 = i11 - 1;
                    double d16 = ((i11 - i15) * dArr4[i11]) - dArr4[i16];
                    dArr4[i11] = d16;
                    d15 = (d15 * d12) + d16;
                    double d17 = ((i16 - i15) * dArr4[i16]) + dArr4[i11 - 2];
                    dArr4[i16] = d17;
                    d10 = (d10 * d12) + d17;
                    i11 -= 2;
                    order = order;
                }
                int i17 = i15;
                double d18 = dArr4[0] * (-i15);
                dArr4[0] = d18;
                d14 *= d13;
                dArr[i17] = ((((d15 * d12) + d18) * sin) + (d10 * value * cos)) * d14;
                i15 = i17 + 1;
                order = order;
            }
            i10 = order;
            sinc = this;
        }
        if (sinc.normalized) {
            int i18 = i10;
            double d19 = 3.141592653589793d;
            for (int i19 = 1; i19 < i18; i19++) {
                dArr[i19] = dArr[i19] * d19;
                d19 *= 3.141592653589793d;
            }
        }
        return derivativeStructure.compose(dArr);
    }
}
