package org.apache.commons.math3.optimization.univariate;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.util.Incrementor;

@Deprecated
public abstract class BaseAbstractUnivariateOptimizer implements UnivariateOptimizer {
    private final ConvergenceChecker<UnivariatePointValuePair> checker;
    private final Incrementor evaluations = new Incrementor();
    private UnivariateFunction function;
    private GoalType goal;
    private double searchMax;
    private double searchMin;
    private double searchStart;

    public BaseAbstractUnivariateOptimizer(ConvergenceChecker<UnivariatePointValuePair> convergenceChecker) {
        this.checker = convergenceChecker;
    }

    public double computeObjectiveValue(double d10) {
        try {
            this.evaluations.incrementCount();
            return this.function.value(d10);
        } catch (MaxCountExceededException e10) {
            throw new TooManyEvaluationsException(e10.getMax());
        }
    }

    public abstract UnivariatePointValuePair doOptimize();

    @Override
    public ConvergenceChecker<UnivariatePointValuePair> getConvergenceChecker() {
        return this.checker;
    }

    @Override
    public int getEvaluations() {
        return this.evaluations.getCount();
    }

    public GoalType getGoalType() {
        return this.goal;
    }

    public double getMax() {
        return this.searchMax;
    }

    @Override
    public int getMaxEvaluations() {
        return this.evaluations.getMaximalCount();
    }

    public double getMin() {
        return this.searchMin;
    }

    public double getStartValue() {
        return this.searchStart;
    }

    @Override
    public UnivariatePointValuePair optimize(int i10, UnivariateFunction univariateFunction, GoalType goalType, double d10, double d11, double d12) {
        if (univariateFunction == null) {
            throw new NullArgumentException();
        }
        if (goalType != null) {
            this.searchMin = d10;
            this.searchMax = d11;
            this.searchStart = d12;
            this.goal = goalType;
            this.function = univariateFunction;
            this.evaluations.setMaximalCount(i10);
            this.evaluations.resetCount();
            return doOptimize();
        }
        throw new NullArgumentException();
    }

    @Override
    public UnivariatePointValuePair optimize(int i10, UnivariateFunction univariateFunction, GoalType goalType, double d10, double d11) {
        return optimize(i10, univariateFunction, goalType, d10, d11, d10 + ((d11 - d10) * 0.5d));
    }
}
