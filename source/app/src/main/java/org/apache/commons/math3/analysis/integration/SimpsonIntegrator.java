package org.apache.commons.math3.analysis.integration;

import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.FastMath;

public class SimpsonIntegrator extends BaseAbstractUnivariateIntegrator {
    public static final int SIMPSON_MAX_ITERATIONS_COUNT = 64;

    public SimpsonIntegrator(double d10, double d11, int i10, int i11) throws NotStrictlyPositiveException, NumberIsTooSmallException, NumberIsTooLargeException {
        super(d10, d11, i10, i11);
        if (i11 > 64) {
            throw new NumberIsTooLargeException(Integer.valueOf(i11), 64, false);
        }
    }

    @Override
    public double doIntegrate() throws TooManyEvaluationsException, MaxCountExceededException {
        double d10;
        TrapezoidIntegrator trapezoidIntegrator = new TrapezoidIntegrator();
        if (getMinimalIterationCount() == 1) {
            return ((trapezoidIntegrator.stage(this, 1) * 4.0d) - trapezoidIntegrator.stage(this, 0)) / 3.0d;
        }
        double stage = trapezoidIntegrator.stage(this, 0);
        double d11 = 0.0d;
        while (true) {
            double stage2 = trapezoidIntegrator.stage(this, getIterations());
            incrementCount();
            d10 = ((stage2 * 4.0d) - stage) / 3.0d;
            if (getIterations() >= getMinimalIterationCount()) {
                double abs = FastMath.abs(d10 - d11);
                if (abs <= getRelativeAccuracy() * (FastMath.abs(d11) + FastMath.abs(d10)) * 0.5d || abs <= getAbsoluteAccuracy()) {
                    break;
                }
            }
            d11 = d10;
            stage = stage2;
        }
        return d10;
    }

    public SimpsonIntegrator(int i10, int i11) throws NotStrictlyPositiveException, NumberIsTooSmallException, NumberIsTooLargeException {
        super(i10, i11);
        if (i11 > 64) {
            throw new NumberIsTooLargeException(Integer.valueOf(i11), 64, false);
        }
    }

    public SimpsonIntegrator() {
        super(3, 64);
    }
}
