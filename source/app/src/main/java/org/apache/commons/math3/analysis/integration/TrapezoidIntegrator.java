package org.apache.commons.math3.analysis.integration;

import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.FastMath;

public class TrapezoidIntegrator extends BaseAbstractUnivariateIntegrator {
    public static final int TRAPEZOID_MAX_ITERATIONS_COUNT = 64;

    private double f100122s;

    public TrapezoidIntegrator(double d10, double d11, int i10, int i11) throws NotStrictlyPositiveException, NumberIsTooSmallException, NumberIsTooLargeException {
        super(d10, d11, i10, i11);
        if (i11 > 64) {
            throw new NumberIsTooLargeException(Integer.valueOf(i11), 64, false);
        }
    }

    @Override
    public double doIntegrate() throws MathIllegalArgumentException, TooManyEvaluationsException, MaxCountExceededException {
        double stage;
        double stage2 = stage(this, 0);
        incrementCount();
        while (true) {
            int iterations = getIterations();
            stage = stage(this, iterations);
            if (iterations >= getMinimalIterationCount()) {
                double abs = FastMath.abs(stage - stage2);
                if (abs <= getRelativeAccuracy() * (FastMath.abs(stage2) + FastMath.abs(stage)) * 0.5d || abs <= getAbsoluteAccuracy()) {
                    break;
                }
            }
            incrementCount();
            stage2 = stage;
        }
        return stage;
    }

    public double stage(BaseAbstractUnivariateIntegrator baseAbstractUnivariateIntegrator, int i10) throws TooManyEvaluationsException {
        if (i10 == 0) {
            double max = baseAbstractUnivariateIntegrator.getMax();
            double min = baseAbstractUnivariateIntegrator.getMin();
            double computeObjectiveValue = (max - min) * 0.5d * (baseAbstractUnivariateIntegrator.computeObjectiveValue(min) + baseAbstractUnivariateIntegrator.computeObjectiveValue(max));
            this.f100122s = computeObjectiveValue;
            return computeObjectiveValue;
        }
        long j10 = 1 << (i10 - 1);
        double max2 = baseAbstractUnivariateIntegrator.getMax();
        double min2 = baseAbstractUnivariateIntegrator.getMin();
        double d10 = (max2 - min2) / j10;
        double d11 = min2 + (d10 * 0.5d);
        double d12 = 0.0d;
        for (long j11 = 0; j11 < j10; j11++) {
            d12 += baseAbstractUnivariateIntegrator.computeObjectiveValue(d11);
            d11 += d10;
        }
        double d13 = (this.f100122s + (d12 * d10)) * 0.5d;
        this.f100122s = d13;
        return d13;
    }

    public TrapezoidIntegrator(int i10, int i11) throws NotStrictlyPositiveException, NumberIsTooSmallException, NumberIsTooLargeException {
        super(i10, i11);
        if (i11 > 64) {
            throw new NumberIsTooLargeException(Integer.valueOf(i11), 64, false);
        }
    }

    public TrapezoidIntegrator() {
        super(3, 64);
    }
}
