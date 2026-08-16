package org.apache.commons.math3.analysis.integration;

import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.FastMath;

public class RombergIntegrator extends BaseAbstractUnivariateIntegrator {
    public static final int ROMBERG_MAX_ITERATIONS_COUNT = 32;

    public RombergIntegrator(double d10, double d11, int i10, int i11) throws NotStrictlyPositiveException, NumberIsTooSmallException, NumberIsTooLargeException {
        super(d10, d11, i10, i11);
        if (i11 > 32) {
            throw new NumberIsTooLargeException(Integer.valueOf(i11), 32, false);
        }
    }

    @Override
    public double doIntegrate() throws TooManyEvaluationsException, MaxCountExceededException {
        double d10;
        int maximalIterationCount = getMaximalIterationCount() + 1;
        double[] dArr = new double[maximalIterationCount];
        double[] dArr2 = new double[maximalIterationCount];
        TrapezoidIntegrator trapezoidIntegrator = new TrapezoidIntegrator();
        dArr2[0] = trapezoidIntegrator.stage(this, 0);
        incrementCount();
        double d11 = dArr2[0];
        while (true) {
            int iterations = getIterations();
            dArr[0] = trapezoidIntegrator.stage(this, iterations);
            incrementCount();
            for (int i10 = 1; i10 <= iterations; i10++) {
                int i11 = i10 - 1;
                double d12 = dArr[i11];
                dArr[i10] = d12 + ((d12 - dArr2[i11]) / ((1 << (i10 * 2)) - 1));
            }
            d10 = dArr[iterations];
            if (iterations >= getMinimalIterationCount()) {
                double abs = FastMath.abs(d10 - d11);
                if (abs <= getRelativeAccuracy() * (FastMath.abs(d11) + FastMath.abs(d10)) * 0.5d || abs <= getAbsoluteAccuracy()) {
                    break;
                }
            }
            d11 = d10;
            double[] dArr3 = dArr;
            dArr = dArr2;
            dArr2 = dArr3;
        }
        return d10;
    }

    public RombergIntegrator(int i10, int i11) throws NotStrictlyPositiveException, NumberIsTooSmallException, NumberIsTooLargeException {
        super(i10, i11);
        if (i11 > 32) {
            throw new NumberIsTooLargeException(Integer.valueOf(i11), 32, false);
        }
    }

    public RombergIntegrator() {
        super(3, 32);
    }
}
