package org.apache.commons.math3.stat.descriptive;

import org.apache.commons.math3.exception.MathIllegalArgumentException;

public interface StorelessUnivariateStatistic extends UnivariateStatistic {
    void clear();

    StorelessUnivariateStatistic copy();

    long getN();

    double getResult();

    void increment(double d10);

    void incrementAll(double[] dArr) throws MathIllegalArgumentException;

    void incrementAll(double[] dArr, int i10, int i11) throws MathIllegalArgumentException;
}
