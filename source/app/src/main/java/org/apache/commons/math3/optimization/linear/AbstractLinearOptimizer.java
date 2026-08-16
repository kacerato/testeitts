package org.apache.commons.math3.optimization.linear;

import java.util.Collection;
import java.util.Collections;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.PointValuePair;

@Deprecated
public abstract class AbstractLinearOptimizer implements LinearOptimizer {
    public static final int DEFAULT_MAX_ITERATIONS = 100;
    private LinearObjectiveFunction function;
    private GoalType goal;
    private int iterations;
    private Collection<LinearConstraint> linearConstraints;
    private int maxIterations;
    private boolean nonNegative;

    public AbstractLinearOptimizer() {
        setMaxIterations(100);
    }

    public abstract PointValuePair doOptimize() throws MathIllegalStateException;

    public Collection<LinearConstraint> getConstraints() {
        return Collections.unmodifiableCollection(this.linearConstraints);
    }

    public LinearObjectiveFunction getFunction() {
        return this.function;
    }

    public GoalType getGoalType() {
        return this.goal;
    }

    @Override
    public int getIterations() {
        return this.iterations;
    }

    @Override
    public int getMaxIterations() {
        return this.maxIterations;
    }

    public void incrementIterationsCounter() throws MaxCountExceededException {
        int i10 = this.iterations + 1;
        this.iterations = i10;
        if (i10 > this.maxIterations) {
            throw new MaxCountExceededException(Integer.valueOf(this.maxIterations));
        }
    }

    @Override
    public PointValuePair optimize(LinearObjectiveFunction linearObjectiveFunction, Collection<LinearConstraint> collection, GoalType goalType, boolean z10) throws MathIllegalStateException {
        this.function = linearObjectiveFunction;
        this.linearConstraints = collection;
        this.goal = goalType;
        this.nonNegative = z10;
        this.iterations = 0;
        return doOptimize();
    }

    public boolean restrictToNonNegative() {
        return this.nonNegative;
    }

    @Override
    public void setMaxIterations(int i10) {
        this.maxIterations = i10;
    }
}
