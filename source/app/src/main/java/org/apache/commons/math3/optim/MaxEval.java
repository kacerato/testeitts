package org.apache.commons.math3.optim;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;

public class MaxEval implements OptimizationData {
    private final int maxEval;

    public MaxEval(int i10) {
        if (i10 <= 0) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i10));
        }
        this.maxEval = i10;
    }

    public static MaxEval unlimited() {
        return new MaxEval(Integer.MAX_VALUE);
    }

    public int getMaxEval() {
        return this.maxEval;
    }
}
