package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.ode.sampling.StepInterpolator;

class EulerStepInterpolator extends RungeKuttaStepInterpolator {
    private static final long serialVersionUID = 20111120;

    public EulerStepInterpolator() {
    }

    @Override
    public void computeInterpolatedStateAndDerivatives(double d10, double d11) {
        if (this.previousState == null || d10 > 0.5d) {
            int i10 = 0;
            while (true) {
                double[] dArr = this.interpolatedState;
                if (i10 >= dArr.length) {
                    double[] dArr2 = this.yDotK[0];
                    double[] dArr3 = this.interpolatedDerivatives;
                    System.arraycopy(dArr2, 0, dArr3, 0, dArr3.length);
                    return;
                }
                dArr[i10] = this.currentState[i10] - (this.yDotK[0][i10] * d11);
                i10++;
            }
        } else {
            int i11 = 0;
            while (true) {
                double[] dArr4 = this.interpolatedState;
                if (i11 >= dArr4.length) {
                    double[] dArr5 = this.yDotK[0];
                    double[] dArr6 = this.interpolatedDerivatives;
                    System.arraycopy(dArr5, 0, dArr6, 0, dArr6.length);
                    return;
                }
                dArr4[i11] = this.previousState[i11] + (this.f100282h * d10 * this.yDotK[0][i11]);
                i11++;
            }
        }
    }

    @Override
    public StepInterpolator doCopy() {
        return new EulerStepInterpolator(this);
    }

    public EulerStepInterpolator(EulerStepInterpolator eulerStepInterpolator) {
        super(eulerStepInterpolator);
    }
}
