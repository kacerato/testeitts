package org.apache.commons.math3.optim;

public abstract class AbstractConvergenceChecker<PAIR> implements ConvergenceChecker<PAIR> {
    private final double absoluteThreshold;
    private final double relativeThreshold;

    public AbstractConvergenceChecker(double d10, double d11) {
        this.relativeThreshold = d10;
        this.absoluteThreshold = d11;
    }

    @Override
    public abstract boolean converged(int i10, PAIR pair, PAIR pair2);

    public double getAbsoluteThreshold() {
        return this.absoluteThreshold;
    }

    public double getRelativeThreshold() {
        return this.relativeThreshold;
    }
}
