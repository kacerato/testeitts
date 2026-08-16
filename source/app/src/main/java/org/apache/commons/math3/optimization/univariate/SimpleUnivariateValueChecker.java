package org.apache.commons.math3.optimization.univariate;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.optimization.AbstractConvergenceChecker;
import org.apache.commons.math3.util.FastMath;

@Deprecated
public class SimpleUnivariateValueChecker extends AbstractConvergenceChecker<UnivariatePointValuePair> {
    private static final int ITERATION_CHECK_DISABLED = -1;
    private final int maxIterationCount;

    @Deprecated
    public SimpleUnivariateValueChecker() {
        this.maxIterationCount = -1;
    }

    @Override
    public boolean converged(int i10, UnivariatePointValuePair univariatePointValuePair, UnivariatePointValuePair univariatePointValuePair2) {
        int i11 = this.maxIterationCount;
        if (i11 != -1 && i10 >= i11) {
            return true;
        }
        double value = univariatePointValuePair.getValue();
        double value2 = univariatePointValuePair2.getValue();
        double abs = FastMath.abs(value - value2);
        return abs <= FastMath.max(FastMath.abs(value), FastMath.abs(value2)) * getRelativeThreshold() || abs <= getAbsoluteThreshold();
    }

    public SimpleUnivariateValueChecker(double d10, double d11) {
        super(d10, d11);
        this.maxIterationCount = -1;
    }

    public SimpleUnivariateValueChecker(double d10, double d11, int i10) {
        super(d10, d11);
        if (i10 > 0) {
            this.maxIterationCount = i10;
            return;
        }
        throw new NotStrictlyPositiveException(Integer.valueOf(i10));
    }
}
