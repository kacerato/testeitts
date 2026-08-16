package org.apache.commons.math3.stat.interval;

import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public class ConfidenceInterval {
    private double confidenceLevel;
    private double lowerBound;
    private double upperBound;

    public ConfidenceInterval(double d10, double d11, double d12) {
        checkParameters(d10, d11, d12);
        this.lowerBound = d10;
        this.upperBound = d11;
        this.confidenceLevel = d12;
    }

    private void checkParameters(double d10, double d11, double d12) {
        if (d10 >= d11) {
            throw new MathIllegalArgumentException(LocalizedFormats.LOWER_BOUND_NOT_BELOW_UPPER_BOUND, Double.valueOf(d10), Double.valueOf(d11));
        }
        if (d12 <= 0.0d || d12 >= 1.0d) {
            throw new MathIllegalArgumentException(LocalizedFormats.OUT_OF_BOUNDS_CONFIDENCE_LEVEL, Double.valueOf(d12), 0, 1);
        }
    }

    public double getConfidenceLevel() {
        return this.confidenceLevel;
    }

    public double getLowerBound() {
        return this.lowerBound;
    }

    public double getUpperBound() {
        return this.upperBound;
    }

    public String toString() {
        return "[" + this.lowerBound + ";" + this.upperBound + "] (confidence level:" + this.confidenceLevel + ")";
    }
}
