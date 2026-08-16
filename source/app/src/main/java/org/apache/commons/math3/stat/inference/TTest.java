package org.apache.commons.math3.stat.inference;

import org.apache.commons.math3.distribution.TDistribution;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.stat.StatUtils;
import org.apache.commons.math3.stat.descriptive.StatisticalSummary;
import org.apache.commons.math3.util.FastMath;

public class TTest {
    private void checkSampleData(double[] dArr) throws NullArgumentException, NumberIsTooSmallException {
        if (dArr != null) {
            if (dArr.length < 2) {
                throw new NumberIsTooSmallException(LocalizedFormats.INSUFFICIENT_DATA_FOR_T_STATISTIC, Integer.valueOf(dArr.length), 2, true);
            }
            return;
        }
        throw new NullArgumentException();
    }

    private void checkSignificanceLevel(double d10) throws OutOfRangeException {
        if (d10 <= 0.0d || d10 > 0.5d) {
            throw new OutOfRangeException(LocalizedFormats.SIGNIFICANCE_LEVEL, Double.valueOf(d10), Double.valueOf(0.0d), Double.valueOf(0.5d));
        }
    }

    public double df(double d10, double d11, double d12, double d13) {
        double d14 = (d10 / d12) + (d11 / d13);
        return (d14 * d14) / (((d10 * d10) / ((d12 * d12) * (d12 - 1.0d))) + ((d11 * d11) / ((d13 * d13) * (d13 - 1.0d))));
    }

    public double homoscedasticT(double[] dArr, double[] dArr2) throws NullArgumentException, NumberIsTooSmallException {
        checkSampleData(dArr);
        checkSampleData(dArr2);
        return homoscedasticT(StatUtils.mean(dArr), StatUtils.mean(dArr2), StatUtils.variance(dArr), StatUtils.variance(dArr2), dArr.length, dArr2.length);
    }

    public double homoscedasticTTest(double[] dArr, double[] dArr2) throws NullArgumentException, NumberIsTooSmallException, MaxCountExceededException {
        checkSampleData(dArr);
        checkSampleData(dArr2);
        return homoscedasticTTest(StatUtils.mean(dArr), StatUtils.mean(dArr2), StatUtils.variance(dArr), StatUtils.variance(dArr2), dArr.length, dArr2.length);
    }

    public double pairedT(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException, DimensionMismatchException, NumberIsTooSmallException {
        checkSampleData(dArr);
        checkSampleData(dArr2);
        double meanDifference = StatUtils.meanDifference(dArr, dArr2);
        return t(meanDifference, 0.0d, StatUtils.varianceDifference(dArr, dArr2, meanDifference), dArr.length);
    }

    public double pairedTTest(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException, DimensionMismatchException, NumberIsTooSmallException, MaxCountExceededException {
        double meanDifference = StatUtils.meanDifference(dArr, dArr2);
        return tTest(meanDifference, 0.0d, StatUtils.varianceDifference(dArr, dArr2, meanDifference), dArr.length);
    }

    public double t(double d10, double[] dArr) throws NullArgumentException, NumberIsTooSmallException {
        checkSampleData(dArr);
        return t(StatUtils.mean(dArr), d10, StatUtils.variance(dArr), dArr.length);
    }

    public double tTest(double d10, double[] dArr) throws NullArgumentException, NumberIsTooSmallException, MaxCountExceededException {
        checkSampleData(dArr);
        return tTest(StatUtils.mean(dArr), d10, StatUtils.variance(dArr), dArr.length);
    }

    public boolean pairedTTest(double[] dArr, double[] dArr2, double d10) throws NullArgumentException, NoDataException, DimensionMismatchException, NumberIsTooSmallException, OutOfRangeException, MaxCountExceededException {
        checkSignificanceLevel(d10);
        return pairedTTest(dArr, dArr2) < d10;
    }

    public double t(double d10, StatisticalSummary statisticalSummary) throws NullArgumentException, NumberIsTooSmallException {
        checkSampleData(statisticalSummary);
        return t(statisticalSummary.getMean(), d10, statisticalSummary.getVariance(), statisticalSummary.getN());
    }

    public boolean tTest(double d10, double[] dArr, double d11) throws NullArgumentException, NumberIsTooSmallException, OutOfRangeException, MaxCountExceededException {
        checkSignificanceLevel(d11);
        return tTest(d10, dArr) < d11;
    }

    private void checkSampleData(StatisticalSummary statisticalSummary) throws NullArgumentException, NumberIsTooSmallException {
        if (statisticalSummary == null) {
            throw new NullArgumentException();
        }
        if (statisticalSummary.getN() < 2) {
            throw new NumberIsTooSmallException(LocalizedFormats.INSUFFICIENT_DATA_FOR_T_STATISTIC, Long.valueOf(statisticalSummary.getN()), 2, true);
        }
    }

    public double homoscedasticT(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2) throws NullArgumentException, NumberIsTooSmallException {
        checkSampleData(statisticalSummary);
        checkSampleData(statisticalSummary2);
        return homoscedasticT(statisticalSummary.getMean(), statisticalSummary2.getMean(), statisticalSummary.getVariance(), statisticalSummary2.getVariance(), statisticalSummary.getN(), statisticalSummary2.getN());
    }

    public boolean homoscedasticTTest(double[] dArr, double[] dArr2, double d10) throws NullArgumentException, NumberIsTooSmallException, OutOfRangeException, MaxCountExceededException {
        checkSignificanceLevel(d10);
        return homoscedasticTTest(dArr, dArr2) < d10;
    }

    public double t(double[] dArr, double[] dArr2) throws NullArgumentException, NumberIsTooSmallException {
        checkSampleData(dArr);
        checkSampleData(dArr2);
        return t(StatUtils.mean(dArr), StatUtils.mean(dArr2), StatUtils.variance(dArr), StatUtils.variance(dArr2), dArr.length, dArr2.length);
    }

    public double tTest(double d10, StatisticalSummary statisticalSummary) throws NullArgumentException, NumberIsTooSmallException, MaxCountExceededException {
        checkSampleData(statisticalSummary);
        return tTest(statisticalSummary.getMean(), d10, statisticalSummary.getVariance(), statisticalSummary.getN());
    }

    public double homoscedasticTTest(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2) throws NullArgumentException, NumberIsTooSmallException, MaxCountExceededException {
        checkSampleData(statisticalSummary);
        checkSampleData(statisticalSummary2);
        return homoscedasticTTest(statisticalSummary.getMean(), statisticalSummary2.getMean(), statisticalSummary.getVariance(), statisticalSummary2.getVariance(), statisticalSummary.getN(), statisticalSummary2.getN());
    }

    public double homoscedasticT(double d10, double d11, double d12, double d13, double d14, double d15) {
        return (d10 - d11) / FastMath.sqrt(((((d14 - 1.0d) * d12) + ((d15 - 1.0d) * d13)) / ((d14 + d15) - 2.0d)) * ((1.0d / d14) + (1.0d / d15)));
    }

    public boolean tTest(double d10, StatisticalSummary statisticalSummary, double d11) throws NullArgumentException, NumberIsTooSmallException, OutOfRangeException, MaxCountExceededException {
        checkSignificanceLevel(d11);
        return tTest(d10, statisticalSummary) < d11;
    }

    public double t(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2) throws NullArgumentException, NumberIsTooSmallException {
        checkSampleData(statisticalSummary);
        checkSampleData(statisticalSummary2);
        return t(statisticalSummary.getMean(), statisticalSummary2.getMean(), statisticalSummary.getVariance(), statisticalSummary2.getVariance(), statisticalSummary.getN(), statisticalSummary2.getN());
    }

    public double homoscedasticTTest(double d10, double d11, double d12, double d13, double d14, double d15) throws MaxCountExceededException, NotStrictlyPositiveException {
        return new TDistribution((RandomGenerator) null, (d14 + d15) - 2.0d).cumulativeProbability(-FastMath.abs(homoscedasticT(d10, d11, d12, d13, d14, d15))) * 2.0d;
    }

    public double tTest(double[] dArr, double[] dArr2) throws NullArgumentException, NumberIsTooSmallException, MaxCountExceededException {
        checkSampleData(dArr);
        checkSampleData(dArr2);
        return tTest(StatUtils.mean(dArr), StatUtils.mean(dArr2), StatUtils.variance(dArr), StatUtils.variance(dArr2), dArr.length, dArr2.length);
    }

    public double t(double d10, double d11, double d12, double d13) {
        return (d10 - d11) / FastMath.sqrt(d12 / d13);
    }

    public double t(double d10, double d11, double d12, double d13, double d14, double d15) {
        return (d10 - d11) / FastMath.sqrt((d12 / d14) + (d13 / d15));
    }

    public boolean tTest(double[] dArr, double[] dArr2, double d10) throws NullArgumentException, NumberIsTooSmallException, OutOfRangeException, MaxCountExceededException {
        checkSignificanceLevel(d10);
        return tTest(dArr, dArr2) < d10;
    }

    public double tTest(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2) throws NullArgumentException, NumberIsTooSmallException, MaxCountExceededException {
        checkSampleData(statisticalSummary);
        checkSampleData(statisticalSummary2);
        return tTest(statisticalSummary.getMean(), statisticalSummary2.getMean(), statisticalSummary.getVariance(), statisticalSummary2.getVariance(), statisticalSummary.getN(), statisticalSummary2.getN());
    }

    public boolean tTest(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2, double d10) throws NullArgumentException, NumberIsTooSmallException, OutOfRangeException, MaxCountExceededException {
        checkSignificanceLevel(d10);
        return tTest(statisticalSummary, statisticalSummary2) < d10;
    }

    public double tTest(double d10, double d11, double d12, double d13) throws MaxCountExceededException, MathIllegalArgumentException {
        return new TDistribution((RandomGenerator) null, d13 - 1.0d).cumulativeProbability(-FastMath.abs(t(d10, d11, d12, d13))) * 2.0d;
    }

    public double tTest(double d10, double d11, double d12, double d13, double d14, double d15) throws MaxCountExceededException, NotStrictlyPositiveException {
        return new TDistribution((RandomGenerator) null, df(d12, d13, d14, d15)).cumulativeProbability(-FastMath.abs(t(d10, d11, d12, d13, d14, d15))) * 2.0d;
    }
}
