package org.apache.commons.math3.transform;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;

public interface RealTransformer {
    double[] transform(UnivariateFunction univariateFunction, double d10, double d11, int i10, TransformType transformType) throws NonMonotonicSequenceException, NotStrictlyPositiveException, MathIllegalArgumentException;

    double[] transform(double[] dArr, TransformType transformType) throws MathIllegalArgumentException;
}
