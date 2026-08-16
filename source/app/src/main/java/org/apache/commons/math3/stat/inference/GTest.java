package org.apache.commons.math3.stat.inference;

import java.lang.reflect.Array;
import org.apache.commons.math3.distribution.ChiSquaredDistribution;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

public class GTest {
    private double entropy(long[][] jArr) {
        double d10 = 0.0d;
        double d11 = 0.0d;
        for (long[] jArr2 : jArr) {
            int i10 = 0;
            while (true) {
                if (i10 < jArr2.length) {
                    d11 += r7[i10];
                    i10++;
                }
            }
        }
        for (long[] jArr3 : jArr) {
            int i11 = 0;
            while (true) {
                if (i11 < jArr3.length) {
                    long j10 = jArr3[i11];
                    if (j10 != 0) {
                        double d12 = j10 / d11;
                        d10 += d12 * FastMath.log(d12);
                    }
                    i11++;
                }
            }
        }
        return -d10;
    }

    public double g(double[] dArr, long[] jArr) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException {
        double d10;
        boolean z10;
        double d11;
        double d12;
        if (dArr.length < 2) {
            throw new DimensionMismatchException(dArr.length, 2);
        }
        if (dArr.length != jArr.length) {
            throw new DimensionMismatchException(dArr.length, jArr.length);
        }
        MathArrays.checkPositive(dArr);
        MathArrays.checkNonNegative(jArr);
        double d13 = 0.0d;
        double d14 = 0.0d;
        double d15 = 0.0d;
        for (int i10 = 0; i10 < jArr.length; i10++) {
            d14 += dArr[i10];
            d15 += jArr[i10];
        }
        if (FastMath.abs(d14 - d15) > 1.0E-5d) {
            d10 = d15 / d14;
            z10 = true;
        } else {
            d10 = 1.0d;
            z10 = false;
        }
        for (int i11 = 0; i11 < jArr.length; i11++) {
            if (z10) {
                d11 = jArr[i11];
                d12 = dArr[i11] * d10;
            } else {
                d11 = jArr[i11];
                d12 = dArr[i11];
            }
            d13 += jArr[i11] * FastMath.log(d11 / d12);
        }
        return d13 * 2.0d;
    }

    public double gDataSetsComparison(long[] jArr, long[] jArr2) throws DimensionMismatchException, NotPositiveException, ZeroException {
        if (jArr.length < 2) {
            throw new DimensionMismatchException(jArr.length, 2);
        }
        if (jArr.length != jArr2.length) {
            throw new DimensionMismatchException(jArr.length, jArr2.length);
        }
        MathArrays.checkNonNegative(jArr);
        MathArrays.checkNonNegative(jArr2);
        long[] jArr3 = new long[jArr.length];
        long[][] jArr4 = (long[][]) Array.newInstance(Long.TYPE, 2, jArr.length);
        long j10 = 0;
        long j11 = 0;
        for (int i10 = 0; i10 < jArr.length; i10++) {
            long j12 = jArr[i10];
            if (j12 == 0 && jArr2[i10] == 0) {
                throw new ZeroException(LocalizedFormats.OBSERVED_COUNTS_BOTTH_ZERO_FOR_ENTRY, Integer.valueOf(i10));
            }
            j10 += j12;
            long j13 = jArr2[i10];
            j11 += j13;
            jArr3[i10] = j12 + j13;
            jArr4[0][i10] = jArr[i10];
            jArr4[1][i10] = jArr2[i10];
        }
        if (j10 == 0 || j11 == 0) {
            throw new ZeroException();
        }
        return (j10 + j11) * 2.0d * ((entropy(new long[]{j10, j11}) + entropy(jArr3)) - entropy(jArr4));
    }

    public double gTest(double[] dArr, long[] jArr) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException, MaxCountExceededException {
        return 1.0d - new ChiSquaredDistribution((RandomGenerator) null, dArr.length - 1.0d).cumulativeProbability(g(dArr, jArr));
    }

    public double gTestDataSetsComparison(long[] jArr, long[] jArr2) throws DimensionMismatchException, NotPositiveException, ZeroException, MaxCountExceededException {
        return 1.0d - new ChiSquaredDistribution((RandomGenerator) null, jArr.length - 1.0d).cumulativeProbability(gDataSetsComparison(jArr, jArr2));
    }

    public double gTestIntrinsic(double[] dArr, long[] jArr) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException, MaxCountExceededException {
        return 1.0d - new ChiSquaredDistribution((RandomGenerator) null, dArr.length - 2.0d).cumulativeProbability(g(dArr, jArr));
    }

    public double rootLogLikelihoodRatio(long j10, long j11, long j12, long j13) {
        double sqrt = FastMath.sqrt(gDataSetsComparison(new long[]{j10, j11}, new long[]{j12, j13}));
        return ((double) j10) / ((double) (j10 + j11)) < ((double) j12) / ((double) (j12 + j13)) ? -sqrt : sqrt;
    }

    public boolean gTest(double[] dArr, long[] jArr, double d10) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException, OutOfRangeException, MaxCountExceededException {
        if (d10 <= 0.0d || d10 > 0.5d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUND_SIGNIFICANCE_LEVEL, Double.valueOf(d10), 0, Double.valueOf(0.5d));
        }
        return gTest(dArr, jArr) < d10;
    }

    public boolean gTestDataSetsComparison(long[] jArr, long[] jArr2, double d10) throws DimensionMismatchException, NotPositiveException, ZeroException, OutOfRangeException, MaxCountExceededException {
        if (d10 <= 0.0d || d10 > 0.5d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUND_SIGNIFICANCE_LEVEL, Double.valueOf(d10), 0, Double.valueOf(0.5d));
        }
        return gTestDataSetsComparison(jArr, jArr2) < d10;
    }

    private double entropy(long[] jArr) {
        double d10 = 0.0d;
        double d11 = 0.0d;
        for (long j10 : jArr) {
            d11 += j10;
        }
        for (long j11 : jArr) {
            if (j11 != 0) {
                double d12 = j11 / d11;
                d10 += d12 * FastMath.log(d12);
            }
        }
        return -d10;
    }
}
