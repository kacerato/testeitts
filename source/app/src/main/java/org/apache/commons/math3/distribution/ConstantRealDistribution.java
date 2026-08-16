package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.OutOfRangeException;

public class ConstantRealDistribution extends AbstractRealDistribution {
    private static final long serialVersionUID = -4157745166772046273L;
    private final double value;

    public ConstantRealDistribution(double d10) {
        super(null);
        this.value = d10;
    }

    @Override
    public double cumulativeProbability(double d10) {
        return d10 < this.value ? 0.0d : 1.0d;
    }

    @Override
    public double density(double d10) {
        return d10 == this.value ? 1.0d : 0.0d;
    }

    @Override
    public double getNumericalMean() {
        return this.value;
    }

    @Override
    public double getNumericalVariance() {
        return 0.0d;
    }

    @Override
    public double getSupportLowerBound() {
        return this.value;
    }

    @Override
    public double getSupportUpperBound() {
        return this.value;
    }

    @Override
    public double inverseCumulativeProbability(double d10) throws OutOfRangeException {
        if (d10 < 0.0d || d10 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d10), 0, 1);
        }
        return this.value;
    }

    @Override
    public boolean isSupportConnected() {
        return true;
    }

    @Override
    public boolean isSupportLowerBoundInclusive() {
        return true;
    }

    @Override
    public boolean isSupportUpperBoundInclusive() {
        return true;
    }

    @Override
    public void reseedRandomGenerator(long j10) {
    }

    @Override
    public double sample() {
        return this.value;
    }
}
