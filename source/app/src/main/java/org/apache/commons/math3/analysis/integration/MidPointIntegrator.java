package org.apache.commons.math3.analysis.integration;

import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.FastMath;

public class MidPointIntegrator extends BaseAbstractUnivariateIntegrator {
    public static final int MIDPOINT_MAX_ITERATIONS_COUNT = 64;

    public MidPointIntegrator(double d10, double d11, int i10, int i11) throws NotStrictlyPositiveException, NumberIsTooSmallException, NumberIsTooLargeException {
        super(d10, d11, i10, i11);
        if (i11 > 64) {
            throw new NumberIsTooLargeException(Integer.valueOf(i11), 64, false);
        }
    }

    private double stage(int i10, double d10, double d11, double d12) throws TooManyEvaluationsException {
        long j10 = 1 << (i10 - 1);
        double d13 = d12 / j10;
        double d14 = d11 + (d13 * 0.5d);
        double d15 = 0.0d;
        for (long j11 = 0; j11 < j10; j11++) {
            d15 += computeObjectiveValue(d14);
            d14 += d13;
        }
        return (d10 + (d15 * d13)) * 0.5d;
    }

    @Override
    public double doIntegrate() throws MathIllegalArgumentException, TooManyEvaluationsException, MaxCountExceededException {
        double stage;
        long j10;
        double min = getMin();
        double max = getMax() - min;
        double computeObjectiveValue = computeObjectiveValue((max * 0.5d) + min) * max;
        while (true) {
            incrementCount();
            int iterations = getIterations();
            stage = stage(iterations, computeObjectiveValue, min, max);
            if (iterations >= getMinimalIterationCount()) {
                double abs = FastMath.abs(stage - computeObjectiveValue);
                j10 = 4602678819172646912L;
                if (abs <= getRelativeAccuracy() * (FastMath.abs(computeObjectiveValue) + FastMath.abs(stage)) * 0.5d || abs <= getAbsoluteAccuracy()) {
                    break;
                }
            } else {
                j10 = 4602678819172646912L;
            }
            computeObjectiveValue = stage;
        }
        return stage;
    }

    public MidPointIntegrator(int i10, int i11) throws NotStrictlyPositiveException, NumberIsTooSmallException, NumberIsTooLargeException {
        super(i10, i11);
        if (i11 > 64) {
            throw new NumberIsTooLargeException(Integer.valueOf(i11), 64, false);
        }
    }

    public MidPointIntegrator() {
        super(3, 64);
    }
}
