package org.apache.commons.math3.util;

import androidx.lifecycle.c;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public final class CombinatoricsUtils {
    static final long[] FACTORIALS = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600, 6227020800L, 87178291200L, 1307674368000L, 20922789888000L, 355687428096000L, 6402373705728000L, 121645100408832000L, 2432902008176640000L};
    static final AtomicReference<long[][]> STIRLING_S2 = new AtomicReference<>(null);

    private CombinatoricsUtils() {
    }

    public static long binomialCoefficient(int i10, int i11) throws NotPositiveException, NumberIsTooLargeException, MathArithmeticException {
        checkBinomial(i10, i11);
        long j10 = 1;
        if (i10 == i11 || i11 == 0) {
            return 1L;
        }
        if (i11 == 1 || i11 == i10 - 1) {
            return i10;
        }
        if (i11 > i10 / 2) {
            return binomialCoefficient(i10, i10 - i11);
        }
        if (i10 <= 61) {
            int i12 = (i10 - i11) + 1;
            for (int i13 = 1; i13 <= i11; i13++) {
                j10 = (j10 * i12) / i13;
                i12++;
            }
        } else if (i10 <= 66) {
            int i14 = (i10 - i11) + 1;
            for (int i15 = 1; i15 <= i11; i15++) {
                long gcd = ArithmeticUtils.gcd(i14, i15);
                j10 = (j10 / (i15 / gcd)) * (i14 / gcd);
                i14++;
            }
        } else {
            int i16 = (i10 - i11) + 1;
            for (int i17 = 1; i17 <= i11; i17++) {
                long gcd2 = ArithmeticUtils.gcd(i16, i17);
                j10 = ArithmeticUtils.mulAndCheck(j10 / (i17 / gcd2), i16 / gcd2);
                i16++;
            }
        }
        return j10;
    }

    public static double binomialCoefficientDouble(int i10, int i11) throws NotPositiveException, NumberIsTooLargeException, MathArithmeticException {
        checkBinomial(i10, i11);
        double d10 = 1.0d;
        if (i10 == i11 || i11 == 0) {
            return 1.0d;
        }
        if (i11 == 1 || i11 == i10 - 1) {
            return i10;
        }
        if (i11 > i10 / 2) {
            return binomialCoefficientDouble(i10, i10 - i11);
        }
        if (i10 < 67) {
            return binomialCoefficient(i10, i11);
        }
        for (int i12 = 1; i12 <= i11; i12++) {
            d10 *= ((i10 - i11) + i12) / i12;
        }
        return FastMath.floor(d10 + 0.5d);
    }

    public static double binomialCoefficientLog(int i10, int i11) throws NotPositiveException, NumberIsTooLargeException, MathArithmeticException {
        checkBinomial(i10, i11);
        double d10 = 0.0d;
        if (i10 == i11 || i11 == 0) {
            return 0.0d;
        }
        if (i11 == 1 || i11 == i10 - 1) {
            return FastMath.log(i10);
        }
        if (i10 < 67) {
            return FastMath.log(binomialCoefficient(i10, i11));
        }
        if (i10 < 1030) {
            return FastMath.log(binomialCoefficientDouble(i10, i11));
        }
        if (i11 > i10 / 2) {
            return binomialCoefficientLog(i10, i10 - i11);
        }
        for (int i12 = (i10 - i11) + 1; i12 <= i10; i12++) {
            d10 += FastMath.log(i12);
        }
        for (int i13 = 2; i13 <= i11; i13++) {
            d10 -= FastMath.log(i13);
        }
        return d10;
    }

    public static void checkBinomial(int i10, int i11) throws NumberIsTooLargeException, NotPositiveException {
        if (i10 < i11) {
            throw new NumberIsTooLargeException(LocalizedFormats.BINOMIAL_INVALID_PARAMETERS_ORDER, Integer.valueOf(i11), Integer.valueOf(i10), true);
        }
        if (i10 < 0) {
            throw new NotPositiveException(LocalizedFormats.BINOMIAL_NEGATIVE_PARAMETER, Integer.valueOf(i10));
        }
    }

    public static Iterator<int[]> combinationsIterator(int i10, int i11) {
        return new Combinations(i10, i11).iterator();
    }

    public static long factorial(int i10) throws NotPositiveException, MathArithmeticException {
        if (i10 < 0) {
            throw new NotPositiveException(LocalizedFormats.FACTORIAL_NEGATIVE_PARAMETER, Integer.valueOf(i10));
        }
        if (i10 <= 20) {
            return FACTORIALS[i10];
        }
        throw new MathArithmeticException();
    }

    public static double factorialDouble(int i10) throws NotPositiveException {
        if (i10 >= 0) {
            return i10 < 21 ? FACTORIALS[i10] : FastMath.floor(FastMath.exp(factorialLog(i10)) + 0.5d);
        }
        throw new NotPositiveException(LocalizedFormats.FACTORIAL_NEGATIVE_PARAMETER, Integer.valueOf(i10));
    }

    public static double factorialLog(int i10) throws NotPositiveException {
        if (i10 < 0) {
            throw new NotPositiveException(LocalizedFormats.FACTORIAL_NEGATIVE_PARAMETER, Integer.valueOf(i10));
        }
        if (i10 < 21) {
            return FastMath.log(FACTORIALS[i10]);
        }
        double d10 = 0.0d;
        for (int i11 = 2; i11 <= i10; i11++) {
            d10 += FastMath.log(i11);
        }
        return d10;
    }

    public static long stirlingS2(int i10, int i11) throws NotPositiveException, NumberIsTooLargeException, MathArithmeticException {
        if (i11 < 0) {
            throw new NotPositiveException(Integer.valueOf(i11));
        }
        if (i11 > i10) {
            throw new NumberIsTooLargeException(Integer.valueOf(i11), Integer.valueOf(i10), true);
        }
        long[][] jArr = STIRLING_S2.get();
        long j10 = 1;
        if (jArr == null) {
            long[][] jArr2 = new long[26];
            long[] jArr3 = new long[1];
            jArr3[0] = 1;
            jArr2[0] = jArr3;
            int i12 = 1;
            while (i12 < 26) {
                int i13 = i12 + 1;
                long[] jArr4 = new long[i13];
                jArr2[i12] = jArr4;
                jArr4[0] = 0;
                jArr4[1] = j10;
                jArr4[i12] = j10;
                int i14 = 2;
                while (i14 < i12) {
                    long[] jArr5 = jArr2[i12];
                    long[] jArr6 = jArr2[i12 - 1];
                    jArr5[i14] = (i14 * jArr6[i14]) + jArr6[i14 - 1];
                    i14++;
                    j10 = 1;
                }
                i12 = i13;
            }
            c.a(STIRLING_S2, null, jArr2);
            jArr = jArr2;
        }
        if (i10 < jArr.length) {
            return jArr[i10][i11];
        }
        if (i11 == 0) {
            return 0L;
        }
        if (i11 == 1 || i11 == i10) {
            return 1L;
        }
        if (i11 == 2) {
            return (1 << (i10 - 1)) - 1;
        }
        if (i11 == i10 - 1) {
            return binomialCoefficient(i10, 2);
        }
        long j11 = (i11 & 1) == 0 ? 1L : -1L;
        long j12 = 0;
        for (int i15 = 1; i15 <= i11; i15++) {
            j11 = -j11;
            j12 += binomialCoefficient(i11, i15) * j11 * ArithmeticUtils.pow(i15, i10);
            if (j12 < 0) {
                throw new MathArithmeticException(LocalizedFormats.ARGUMENT_OUTSIDE_DOMAIN, Integer.valueOf(i10), 0, Integer.valueOf(jArr.length - 1));
            }
        }
        return j12 / factorial(i11);
    }
}
