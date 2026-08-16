package org.apache.commons.math3.analysis.integration;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.integration.gauss.GaussIntegratorFactory;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;

public class IterativeLegendreGaussIntegrator extends BaseAbstractUnivariateIntegrator {
    private static final GaussIntegratorFactory FACTORY = new GaussIntegratorFactory();
    private final int numberOfPoints;

    public IterativeLegendreGaussIntegrator(int i10, double d10, double d11, int i11, int i12) throws NotStrictlyPositiveException, NumberIsTooSmallException {
        super(d10, d11, i11, i12);
        if (i10 > 0) {
            this.numberOfPoints = i10;
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.NUMBER_OF_POINTS, Integer.valueOf(i10));
    }

    private double stage(int i10) throws TooManyEvaluationsException {
        UnivariateFunction univariateFunction = new UnivariateFunction() {
            @Override
            public double value(double d10) throws MathIllegalArgumentException, TooManyEvaluationsException {
                return IterativeLegendreGaussIntegrator.this.computeObjectiveValue(d10);
            }
        };
        double min = getMin();
        double max = (getMax() - min) / i10;
        double d10 = 0.0d;
        for (int i11 = 0; i11 < i10; i11++) {
            double d11 = min + (i11 * max);
            d10 += FACTORY.legendreHighPrecision(this.numberOfPoints, d11, d11 + max).integrate(univariateFunction);
        }
        return d10;
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
            i10 = FastMath.max((int) (FastMath.min(4.0d, FastMath.pow(abs / max, 0.5d / this.numberOfPoints)) * i10), i10 + 1);
            incrementCount();
            stage = stage2;
        }
    }

    public IterativeLegendreGaussIntegrator(int i10, double d10, double d11) throws NotStrictlyPositiveException {
        this(i10, d10, d11, 3, Integer.MAX_VALUE);
    }

    public IterativeLegendreGaussIntegrator(int i10, int i11, int i12) throws NotStrictlyPositiveException, NumberIsTooSmallException {
        this(i10, 1.0E-6d, 1.0E-15d, i11, i12);
    }
}
