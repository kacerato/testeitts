package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.ode.sampling.StepInterpolator;

class ThreeEighthesStepInterpolator extends RungeKuttaStepInterpolator {
    private static final long serialVersionUID = 20111120;

    public ThreeEighthesStepInterpolator() {
    }

    @Override
    public void computeInterpolatedStateAndDerivatives(double d10, double d11) {
        double d12 = 0.75d * d10;
        double d13 = 4.0d * d10;
        double d14 = ((d13 - 5.0d) * d12) + 1.0d;
        double d15 = (5.0d - (6.0d * d10)) * d12;
        double d16 = ((d10 * 2.0d) - 1.0d) * d12;
        if (this.previousState == null || d10 > 0.5d) {
            double d17 = d11 / 8.0d;
            double d18 = d13 * d10;
            double d19 = ((1.0d - (7.0d * d10)) + (2.0d * d18)) * d17;
            double d20 = 3.0d * d17;
            double d21 = d10 + 1.0d;
            double d22 = (d21 - d18) * d20;
            double d23 = d20 * d21;
            double d24 = d17 * (d21 + d18);
            int i10 = 0;
            while (true) {
                double[] dArr = this.interpolatedState;
                if (i10 >= dArr.length) {
                    return;
                }
                double[][] dArr2 = this.yDotK;
                double d25 = dArr2[0][i10];
                double d26 = dArr2[1][i10];
                double d27 = dArr2[2][i10];
                double d28 = dArr2[3][i10];
                dArr[i10] = (((this.currentState[i10] - (d19 * d25)) - (d22 * d26)) - (d23 * d27)) - (d24 * d28);
                this.interpolatedDerivatives[i10] = (d25 * d14) + (d26 * d15) + (d27 * d12) + (d28 * d16);
                i10++;
            }
        } else {
            double d29 = (this.f100282h * d10) / 8.0d;
            double d30 = d13 * d10;
            double d31 = ((8.0d - (15.0d * d10)) + (2.0d * d30)) * d29;
            double d32 = 3.0d * d29;
            double d33 = ((5.0d * d10) - d30) * d32;
            double d34 = d32 * d10;
            double d35 = d29 * (((-3.0d) * d10) + d30);
            int i11 = 0;
            while (true) {
                double[] dArr3 = this.interpolatedState;
                if (i11 >= dArr3.length) {
                    return;
                }
                double[][] dArr4 = this.yDotK;
                double d36 = dArr4[0][i11];
                double d37 = dArr4[1][i11];
                double d38 = dArr4[2][i11];
                double d39 = dArr4[3][i11];
                dArr3[i11] = this.previousState[i11] + (d31 * d36) + (d33 * d37) + (d34 * d38) + (d35 * d39);
                this.interpolatedDerivatives[i11] = (d36 * d14) + (d37 * d15) + (d38 * d12) + (d39 * d16);
                i11++;
            }
        }
    }

    @Override
    public StepInterpolator doCopy() {
        return new ThreeEighthesStepInterpolator(this);
    }

    public ThreeEighthesStepInterpolator(ThreeEighthesStepInterpolator threeEighthesStepInterpolator) {
        super(threeEighthesStepInterpolator);
    }
}
