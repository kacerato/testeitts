package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.util.FastMath;

public class DormandPrince853Integrator extends EmbeddedRungeKuttaIntegrator {
    private static final double E1_01 = 0.01312004499419488d;
    private static final double E1_06 = -1.2251564463762044d;
    private static final double E1_07 = -0.4957589496572502d;
    private static final double E1_08 = 1.6643771824549864d;
    private static final double E1_09 = -0.35032884874997366d;
    private static final double E1_10 = 0.3341791187130175d;
    private static final double E1_11 = 0.08192320648511571d;
    private static final double E1_12 = -0.022355307863886294d;
    private static final double E2_01 = -0.18980075407240762d;
    private static final double E2_09 = -0.42268232132379197d;
    private static final double E2_12 = 0.022651792198360825d;
    private static final String METHOD_NAME = "Dormand-Prince 8 (5, 3)";
    private static final double[] STATIC_C = {(12.0d - (FastMath.sqrt(6.0d) * 2.0d)) / 135.0d, (6.0d - FastMath.sqrt(6.0d)) / 45.0d, (6.0d - FastMath.sqrt(6.0d)) / 30.0d, (FastMath.sqrt(6.0d) + 6.0d) / 30.0d, 0.3333333333333333d, 0.25d, 0.3076923076923077d, 0.6512820512820513d, 0.6d, 0.8571428571428571d, 1.0d, 1.0d};
    private static final double E2_06 = 4.450312892752409d;
    private static final double E2_07 = 1.8915178993145003d;
    private static final double E2_08 = -5.801203960010585d;
    private static final double E2_10 = -0.1521609496625161d;
    private static final double E2_11 = 0.20136540080403034d;
    private static final double[][] STATIC_A = {new double[]{(12.0d - (FastMath.sqrt(6.0d) * 2.0d)) / 135.0d}, new double[]{(6.0d - FastMath.sqrt(6.0d)) / 180.0d, (6.0d - FastMath.sqrt(6.0d)) / 60.0d}, new double[]{(6.0d - FastMath.sqrt(6.0d)) / 120.0d, 0.0d, (6.0d - FastMath.sqrt(6.0d)) / 40.0d}, new double[]{((FastMath.sqrt(6.0d) * 107.0d) + 462.0d) / 3000.0d, 0.0d, ((-402.0d) - (FastMath.sqrt(6.0d) * 197.0d)) / 1000.0d, ((FastMath.sqrt(6.0d) * 73.0d) + 168.0d) / 375.0d}, new double[]{0.037037037037037035d, 0.0d, 0.0d, (FastMath.sqrt(6.0d) + 16.0d) / 108.0d, (16.0d - FastMath.sqrt(6.0d)) / 108.0d}, new double[]{0.037109375d, 0.0d, 0.0d, ((FastMath.sqrt(6.0d) * 23.0d) + 118.0d) / 1024.0d, (118.0d - (FastMath.sqrt(6.0d) * 23.0d)) / 1024.0d, -0.017578125d}, new double[]{0.03709200011850479d, 0.0d, 0.0d, ((FastMath.sqrt(6.0d) * 4784.0d) + 51544.0d) / 371293.0d, (51544.0d - (FastMath.sqrt(6.0d) * 4784.0d)) / 371293.0d, -0.015319437748624402d, 0.008273789163814023d}, new double[]{0.6241109587160757d, 0.0d, 0.0d, ((-1.324889724104E12d) - (FastMath.sqrt(6.0d) * 3.18801444819E11d)) / 6.265569375E11d, ((FastMath.sqrt(6.0d) * 3.18801444819E11d) - 1.324889724104E12d) / 6.265569375E11d, 27.59209969944671d, 20.154067550477894d, -43.48988418106996d}, new double[]{0.47766253643826434d, 0.0d, 0.0d, ((-4521408.0d) - (FastMath.sqrt(6.0d) * 1137963.0d)) / 2937500.0d, ((FastMath.sqrt(6.0d) * 1137963.0d) - 4521408.0d) / 2937500.0d, 21.230051448181193d, 15.279233632882423d, -33.28821096898486d, -0.020331201708508627d}, new double[]{-0.9371424300859873d, 0.0d, 0.0d, ((FastMath.sqrt(6.0d) * 94326.0d) + 354216.0d) / 112847.0d, (354216.0d - (FastMath.sqrt(6.0d) * 94326.0d)) / 112847.0d, -8.149787010746927d, -18.52006565999696d, 22.739487099350505d, 2.4936055526796523d, -3.0467644718982196d}, new double[]{2.273310147516538d, 0.0d, 0.0d, ((-3457480.0d) - (FastMath.sqrt(6.0d) * 960905.0d)) / 551636.0d, ((FastMath.sqrt(6.0d) * 960905.0d) - 3457480.0d) / 551636.0d, -17.9589318631188d, 27.94888452941996d, -2.8589982771350235d, -8.87285693353063d, 12.360567175794303d, 0.6433927460157636d}, new double[]{0.054293734116568765d, 0.0d, 0.0d, 0.0d, 0.0d, E2_06, E2_07, E2_08, 0.3111643669578199d, E2_10, E2_11, 0.04471061572777259d}};
    private static final double[] STATIC_B = {0.054293734116568765d, 0.0d, 0.0d, 0.0d, 0.0d, E2_06, E2_07, E2_08, 0.3111643669578199d, E2_10, E2_11, 0.04471061572777259d, 0.0d};

    public DormandPrince853Integrator(double d10, double d11, double d12, double d13) {
        super(METHOD_NAME, true, STATIC_C, STATIC_A, STATIC_B, (RungeKuttaStepInterpolator) new DormandPrince853StepInterpolator(), d10, d11, d12, d13);
    }

    @Override
    public double estimateError(double[][] dArr, double[] dArr2, double[] dArr3, double d10) {
        int i10;
        double d11;
        double d12;
        char c10 = 0;
        int i11 = 0;
        double d13 = 0.0d;
        double d14 = 0.0d;
        while (i11 < this.mainSetDimension) {
            double d15 = dArr[c10][i11];
            double d16 = E1_01 * d15;
            double d17 = dArr[5][i11];
            double d18 = d16 + (E1_06 * d17);
            double d19 = dArr[6][i11];
            double d20 = d18 + (E1_07 * d19);
            double d21 = dArr[7][i11];
            double d22 = d20 + (E1_08 * d21);
            double d23 = dArr[8][i11];
            double d24 = d22 + (E1_09 * d23);
            double d25 = dArr[9][i11];
            double d26 = d24 + (E1_10 * d25);
            double d27 = dArr[10][i11];
            double d28 = d26 + (E1_11 * d27);
            double d29 = dArr[11][i11];
            double d30 = d28 + (E1_12 * d29);
            double d31 = (d15 * E2_01) + (d17 * E2_06) + (d19 * E2_07) + (d21 * E2_08) + (d23 * E2_09) + (d25 * E2_10) + (d27 * E2_11) + (d29 * E2_12);
            double max = FastMath.max(FastMath.abs(dArr2[i11]), FastMath.abs(dArr3[i11]));
            double[] dArr4 = this.vecAbsoluteTolerance;
            if (dArr4 == null) {
                d12 = this.scalAbsoluteTolerance;
                i10 = i11;
                d11 = this.scalRelativeTolerance * max;
            } else {
                i10 = i11;
                d11 = dArr4[i10];
                d12 = this.vecRelativeTolerance[i10] * max;
            }
            double d32 = d12 + d11;
            double d33 = d30 / d32;
            d13 += d33 * d33;
            double d34 = d31 / d32;
            d14 += d34 * d34;
            i11 = i10 + 1;
            c10 = 0;
        }
        double d35 = (d14 * 0.01d) + d13;
        if (d35 <= 0.0d) {
            d35 = 1.0d;
        }
        return (FastMath.abs(d10) * d13) / FastMath.sqrt(this.mainSetDimension * d35);
    }

    @Override
    public int getOrder() {
        return 8;
    }

    public DormandPrince853Integrator(double d10, double d11, double[] dArr, double[] dArr2) {
        super(METHOD_NAME, true, STATIC_C, STATIC_A, STATIC_B, (RungeKuttaStepInterpolator) new DormandPrince853StepInterpolator(), d10, d11, dArr, dArr2);
    }
}
