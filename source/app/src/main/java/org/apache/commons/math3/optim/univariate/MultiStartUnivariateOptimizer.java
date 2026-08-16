package org.apache.commons.math3.optim.univariate;

import java.util.Arrays;
import java.util.Comparator;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.optim.MaxEval;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.nonlinear.scalar.GoalType;
import org.apache.commons.math3.random.RandomGenerator;

public class MultiStartUnivariateOptimizer extends UnivariateOptimizer {
    private RandomGenerator generator;
    private int maxEvalIndex;
    private OptimizationData[] optimData;
    private UnivariatePointValuePair[] optima;
    private final UnivariateOptimizer optimizer;
    private int searchIntervalIndex;
    private int starts;
    private int totalEvaluations;

    public MultiStartUnivariateOptimizer(UnivariateOptimizer univariateOptimizer, int i10, RandomGenerator randomGenerator) {
        super(univariateOptimizer.getConvergenceChecker());
        this.maxEvalIndex = -1;
        this.searchIntervalIndex = -1;
        if (i10 < 1) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i10));
        }
        this.optimizer = univariateOptimizer;
        this.starts = i10;
        this.generator = randomGenerator;
    }

    private void sortPairs(final GoalType goalType) {
        Arrays.sort(this.optima, new Comparator<UnivariatePointValuePair>() {
            @Override
            public int compare(UnivariatePointValuePair univariatePointValuePair, UnivariatePointValuePair univariatePointValuePair2) {
                if (univariatePointValuePair == null) {
                    return univariatePointValuePair2 == null ? 0 : 1;
                }
                if (univariatePointValuePair2 == null) {
                    return -1;
                }
                double value = univariatePointValuePair.getValue();
                double value2 = univariatePointValuePair2.getValue();
                return goalType == GoalType.MINIMIZE ? Double.compare(value, value2) : Double.compare(value2, value);
            }
        });
    }

    @Override
    public int getEvaluations() {
        return this.totalEvaluations;
    }

    public UnivariatePointValuePair[] getOptima() {
        UnivariatePointValuePair[] univariatePointValuePairArr = this.optima;
        if (univariatePointValuePairArr != null) {
            return (UnivariatePointValuePair[]) univariatePointValuePairArr.clone();
        }
        throw new MathIllegalStateException(LocalizedFormats.NO_OPTIMUM_COMPUTED_YET, new Object[0]);
    }

    @Override
    public UnivariatePointValuePair doOptimize() {
        int i10 = 0;
        while (true) {
            OptimizationData[] optimizationDataArr = this.optimData;
            if (i10 >= optimizationDataArr.length) {
                break;
            }
            OptimizationData optimizationData = optimizationDataArr[i10];
            if (optimizationData instanceof MaxEval) {
                optimizationDataArr[i10] = null;
                this.maxEvalIndex = i10;
            } else if (optimizationData instanceof SearchInterval) {
                optimizationDataArr[i10] = null;
                this.searchIntervalIndex = i10;
            }
            i10++;
        }
        if (this.maxEvalIndex != -1) {
            if (this.searchIntervalIndex != -1) {
                this.optima = new UnivariatePointValuePair[this.starts];
                this.totalEvaluations = 0;
                int maxEvaluations = getMaxEvaluations();
                double min = getMin();
                double max = getMax();
                double startValue = getStartValue();
                int i11 = 0;
                RuntimeException e10 = null;
                while (i11 < this.starts) {
                    try {
                        this.optimData[this.maxEvalIndex] = new MaxEval(maxEvaluations - this.totalEvaluations);
                        this.optimData[this.searchIntervalIndex] = new SearchInterval(min, max, i11 == 0 ? startValue : (this.generator.nextDouble() * (max - min)) + min);
                        this.optima[i11] = this.optimizer.optimize(this.optimData);
                    } catch (RuntimeException e11) {
                        e10 = e11;
                        this.optima[i11] = null;
                    }
                    this.totalEvaluations += this.optimizer.getEvaluations();
                    i11++;
                }
                sortPairs(getGoalType());
                UnivariatePointValuePair univariatePointValuePair = this.optima[0];
                if (univariatePointValuePair != null) {
                    return univariatePointValuePair;
                }
                throw e10;
            }
            throw new MathIllegalStateException();
        }
        throw new MathIllegalStateException();
    }

    @Override
    public UnivariatePointValuePair optimize(OptimizationData... optimizationDataArr) {
        this.optimData = optimizationDataArr;
        return super.optimize(optimizationDataArr);
    }
}
