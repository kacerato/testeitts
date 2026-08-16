package org.apache.commons.math3.util;

import org.apache.commons.math3.exception.MathIllegalArgumentException;

public interface PivotingStrategyInterface {
    int pivotIndex(double[] dArr, int i10, int i11) throws MathIllegalArgumentException;
}
