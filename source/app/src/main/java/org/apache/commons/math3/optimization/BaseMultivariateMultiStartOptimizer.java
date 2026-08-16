package org.apache.commons.math3.optimization;

import java.util.Arrays;
import java.util.Comparator;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomVectorGenerator;

@Deprecated
public class BaseMultivariateMultiStartOptimizer<FUNC extends MultivariateFunction> implements BaseMultivariateOptimizer<FUNC> {
    private RandomVectorGenerator generator;
    private int maxEvaluations;
    private PointValuePair[] optima;
    private final BaseMultivariateOptimizer<FUNC> optimizer;
    private int starts;
    private int totalEvaluations;

    public BaseMultivariateMultiStartOptimizer(BaseMultivariateOptimizer<FUNC> baseMultivariateOptimizer, int i10, RandomVectorGenerator randomVectorGenerator) {
        if (baseMultivariateOptimizer == null || randomVectorGenerator == null) {
            throw new NullArgumentException();
        }
        if (i10 < 1) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i10));
        }
        this.optimizer = baseMultivariateOptimizer;
        this.starts = i10;
        this.generator = randomVectorGenerator;
    }

    private void sortPairs(final GoalType goalType) {
        Arrays.sort(this.optima, new Comparator<PointValuePair>() {
            @Override
            public int compare(PointValuePair pointValuePair, PointValuePair pointValuePair2) {
                if (pointValuePair == null) {
                    return pointValuePair2 == null ? 0 : 1;
                }
                if (pointValuePair2 == null) {
                    return -1;
                }
                double doubleValue = pointValuePair.getValue().doubleValue();
                double doubleValue2 = pointValuePair2.getValue().doubleValue();
                return goalType == GoalType.MINIMIZE ? Double.compare(doubleValue, doubleValue2) : Double.compare(doubleValue2, doubleValue);
            }
        });
    }

    @Override
    public ConvergenceChecker<PointValuePair> getConvergenceChecker() {
        return this.optimizer.getConvergenceChecker();
    }

    @Override
    public int getEvaluations() {
        return this.totalEvaluations;
    }

    @Override
    public int getMaxEvaluations() {
        return this.maxEvaluations;
    }

    public PointValuePair[] getOptima() {
        PointValuePair[] pointValuePairArr = this.optima;
        if (pointValuePairArr != null) {
            return (PointValuePair[]) pointValuePairArr.clone();
        }
        throw new MathIllegalStateException(LocalizedFormats.NO_OPTIMUM_COMPUTED_YET, new Object[0]);
    }

    @Override
    public PointValuePair optimize(int i10, FUNC func, GoalType goalType, double[] dArr) {
        this.maxEvaluations = i10;
        this.optima = new PointValuePair[this.starts];
        this.totalEvaluations = 0;
        int i11 = 0;
        RuntimeException e10 = null;
        while (i11 < this.starts) {
            try {
                this.optima[i11] = this.optimizer.optimize(i10 - this.totalEvaluations, func, goalType, i11 == 0 ? dArr : this.generator.nextVector());
            } catch (RuntimeException e11) {
                e10 = e11;
                this.optima[i11] = null;
            }
            this.totalEvaluations += this.optimizer.getEvaluations();
            i11++;
        }
        sortPairs(goalType);
        PointValuePair pointValuePair = this.optima[0];
        if (pointValuePair != null) {
            return pointValuePair;
        }
        throw e10;
    }
}
