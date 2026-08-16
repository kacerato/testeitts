package org.apache.commons.math3.analysis.integration;

import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;

@Deprecated
public class LegendreGaussIntegrator extends BaseAbstractUnivariateIntegrator {
    private final double[] abscissas;
    private final double[] weights;
    private static final double[] ABSCISSAS_2 = {(-1.0d) / FastMath.sqrt(3.0d), 1.0d / FastMath.sqrt(3.0d)};
    private static final double[] WEIGHTS_2 = {1.0d, 1.0d};
    private static final double[] ABSCISSAS_3 = {-FastMath.sqrt(0.6d), 0.0d, FastMath.sqrt(0.6d)};
    private static final double[] WEIGHTS_3 = {0.5555555555555556d, 0.8888888888888888d, 0.5555555555555556d};
    private static final double[] ABSCISSAS_4 = {-FastMath.sqrt(((FastMath.sqrt(30.0d) * 2.0d) + 15.0d) / 35.0d), -FastMath.sqrt((15.0d - (FastMath.sqrt(30.0d) * 2.0d)) / 35.0d), FastMath.sqrt((15.0d - (FastMath.sqrt(30.0d) * 2.0d)) / 35.0d), FastMath.sqrt(((FastMath.sqrt(30.0d) * 2.0d) + 15.0d) / 35.0d)};
    private static final double[] WEIGHTS_4 = {(90.0d - (FastMath.sqrt(30.0d) * 5.0d)) / 180.0d, ((FastMath.sqrt(30.0d) * 5.0d) + 90.0d) / 180.0d, ((FastMath.sqrt(30.0d) * 5.0d) + 90.0d) / 180.0d, (90.0d - (FastMath.sqrt(30.0d) * 5.0d)) / 180.0d};
    private static final double[] ABSCISSAS_5 = {-FastMath.sqrt(((FastMath.sqrt(70.0d) * 2.0d) + 35.0d) / 63.0d), -FastMath.sqrt((35.0d - (FastMath.sqrt(70.0d) * 2.0d)) / 63.0d), 0.0d, FastMath.sqrt((35.0d - (FastMath.sqrt(70.0d) * 2.0d)) / 63.0d), FastMath.sqrt(((FastMath.sqrt(70.0d) * 2.0d) + 35.0d) / 63.0d)};
    private static final double[] WEIGHTS_5 = {(322.0d - (FastMath.sqrt(70.0d) * 13.0d)) / 900.0d, ((FastMath.sqrt(70.0d) * 13.0d) + 322.0d) / 900.0d, 0.5688888888888889d, ((FastMath.sqrt(70.0d) * 13.0d) + 322.0d) / 900.0d, (322.0d - (FastMath.sqrt(70.0d) * 13.0d)) / 900.0d};

    public LegendreGaussIntegrator(int i10, double d10, double d11, int i11, int i12) throws MathIllegalArgumentException, NotStrictlyPositiveException, NumberIsTooSmallException {
        super(d10, d11, i11, i12);
        if (i10 == 2) {
            this.abscissas = ABSCISSAS_2;
            this.weights = WEIGHTS_2;
            return;
        }
        if (i10 == 3) {
            this.abscissas = ABSCISSAS_3;
            this.weights = WEIGHTS_3;
        } else if (i10 == 4) {
            this.abscissas = ABSCISSAS_4;
            this.weights = WEIGHTS_4;
        } else {
            if (i10 == 5) {
                this.abscissas = ABSCISSAS_5;
                this.weights = WEIGHTS_5;
                return;
            }
            throw new MathIllegalArgumentException(LocalizedFormats.N_POINTS_GAUSS_LEGENDRE_INTEGRATOR_NOT_SUPPORTED, Integer.valueOf(i10), 2, 5);
        }
    }

    private double stage(int i10) throws TooManyEvaluationsException {
        double max = (getMax() - getMin()) / i10;
        double d10 = max / 2.0d;
        double min = getMin() + d10;
        double d11 = 0.0d;
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = 0;
            while (true) {
                double[] dArr = this.abscissas;
                if (i12 < dArr.length) {
                    d11 += this.weights[i12] * computeObjectiveValue(min + (dArr[i12] * d10));
                    i12++;
                }
            }
            min += max;
        }
        return d10 * d11;
    }

    @Override
    public double doIntegrate() throws MathIllegalArgumentException, TooManyEvaluationsException, MaxCountExceededException {
        double stage = stage(1);
        int i10 = 2;
        while (true) {
            double stage2 = stage(i10);
            double abs = FastMath.abs(stage2 - stage);
            double max = FastMath.max(getAbsoluteAccuracy(), getRelativeAccuracy() * (FastMath.abs(stage) + FastMath.abs(stage2)) * 0.5d);
            if (getIterations() + 1 >= getMinimalIterationCount() && abs <= max) {
                return stage2;
            }
            i10 = FastMath.max((int) (FastMath.min(4.0d, FastMath.pow(abs / max, 0.5d / this.abscissas.length)) * i10), i10 + 1);
            incrementCount();
            stage = stage2;
        }
    }

    public LegendreGaussIntegrator(int i10, double d10, double d11) throws MathIllegalArgumentException {
        this(i10, d10, d11, 3, Integer.MAX_VALUE);
    }

    public LegendreGaussIntegrator(int i10, int i11, int i12) throws MathIllegalArgumentException {
        this(i10, 1.0E-6d, 1.0E-15d, i11, i12);
    }
}
