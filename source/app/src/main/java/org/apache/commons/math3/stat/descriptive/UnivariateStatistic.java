package org.apache.commons.math3.stat.descriptive;

import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.util.MathArrays;

public interface UnivariateStatistic extends MathArrays.Function {
    UnivariateStatistic copy();

    @Override
    double evaluate(double[] dArr) throws MathIllegalArgumentException;

    @Override
    double evaluate(double[] dArr, int i10, int i11) throws MathIllegalArgumentException;
}
