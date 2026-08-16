package org.apache.commons.math3.optimization.general;

import org.apache.commons.math3.analysis.DifferentiableMultivariateFunction;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.analysis.differentiation.MultivariateDifferentiableFunction;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.DifferentiableMultivariateOptimizer;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateOptimizer;

@Deprecated
public abstract class AbstractScalarDifferentiableOptimizer extends BaseAbstractMultivariateOptimizer<DifferentiableMultivariateFunction> implements DifferentiableMultivariateOptimizer {
    private MultivariateVectorFunction gradient;

    @Deprecated
    public AbstractScalarDifferentiableOptimizer() {
    }

    public double[] computeObjectiveGradient(double[] dArr) {
        return this.gradient.value(dArr);
    }

    public PointValuePair optimize(int i10, MultivariateDifferentiableFunction multivariateDifferentiableFunction, GoalType goalType, double[] dArr) {
        return optimizeInternal(i10, FunctionUtils.toDifferentiableMultivariateFunction(multivariateDifferentiableFunction), goalType, dArr);
    }

    public AbstractScalarDifferentiableOptimizer(ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
    }

    @Override
    public PointValuePair optimizeInternal(int i10, DifferentiableMultivariateFunction differentiableMultivariateFunction, GoalType goalType, double[] dArr) {
        this.gradient = differentiableMultivariateFunction.gradient();
        return super.optimizeInternal(i10, (int) differentiableMultivariateFunction, goalType, dArr);
    }
}
