package org.apache.commons.math3.optimization.univariate;

import java.util.Arrays;
import java.util.Comparator;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.random.RandomGenerator;

@Deprecated
public class UnivariateMultiStartOptimizer<FUNC extends UnivariateFunction> implements BaseUnivariateOptimizer<FUNC> {
    private RandomGenerator generator;
    private int maxEvaluations;
    private UnivariatePointValuePair[] optima;
    private final BaseUnivariateOptimizer<FUNC> optimizer;
    private int starts;
    private int totalEvaluations;

    public UnivariateMultiStartOptimizer(BaseUnivariateOptimizer<FUNC> baseUnivariateOptimizer, int i10, RandomGenerator randomGenerator) {
        if (baseUnivariateOptimizer == null || randomGenerator == null) {
            throw new NullArgumentException();
        }
        if (i10 < 1) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i10));
        }
        this.optimizer = baseUnivariateOptimizer;
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
    public ConvergenceChecker<UnivariatePointValuePair> getConvergenceChecker() {
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

    public UnivariatePointValuePair[] getOptima() {
        UnivariatePointValuePair[] univariatePointValuePairArr = this.optima;
        if (univariatePointValuePairArr != null) {
            return (UnivariatePointValuePair[]) univariatePointValuePairArr.clone();
        }
        throw new MathIllegalStateException(LocalizedFormats.NO_OPTIMUM_COMPUTED_YET, new Object[0]);
    }

    @Override
    public UnivariatePointValuePair optimize(int i10, FUNC func, GoalType goalType, double d10, double d11) {
        return optimize(i10, func, goalType, d10, d11, d10 + ((d11 - d10) * 0.5d));
    }

    @Override
    public UnivariatePointValuePair optimize(int i10, FUNC func, GoalType goalType, double d10, double d11, double d12) {
        double nextDouble;
        this.optima = new UnivariatePointValuePair[this.starts];
        this.totalEvaluations = 0;
        RuntimeException e10 = null;
        for (int i11 = 0; i11 < this.starts; i11++) {
            if (i11 == 0) {
                nextDouble = d12;
            } else {
                try {
                    nextDouble = d10 + (this.generator.nextDouble() * (d11 - d10));
                } catch (RuntimeException e11) {
                    e10 = e11;
                    this.optima[i11] = null;
                }
            }
            this.optima[i11] = this.optimizer.optimize(i10 - this.totalEvaluations, func, goalType, d10, d11, nextDouble);
            this.totalEvaluations += this.optimizer.getEvaluations();
        }
        sortPairs(goalType);
        UnivariatePointValuePair univariatePointValuePair = this.optima[0];
        if (univariatePointValuePair != null) {
            return univariatePointValuePair;
        }
        throw e10;
    }
}
