package org.apache.commons.math3.stat.inference;

import org.apache.commons.math3.distribution.ChiSquaredDistribution;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

public class ChiSquareTest {
    private void checkArray(long[][] jArr) throws NullArgumentException, DimensionMismatchException, NotPositiveException {
        if (jArr.length < 2) {
            throw new DimensionMismatchException(jArr.length, 2);
        }
        if (jArr[0].length < 2) {
            throw new DimensionMismatchException(jArr[0].length, 2);
        }
        MathArrays.checkRectangular(jArr);
        MathArrays.checkNonNegative(jArr);
    }

    public double chiSquare(double[] dArr, long[] jArr) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException {
        double d10;
        boolean z10;
        double d11;
        double d12;
        if (dArr.length >= 2) {
            if (dArr.length == jArr.length) {
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
                        double d16 = jArr[i11];
                        double d17 = dArr[i11];
                        double d18 = d16 - (d10 * d17);
                        d12 = d18 * d18;
                        d11 = d17 * d10;
                    } else {
                        double d19 = jArr[i11];
                        d11 = dArr[i11];
                        double d20 = d19 - d11;
                        d12 = d20 * d20;
                    }
                    d13 += d12 / d11;
                }
                return d13;
            }
            throw new DimensionMismatchException(dArr.length, jArr.length);
        }
        throw new DimensionMismatchException(dArr.length, 2);
    }

    public double chiSquareDataSetsComparison(long[] jArr, long[] jArr2) throws DimensionMismatchException, NotPositiveException, ZeroException {
        if (jArr.length < 2) {
            throw new DimensionMismatchException(jArr.length, 2);
        }
        if (jArr.length != jArr2.length) {
            throw new DimensionMismatchException(jArr.length, jArr2.length);
        }
        MathArrays.checkNonNegative(jArr);
        MathArrays.checkNonNegative(jArr2);
        long j10 = 0;
        long j11 = 0;
        for (int i10 = 0; i10 < jArr.length; i10++) {
            j10 += jArr[i10];
            j11 += jArr2[i10];
        }
        if (j10 == 0 || j11 == 0) {
            throw new ZeroException();
        }
        boolean z10 = j10 != j11;
        double d10 = 0.0d;
        double sqrt = z10 ? FastMath.sqrt(j10 / j11) : 0.0d;
        for (int i11 = 0; i11 < jArr.length; i11++) {
            long j12 = jArr[i11];
            if (j12 == 0 && jArr2[i11] == 0) {
                throw new ZeroException(LocalizedFormats.OBSERVED_COUNTS_BOTTH_ZERO_FOR_ENTRY, Integer.valueOf(i11));
            }
            double d11 = j12;
            double d12 = jArr2[i11];
            double d13 = z10 ? (d11 / sqrt) - (d12 * sqrt) : d11 - d12;
            d10 += (d13 * d13) / (d11 + d12);
        }
        return d10;
    }

    public double chiSquareTest(double[] dArr, long[] jArr) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException, MaxCountExceededException {
        return 1.0d - new ChiSquaredDistribution((RandomGenerator) null, dArr.length - 1.0d).cumulativeProbability(chiSquare(dArr, jArr));
    }

    public double chiSquareTestDataSetsComparison(long[] jArr, long[] jArr2) throws DimensionMismatchException, NotPositiveException, ZeroException, MaxCountExceededException {
        return 1.0d - new ChiSquaredDistribution((RandomGenerator) null, jArr.length - 1.0d).cumulativeProbability(chiSquareDataSetsComparison(jArr, jArr2));
    }

    public boolean chiSquareTest(double[] dArr, long[] jArr, double d10) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException, OutOfRangeException, MaxCountExceededException {
        if (d10 <= 0.0d || d10 > 0.5d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUND_SIGNIFICANCE_LEVEL, Double.valueOf(d10), 0, Double.valueOf(0.5d));
        }
        return chiSquareTest(dArr, jArr) < d10;
    }

    public boolean chiSquareTestDataSetsComparison(long[] jArr, long[] jArr2, double d10) throws DimensionMismatchException, NotPositiveException, ZeroException, OutOfRangeException, MaxCountExceededException {
        if (d10 <= 0.0d || d10 > 0.5d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUND_SIGNIFICANCE_LEVEL, Double.valueOf(d10), 0, Double.valueOf(0.5d));
        }
        return chiSquareTestDataSetsComparison(jArr, jArr2) < d10;
    }

    public double chiSquareTest(long[][] jArr) throws NullArgumentException, DimensionMismatchException, NotPositiveException, MaxCountExceededException {
        checkArray(jArr);
        return 1.0d - new ChiSquaredDistribution((jArr.length - 1.0d) * (jArr[0].length - 1.0d)).cumulativeProbability(chiSquare(jArr));
    }

    public boolean chiSquareTest(long[][] jArr, double d10) throws NullArgumentException, DimensionMismatchException, NotPositiveException, OutOfRangeException, MaxCountExceededException {
        if (d10 <= 0.0d || d10 > 0.5d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUND_SIGNIFICANCE_LEVEL, Double.valueOf(d10), 0, Double.valueOf(0.5d));
        }
        return chiSquareTest(jArr) < d10;
    }

    public double chiSquare(long[][] jArr) throws NullArgumentException, NotPositiveException, DimensionMismatchException {
        long[][] jArr2 = jArr;
        checkArray(jArr);
        int length = jArr2.length;
        int i10 = 0;
        int length2 = jArr2[0].length;
        double[] dArr = new double[length];
        double[] dArr2 = new double[length2];
        int i11 = 0;
        double d10 = 0.0d;
        while (i11 < length) {
            int i12 = i10;
            while (i12 < length2) {
                double d11 = dArr[i11];
                long j10 = jArr2[i11][i12];
                dArr[i11] = d11 + j10;
                dArr2[i12] = dArr2[i12] + j10;
                d10 += j10;
                i12++;
                length2 = length2;
            }
            i11++;
            i10 = 0;
        }
        int i13 = length2;
        int i14 = 0;
        double d12 = 0.0d;
        while (i14 < length) {
            int i15 = i13;
            int i16 = 0;
            while (i16 < i15) {
                double d13 = (dArr[i14] * dArr2[i16]) / d10;
                long j11 = jArr2[i14][i16];
                d12 += ((j11 - d13) * (j11 - d13)) / d13;
                i16++;
                jArr2 = jArr;
                length = length;
            }
            i14++;
            jArr2 = jArr;
            i13 = i15;
        }
        return d12;
    }
}
