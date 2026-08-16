package org.apache.commons.math3.optimization;

import org.apache.commons.math3.util.Precision;

@Deprecated
public abstract class AbstractConvergenceChecker<PAIR> implements ConvergenceChecker<PAIR> {
    private final double absoluteThreshold;
    private final double relativeThreshold;

    @Deprecated
    private static final double DEFAULT_RELATIVE_THRESHOLD = Precision.EPSILON * 100.0d;

    @Deprecated
    private static final double DEFAULT_ABSOLUTE_THRESHOLD = Precision.SAFE_MIN * 100.0d;

    @Deprecated
    public AbstractConvergenceChecker() {
        this.relativeThreshold = DEFAULT_RELATIVE_THRESHOLD;
        this.absoluteThreshold = DEFAULT_ABSOLUTE_THRESHOLD;
    }

    @Override
    public abstract boolean converged(int i10, PAIR pair, PAIR pair2);

    public double getAbsoluteThreshold() {
        return this.absoluteThreshold;
    }

    public double getRelativeThreshold() {
        return this.relativeThreshold;
    }

    public AbstractConvergenceChecker(double d10, double d11) {
        this.relativeThreshold = d10;
        this.absoluteThreshold = d11;
    }
}
