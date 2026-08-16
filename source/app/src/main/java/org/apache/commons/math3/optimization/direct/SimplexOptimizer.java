package org.apache.commons.math3.optimization.direct;

import java.util.Comparator;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.MultivariateOptimizer;
import org.apache.commons.math3.optimization.OptimizationData;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.optimization.SimpleValueChecker;

@Deprecated
public class SimplexOptimizer extends BaseAbstractMultivariateOptimizer<MultivariateFunction> implements MultivariateOptimizer {
    private AbstractSimplex simplex;

    @Deprecated
    public SimplexOptimizer() {
        this(new SimpleValueChecker());
    }

    private void parseOptimizationData(OptimizationData... optimizationDataArr) {
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof AbstractSimplex) {
                this.simplex = (AbstractSimplex) optimizationData;
            }
        }
    }

    @Override
    public PointValuePair doOptimize() {
        if (this.simplex == null) {
            throw new NullArgumentException();
        }
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
        int i10 = 0;
        while (true) {
            if (i10 > 0) {
                boolean z11 = true;
                for (int i11 = 0; i11 < this.simplex.getSize(); i11++) {
                    z11 = z11 && convergenceChecker.converged(i10, pointValuePairArr[i11], this.simplex.getPoint(i11));
                }
                if (z11) {
                    return this.simplex.getPoint(0);
                }
            }
            pointValuePairArr = this.simplex.getPoints();
            this.simplex.iterate(multivariateFunction, comparator);
            i10++;
        }
    }

    @Override
    public PointValuePair optimizeInternal(int i10, MultivariateFunction multivariateFunction, GoalType goalType, OptimizationData... optimizationDataArr) {
        parseOptimizationData(optimizationDataArr);
        return super.optimizeInternal(i10, (int) multivariateFunction, goalType, optimizationDataArr);
    }

    @Deprecated
    public void setSimplex(AbstractSimplex abstractSimplex) {
        parseOptimizationData(abstractSimplex);
    }

    public SimplexOptimizer(ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
    }

    public SimplexOptimizer(double d10, double d11) {
        this(new SimpleValueChecker(d10, d11));
    }
}
