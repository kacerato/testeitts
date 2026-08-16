package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.ode.sampling.StepInterpolator;

class HighamHall54StepInterpolator extends RungeKuttaStepInterpolator {
    private static final long serialVersionUID = 20111120;

    public HighamHall54StepInterpolator() {
    }

    @Override
    public void computeInterpolatedStateAndDerivatives(double d10, double d11) {
        double d12 = (((d10 * (16.0d - (10.0d * d10))) - 7.5d) * d10) + 1.0d;
        double d13 = ((((67.5d * d10) - 91.125d) * d10) + 28.6875d) * d10;
        double d14 = ((d10 * (152.0d - (120.0d * d10))) - 44.0d) * d10;
        double d15 = ((((62.5d * d10) - 78.125d) * d10) + 23.4375d) * d10;
        double d16 = ((5.0d * d10) / 8.0d) * ((d10 * 2.0d) - 1.0d);
        if (this.previousState == null || d10 > 0.5d) {
            double d17 = this.f100282h;
            double d18 = ((d10 * ((((d10 * ((((-5.0d) * d10) / 2.0d) + 5.333333333333333d)) - 3.75d) * d10) + 1.0d)) - 0.08333333333333333d) * d17;
            double d19 = (((((((d10 * 135.0d) / 8.0d) - 30.375d) * d10) + 14.34375d) * r13) - 0.84375d) * d17;
            double d20 = (((((((-30.0d) * d10) + 50.666666666666664d) * d10) - 22.0d) * d10 * d10) + 1.3333333333333333d) * d17;
            double d21 = (((((((125.0d * d10) / 8.0d) - 26.041666666666668d) * d10) + 11.71875d) * r13) - 1.3020833333333333d) * d17;
            double d22 = d17 * ((r13 * ((r11 / 12.0d) - 0.3125d)) - 0.10416666666666667d);
            int i10 = 0;
            while (true) {
                double[] dArr = this.interpolatedState;
                if (i10 >= dArr.length) {
                    return;
                }
                double[][] dArr2 = this.yDotK;
                double d23 = dArr2[0][i10];
                double d24 = dArr2[2][i10];
                double d25 = dArr2[3][i10];
                double d26 = dArr2[4][i10];
                double d27 = dArr2[5][i10];
                dArr[i10] = this.currentState[i10] + (d18 * d23) + (d19 * d24) + (d20 * d25) + (d21 * d26) + (d22 * d27);
                this.interpolatedDerivatives[i10] = (d23 * d12) + (d24 * d13) + (d25 * d14) + (d26 * d15) + (d16 * d27);
                i10++;
            }
        } else {
            double d28 = this.f100282h * d10;
            double d29 = ((((d10 * (5.333333333333333d - (2.5d * d10))) - 3.75d) * d10) + 1.0d) * d28;
            double d30 = (((((d10 * 135.0d) / 8.0d) - 30.375d) * d10) + 14.34375d) * d10 * d28;
            double d31 = (((((-30.0d) * d10) + 50.666666666666664d) * d10) - 22.0d) * d10 * d28;
            double d32 = (((((125.0d * d10) / 8.0d) - 26.041666666666668d) * d10) + 11.71875d) * d10 * d28;
            double d33 = d28 * ((r11 / 12.0d) - 0.3125d) * d10;
            int i11 = 0;
            while (true) {
                double[] dArr3 = this.interpolatedState;
                if (i11 >= dArr3.length) {
                    return;
                }
                double[][] dArr4 = this.yDotK;
                double d34 = dArr4[0][i11];
                double d35 = dArr4[2][i11];
                double d36 = dArr4[3][i11];
                double d37 = dArr4[4][i11];
                double d38 = dArr4[5][i11];
                dArr3[i11] = this.previousState[i11] + (d29 * d34) + (d30 * d35) + (d31 * d36) + (d32 * d37) + (d33 * d38);
                this.interpolatedDerivatives[i11] = (d34 * d12) + (d35 * d13) + (d36 * d14) + (d37 * d15) + (d16 * d38);
                i11++;
            }
        }
    }

    @Override
    public StepInterpolator doCopy() {
        return new HighamHall54StepInterpolator(this);
    }

    public HighamHall54StepInterpolator(HighamHall54StepInterpolator highamHall54StepInterpolator) {
        super(highamHall54StepInterpolator);
    }
}
