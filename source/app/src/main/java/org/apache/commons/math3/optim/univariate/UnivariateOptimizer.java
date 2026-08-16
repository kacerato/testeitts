package org.apache.commons.math3.optim.univariate;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.optim.BaseOptimizer;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.nonlinear.scalar.GoalType;

public abstract class UnivariateOptimizer extends BaseOptimizer<UnivariatePointValuePair> {
    private UnivariateFunction function;
    private GoalType goal;
    private double max;
    private double min;
    private double start;

    public UnivariateOptimizer(ConvergenceChecker<UnivariatePointValuePair> convergenceChecker) {
        super(convergenceChecker);
    }

    public double computeObjectiveValue(double d10) {
        super.incrementEvaluationCount();
        return this.function.value(d10);
    }

    public GoalType getGoalType() {
        return this.goal;
    }

    public double getMax() {
        return this.max;
    }

    public double getMin() {
        return this.min;
    }

    public double getStartValue() {
        return this.start;
    }

    @Override
    public void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof SearchInterval) {
                SearchInterval searchInterval = (SearchInterval) optimizationData;
                this.min = searchInterval.getMin();
                this.max = searchInterval.getMax();
                this.start = searchInterval.getStartValue();
            } else if (optimizationData instanceof UnivariateObjectiveFunction) {
                this.function = ((UnivariateObjectiveFunction) optimizationData).getObjectiveFunction();
            } else if (optimizationData instanceof GoalType) {
                this.goal = (GoalType) optimizationData;
            }
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public UnivariatePointValuePair optimize(OptimizationData... optimizationDataArr) throws TooManyEvaluationsException {
        return (UnivariatePointValuePair) super.optimize(optimizationDataArr);
    }
}
