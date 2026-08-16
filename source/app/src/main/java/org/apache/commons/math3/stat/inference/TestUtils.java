package org.apache.commons.math3.stat.inference;

import java.util.Collection;
import org.apache.commons.math3.distribution.RealDistribution;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.InsufficientDataException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.stat.descriptive.StatisticalSummary;

public class TestUtils {
    private static final TTest T_TEST = new TTest();
    private static final ChiSquareTest CHI_SQUARE_TEST = new ChiSquareTest();
    private static final OneWayAnova ONE_WAY_ANANOVA = new OneWayAnova();
    private static final GTest G_TEST = new GTest();
    private static final KolmogorovSmirnovTest KS_TEST = new KolmogorovSmirnovTest();

    private TestUtils() {
    }

    public static double approximateP(double d10, int i10, int i11) {
        return KS_TEST.approximateP(d10, i10, i11);
    }

    public static double chiSquare(double[] dArr, long[] jArr) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException {
        return CHI_SQUARE_TEST.chiSquare(dArr, jArr);
    }

    public static double chiSquareDataSetsComparison(long[] jArr, long[] jArr2) throws DimensionMismatchException, NotPositiveException, ZeroException {
        return CHI_SQUARE_TEST.chiSquareDataSetsComparison(jArr, jArr2);
    }

    public static boolean chiSquareTest(double[] dArr, long[] jArr, double d10) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException, OutOfRangeException, MaxCountExceededException {
        return CHI_SQUARE_TEST.chiSquareTest(dArr, jArr, d10);
    }

    public static double chiSquareTestDataSetsComparison(long[] jArr, long[] jArr2) throws DimensionMismatchException, NotPositiveException, ZeroException, MaxCountExceededException {
        return CHI_SQUARE_TEST.chiSquareTestDataSetsComparison(jArr, jArr2);
    }

    public static double exactP(double d10, int i10, int i11, boolean z10) {
        return KS_TEST.exactP(d10, i11, i10, z10);
    }

    public static double g(double[] dArr, long[] jArr) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException {
        return G_TEST.g(dArr, jArr);
    }

    public static double gDataSetsComparison(long[] jArr, long[] jArr2) throws DimensionMismatchException, NotPositiveException, ZeroException {
        return G_TEST.gDataSetsComparison(jArr, jArr2);
    }

    public static double gTest(double[] dArr, long[] jArr) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException, MaxCountExceededException {
        return G_TEST.gTest(dArr, jArr);
    }

    public static double gTestDataSetsComparison(long[] jArr, long[] jArr2) throws DimensionMismatchException, NotPositiveException, ZeroException, MaxCountExceededException {
        return G_TEST.gTestDataSetsComparison(jArr, jArr2);
    }

    public static double gTestIntrinsic(double[] dArr, long[] jArr) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException, MaxCountExceededException {
        return G_TEST.gTestIntrinsic(dArr, jArr);
    }

    public static double homoscedasticT(double[] dArr, double[] dArr2) throws NullArgumentException, NumberIsTooSmallException {
        return T_TEST.homoscedasticT(dArr, dArr2);
    }

    public static boolean homoscedasticTTest(double[] dArr, double[] dArr2, double d10) throws NullArgumentException, NumberIsTooSmallException, OutOfRangeException, MaxCountExceededException {
        return T_TEST.homoscedasticTTest(dArr, dArr2, d10);
    }

    public static double kolmogorovSmirnovStatistic(RealDistribution realDistribution, double[] dArr) throws InsufficientDataException, NullArgumentException {
        return KS_TEST.kolmogorovSmirnovStatistic(realDistribution, dArr);
    }

    public static double kolmogorovSmirnovTest(RealDistribution realDistribution, double[] dArr) throws InsufficientDataException, NullArgumentException {
        return KS_TEST.kolmogorovSmirnovTest(realDistribution, dArr);
    }

    public static double monteCarloP(double d10, int i10, int i11, boolean z10, int i12) {
        return KS_TEST.monteCarloP(d10, i10, i11, z10, i12);
    }

    public static double oneWayAnovaFValue(Collection<double[]> collection) throws NullArgumentException, DimensionMismatchException {
        return ONE_WAY_ANANOVA.anovaFValue(collection);
    }

    public static double oneWayAnovaPValue(Collection<double[]> collection) throws NullArgumentException, DimensionMismatchException, ConvergenceException, MaxCountExceededException {
        return ONE_WAY_ANANOVA.anovaPValue(collection);
    }

    public static boolean oneWayAnovaTest(Collection<double[]> collection, double d10) throws NullArgumentException, DimensionMismatchException, OutOfRangeException, ConvergenceException, MaxCountExceededException {
        return ONE_WAY_ANANOVA.anovaTest(collection, d10);
    }

    public static double pairedT(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException, DimensionMismatchException, NumberIsTooSmallException {
        return T_TEST.pairedT(dArr, dArr2);
    }

    public static boolean pairedTTest(double[] dArr, double[] dArr2, double d10) throws NullArgumentException, NoDataException, DimensionMismatchException, NumberIsTooSmallException, OutOfRangeException, MaxCountExceededException {
        return T_TEST.pairedTTest(dArr, dArr2, d10);
    }

    public static double rootLogLikelihoodRatio(long j10, long j11, long j12, long j13) throws DimensionMismatchException, NotPositiveException, ZeroException {
        return G_TEST.rootLogLikelihoodRatio(j10, j11, j12, j13);
    }

    public static double t(double d10, double[] dArr) throws NullArgumentException, NumberIsTooSmallException {
        return T_TEST.t(d10, dArr);
    }

    public static boolean tTest(double d10, double[] dArr, double d11) throws NullArgumentException, NumberIsTooSmallException, OutOfRangeException, MaxCountExceededException {
        return T_TEST.tTest(d10, dArr, d11);
    }

    public static double chiSquare(long[][] jArr) throws NullArgumentException, NotPositiveException, DimensionMismatchException {
        return CHI_SQUARE_TEST.chiSquare(jArr);
    }

    public static double chiSquareTest(double[] dArr, long[] jArr) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException, MaxCountExceededException {
        return CHI_SQUARE_TEST.chiSquareTest(dArr, jArr);
    }

    public static boolean chiSquareTestDataSetsComparison(long[] jArr, long[] jArr2, double d10) throws DimensionMismatchException, NotPositiveException, ZeroException, OutOfRangeException, MaxCountExceededException {
        return CHI_SQUARE_TEST.chiSquareTestDataSetsComparison(jArr, jArr2, d10);
    }

    public static boolean gTest(double[] dArr, long[] jArr, double d10) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException, OutOfRangeException, MaxCountExceededException {
        return G_TEST.gTest(dArr, jArr, d10);
    }

    public static boolean gTestDataSetsComparison(long[] jArr, long[] jArr2, double d10) throws DimensionMismatchException, NotPositiveException, ZeroException, OutOfRangeException, MaxCountExceededException {
        return G_TEST.gTestDataSetsComparison(jArr, jArr2, d10);
    }

    public static double homoscedasticT(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2) throws NullArgumentException, NumberIsTooSmallException {
        return T_TEST.homoscedasticT(statisticalSummary, statisticalSummary2);
    }

    public static double homoscedasticTTest(double[] dArr, double[] dArr2) throws NullArgumentException, NumberIsTooSmallException, MaxCountExceededException {
        return T_TEST.homoscedasticTTest(dArr, dArr2);
    }

    public static double kolmogorovSmirnovStatistic(double[] dArr, double[] dArr2) throws InsufficientDataException, NullArgumentException {
        return KS_TEST.kolmogorovSmirnovStatistic(dArr, dArr2);
    }

    public static double kolmogorovSmirnovTest(RealDistribution realDistribution, double[] dArr, boolean z10) throws InsufficientDataException, NullArgumentException {
        return KS_TEST.kolmogorovSmirnovTest(realDistribution, dArr, z10);
    }

    public static double pairedTTest(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException, DimensionMismatchException, NumberIsTooSmallException, MaxCountExceededException {
        return T_TEST.pairedTTest(dArr, dArr2);
    }

    public static double t(double d10, StatisticalSummary statisticalSummary) throws NullArgumentException, NumberIsTooSmallException {
        return T_TEST.t(d10, statisticalSummary);
    }

    public static double tTest(double d10, double[] dArr) throws NullArgumentException, NumberIsTooSmallException, MaxCountExceededException {
        return T_TEST.tTest(d10, dArr);
    }

    public static boolean chiSquareTest(long[][] jArr, double d10) throws NullArgumentException, DimensionMismatchException, NotPositiveException, OutOfRangeException, MaxCountExceededException {
        return CHI_SQUARE_TEST.chiSquareTest(jArr, d10);
    }

    public static double homoscedasticTTest(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2) throws NullArgumentException, NumberIsTooSmallException, MaxCountExceededException {
        return T_TEST.homoscedasticTTest(statisticalSummary, statisticalSummary2);
    }

    public static boolean kolmogorovSmirnovTest(RealDistribution realDistribution, double[] dArr, double d10) throws InsufficientDataException, NullArgumentException {
        return KS_TEST.kolmogorovSmirnovTest(realDistribution, dArr, d10);
    }

    public static double t(double[] dArr, double[] dArr2) throws NullArgumentException, NumberIsTooSmallException {
        return T_TEST.t(dArr, dArr2);
    }

    public static boolean tTest(double d10, StatisticalSummary statisticalSummary, double d11) throws NullArgumentException, NumberIsTooSmallException, OutOfRangeException, MaxCountExceededException {
        return T_TEST.tTest(d10, statisticalSummary, d11);
    }

    public static double chiSquareTest(long[][] jArr) throws NullArgumentException, DimensionMismatchException, NotPositiveException, MaxCountExceededException {
        return CHI_SQUARE_TEST.chiSquareTest(jArr);
    }

    public static double kolmogorovSmirnovTest(double[] dArr, double[] dArr2) throws InsufficientDataException, NullArgumentException {
        return KS_TEST.kolmogorovSmirnovTest(dArr, dArr2);
    }

    public static double t(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2) throws NullArgumentException, NumberIsTooSmallException {
        return T_TEST.t(statisticalSummary, statisticalSummary2);
    }

    public static double tTest(double d10, StatisticalSummary statisticalSummary) throws NullArgumentException, NumberIsTooSmallException, MaxCountExceededException {
        return T_TEST.tTest(d10, statisticalSummary);
    }

    public static double kolmogorovSmirnovTest(double[] dArr, double[] dArr2, boolean z10) throws InsufficientDataException, NullArgumentException {
        return KS_TEST.kolmogorovSmirnovTest(dArr, dArr2, z10);
    }

    public static boolean tTest(double[] dArr, double[] dArr2, double d10) throws NullArgumentException, NumberIsTooSmallException, OutOfRangeException, MaxCountExceededException {
        return T_TEST.tTest(dArr, dArr2, d10);
    }

    public static double tTest(double[] dArr, double[] dArr2) throws NullArgumentException, NumberIsTooSmallException, MaxCountExceededException {
        return T_TEST.tTest(dArr, dArr2);
    }

    public static boolean tTest(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2, double d10) throws NullArgumentException, NumberIsTooSmallException, OutOfRangeException, MaxCountExceededException {
        return T_TEST.tTest(statisticalSummary, statisticalSummary2, d10);
    }

    public static double tTest(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2) throws NullArgumentException, NumberIsTooSmallException, MaxCountExceededException {
        return T_TEST.tTest(statisticalSummary, statisticalSummary2);
    }
}
