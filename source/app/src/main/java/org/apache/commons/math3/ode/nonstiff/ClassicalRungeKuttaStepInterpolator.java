package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.ode.sampling.StepInterpolator;

class ClassicalRungeKuttaStepInterpolator extends RungeKuttaStepInterpolator {
    private static final long serialVersionUID = 20111120;

    public ClassicalRungeKuttaStepInterpolator() {
    }

    @Override
    public void computeInterpolatedStateAndDerivatives(double d10, double d11) {
        double d12 = 1.0d - d10;
        double d13 = d10 * 2.0d;
        double d14 = 1.0d - d13;
        double d15 = d12 * d14;
        double d16 = d13 * d12;
        double d17 = (-d10) * d14;
        if (this.previousState == null || d10 > 0.5d) {
            double d18 = d10 * 4.0d;
            double d19 = d11 / 6.0d;
            double d20 = -d18;
            double d21 = (((d20 + 5.0d) * d10) - 1.0d) * d19;
            double d22 = (((d18 - 2.0d) * d10) - 2.0d) * d19;
            double d23 = d19 * (((d20 - 1.0d) * d10) - 1.0d);
            int i10 = 0;
            while (true) {
                double[] dArr = this.interpolatedState;
                if (i10 >= dArr.length) {
                    return;
                }
                double[][] dArr2 = this.yDotK;
                double d24 = dArr2[0][i10];
                double d25 = dArr2[1][i10] + dArr2[2][i10];
                double d26 = dArr2[3][i10];
                dArr[i10] = this.currentState[i10] + (d21 * d24) + (d22 * d25) + (d23 * d26);
                this.interpolatedDerivatives[i10] = (d24 * d15) + (d25 * d16) + (d26 * d17);
                i10++;
            }
        } else {
            double d27 = d10 * 4.0d * d10;
            double d28 = (this.f100282h * d10) / 6.0d;
            double d29 = ((6.0d - (9.0d * d10)) + d27) * d28;
            double d30 = ((6.0d * d10) - d27) * d28;
            double d31 = d28 * ((d10 * (-3.0d)) + d27);
            int i11 = 0;
            while (true) {
                double[] dArr3 = this.interpolatedState;
                if (i11 >= dArr3.length) {
                    return;
                }
                double[][] dArr4 = this.yDotK;
                double d32 = dArr4[0][i11];
                double d33 = dArr4[1][i11] + dArr4[2][i11];
                double d34 = dArr4[3][i11];
                dArr3[i11] = this.previousState[i11] + (d29 * d32) + (d30 * d33) + (d31 * d34);
                this.interpolatedDerivatives[i11] = (d32 * d15) + (d33 * d16) + (d34 * d17);
                i11++;
            }
        }
    }

    @Override
    public StepInterpolator doCopy() {
        return new ClassicalRungeKuttaStepInterpolator(this);
    }

    public ClassicalRungeKuttaStepInterpolator(ClassicalRungeKuttaStepInterpolator classicalRungeKuttaStepInterpolator) {
        super(classicalRungeKuttaStepInterpolator);
    }
}
