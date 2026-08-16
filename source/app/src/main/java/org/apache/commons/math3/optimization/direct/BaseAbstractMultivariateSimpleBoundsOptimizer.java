package org.apache.commons.math3.optimization.direct;

import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.optimization.BaseMultivariateOptimizer;
import org.apache.commons.math3.optimization.BaseMultivariateSimpleBoundsOptimizer;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.InitialGuess;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.optimization.SimpleBounds;

@Deprecated
public abstract class BaseAbstractMultivariateSimpleBoundsOptimizer<FUNC extends MultivariateFunction> extends BaseAbstractMultivariateOptimizer<FUNC> implements BaseMultivariateOptimizer<FUNC>, BaseMultivariateSimpleBoundsOptimizer<FUNC> {
    @Deprecated
    public BaseAbstractMultivariateSimpleBoundsOptimizer() {
    }

    @Override
    public PointValuePair optimize(int i10, FUNC func, GoalType goalType, double[] dArr) {
        return super.optimizeInternal(i10, (int) func, goalType, new InitialGuess(dArr));
    }

    public BaseAbstractMultivariateSimpleBoundsOptimizer(ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
    }

    @Override
    public PointValuePair optimize(int i10, FUNC func, GoalType goalType, double[] dArr, double[] dArr2, double[] dArr3) {
        return super.optimizeInternal(i10, (int) func, goalType, new InitialGuess(dArr), new SimpleBounds(dArr2, dArr3));
    }
}
