package org.apache.commons.math3.optimization;

import org.apache.commons.math3.analysis.differentiation.MultivariateDifferentiableFunction;
import org.apache.commons.math3.random.RandomVectorGenerator;

@Deprecated
public class MultivariateDifferentiableMultiStartOptimizer extends BaseMultivariateMultiStartOptimizer<MultivariateDifferentiableFunction> implements MultivariateDifferentiableOptimizer {
    public MultivariateDifferentiableMultiStartOptimizer(MultivariateDifferentiableOptimizer multivariateDifferentiableOptimizer, int i10, RandomVectorGenerator randomVectorGenerator) {
        super(multivariateDifferentiableOptimizer, i10, randomVectorGenerator);
    }
}
