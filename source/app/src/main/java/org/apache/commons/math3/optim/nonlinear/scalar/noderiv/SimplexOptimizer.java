package org.apache.commons.math3.optim.nonlinear.scalar.noderiv;

import java.util.Comparator;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointValuePair;
import org.apache.commons.math3.optim.SimpleValueChecker;
import org.apache.commons.math3.optim.nonlinear.scalar.GoalType;
import org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer;

public class SimplexOptimizer extends MultivariateOptimizer {
    private AbstractSimplex simplex;

    public SimplexOptimizer(ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
    }

    private void checkParameters() {
        if (this.simplex == null) {
            throw new NullArgumentException();
        }
        if (getLowerBound() != null || getUpperBound() != null) {
            throw new MathUnsupportedOperationException(LocalizedFormats.CONSTRAINT, new Object[0]);
        }
    }

    @Override
    public void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof AbstractSimplex) {
                this.simplex = (AbstractSimplex) optimizationData;
                return;
            }
        }
    }

    public SimplexOptimizer(double d10, double d11) {
        this(new SimpleValueChecker(d10, d11));
    }

    @Override
    public PointValuePair doOptimize() {
        checkParameters();
        MultivariateFunction multivariateFunction = new MultivariateFunction() {
            @Override
            public double value(double[] dArr) {
                return SimplexOptimizer.this.computeObjectiveValue(dArr);
            }
        };
        final boolean z10 = getGoalType() == GoalType.MINIMIZE;
        Comparator<PointValuePair> comparator = new Comparator<PointValuePair>() {
            @Override
            public int compare(PointValuePair pointValuePair, PointValuePair pointValuePair2) {
                double doubleValue = pointValuePair.getValue().doubleValue();
                double doubleValue2 = pointValuePair2.getValue().doubleValue();
                return z10 ? Double.compare(doubleValue, doubleValue2) : Double.compare(doubleValue2, doubleValue);
            }
        };
        this.simplex.build(getStartPoint());
        this.simplex.evaluate(multivariateFunction, comparator);
        ConvergenceChecker<PointValuePair> convergenceChecker = getConvergenceChecker();
        PointValuePair[] pointValuePairArr = null;
        while (true) {
            if (getIterations() > 0) {
                boolean z11 = true;
                for (int i10 = 0; i10 < this.simplex.getSize(); i10++) {
                    z11 = z11 && convergenceChecker.converged(0, pointValuePairArr[i10], this.simplex.getPoint(i10));
                }
                if (z11) {
                    return this.simplex.getPoint(0);
                }
            }
            pointValuePairArr = this.simplex.getPoints();
            this.simplex.iterate(multivariateFunction, comparator);
            incrementIterationCount();
        }
    }

    @Override
    public PointValuePair optimize(OptimizationData... optimizationDataArr) {
        return super.optimize(optimizationDataArr);
    }
}
