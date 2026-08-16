package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.util.FastMath;

public class HighamHall54Integrator extends EmbeddedRungeKuttaIntegrator {
    private static final String METHOD_NAME = "Higham-Hall 5(4)";
    private static final double[] STATIC_C = {0.2222222222222222d, 0.3333333333333333d, 0.5d, 0.6d, 1.0d, 1.0d};
    private static final double[][] STATIC_A = {new double[]{0.2222222222222222d}, new double[]{0.08333333333333333d, 0.25d}, new double[]{0.125d, 0.0d, 0.375d}, new double[]{0.182d, -0.27d, 0.624d, 0.064d}, new double[]{-0.55d, 1.35d, 2.4d, -7.2d, 5.0d}, new double[]{0.08333333333333333d, 0.0d, 0.84375d, -1.3333333333333333d, 1.3020833333333333d, 0.10416666666666667d}};
    private static final double[] STATIC_B = {0.08333333333333333d, 0.0d, 0.84375d, -1.3333333333333333d, 1.3020833333333333d, 0.10416666666666667d, 0.0d};
    private static final double[] STATIC_E = {-0.05d, 0.0d, 0.50625d, -1.2d, 0.78125d, 0.0625d, -0.1d};

    public HighamHall54Integrator(double d10, double d11, double d12, double d13) {
        super(METHOD_NAME, false, STATIC_C, STATIC_A, STATIC_B, (RungeKuttaStepInterpolator) new HighamHall54StepInterpolator(), d10, d11, d12, d13);
    }

    @Override
    public double estimateError(double[][] dArr, double[] dArr2, double[] dArr3, double d10) {
        double d11;
        double d12;
        double d13 = 0.0d;
        int i10 = 0;
        while (true) {
            int i11 = this.mainSetDimension;
            if (i10 >= i11) {
                return FastMath.sqrt(d13 / i11);
            }
            double d14 = STATIC_E[0] * dArr[0][i10];
            int i12 = 1;
            while (true) {
                double[] dArr4 = STATIC_E;
                if (i12 >= dArr4.length) {
                    break;
                }
                d14 += dArr4[i12] * dArr[i12][i10];
                i12++;
            }
            double max = FastMath.max(FastMath.abs(dArr2[i10]), FastMath.abs(dArr3[i10]));
            double[] dArr5 = this.vecAbsoluteTolerance;
            if (dArr5 == null) {
                d11 = this.scalAbsoluteTolerance;
                d12 = this.scalRelativeTolerance;
            } else {
                d11 = dArr5[i10];
                d12 = this.vecRelativeTolerance[i10];
            }
            double d15 = (d10 * d14) / (d11 + (d12 * max));
            d13 += d15 * d15;
            i10++;
        }
    }

    @Override
    public int getOrder() {
        return 5;
    }

    public HighamHall54Integrator(double d10, double d11, double[] dArr, double[] dArr2) {
        super(METHOD_NAME, false, STATIC_C, STATIC_A, STATIC_B, (RungeKuttaStepInterpolator) new HighamHall54StepInterpolator(), d10, d11, dArr, dArr2);
    }
}
