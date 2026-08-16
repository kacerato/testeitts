package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;

public interface IntegerDistribution {
    double cumulativeProbability(int i10);

    double cumulativeProbability(int i10, int i11) throws NumberIsTooLargeException;

    double getNumericalMean();

    double getNumericalVariance();

    int getSupportLowerBound();

    int getSupportUpperBound();

    int inverseCumulativeProbability(double d10) throws OutOfRangeException;

    boolean isSupportConnected();

    double probability(int i10);

    void reseedRandomGenerator(long j10);

    int sample();

    int[] sample(int i10);
}
