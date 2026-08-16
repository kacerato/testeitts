package org.apache.commons.math3.optimization.general;

import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.analysis.differentiation.GradientFunction;
import org.apache.commons.math3.analysis.differentiation.MultivariateDifferentiableFunction;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.InitialGuess;
import org.apache.commons.math3.optimization.OptimizationData;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateOptimizer;

@Deprecated
public abstract class AbstractDifferentiableOptimizer extends BaseAbstractMultivariateOptimizer<MultivariateDifferentiableFunction> {
    private MultivariateVectorFunction gradient;

    public AbstractDifferentiableOptimizer(ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
    }

    public double[] computeObjectiveGradient(double[] dArr) {
        return this.gradient.value(dArr);
    }

    @Override
    @Deprecated
    public PointValuePair optimizeInternal(int i10, MultivariateDifferentiableFunction multivariateDifferentiableFunction, GoalType goalType, double[] dArr) {
        return optimizeInternal(i10, multivariateDifferentiableFunction, goalType, new InitialGuess(dArr));
    }

    @Override
    public PointValuePair optimizeInternal(int i10, MultivariateDifferentiableFunction multivariateDifferentiableFunction, GoalType goalType, OptimizationData... optimizationDataArr) {
        this.gradient = new GradientFunction(multivariateDifferentiableFunction);
        return super.optimizeInternal(i10, (int) multivariateDifferentiableFunction, goalType, optimizationDataArr);
    }
}
