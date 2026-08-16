package org.apache.commons.math3.optim.nonlinear.scalar;

import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointValuePair;

public abstract class GradientMultivariateOptimizer extends MultivariateOptimizer {
    private MultivariateVectorFunction gradient;

    public GradientMultivariateOptimizer(ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
    }

    public double[] computeObjectiveGradient(double[] dArr) {
        return this.gradient.value(dArr);
    }

    @Override
    public void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof ObjectiveFunctionGradient) {
                this.gradient = ((ObjectiveFunctionGradient) optimizationData).getObjectiveFunctionGradient();
                return;
            }
        }
    }

    @Override
    public PointValuePair optimize(OptimizationData... optimizationDataArr) throws TooManyEvaluationsException {
        return super.optimize(optimizationDataArr);
    }
}
