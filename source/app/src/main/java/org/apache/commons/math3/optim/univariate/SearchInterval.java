package org.apache.commons.math3.optim.univariate;

import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.optim.OptimizationData;

public class SearchInterval implements OptimizationData {
    private final double lower;
    private final double start;
    private final double upper;

    public SearchInterval(double d10, double d11, double d12) {
        if (d10 >= d11) {
            throw new NumberIsTooLargeException(Double.valueOf(d10), Double.valueOf(d11), false);
        }
        if (d12 >= d10 && d12 <= d11) {
            this.lower = d10;
            this.upper = d11;
            this.start = d12;
            return;
        }
        throw new OutOfRangeException(Double.valueOf(d12), Double.valueOf(d10), Double.valueOf(d11));
    }

    public double getMax() {
        return this.upper;
    }

    public double getMin() {
        return this.lower;
    }

    public double getStartValue() {
        return this.start;
    }

    public SearchInterval(double d10, double d11) {
        this(d10, d11, (d10 + d11) * 0.5d);
    }
}
