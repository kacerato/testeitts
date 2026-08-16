package org.apache.commons.math3.stat;

import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.stat.descriptive.DescriptiveStatistics;
import org.apache.commons.math3.stat.descriptive.UnivariateStatistic;
import org.apache.commons.math3.stat.descriptive.moment.GeometricMean;
import org.apache.commons.math3.stat.descriptive.moment.Mean;
import org.apache.commons.math3.stat.descriptive.moment.Variance;
import org.apache.commons.math3.stat.descriptive.rank.Max;
import org.apache.commons.math3.stat.descriptive.rank.Min;
import org.apache.commons.math3.stat.descriptive.rank.Percentile;
import org.apache.commons.math3.stat.descriptive.summary.Product;
import org.apache.commons.math3.stat.descriptive.summary.Sum;
import org.apache.commons.math3.stat.descriptive.summary.SumOfLogs;
import org.apache.commons.math3.stat.descriptive.summary.SumOfSquares;

public final class StatUtils {
    private static final UnivariateStatistic SUM = new Sum();
    private static final UnivariateStatistic SUM_OF_SQUARES = new SumOfSquares();
    private static final UnivariateStatistic PRODUCT = new Product();
    private static final UnivariateStatistic SUM_OF_LOGS = new SumOfLogs();
    private static final UnivariateStatistic MIN = new Min();
    private static final UnivariateStatistic MAX = new Max();
    private static final UnivariateStatistic MEAN = new Mean();
    private static final Variance VARIANCE = new Variance();
    private static final Percentile PERCENTILE = new Percentile();
    private static final GeometricMean GEOMETRIC_MEAN = new GeometricMean();

    private StatUtils() {
    }

    public static double geometricMean(double[] dArr) throws MathIllegalArgumentException {
        return GEOMETRIC_MEAN.evaluate(dArr);
    }

    private static double[] getMode(double[] dArr, int i10, int i11) {
        Frequency frequency = new Frequency();
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            double d10 = dArr[i12];
            if (!Double.isNaN(d10)) {
                frequency.addValue(Double.valueOf(d10));
            }
        }
        List<Comparable<?>> mode = frequency.getMode();
        double[] dArr2 = new double[mode.size()];
        Iterator<Comparable<?>> it = mode.iterator();
        int i13 = 0;
        while (it.hasNext()) {
            dArr2[i13] = ((Double) it.next()).doubleValue();
            i13++;
        }
        return dArr2;
    }

    public static double max(double[] dArr) throws MathIllegalArgumentException {
        return MAX.evaluate(dArr);
    }

    public static double mean(double[] dArr) throws MathIllegalArgumentException {
        return MEAN.evaluate(dArr);
    }

    public static double meanDifference(double[] dArr, double[] dArr2) throws DimensionMismatchException, NoDataException {
        return sumDifference(dArr, dArr2) / dArr.length;
    }

    public static double min(double[] dArr) throws MathIllegalArgumentException {
        return MIN.evaluate(dArr);
    }

    public static double[] mode(double[] dArr) throws MathIllegalArgumentException {
        if (dArr != null) {
            return getMode(dArr, 0, dArr.length);
        }
        throw new NullArgumentException(LocalizedFormats.INPUT_ARRAY, new Object[0]);
    }

    public static double[] normalize(double[] dArr) {
        DescriptiveStatistics descriptiveStatistics = new DescriptiveStatistics();
        for (double d10 : dArr) {
            descriptiveStatistics.addValue(d10);
        }
        double mean = descriptiveStatistics.getMean();
        double standardDeviation = descriptiveStatistics.getStandardDeviation();
        double[] dArr2 = new double[dArr.length];
        for (int i10 = 0; i10 < dArr.length; i10++) {
            dArr2[i10] = (dArr[i10] - mean) / standardDeviation;
        }
        return dArr2;
    }

    public static double percentile(double[] dArr, double d10) throws MathIllegalArgumentException {
        return PERCENTILE.evaluate(dArr, d10);
    }

    public static double populationVariance(double[] dArr) throws MathIllegalArgumentException {
        return new Variance(false).evaluate(dArr);
    }

    public static double product(double[] dArr) throws MathIllegalArgumentException {
        return PRODUCT.evaluate(dArr);
    }

    public static double sum(double[] dArr) throws MathIllegalArgumentException {
        return SUM.evaluate(dArr);
    }

    public static double sumDifference(double[] dArr, double[] dArr2) throws DimensionMismatchException, NoDataException {
        int length = dArr.length;
        if (length != dArr2.length) {
            throw new DimensionMismatchException(length, dArr2.length);
        }
        if (length <= 0) {
            throw new NoDataException(LocalizedFormats.INSUFFICIENT_DIMENSION);
        }
        double d10 = 0.0d;
        for (int i10 = 0; i10 < length; i10++) {
            d10 += dArr[i10] - dArr2[i10];
        }
        return d10;
    }

    public static double sumLog(double[] dArr) throws MathIllegalArgumentException {
        return SUM_OF_LOGS.evaluate(dArr);
    }

    public static double sumSq(double[] dArr) throws MathIllegalArgumentException {
        return SUM_OF_SQUARES.evaluate(dArr);
    }

    public static double variance(double[] dArr) throws MathIllegalArgumentException {
        return VARIANCE.evaluate(dArr);
    }

    public static double varianceDifference(double[] dArr, double[] dArr2, double d10) throws DimensionMismatchException, NumberIsTooSmallException {
        int length = dArr.length;
        if (length != dArr2.length) {
            throw new DimensionMismatchException(length, dArr2.length);
        }
        if (length < 2) {
            throw new NumberIsTooSmallException(Integer.valueOf(length), 2, true);
        }
        double d11 = 0.0d;
        double d12 = 0.0d;
        for (int i10 = 0; i10 < length; i10++) {
            double d13 = (dArr[i10] - dArr2[i10]) - d10;
            d11 += d13 * d13;
            d12 += d13;
        }
        return (d11 - ((d12 * d12) / length)) / (length - 1);
    }

    public static double geometricMean(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        return GEOMETRIC_MEAN.evaluate(dArr, i10, i11);
    }

    public static double max(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        return MAX.evaluate(dArr, i10, i11);
    }

    public static double mean(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        return MEAN.evaluate(dArr, i10, i11);
    }

    public static double min(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        return MIN.evaluate(dArr, i10, i11);
    }

    public static double percentile(double[] dArr, int i10, int i11, double d10) throws MathIllegalArgumentException {
        return PERCENTILE.evaluate(dArr, i10, i11, d10);
    }

    public static double populationVariance(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        return new Variance(false).evaluate(dArr, i10, i11);
    }

    public static double product(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        return PRODUCT.evaluate(dArr, i10, i11);
    }

    public static double sum(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        return SUM.evaluate(dArr, i10, i11);
    }

    public static double sumLog(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        return SUM_OF_LOGS.evaluate(dArr, i10, i11);
    }

    public static double sumSq(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        return SUM_OF_SQUARES.evaluate(dArr, i10, i11);
    }

    public static double variance(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        return VARIANCE.evaluate(dArr, i10, i11);
    }

    public static double[] mode(double[] dArr, int i10, int i11) {
        if (dArr == null) {
            throw new NullArgumentException(LocalizedFormats.INPUT_ARRAY, new Object[0]);
        }
        if (i10 < 0) {
            throw new NotPositiveException(LocalizedFormats.START_POSITION, Integer.valueOf(i10));
        }
        if (i11 >= 0) {
            return getMode(dArr, i10, i11);
        }
        throw new NotPositiveException(LocalizedFormats.LENGTH, Integer.valueOf(i11));
    }

    public static double populationVariance(double[] dArr, double d10, int i10, int i11) throws MathIllegalArgumentException {
        return new Variance(false).evaluate(dArr, d10, i10, i11);
    }

    public static double variance(double[] dArr, double d10, int i10, int i11) throws MathIllegalArgumentException {
        return VARIANCE.evaluate(dArr, d10, i10, i11);
    }

    public static double populationVariance(double[] dArr, double d10) throws MathIllegalArgumentException {
        return new Variance(false).evaluate(dArr, d10);
    }

    public static double variance(double[] dArr, double d10) throws MathIllegalArgumentException {
        return VARIANCE.evaluate(dArr, d10);
    }
}
