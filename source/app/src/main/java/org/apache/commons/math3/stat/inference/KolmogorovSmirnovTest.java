package org.apache.commons.math3.stat.inference;

import com.tonyodev.fetch2.util.FetchDefaults;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.HashSet;
import org.apache.commons.math3.distribution.EnumeratedRealDistribution;
import org.apache.commons.math3.distribution.RealDistribution;
import org.apache.commons.math3.distribution.UniformRealDistribution;
import org.apache.commons.math3.exception.InsufficientDataException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.TooManyIterationsException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.fraction.BigFraction;
import org.apache.commons.math3.fraction.BigFractionField;
import org.apache.commons.math3.fraction.FractionConversionException;
import org.apache.commons.math3.linear.Array2DRowFieldMatrix;
import org.apache.commons.math3.linear.FieldMatrix;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.random.JDKRandomGenerator;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.CombinatoricsUtils;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

public class KolmogorovSmirnovTest {
    protected static final double KS_SUM_CAUCHY_CRITERION = 1.0E-20d;
    protected static final int LARGE_SAMPLE_PRODUCT = 10000;
    protected static final int MAXIMUM_PARTIAL_SUM_COUNT = 100000;

    @Deprecated
    protected static final int MONTE_CARLO_ITERATIONS = 1000000;
    protected static final double PG_SUM_RELATIVE_ERROR = 1.0E-10d;

    @Deprecated
    protected static final int SMALL_SAMPLE_PRODUCT = 200;
    private final RandomGenerator rng;

    public KolmogorovSmirnovTest() {
        this.rng = new Well19937c();
    }

    private static int c(int i10, int i11, int i12, int i13, long j10, boolean z10) {
        return z10 ? FastMath.abs((((long) i10) * ((long) i13)) - (((long) i11) * ((long) i12))) <= j10 ? 1 : 0 : FastMath.abs((((long) i10) * ((long) i13)) - (((long) i11) * ((long) i12))) < j10 ? 1 : 0;
    }

    private static long calculateIntegralD(double d10, int i10, int i11, boolean z10) {
        double d11 = i10 * i11;
        long ceil = (long) FastMath.ceil((d10 - 1.0E-12d) * d11);
        return (z10 && ((long) FastMath.floor((d10 + 1.0E-12d) * d11)) == ceil) ? ceil + 1 : ceil;
    }

    private void checkArray(double[] dArr) {
        if (dArr == null) {
            throw new NullArgumentException(LocalizedFormats.NULL_NOT_ALLOWED, new Object[0]);
        }
        if (dArr.length < 2) {
            throw new InsufficientDataException(LocalizedFormats.INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE, Integer.valueOf(dArr.length), 2);
        }
    }

    private FieldMatrix<BigFraction> createExactH(double d10, int i10) throws NumberIsTooLargeException, FractionConversionException {
        BigFraction bigFraction;
        int i11;
        double d11 = i10 * d10;
        int ceil = (int) Math.ceil(d11);
        int i12 = ceil * 2;
        int i13 = i12 - 1;
        double d12 = ceil - d11;
        if (d12 >= 1.0d) {
            throw new NumberIsTooLargeException(Double.valueOf(d12), Double.valueOf(1.0d), false);
        }
        try {
            try {
                bigFraction = new BigFraction(d12, KS_SUM_CAUCHY_CRITERION, 10000);
            } catch (FractionConversionException unused) {
                bigFraction = new BigFraction(d12, 1.0E-10d, 10000);
            }
        } catch (FractionConversionException unused2) {
            bigFraction = new BigFraction(d12, 1.0E-5d, 10000);
        }
        BigFraction[][] bigFractionArr = (BigFraction[][]) Array.newInstance((Class<?>) BigFraction.class, i13, i13);
        for (int i14 = 0; i14 < i13; i14++) {
            for (int i15 = 0; i15 < i13; i15++) {
                if ((i14 - i15) + 1 < 0) {
                    bigFractionArr[i14][i15] = BigFraction.ZERO;
                } else {
                    bigFractionArr[i14][i15] = BigFraction.ONE;
                }
            }
        }
        BigFraction[] bigFractionArr2 = new BigFraction[i13];
        bigFractionArr2[0] = bigFraction;
        for (int i16 = 1; i16 < i13; i16++) {
            bigFractionArr2[i16] = bigFraction.multiply(bigFractionArr2[i16 - 1]);
        }
        for (int i17 = 0; i17 < i13; i17++) {
            BigFraction[] bigFractionArr3 = bigFractionArr[i17];
            bigFractionArr3[0] = bigFractionArr3[0].subtract(bigFractionArr2[i17]);
            BigFraction[] bigFractionArr4 = bigFractionArr[i12 - 2];
            bigFractionArr4[i17] = bigFractionArr4[i17].subtract(bigFractionArr2[(i13 - i17) - 1]);
        }
        if (bigFraction.compareTo(BigFraction.ONE_HALF) == 1) {
            BigFraction[] bigFractionArr5 = bigFractionArr[i12 - 2];
            bigFractionArr5[0] = bigFractionArr5[0].add(bigFraction.multiply(2).subtract(1).pow(i13));
        }
        int i18 = 0;
        while (i18 < i13) {
            int i19 = 0;
            while (true) {
                i11 = i18 + 1;
                if (i19 < i11) {
                    int i20 = (i18 - i19) + 1;
                    if (i20 > 0) {
                        for (int i21 = 2; i21 <= i20; i21++) {
                            BigFraction[] bigFractionArr6 = bigFractionArr[i18];
                            bigFractionArr6[i19] = bigFractionArr6[i19].divide(i21);
                        }
                    }
                    i19++;
                }
            }
            i18 = i11;
        }
        return new Array2DRowFieldMatrix(BigFractionField.getInstance(), bigFractionArr);
    }

    private RealMatrix createRoundedH(double d10, int i10) throws NumberIsTooLargeException {
        int i11;
        double d11 = i10 * d10;
        int ceil = (int) Math.ceil(d11);
        int i12 = ceil * 2;
        int i13 = i12 - 1;
        double d12 = ceil - d11;
        if (d12 >= 1.0d) {
            throw new NumberIsTooLargeException(Double.valueOf(d12), Double.valueOf(1.0d), false);
        }
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, i13, i13);
        for (int i14 = 0; i14 < i13; i14++) {
            for (int i15 = 0; i15 < i13; i15++) {
                if ((i14 - i15) + 1 < 0) {
                    dArr[i14][i15] = 0.0d;
                } else {
                    dArr[i14][i15] = 1.0d;
                }
            }
        }
        double[] dArr2 = new double[i13];
        dArr2[0] = d12;
        for (int i16 = 1; i16 < i13; i16++) {
            dArr2[i16] = dArr2[i16 - 1] * d12;
        }
        for (int i17 = 0; i17 < i13; i17++) {
            double[] dArr3 = dArr[i17];
            dArr3[0] = dArr3[0] - dArr2[i17];
            double[] dArr4 = dArr[i12 - 2];
            dArr4[i17] = dArr4[i17] - dArr2[(i13 - i17) - 1];
        }
        if (Double.compare(d12, 0.5d) > 0) {
            double[] dArr5 = dArr[i12 - 2];
            dArr5[0] = dArr5[0] + FastMath.pow((d12 * 2.0d) - 1.0d, i13);
        }
        int i18 = 0;
        while (i18 < i13) {
            int i19 = 0;
            while (true) {
                i11 = i18 + 1;
                if (i19 < i11) {
                    int i20 = (i18 - i19) + 1;
                    if (i20 > 0) {
                        for (int i21 = 2; i21 <= i20; i21++) {
                            double[] dArr6 = dArr[i18];
                            dArr6[i19] = dArr6[i19] / i21;
                        }
                    }
                    i19++;
                }
            }
            i18 = i11;
        }
        return MatrixUtils.createRealMatrix(dArr);
    }

    private double exactK(double d10, int i10) throws MathArithmeticException {
        int ceil = ((int) Math.ceil(i10 * d10)) - 1;
        BigFraction entry = createExactH(d10, i10).power(i10).getEntry(ceil, ceil);
        for (int i11 = 1; i11 <= i10; i11++) {
            entry = entry.multiply(i11).divide(i10);
        }
        return entry.bigDecimalValue(20, 4).doubleValue();
    }

    public static void fillBooleanArrayRandomlyWithFixedNumberTrueValues(boolean[] zArr, int i10, RandomGenerator randomGenerator) {
        Arrays.fill(zArr, true);
        while (i10 < zArr.length) {
            int i11 = i10 + 1;
            int nextInt = randomGenerator.nextInt(i11);
            if (zArr[nextInt]) {
                i10 = nextInt;
            }
            zArr[i10] = false;
            i10 = i11;
        }
    }

    private static void fixTies(double[] dArr, double[] dArr2) {
        boolean hasTies;
        double[] unique = MathArrays.unique(MathArrays.concatenate(dArr, dArr2));
        if (unique.length == dArr.length + dArr2.length) {
            return;
        }
        int i10 = 0;
        double d10 = unique[0];
        double d11 = 1.0d;
        int i11 = 1;
        while (i11 < unique.length) {
            double d12 = unique[i11];
            double d13 = d10 - d12;
            if (d13 < d11) {
                d11 = d13;
            }
            i11++;
            d10 = d12;
        }
        double d14 = d11 / 2.0d;
        UniformRealDistribution uniformRealDistribution = new UniformRealDistribution(new JDKRandomGenerator(100), -d14, d14);
        do {
            jitter(dArr, uniformRealDistribution);
            jitter(dArr2, uniformRealDistribution);
            hasTies = hasTies(dArr, dArr2);
            i10++;
            if (!hasTies) {
                break;
            }
        } while (i10 < 1000);
        if (hasTies) {
            throw new MathInternalError();
        }
    }

    private static boolean hasTies(double[] dArr, double[] dArr2) {
        HashSet hashSet = new HashSet();
        for (double d10 : dArr) {
            if (!hashSet.add(Double.valueOf(d10))) {
                return true;
            }
        }
        for (double d11 : dArr2) {
            if (!hashSet.add(Double.valueOf(d11))) {
                return true;
            }
        }
        return false;
    }

    private long integralKolmogorovSmirnovStatistic(double[] dArr, double[] dArr2) {
        checkArray(dArr);
        checkArray(dArr2);
        double[] copyOf = MathArrays.copyOf(dArr);
        double[] copyOf2 = MathArrays.copyOf(dArr2);
        Arrays.sort(copyOf);
        Arrays.sort(copyOf2);
        int length = copyOf.length;
        int length2 = copyOf2.length;
        int i10 = 0;
        long j10 = 0;
        int i11 = 0;
        long j11 = 0;
        do {
            double d10 = Double.compare(copyOf[i10], copyOf2[i11]) <= 0 ? copyOf[i10] : copyOf2[i11];
            while (i10 < length && Double.compare(copyOf[i10], d10) == 0) {
                i10++;
                j11 += length2;
            }
            while (i11 < length2 && Double.compare(copyOf2[i11], d10) == 0) {
                i11++;
                j11 -= length;
            }
            if (j11 > j10) {
                j10 = j11;
            } else {
                long j12 = -j11;
                if (j12 > j10) {
                    j10 = j12;
                }
            }
            if (i10 >= length) {
                break;
            }
        } while (i11 < length2);
        return j10;
    }

    private double integralMonteCarloP(long j10, int i10, int i11, int i12) {
        int max = FastMath.max(i10, i11);
        int min = FastMath.min(i10, i11);
        int i13 = max + min;
        boolean[] zArr = new boolean[i13];
        int i14 = 0;
        for (int i15 = 0; i15 < i12; i15++) {
            fillBooleanArrayRandomlyWithFixedNumberTrueValues(zArr, max, this.rng);
            long j11 = 0;
            for (int i16 = 0; i16 < i13; i16++) {
                if (zArr[i16]) {
                    j11 += min;
                    if (j11 >= j10) {
                        i14++;
                        break;
                    }
                } else {
                    j11 -= max;
                    if (j11 <= (-j10)) {
                        i14++;
                        break;
                        break;
                    }
                }
            }
        }
        return i14 / i12;
    }

    private static void jitter(double[] dArr, RealDistribution realDistribution) {
        for (int i10 = 0; i10 < dArr.length; i10++) {
            dArr[i10] = dArr[i10] + realDistribution.sample();
        }
    }

    private static double n(int i10, int i11, int i12, int i13, long j10, boolean z10) {
        double[] dArr = new double[i13];
        for (int i14 = 0; i14 < i13; i14++) {
            dArr[i14] = c(0, r10, i12, i13, j10, z10);
        }
        double d10 = 0.0d;
        int i15 = 1;
        while (i15 <= i10) {
            double c10 = c(i15, 0, i12, i13, j10, z10);
            for (int i16 = 1; i16 <= i11; i16++) {
                int i17 = i16 - 1;
                c10 = (c10 + dArr[i17]) * c(i15, i16, i12, i13, j10, z10);
                dArr[i17] = c10;
            }
            i15++;
            d10 = c10;
        }
        return d10;
    }

    private double roundedK(double d10, int i10) {
        double d11 = i10;
        int ceil = ((int) Math.ceil(d11 * d10)) - 1;
        double entry = createRoundedH(d10, i10).power(i10).getEntry(ceil, ceil);
        for (int i11 = 1; i11 <= i10; i11++) {
            entry *= i11 / d11;
        }
        return entry;
    }

    public double approximateP(double d10, int i10, int i11) {
        double d11 = i11;
        double d12 = i10;
        return 1.0d - ksSum(d10 * FastMath.sqrt((d11 * d12) / (d11 + d12)), KS_SUM_CAUCHY_CRITERION, 100000);
    }

    public double bootstrap(double[] dArr, double[] dArr2, int i10, boolean z10) {
        int length = dArr.length;
        int length2 = dArr2.length;
        double[] dArr3 = new double[length + length2];
        System.arraycopy(dArr, 0, dArr3, 0, length);
        System.arraycopy(dArr2, 0, dArr3, length, length2);
        EnumeratedRealDistribution enumeratedRealDistribution = new EnumeratedRealDistribution(this.rng, dArr3);
        long integralKolmogorovSmirnovStatistic = integralKolmogorovSmirnovStatistic(dArr, dArr2);
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < i10; i13++) {
            long integralKolmogorovSmirnovStatistic2 = integralKolmogorovSmirnovStatistic(enumeratedRealDistribution.sample(length), enumeratedRealDistribution.sample(length2));
            if (integralKolmogorovSmirnovStatistic2 > integralKolmogorovSmirnovStatistic) {
                i11++;
            } else if (integralKolmogorovSmirnovStatistic2 == integralKolmogorovSmirnovStatistic) {
                i12++;
            }
        }
        if (!z10) {
            i11 += i12;
        }
        return i11 / i10;
    }

    public double cdf(double d10, int i10) throws MathArithmeticException {
        return cdf(d10, i10, false);
    }

    public double cdfExact(double d10, int i10) throws MathArithmeticException {
        return cdf(d10, i10, true);
    }

    public double exactP(double d10, int i10, int i11, boolean z10) {
        return 1.0d - (n(i11, i10, i11, i10, calculateIntegralD(d10, i11, i10, z10), z10) / CombinatoricsUtils.binomialCoefficientDouble(i10 + i11, i11));
    }

    public double kolmogorovSmirnovStatistic(RealDistribution realDistribution, double[] dArr) {
        checkArray(dArr);
        int length = dArr.length;
        double d10 = length;
        double[] dArr2 = new double[length];
        System.arraycopy(dArr, 0, dArr2, 0, length);
        Arrays.sort(dArr2);
        double d11 = 0.0d;
        for (int i10 = 1; i10 <= length; i10++) {
            int i11 = i10 - 1;
            double cumulativeProbability = realDistribution.cumulativeProbability(dArr2[i11]);
            double max = FastMath.max(cumulativeProbability - (i11 / d10), (i10 / d10) - cumulativeProbability);
            if (max > d11) {
                d11 = max;
            }
        }
        return d11;
    }

    public double kolmogorovSmirnovTest(RealDistribution realDistribution, double[] dArr, boolean z10) {
        return 1.0d - cdf(kolmogorovSmirnovStatistic(realDistribution, dArr), dArr.length, z10);
    }

    public double ksSum(double d10, double d11, int i10) {
        if (d10 == 0.0d) {
            return 0.0d;
        }
        double d12 = (-2.0d) * d10 * d10;
        double d13 = 0.5d;
        double d14 = 1.0d;
        long j10 = 1;
        int i11 = -1;
        while (d14 > d11 && j10 < i10) {
            double d15 = j10;
            d14 = FastMath.exp(d12 * d15 * d15);
            d13 += i11 * d14;
            i11 *= -1;
            j10++;
        }
        if (j10 != i10) {
            return d13 * 2.0d;
        }
        throw new TooManyIterationsException(Integer.valueOf(i10));
    }

    public double monteCarloP(double d10, int i10, int i11, boolean z10, int i12) {
        return integralMonteCarloP(calculateIntegralD(d10, i10, i11, z10), i10, i11, i12);
    }

    public double pelzGood(double d10, int i10) {
        double d11;
        double d12;
        int i11;
        int i12;
        double d13;
        double d14 = i10;
        double sqrt = FastMath.sqrt(d14);
        double d15 = d10 * sqrt;
        double d16 = d10 * d10 * d14;
        double d17 = d16 * d16;
        double d18 = d17 * d16;
        double d19 = 9.869604401089358d / (8.0d * d16);
        double d20 = 0.0d;
        double d21 = d17 * d17;
        double d22 = 0.0d;
        int i13 = 1;
        while (true) {
            if (i13 >= 100000) {
                d11 = d14;
                d12 = d18;
                i11 = 100000;
                break;
            }
            d11 = d14;
            double d23 = (i13 * 2) - 1;
            d12 = d18;
            double exp = FastMath.exp((-d19) * d23 * d23);
            d22 += exp;
            if (exp <= d22 * 1.0E-10d) {
                i11 = 100000;
                break;
            }
            i13++;
            d14 = d11;
            d18 = d12;
        }
        if (i13 == i11) {
            throw new TooManyIterationsException(Integer.valueOf(i11));
        }
        double sqrt2 = (d22 * FastMath.sqrt(6.283185307179586d)) / d15;
        double d24 = d16 * 2.0d;
        double d25 = 0.0d;
        int i14 = 0;
        while (true) {
            if (i14 >= i11) {
                break;
            }
            double d26 = i14 + 0.5d;
            double d27 = d26 * d26;
            double exp2 = ((d27 * 9.869604401089358d) - d16) * FastMath.exp((d27 * (-9.869604401089358d)) / d24);
            d25 += exp2;
            if (FastMath.abs(exp2) < FastMath.abs(d25) * 1.0E-10d) {
                i11 = 100000;
                break;
            }
            i14++;
            i11 = 100000;
        }
        if (i14 == i11) {
            throw new TooManyIterationsException(Integer.valueOf(i11));
        }
        double sqrt3 = FastMath.sqrt(1.5707963267948966d);
        double d28 = sqrt2 + ((d25 * sqrt3) / ((3.0d * d17) * sqrt));
        double d29 = 2.0d * d17;
        double d30 = 6.0d * d12;
        double d31 = d16 * 5.0d;
        double d32 = 0.0d;
        int i15 = 0;
        while (true) {
            i12 = 100000;
            d13 = sqrt;
            if (i15 >= 100000) {
                break;
            }
            double d33 = i15 + 0.5d;
            double d34 = d33 * d33;
            double exp3 = (d30 + d29 + ((d29 - d31) * 9.869604401089358d * d34) + ((1.0d - d24) * 97.40909103400243d * d34 * d34)) * FastMath.exp((d34 * (-9.869604401089358d)) / d24);
            d32 += exp3;
            if (FastMath.abs(exp3) < FastMath.abs(d32) * 1.0E-10d) {
                i12 = 100000;
                break;
            }
            i15++;
            sqrt = d13;
        }
        if (i15 == i12) {
            throw new TooManyIterationsException(Integer.valueOf(i12));
        }
        double d35 = 0.0d;
        int i16 = 1;
        while (true) {
            if (i16 >= i12) {
                break;
            }
            double d36 = i16 * i16;
            double exp4 = d36 * 9.869604401089358d * FastMath.exp((d36 * (-9.869604401089358d)) / d24);
            d35 += exp4;
            if (FastMath.abs(exp4) < FastMath.abs(d35) * 1.0E-10d) {
                i12 = 100000;
                break;
            }
            i16++;
            i12 = 100000;
        }
        if (i16 == i12) {
            throw new TooManyIterationsException(Integer.valueOf(i12));
        }
        double d37 = d28 + ((sqrt3 / d11) * ((d32 / ((((36.0d * d16) * d16) * d16) * d15)) - (d35 / ((18.0d * d16) * d15))));
        double d38 = 0.0d;
        int i17 = 100000;
        int i18 = 0;
        while (true) {
            if (i18 >= i17) {
                break;
            }
            double d39 = i18 + 0.5d;
            double d40 = d39 * d39;
            double d41 = d40 * d40;
            double d42 = d21;
            double exp5 = (((((((d41 * d40) * 961.3891935753043d) * (5.0d - (d16 * 30.0d))) + ((d41 * 97.40909103400243d) * (((-60.0d) * d16) + (212.0d * d17)))) + ((d40 * 9.869604401089358d) * ((135.0d * d17) - (96.0d * d12)))) - (d12 * 30.0d)) - (90.0d * d42)) * FastMath.exp((d40 * (-9.869604401089358d)) / d24);
            d38 += exp5;
            if (FastMath.abs(exp5) < FastMath.abs(d38) * 1.0E-10d) {
                i17 = 100000;
                break;
            }
            i18++;
            d21 = d42;
            i17 = 100000;
        }
        if (i18 == i17) {
            throw new TooManyIterationsException(Integer.valueOf(i17));
        }
        int i19 = 1;
        while (true) {
            if (i19 >= i17) {
                break;
            }
            double d43 = i19 * i19;
            double exp6 = ((d43 * d43 * (-97.40909103400243d)) + (29.608813203268074d * d43 * d16)) * FastMath.exp((d43 * (-9.869604401089358d)) / d24);
            d20 += exp6;
            if (FastMath.abs(exp6) < FastMath.abs(d20) * 1.0E-10d) {
                i17 = 100000;
                break;
            }
            i19++;
            i17 = 100000;
        }
        if (i19 != i17) {
            return d37 + ((sqrt3 / (d13 * d11)) * ((d38 / ((3240.0d * d12) * d17)) + (d20 / (108.0d * d12))));
        }
        throw new TooManyIterationsException(100000);
    }

    public double cdf(double d10, int i10, boolean z10) throws MathArithmeticException {
        double d11 = i10;
        double d12 = 1.0d;
        double d13 = 1.0d / d11;
        double d14 = 0.5d * d13;
        if (d10 <= d14) {
            return 0.0d;
        }
        if (d14 < d10 && d10 <= d13) {
            double d15 = (d10 * 2.0d) - d13;
            for (int i11 = 1; i11 <= i10; i11++) {
                d12 *= i11 * d15;
            }
            return d12;
        }
        if (1.0d - d13 <= d10 && d10 < 1.0d) {
            return 1.0d - (Math.pow(1.0d - d10, d11) * 2.0d);
        }
        if (1.0d <= d10) {
            return 1.0d;
        }
        if (z10) {
            return exactK(d10, i10);
        }
        if (i10 <= 140) {
            return roundedK(d10, i10);
        }
        return pelzGood(d10, i10);
    }

    public double kolmogorovSmirnovTest(double[] dArr, double[] dArr2, boolean z10) {
        double[] dArr3;
        double[] dArr4;
        long length = dArr.length * dArr2.length;
        if (length >= FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER || !hasTies(dArr, dArr2)) {
            dArr3 = dArr;
            dArr4 = dArr2;
        } else {
            dArr3 = MathArrays.copyOf(dArr);
            dArr4 = MathArrays.copyOf(dArr2);
            fixTies(dArr3, dArr4);
        }
        if (length < FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER) {
            return exactP(kolmogorovSmirnovStatistic(dArr3, dArr4), dArr.length, dArr2.length, z10);
        }
        return approximateP(kolmogorovSmirnovStatistic(dArr, dArr2), dArr.length, dArr2.length);
    }

    @Deprecated
    public KolmogorovSmirnovTest(RandomGenerator randomGenerator) {
        this.rng = randomGenerator;
    }

    public double kolmogorovSmirnovStatistic(double[] dArr, double[] dArr2) {
        return integralKolmogorovSmirnovStatistic(dArr, dArr2) / (dArr.length * dArr2.length);
    }

    public double kolmogorovSmirnovTest(double[] dArr, double[] dArr2) {
        return kolmogorovSmirnovTest(dArr, dArr2, true);
    }

    public double kolmogorovSmirnovTest(RealDistribution realDistribution, double[] dArr) {
        return kolmogorovSmirnovTest(realDistribution, dArr, false);
    }

    public double bootstrap(double[] dArr, double[] dArr2, int i10) {
        return bootstrap(dArr, dArr2, i10, true);
    }

    public boolean kolmogorovSmirnovTest(RealDistribution realDistribution, double[] dArr, double d10) {
        if (d10 <= 0.0d || d10 > 0.5d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUND_SIGNIFICANCE_LEVEL, Double.valueOf(d10), 0, Double.valueOf(0.5d));
        }
        return kolmogorovSmirnovTest(realDistribution, dArr) < d10;
    }
}
