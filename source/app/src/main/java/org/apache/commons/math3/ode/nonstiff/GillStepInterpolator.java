package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.ode.sampling.StepInterpolator;
import org.apache.commons.math3.util.FastMath;

class GillStepInterpolator extends RungeKuttaStepInterpolator {
    private static final double ONE_MINUS_INV_SQRT_2 = 1.0d - FastMath.sqrt(0.5d);
    private static final double ONE_PLUS_INV_SQRT_2 = FastMath.sqrt(0.5d) + 1.0d;
    private static final long serialVersionUID = 20111120;

    public GillStepInterpolator() {
    }

    @Override
    public void computeInterpolatedStateAndDerivatives(double d10, double d11) {
        double d12 = d10 * 2.0d;
        double d13 = d12 * d12;
        double d14 = ((d12 - 3.0d) * d10) + 1.0d;
        double d15 = (1.0d - d10) * d12;
        double d16 = ONE_MINUS_INV_SQRT_2;
        double d17 = d15 * d16;
        double d18 = ONE_PLUS_INV_SQRT_2;
        double d19 = d15 * d18;
        double d20 = (d12 - 1.0d) * d10;
        if (this.previousState == null || d10 > 0.5d) {
            double d21 = d11 / 6.0d;
            double d22 = ((d12 + 2.0d) - d13) * d21;
            double d23 = ((1.0d - (5.0d * d10)) + d13) * d21;
            double d24 = d16 * d22;
            double d25 = d22 * d18;
            double d26 = d21 * (d10 + 1.0d + d13);
            int i10 = 0;
            while (true) {
                double[] dArr = this.interpolatedState;
                if (i10 >= dArr.length) {
                    return;
                }
                double[][] dArr2 = this.yDotK;
                double d27 = dArr2[0][i10];
                double d28 = dArr2[1][i10];
                double d29 = dArr2[2][i10];
                double d30 = dArr2[3][i10];
                dArr[i10] = (((this.currentState[i10] - (d23 * d27)) - (d24 * d28)) - (d25 * d29)) - (d26 * d30);
                this.interpolatedDerivatives[i10] = (d27 * d14) + (d28 * d17) + (d29 * d19) + (d30 * d20);
                i10++;
            }
        } else {
            double d31 = (this.f100282h * d10) / 6.0d;
            double d32 = ((d10 * 6.0d) - d13) * d31;
            double d33 = ((6.0d - (9.0d * d10)) + d13) * d31;
            double d34 = d16 * d32;
            double d35 = d32 * d18;
            double d36 = d31 * (((-3.0d) * d10) + d13);
            int i11 = 0;
            while (true) {
                double[] dArr3 = this.interpolatedState;
                if (i11 >= dArr3.length) {
                    return;
                }
                double[][] dArr4 = this.yDotK;
                double d37 = dArr4[0][i11];
                double d38 = dArr4[1][i11];
                double d39 = dArr4[2][i11];
                double d40 = dArr4[3][i11];
                dArr3[i11] = this.previousState[i11] + (d33 * d37) + (d34 * d38) + (d35 * d39) + (d36 * d40);
                this.interpolatedDerivatives[i11] = (d37 * d14) + (d38 * d17) + (d39 * d19) + (d40 * d20);
                i11++;
            }
        }
    }

    @Override
    public StepInterpolator doCopy() {
        return new GillStepInterpolator(this);
    }

    public GillStepInterpolator(GillStepInterpolator gillStepInterpolator) {
        super(gillStepInterpolator);
    }
}
