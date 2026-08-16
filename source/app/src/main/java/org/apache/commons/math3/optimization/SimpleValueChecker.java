package org.apache.commons.math3.optimization;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.util.FastMath;

@Deprecated
public class SimpleValueChecker extends AbstractConvergenceChecker<PointValuePair> {
    private static final int ITERATION_CHECK_DISABLED = -1;
    private final int maxIterationCount;

    @Deprecated
    public SimpleValueChecker() {
        this.maxIterationCount = -1;
    }

    @Override
    public boolean converged(int i10, PointValuePair pointValuePair, PointValuePair pointValuePair2) {
        int i11 = this.maxIterationCount;
        if (i11 != -1 && i10 >= i11) {
            return true;
        }
        double doubleValue = pointValuePair.getValue().doubleValue();
        double doubleValue2 = pointValuePair2.getValue().doubleValue();
        double abs = FastMath.abs(doubleValue - doubleValue2);
        return abs <= FastMath.max(FastMath.abs(doubleValue), FastMath.abs(doubleValue2)) * getRelativeThreshold() || abs <= getAbsoluteThreshold();
    }

    public SimpleValueChecker(double d10, double d11) {
        super(d10, d11);
        this.maxIterationCount = -1;
    }

    public SimpleValueChecker(double d10, double d11, int i10) {
        super(d10, d11);
        if (i10 > 0) {
            this.maxIterationCount = i10;
            return;
        }
        throw new NotStrictlyPositiveException(Integer.valueOf(i10));
    }
}
