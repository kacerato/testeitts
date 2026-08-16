package org.apache.commons.math3.stat.inference;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import org.apache.commons.math3.distribution.FDistribution;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.stat.descriptive.SummaryStatistics;
import org.apache.commons.math3.util.MathUtils;

public class OneWayAnova {

    public static class AnovaStats {

        private final double f100354F;
        private final int dfbg;
        private final int dfwg;

        private AnovaStats(int i10, int i11, double d10) {
            this.dfbg = i10;
            this.dfwg = i11;
            this.f100354F = d10;
        }
    }

    private AnovaStats anovaStats(Collection<double[]> collection) throws NullArgumentException, DimensionMismatchException {
        MathUtils.checkNotNull(collection);
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<double[]> it = collection.iterator();
        while (true) {
            if (it.hasNext()) {
                double[] next = it.next();
                SummaryStatistics summaryStatistics = new SummaryStatistics();
                arrayList.add(summaryStatistics);
                for (double d10 : next) {
                    summaryStatistics.addValue(d10);
                }
            } else {
                return anovaStats(arrayList, false);
            }
        }
    }

    public double anovaFValue(Collection<double[]> collection) throws NullArgumentException, DimensionMismatchException {
        return anovaStats(collection).f100354F;
    }

    public double anovaPValue(Collection<double[]> collection) throws NullArgumentException, DimensionMismatchException, ConvergenceException, MaxCountExceededException {
        return 1.0d - new FDistribution((RandomGenerator) null, r8.dfbg, r8.dfwg).cumulativeProbability(anovaStats(collection).f100354F);
    }

    public boolean anovaTest(Collection<double[]> collection, double d10) throws NullArgumentException, DimensionMismatchException, OutOfRangeException, ConvergenceException, MaxCountExceededException {
        if (d10 <= 0.0d || d10 > 0.5d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUND_SIGNIFICANCE_LEVEL, Double.valueOf(d10), 0, Double.valueOf(0.5d));
        }
        return anovaPValue(collection) < d10;
    }

    public double anovaPValue(Collection<SummaryStatistics> collection, boolean z10) throws NullArgumentException, DimensionMismatchException, ConvergenceException, MaxCountExceededException {
        return 1.0d - new FDistribution((RandomGenerator) null, r7.dfbg, r7.dfwg).cumulativeProbability(anovaStats(collection, z10).f100354F);
    }

    private AnovaStats anovaStats(Collection<SummaryStatistics> collection, boolean z10) throws NullArgumentException, DimensionMismatchException {
        MathUtils.checkNotNull(collection);
        if (!z10) {
            if (collection.size() >= 2) {
                for (SummaryStatistics summaryStatistics : collection) {
                    if (summaryStatistics.getN() <= 1) {
                        throw new DimensionMismatchException(LocalizedFormats.TWO_OR_MORE_VALUES_IN_CATEGORY_REQUIRED, (int) summaryStatistics.getN(), 2);
                    }
                }
            } else {
                throw new DimensionMismatchException(LocalizedFormats.TWO_OR_MORE_CATEGORIES_REQUIRED, collection.size(), 2);
            }
        }
        int i10 = 0;
        double d10 = 0.0d;
        int i11 = 0;
        double d11 = 0.0d;
        double d12 = 0.0d;
        for (SummaryStatistics summaryStatistics2 : collection) {
            double sum = summaryStatistics2.getSum();
            double sumsq = summaryStatistics2.getSumsq();
            int n10 = (int) summaryStatistics2.getN();
            i10 += n10;
            d11 += sum;
            d10 += sumsq;
            i11 += n10 - 1;
            d12 += sumsq - ((sum * sum) / n10);
        }
        double d13 = (d10 - ((d11 * d11) / i10)) - d12;
        int size = collection.size() - 1;
        return new AnovaStats(size, i11, (d13 / size) / (d12 / i11));
    }
}
