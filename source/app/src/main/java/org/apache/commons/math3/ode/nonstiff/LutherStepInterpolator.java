package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.ode.sampling.StepInterpolator;
import org.apache.commons.math3.util.FastMath;

class LutherStepInterpolator extends RungeKuttaStepInterpolator {

    private static final double f100275Q = FastMath.sqrt(21.0d);
    private static final long serialVersionUID = 20140416;

    public LutherStepInterpolator() {
    }

    @Override
    public void computeInterpolatedStateAndDerivatives(double d10, double d11) {
        double d12 = 21.0d * d10;
        double d13 = (((((((-47.0d) + d12) * d10) + 36.0d) * d10) - 10.8d) * d10) + 1.0d;
        double d14 = 112.0d * d10;
        double d15 = ((((((-202.66666666666666d) + d14) * d10) + 106.66666666666667d) * d10) - 13.866666666666667d) * d10;
        double d16 = (-567.0d) * d10;
        double d17 = ((((((d16 / 5.0d) + 194.4d) * d10) - 97.2d) * d10) + 12.96d) * d10;
        double d18 = f100275Q;
        double d19 = ((((d18 * 343.0d) + 833.0d) / 150.0d) + (((((-637.0d) - (d18 * 357.0d)) / 30.0d) + (((((d18 * 287.0d) + 392.0d) / 15.0d) + ((((-49.0d) - (d18 * 49.0d)) * d10) / 5.0d)) * d10)) * d10)) * d10;
        double d20 = d10 * (((833.0d - (d18 * 343.0d)) / 150.0d) + (((((d18 * 357.0d) - 637.0d) / 30.0d) + ((((392.0d - (d18 * 287.0d)) / 15.0d) + ((((d18 * 49.0d) - 49.0d) * d10) / 5.0d)) * d10)) * d10));
        double d21 = ((((3.0d * d10) - 3.0d) * d10) + 0.6d) * d10;
        if (this.previousState == null || d10 > 0.5d) {
            double d22 = d15;
            double d23 = (((((((((-21.0d) * d10) / 5.0d) + 7.55d) * d10) - 4.45d) * d10) + 0.95d) * d10) - 0.05d;
            double d24 = (((((((((-112.0d) * d10) / 5.0d) + 28.266666666666666d) * d10) - 7.288888888888889d) * d10) - 0.35555555555555557d) * d10) - 0.35555555555555557d;
            double d25 = (((((567.0d * d10) / 25.0d) - 25.92d) * d10) + 6.48d) * d10 * d10;
            double d26 = (((((((1029.0d * d18) + 2254.0d) / 900.0d) + (d10 * ((((-1372.0d) - (847.0d * d18)) / 300.0d) + ((((d18 * 49.0d) + 49.0d) * d10) / 25.0d)))) * d10) - 0.2722222222222222d) * d10) - 0.2722222222222222d;
            double d27 = (((d10 * (((2254.0d - (1029.0d * d18)) / 900.0d) + (d10 * ((((847.0d * d18) - 1372.0d) / 300.0d) + ((d10 * (49.0d - (d18 * 49.0d))) / 25.0d))))) - 0.2722222222222222d) * d10) - 0.2722222222222222d;
            double d28 = ((((((-0.75d) * d10) + 0.25d) * d10) - 0.05d) * d10) - 0.05d;
            int i10 = 0;
            while (true) {
                double[] dArr = this.interpolatedState;
                double d29 = d22;
                if (i10 >= dArr.length) {
                    return;
                }
                double[][] dArr2 = this.yDotK;
                double d30 = dArr2[0][i10];
                double d31 = dArr2[1][i10];
                double d32 = dArr2[2][i10];
                double d33 = dArr2[3][i10];
                double d34 = dArr2[4][i10];
                double d35 = dArr2[5][i10];
                double d36 = dArr2[6][i10];
                double d37 = d31 * 0.0d;
                dArr[i10] = this.currentState[i10] + (((d23 * d30) + d37 + (d24 * d32) + (d25 * d33) + (d26 * d34) + (d27 * d35) + (d28 * d36)) * d11);
                this.interpolatedDerivatives[i10] = (d30 * d13) + d37 + (d29 * d32) + (d17 * d33) + (d34 * d19) + (d35 * d20) + (d36 * d21);
                i10++;
                d22 = d29;
            }
        } else {
            double d38 = (((((((d12 / 5.0d) - 11.75d) * d10) + 12.0d) * d10) - 5.4d) * d10) + 1.0d;
            double d39 = ((((((d14 / 5.0d) - 50.666666666666664d) * d10) + 35.55555555555556d) * d10) - 6.933333333333334d) * d10;
            double d40 = ((((((d16 / 25.0d) + 48.6d) * d10) - 32.4d) * d10) + 6.48d) * d10;
            double d41 = ((((d18 * 343.0d) + 833.0d) / 300.0d) + (((((-637.0d) - (d18 * 357.0d)) / 90.0d) + (((((d18 * 287.0d) + 392.0d) / 60.0d) + ((((-49.0d) - (d18 * 49.0d)) * d10) / 25.0d)) * d10)) * d10)) * d10;
            double d42 = d10 * (((833.0d - (343.0d * d18)) / 300.0d) + (d10 * ((((357.0d * d18) - 637.0d) / 90.0d) + (d10 * (((392.0d - (287.0d * d18)) / 60.0d) + ((((d18 * 49.0d) - 49.0d) * d10) / 25.0d))))));
            double d43 = ((((0.75d * d10) - 1.0d) * d10) + 0.3d) * d10;
            int i11 = 0;
            while (true) {
                double[] dArr3 = this.interpolatedState;
                double d44 = d17;
                if (i11 >= dArr3.length) {
                    return;
                }
                double[][] dArr4 = this.yDotK;
                double d45 = dArr4[0][i11];
                double d46 = dArr4[1][i11];
                double d47 = dArr4[2][i11];
                double d48 = dArr4[3][i11];
                double d49 = dArr4[4][i11];
                double d50 = dArr4[5][i11];
                double d51 = dArr4[6][i11];
                double d52 = d15;
                double d53 = d46 * 0.0d;
                dArr3[i11] = this.previousState[i11] + (this.f100282h * d10 * ((d38 * d45) + d53 + (d39 * d47) + (d40 * d48) + (d41 * d49) + (d42 * d50) + (d43 * d51)));
                this.interpolatedDerivatives[i11] = (d45 * d13) + d53 + (d52 * d47) + (d44 * d48) + (d49 * d19) + (d50 * d20) + (d51 * d21);
                i11++;
                d15 = d52;
                d17 = d44;
            }
        }
    }

    @Override
    public StepInterpolator doCopy() {
        return new LutherStepInterpolator(this);
    }

    public LutherStepInterpolator(LutherStepInterpolator lutherStepInterpolator) {
        super(lutherStepInterpolator);
    }
}
