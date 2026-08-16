package org.apache.commons.math3.optim;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;

public class MaxIter implements OptimizationData {
    private final int maxIter;

    public MaxIter(int i10) {
        if (i10 <= 0) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i10));
        }
        this.maxIter = i10;
    }

    public static MaxIter unlimited() {
        return new MaxIter(Integer.MAX_VALUE);
    }

    public int getMaxIter() {
        return this.maxIter;
    }
}
