package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.ode.sampling.StepInterpolator;

class MidpointStepInterpolator extends RungeKuttaStepInterpolator {
    private static final long serialVersionUID = 20111120;

    public MidpointStepInterpolator() {
    }

    @Override
    public void computeInterpolatedStateAndDerivatives(double d10, double d11) {
        double d12 = 2.0d * d10;
        double d13 = 1.0d - d12;
        if (this.previousState == null || d10 > 0.5d) {
            double d14 = d11 * d10;
            double d15 = (d10 + 1.0d) * d11;
            int i10 = 0;
            while (true) {
                double[] dArr = this.interpolatedState;
                if (i10 >= dArr.length) {
                    return;
                }
                double[][] dArr2 = this.yDotK;
                double d16 = dArr2[0][i10];
                double d17 = dArr2[1][i10];
                dArr[i10] = (this.currentState[i10] + (d14 * d16)) - (d15 * d17);
                this.interpolatedDerivatives[i10] = (d16 * d13) + (d17 * d12);
                i10++;
            }
        } else {
            double d18 = d10 * d11;
            double d19 = d10 * d10 * this.f100282h;
            int i11 = 0;
            while (true) {
                double[] dArr3 = this.interpolatedState;
                if (i11 >= dArr3.length) {
                    return;
                }
                double[][] dArr4 = this.yDotK;
                double d20 = dArr4[0][i11];
                double d21 = dArr4[1][i11];
                dArr3[i11] = this.previousState[i11] + (d18 * d20) + (d19 * d21);
                this.interpolatedDerivatives[i11] = (d20 * d13) + (d21 * d12);
                i11++;
            }
        }
    }

    @Override
    public StepInterpolator doCopy() {
        return new MidpointStepInterpolator(this);
    }

    public MidpointStepInterpolator(MidpointStepInterpolator midpointStepInterpolator) {
        super(midpointStepInterpolator);
    }
}
