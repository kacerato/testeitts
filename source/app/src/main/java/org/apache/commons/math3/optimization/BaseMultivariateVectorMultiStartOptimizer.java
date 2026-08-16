package org.apache.commons.math3.optimization;

import java.util.Arrays;
import java.util.Comparator;
import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomVectorGenerator;

@Deprecated
public class BaseMultivariateVectorMultiStartOptimizer<FUNC extends MultivariateVectorFunction> implements BaseMultivariateVectorOptimizer<FUNC> {
    private RandomVectorGenerator generator;
    private int maxEvaluations;
    private PointVectorValuePair[] optima;
    private final BaseMultivariateVectorOptimizer<FUNC> optimizer;
    private int starts;
    private int totalEvaluations;

    public BaseMultivariateVectorMultiStartOptimizer(BaseMultivariateVectorOptimizer<FUNC> baseMultivariateVectorOptimizer, int i10, RandomVectorGenerator randomVectorGenerator) {
        if (baseMultivariateVectorOptimizer == null || randomVectorGenerator == null) {
            throw new NullArgumentException();
        }
        if (i10 < 1) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i10));
        }
        this.optimizer = baseMultivariateVectorOptimizer;
        this.starts = i10;
        this.generator = randomVectorGenerator;
    }

    private void sortPairs(final double[] dArr, final double[] dArr2) {
        Arrays.sort(this.optima, new Comparator<PointVectorValuePair>() {
            private double weightedResidual(PointVectorValuePair pointVectorValuePair) {
                double[] valueRef = pointVectorValuePair.getValueRef();
                double d10 = 0.0d;
                for (int i10 = 0; i10 < valueRef.length; i10++) {
                    double d11 = valueRef[i10] - dArr[i10];
                    d10 += dArr2[i10] * d11 * d11;
                }
                return d10;
            }

            @Override
            public int compare(PointVectorValuePair pointVectorValuePair, PointVectorValuePair pointVectorValuePair2) {
                if (pointVectorValuePair == null) {
                    return pointVectorValuePair2 == null ? 0 : 1;
                }
                if (pointVectorValuePair2 == null) {
                    return -1;
                }
                return Double.compare(weightedResidual(pointVectorValuePair), weightedResidual(pointVectorValuePair2));
            }
        });
    }

    @Override
    public ConvergenceChecker<PointVectorValuePair> getConvergenceChecker() {
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

    public PointVectorValuePair[] getOptima() {
        PointVectorValuePair[] pointVectorValuePairArr = this.optima;
        if (pointVectorValuePairArr != null) {
            return (PointVectorValuePair[]) pointVectorValuePairArr.clone();
        }
        throw new MathIllegalStateException(LocalizedFormats.NO_OPTIMUM_COMPUTED_YET, new Object[0]);
    }

    @Override
    public PointVectorValuePair optimize(int i10, FUNC func, double[] dArr, double[] dArr2, double[] dArr3) {
        this.maxEvaluations = i10;
        this.optima = new PointVectorValuePair[this.starts];
        this.totalEvaluations = 0;
        int i11 = 0;
        RuntimeException e10 = null;
        while (i11 < this.starts) {
            try {
                this.optima[i11] = this.optimizer.optimize(i10 - this.totalEvaluations, func, dArr, dArr2, i11 == 0 ? dArr3 : this.generator.nextVector());
            } catch (ConvergenceException unused) {
                this.optima[i11] = null;
            } catch (RuntimeException e11) {
                e10 = e11;
                this.optima[i11] = null;
            }
            this.totalEvaluations += this.optimizer.getEvaluations();
            i11++;
        }
        sortPairs(dArr, dArr2);
        PointVectorValuePair pointVectorValuePair = this.optima[0];
        if (pointVectorValuePair != null) {
            return pointVectorValuePair;
        }
        throw e10;
    }
}
