package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;

public interface RealDistribution {
    double cumulativeProbability(double d10);

    @Deprecated
    double cumulativeProbability(double d10, double d11) throws NumberIsTooLargeException;

    double density(double d10);

    double getNumericalMean();

    double getNumericalVariance();

    double getSupportLowerBound();

    double getSupportUpperBound();

    double inverseCumulativeProbability(double d10) throws OutOfRangeException;

    boolean isSupportConnected();

    @Deprecated
    boolean isSupportLowerBoundInclusive();

    @Deprecated
    boolean isSupportUpperBoundInclusive();

    double probability(double d10);

    void reseedRandomGenerator(long j10);

    double sample();

    double[] sample(int i10);
}
