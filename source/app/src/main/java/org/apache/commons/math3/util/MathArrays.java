package org.apache.commons.math3.util;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.TreeSet;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.distribution.UniformIntegerDistribution;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NotANumberException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;

public class MathArrays {

    public static class AnonymousClass3 {
        static final int[] $SwitchMap$org$apache$commons$math3$util$MathArrays$OrderDirection;
        static final int[] $SwitchMap$org$apache$commons$math3$util$MathArrays$Position;

        static {
            int[] iArr = new int[Position.values().length];
            $SwitchMap$org$apache$commons$math3$util$MathArrays$Position = iArr;
            try {
                iArr[Position.TAIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$util$MathArrays$Position[Position.HEAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[OrderDirection.values().length];
            $SwitchMap$org$apache$commons$math3$util$MathArrays$OrderDirection = iArr2;
            try {
                iArr2[OrderDirection.INCREASING.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$util$MathArrays$OrderDirection[OrderDirection.DECREASING.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public interface Function {
        double evaluate(double[] dArr);

        double evaluate(double[] dArr, int i10, int i11);
    }

    public enum OrderDirection {
        INCREASING,
        DECREASING
    }

    public static class PairDoubleInteger {
        private final double key;
        private final int value;

        public PairDoubleInteger(double d10, int i10) {
            this.key = d10;
            this.value = i10;
        }

        public double getKey() {
            return this.key;
        }

        public int getValue() {
            return this.value;
        }
    }

    public enum Position {
        HEAD,
        TAIL
    }

    private MathArrays() {
    }

    public static <T> T[] buildArray(Field<T> field, int i10) {
        T[] tArr = (T[]) ((Object[]) Array.newInstance(field.getRuntimeClass(), i10));
        Arrays.fill(tArr, field.getZero());
        return tArr;
    }

    public static boolean checkEqualLength(double[] dArr, double[] dArr2, boolean z10) {
        if (dArr.length == dArr2.length) {
            return true;
        }
        if (z10) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        return false;
    }

    public static void checkNonNegative(long[] jArr) throws NotPositiveException {
        for (int i10 = 0; i10 < jArr.length; i10++) {
            if (jArr[i10] < 0) {
                throw new NotPositiveException(Long.valueOf(jArr[i10]));
            }
        }
    }

    public static void checkNotNaN(double[] dArr) throws NotANumberException {
        for (double d10 : dArr) {
            if (Double.isNaN(d10)) {
                throw new NotANumberException();
            }
        }
    }

    public static boolean checkOrder(double[] dArr, OrderDirection orderDirection, boolean z10, boolean z11) throws NonMonotonicSequenceException {
        double d10 = dArr[0];
        int length = dArr.length;
        int i10 = 1;
        while (i10 < length) {
            int i11 = AnonymousClass3.$SwitchMap$org$apache$commons$math3$util$MathArrays$OrderDirection[orderDirection.ordinal()];
            if (i11 != 1) {
                if (i11 != 2) {
                    throw new MathInternalError();
                }
                if (z10) {
                    if (dArr[i10] >= d10) {
                        break;
                    }
                    d10 = dArr[i10];
                    i10++;
                } else {
                    if (dArr[i10] > d10) {
                        break;
                    }
                    d10 = dArr[i10];
                    i10++;
                }
            } else if (z10) {
                if (dArr[i10] <= d10) {
                    break;
                }
                d10 = dArr[i10];
                i10++;
            } else {
                if (dArr[i10] < d10) {
                    break;
                }
                d10 = dArr[i10];
                i10++;
            }
        }
        if (i10 == length) {
            return true;
        }
        if (z11) {
            throw new NonMonotonicSequenceException(Double.valueOf(dArr[i10]), Double.valueOf(d10), i10, orderDirection, z10);
        }
        return false;
    }

    public static void checkPositive(double[] dArr) throws NotStrictlyPositiveException {
        for (int i10 = 0; i10 < dArr.length; i10++) {
            if (dArr[i10] <= 0.0d) {
                throw new NotStrictlyPositiveException(Double.valueOf(dArr[i10]));
            }
        }
    }

    public static void checkRectangular(long[][] jArr) throws NullArgumentException, DimensionMismatchException {
        MathUtils.checkNotNull(jArr);
        for (int i10 = 1; i10 < jArr.length; i10++) {
            if (jArr[i10].length != jArr[0].length) {
                throw new DimensionMismatchException(LocalizedFormats.DIFFERENT_ROWS_LENGTHS, jArr[i10].length, jArr[0].length);
            }
        }
    }

    public static double[] concatenate(double[]... dArr) {
        int i10 = 0;
        for (double[] dArr2 : dArr) {
            i10 += dArr2.length;
        }
        double[] dArr3 = new double[i10];
        int i11 = 0;
        for (double[] dArr4 : dArr) {
            int length = dArr4.length;
            System.arraycopy(dArr4, 0, dArr3, i11, length);
            i11 += length;
        }
        return dArr3;
    }

    public static double[] convolve(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException {
        MathUtils.checkNotNull(dArr);
        MathUtils.checkNotNull(dArr2);
        int length = dArr.length;
        int length2 = dArr2.length;
        if (length == 0 || length2 == 0) {
            throw new NoDataException();
        }
        int i10 = (length + length2) - 1;
        double[] dArr3 = new double[i10];
        int i11 = 0;
        while (i11 < i10) {
            int i12 = i11 + 1;
            int max = FastMath.max(0, i12 - length);
            double d10 = 0.0d;
            for (int i13 = i11 - max; max < length2 && i13 >= 0; i13--) {
                d10 += dArr[i13] * dArr2[max];
                max++;
            }
            dArr3[i11] = d10;
            i11 = i12;
        }
        return dArr3;
    }

    public static int[] copyOf(int[] iArr) {
        return copyOf(iArr, iArr.length);
    }

    public static double[] copyOfRange(double[] dArr, int i10, int i11) {
        int i12 = i11 - i10;
        double[] dArr2 = new double[i12];
        System.arraycopy(dArr, i10, dArr2, 0, FastMath.min(i12, dArr.length - i10));
        return dArr2;
    }

    public static double cosAngle(double[] dArr, double[] dArr2) {
        return linearCombination(dArr, dArr2) / (safeNorm(dArr) * safeNorm(dArr2));
    }

    public static double distance(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        checkEqualLength(dArr, dArr2);
        double d10 = 0.0d;
        for (int i10 = 0; i10 < dArr.length; i10++) {
            double d11 = dArr[i10] - dArr2[i10];
            d10 += d11 * d11;
        }
        return FastMath.sqrt(d10);
    }

    public static double distance1(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        checkEqualLength(dArr, dArr2);
        double d10 = 0.0d;
        for (int i10 = 0; i10 < dArr.length; i10++) {
            d10 += FastMath.abs(dArr[i10] - dArr2[i10]);
        }
        return d10;
    }

    public static double distanceInf(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        checkEqualLength(dArr, dArr2);
        double d10 = 0.0d;
        for (int i10 = 0; i10 < dArr.length; i10++) {
            d10 = FastMath.max(d10, FastMath.abs(dArr[i10] - dArr2[i10]));
        }
        return d10;
    }

    public static double[] ebeAdd(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        checkEqualLength(dArr, dArr2);
        double[] dArr3 = (double[]) dArr.clone();
        for (int i10 = 0; i10 < dArr.length; i10++) {
            dArr3[i10] = dArr3[i10] + dArr2[i10];
        }
        return dArr3;
    }

    public static double[] ebeDivide(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        checkEqualLength(dArr, dArr2);
        double[] dArr3 = (double[]) dArr.clone();
        for (int i10 = 0; i10 < dArr.length; i10++) {
            dArr3[i10] = dArr3[i10] / dArr2[i10];
        }
        return dArr3;
    }

    public static double[] ebeMultiply(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        checkEqualLength(dArr, dArr2);
        double[] dArr3 = (double[]) dArr.clone();
        for (int i10 = 0; i10 < dArr.length; i10++) {
            dArr3[i10] = dArr3[i10] * dArr2[i10];
        }
        return dArr3;
    }

    public static double[] ebeSubtract(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        checkEqualLength(dArr, dArr2);
        double[] dArr3 = (double[]) dArr.clone();
        for (int i10 = 0; i10 < dArr.length; i10++) {
            dArr3[i10] = dArr3[i10] - dArr2[i10];
        }
        return dArr3;
    }

    public static boolean equals(float[] fArr, float[] fArr2) {
        if (fArr == null || fArr2 == null) {
            return !((fArr == null) ^ (fArr2 == null));
        }
        if (fArr.length != fArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < fArr.length; i10++) {
            if (!Precision.equals(fArr[i10], fArr2[i10])) {
                return false;
            }
        }
        return true;
    }

    public static boolean equalsIncludingNaN(float[] fArr, float[] fArr2) {
        if (fArr == null || fArr2 == null) {
            return !((fArr == null) ^ (fArr2 == null));
        }
        if (fArr.length != fArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < fArr.length; i10++) {
            if (!Precision.equalsIncludingNaN(fArr[i10], fArr2[i10])) {
                return false;
            }
        }
        return true;
    }

    public static <T extends Comparable<? super T>> boolean isMonotonic(T[] tArr, OrderDirection orderDirection, boolean z10) {
        T t10 = tArr[0];
        int length = tArr.length;
        for (int i10 = 1; i10 < length; i10++) {
            int i11 = AnonymousClass3.$SwitchMap$org$apache$commons$math3$util$MathArrays$OrderDirection[orderDirection.ordinal()];
            if (i11 == 1) {
                int compareTo = t10.compareTo(tArr[i10]);
                if (z10) {
                    if (compareTo >= 0) {
                        return false;
                    }
                } else if (compareTo > 0) {
                    return false;
                }
            } else if (i11 == 2) {
                int compareTo2 = tArr[i10].compareTo(t10);
                if (z10) {
                    if (compareTo2 >= 0) {
                        return false;
                    }
                } else if (compareTo2 > 0) {
                    return false;
                }
            } else {
                throw new MathInternalError();
            }
            t10 = tArr[i10];
        }
        return true;
    }

    public static double linearCombination(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        checkEqualLength(dArr, dArr2);
        int length = dArr.length;
        int i10 = 1;
        if (length == 1) {
            return dArr[0] * dArr2[0];
        }
        double[] dArr3 = new double[length];
        double d10 = 0.0d;
        double d11 = 0.0d;
        for (int i11 = 0; i11 < length; i11++) {
            double d12 = dArr[i11];
            double longBitsToDouble = Double.longBitsToDouble(Double.doubleToRawLongBits(d12) & (-134217728));
            double d13 = d12 - longBitsToDouble;
            double d14 = dArr2[i11];
            double longBitsToDouble2 = Double.longBitsToDouble(Double.doubleToRawLongBits(d14) & (-134217728));
            double d15 = d14 - longBitsToDouble2;
            double d16 = d12 * d14;
            dArr3[i11] = d16;
            d11 += (d13 * d15) - (((d16 - (longBitsToDouble * longBitsToDouble2)) - (d13 * longBitsToDouble2)) - (longBitsToDouble * d15));
        }
        double d17 = dArr3[0];
        double d18 = dArr3[1];
        double d19 = d17 + d18;
        double d20 = d19 - d18;
        double d21 = (d18 - (d19 - d20)) + (d17 - d20);
        int i12 = length - 1;
        while (i10 < i12) {
            i10++;
            double d22 = dArr3[i10];
            double d23 = d19 + d22;
            double d24 = d23 - d22;
            d21 += (d22 - (d23 - d24)) + (d19 - d24);
            d19 = d23;
        }
        double d25 = d19 + d11 + d21;
        if (!Double.isNaN(d25)) {
            return d25;
        }
        for (int i13 = 0; i13 < length; i13++) {
            d10 += dArr[i13] * dArr2[i13];
        }
        return d10;
    }

    public static int[] natural(int i10) {
        return sequence(i10, 0, 1);
    }

    public static double[] normalizeArray(double[] dArr, double d10) throws MathIllegalArgumentException, MathArithmeticException {
        if (Double.isInfinite(d10)) {
            throw new MathIllegalArgumentException(LocalizedFormats.NORMALIZE_INFINITE, new Object[0]);
        }
        if (Double.isNaN(d10)) {
            throw new MathIllegalArgumentException(LocalizedFormats.NORMALIZE_NAN, new Object[0]);
        }
        int length = dArr.length;
        double[] dArr2 = new double[length];
        double d11 = 0.0d;
        for (int i10 = 0; i10 < length; i10++) {
            if (Double.isInfinite(dArr[i10])) {
                throw new MathIllegalArgumentException(LocalizedFormats.INFINITE_ARRAY_ELEMENT, Double.valueOf(dArr[i10]), Integer.valueOf(i10));
            }
            if (!Double.isNaN(dArr[i10])) {
                d11 += dArr[i10];
            }
        }
        if (d11 == 0.0d) {
            throw new MathArithmeticException(LocalizedFormats.ARRAY_SUMS_TO_ZERO, new Object[0]);
        }
        for (int i11 = 0; i11 < length; i11++) {
            if (Double.isNaN(dArr[i11])) {
                dArr2[i11] = Double.NaN;
            } else {
                dArr2[i11] = (dArr[i11] * d10) / d11;
            }
        }
        return dArr2;
    }

    public static double safeNorm(double[] dArr) {
        double length = 1.304E19d / dArr.length;
        double d10 = 0.0d;
        double d11 = 0.0d;
        double d12 = 0.0d;
        double d13 = 0.0d;
        double d14 = 0.0d;
        for (double d15 : dArr) {
            double abs = FastMath.abs(d15);
            if (abs >= 3.834E-20d && abs <= length) {
                d11 += abs * abs;
            } else if (abs > 3.834E-20d) {
                if (abs > d12) {
                    double d16 = d12 / abs;
                    d10 = (d10 * d16 * d16) + 1.0d;
                    d12 = abs;
                } else {
                    double d17 = abs / d12;
                    d10 += d17 * d17;
                }
            } else if (abs > d13) {
                double d18 = d13 / abs;
                d14 = (d14 * d18 * d18) + 1.0d;
                d13 = abs;
            } else {
                if (abs != 0.0d) {
                    double d19 = abs / d13;
                    d14 += d19 * d19;
                }
            }
        }
        return d10 != 0.0d ? d12 * Math.sqrt(d10 + ((d11 / d12) / d12)) : d11 == 0.0d ? d13 * Math.sqrt(d14) : d11 >= d13 ? Math.sqrt(d11 * (((d13 / d11) * d13 * d14) + 1.0d)) : Math.sqrt(d13 * ((d11 / d13) + (d14 * d13)));
    }

    public static double[] scale(double d10, double[] dArr) {
        double[] dArr2 = new double[dArr.length];
        for (int i10 = 0; i10 < dArr.length; i10++) {
            dArr2[i10] = dArr[i10] * d10;
        }
        return dArr2;
    }

    public static void scaleInPlace(double d10, double[] dArr) {
        for (int i10 = 0; i10 < dArr.length; i10++) {
            dArr[i10] = dArr[i10] * d10;
        }
    }

    public static int[] sequence(int i10, int i11, int i12) {
        int[] iArr = new int[i10];
        for (int i13 = 0; i13 < i10; i13++) {
            iArr[i13] = (i13 * i12) + i11;
        }
        return iArr;
    }

    public static void shuffle(int[] iArr, int i10, Position position) {
        shuffle(iArr, i10, position, new Well19937c());
    }

    public static void sortInPlace(double[] dArr, double[]... dArr2) throws DimensionMismatchException, NullArgumentException {
        sortInPlace(dArr, OrderDirection.INCREASING, dArr2);
    }

    public static double[] unique(double[] dArr) {
        TreeSet treeSet = new TreeSet();
        int i10 = 0;
        for (double d10 : dArr) {
            treeSet.add(Double.valueOf(d10));
        }
        int size = treeSet.size();
        double[] dArr2 = new double[size];
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            i10++;
            dArr2[size - i10] = ((Double) it.next()).doubleValue();
        }
        return dArr2;
    }

    public static boolean verifyValues(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        return verifyValues(dArr, i10, i11, false);
    }

    public static double[] copyOf(double[] dArr) {
        return copyOf(dArr, dArr.length);
    }

    public static void shuffle(int[] iArr, int i10, Position position, RandomGenerator randomGenerator) {
        int i11 = AnonymousClass3.$SwitchMap$org$apache$commons$math3$util$MathArrays$Position[position.ordinal()];
        if (i11 == 1) {
            int length = iArr.length - 1;
            while (length >= i10) {
                int sample = length == i10 ? i10 : new UniformIntegerDistribution(randomGenerator, i10, length).sample();
                int i12 = iArr[sample];
                iArr[sample] = iArr[length];
                iArr[length] = i12;
                length--;
            }
            return;
        }
        if (i11 != 2) {
            throw new MathInternalError();
        }
        int i13 = 0;
        while (i13 <= i10) {
            int sample2 = i13 == i10 ? i10 : new UniformIntegerDistribution(randomGenerator, i13, i10).sample();
            int i14 = iArr[sample2];
            iArr[sample2] = iArr[i13];
            iArr[i13] = i14;
            i13++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void sortInPlace(double[] dArr, OrderDirection orderDirection, double[]... dArr2) throws NullArgumentException, DimensionMismatchException {
        if (dArr != null) {
            int length = dArr.length;
            for (double[] dArr3 : dArr2) {
                if (dArr3 != null) {
                    if (dArr3.length != length) {
                        throw new DimensionMismatchException(dArr3.length, length);
                    }
                } else {
                    throw new NullArgumentException();
                }
            }
            ArrayList arrayList = new ArrayList(length);
            for (int i10 = 0; i10 < length; i10++) {
                arrayList.add(new PairDoubleInteger(dArr[i10], i10));
            }
            Collections.sort(arrayList, orderDirection == OrderDirection.INCREASING ? new Comparator<PairDoubleInteger>() {
                @Override
                public int compare(PairDoubleInteger pairDoubleInteger, PairDoubleInteger pairDoubleInteger2) {
                    return Double.compare(pairDoubleInteger.getKey(), pairDoubleInteger2.getKey());
                }
            } : new Comparator<PairDoubleInteger>() {
                @Override
                public int compare(PairDoubleInteger pairDoubleInteger, PairDoubleInteger pairDoubleInteger2) {
                    return Double.compare(pairDoubleInteger2.getKey(), pairDoubleInteger.getKey());
                }
            });
            int[] iArr = new int[length];
            for (int i11 = 0; i11 < length; i11++) {
                PairDoubleInteger pairDoubleInteger = (PairDoubleInteger) arrayList.get(i11);
                dArr[i11] = pairDoubleInteger.getKey();
                iArr[i11] = pairDoubleInteger.getValue();
            }
            for (double[] dArr4 : dArr2) {
                double[] dArr5 = (double[]) dArr4.clone();
                for (int i12 = 0; i12 < length; i12++) {
                    dArr4[i12] = dArr5[iArr[i12]];
                }
            }
            return;
        }
        throw new NullArgumentException();
    }

    public static boolean verifyValues(double[] dArr, int i10, int i11, boolean z10) throws MathIllegalArgumentException {
        if (dArr == null) {
            throw new NullArgumentException(LocalizedFormats.INPUT_ARRAY, new Object[0]);
        }
        if (i10 < 0) {
            throw new NotPositiveException(LocalizedFormats.START_POSITION, Integer.valueOf(i10));
        }
        if (i11 >= 0) {
            int i12 = i10 + i11;
            if (i12 <= dArr.length) {
                return i11 != 0 || z10;
            }
            throw new NumberIsTooLargeException(LocalizedFormats.SUBARRAY_ENDS_AFTER_ARRAY_END, Integer.valueOf(i12), Integer.valueOf(dArr.length), true);
        }
        throw new NotPositiveException(LocalizedFormats.LENGTH, Integer.valueOf(i11));
    }

    public static <T> T[][] buildArray(Field<T> field, int i10, int i11) {
        if (i11 < 0) {
            return (T[][]) ((Object[][]) Array.newInstance(buildArray(field, 0).getClass(), i10));
        }
        T[][] tArr = (T[][]) ((Object[][]) Array.newInstance(field.getRuntimeClass(), i10, i11));
        for (int i12 = 0; i12 < i10; i12++) {
            Arrays.fill(tArr[i12], field.getZero());
        }
        return tArr;
    }

    public static void checkEqualLength(double[] dArr, double[] dArr2) {
        checkEqualLength(dArr, dArr2, true);
    }

    public static int[] copyOf(int[] iArr, int i10) {
        int[] iArr2 = new int[i10];
        System.arraycopy(iArr, 0, iArr2, 0, FastMath.min(i10, iArr.length));
        return iArr2;
    }

    public static boolean checkEqualLength(int[] iArr, int[] iArr2, boolean z10) {
        if (iArr.length == iArr2.length) {
            return true;
        }
        if (z10) {
            throw new DimensionMismatchException(iArr.length, iArr2.length);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0024, code lost:
    
        r1 = r1 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void checkNonNegative(long[][] jArr) throws NotPositiveException {
        int i10 = 0;
        while (i10 < jArr.length) {
            int i11 = 0;
            while (true) {
                long[] jArr2 = jArr[i10];
                if (i11 < jArr2.length) {
                    if (jArr2[i11] < 0) {
                        throw new NotPositiveException(Long.valueOf(jArr[i10][i11]));
                    }
                    i11++;
                }
            }
        }
    }

    public static int distance1(int[] iArr, int[] iArr2) throws DimensionMismatchException {
        checkEqualLength(iArr, iArr2);
        int i10 = 0;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            i10 += FastMath.abs(iArr[i11] - iArr2[i11]);
        }
        return i10;
    }

    public static int distanceInf(int[] iArr, int[] iArr2) throws DimensionMismatchException {
        checkEqualLength(iArr, iArr2);
        int i10 = 0;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            i10 = FastMath.max(i10, FastMath.abs(iArr[i11] - iArr2[i11]));
        }
        return i10;
    }

    public static boolean equals(double[] dArr, double[] dArr2) {
        if (dArr == null || dArr2 == null) {
            return !((dArr == null) ^ (dArr2 == null));
        }
        if (dArr.length != dArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < dArr.length; i10++) {
            if (!Precision.equals(dArr[i10], dArr2[i10])) {
                return false;
            }
        }
        return true;
    }

    public static boolean equalsIncludingNaN(double[] dArr, double[] dArr2) {
        if (dArr == null || dArr2 == null) {
            return !((dArr == null) ^ (dArr2 == null));
        }
        if (dArr.length != dArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < dArr.length; i10++) {
            if (!Precision.equalsIncludingNaN(dArr[i10], dArr2[i10])) {
                return false;
            }
        }
        return true;
    }

    public static double[] copyOf(double[] dArr, int i10) {
        double[] dArr2 = new double[i10];
        System.arraycopy(dArr, 0, dArr2, 0, FastMath.min(i10, dArr.length));
        return dArr2;
    }

    public static double distance(int[] iArr, int[] iArr2) throws DimensionMismatchException {
        checkEqualLength(iArr, iArr2);
        double d10 = 0.0d;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            double d11 = iArr[i10] - iArr2[i10];
            d10 += d11 * d11;
        }
        return FastMath.sqrt(d10);
    }

    public static void checkEqualLength(int[] iArr, int[] iArr2) {
        checkEqualLength(iArr, iArr2, true);
    }

    public static boolean verifyValues(double[] dArr, double[] dArr2, int i10, int i11) throws MathIllegalArgumentException {
        return verifyValues(dArr, dArr2, i10, i11, false);
    }

    public static boolean isMonotonic(double[] dArr, OrderDirection orderDirection, boolean z10) {
        return checkOrder(dArr, orderDirection, z10, false);
    }

    public static boolean verifyValues(double[] dArr, double[] dArr2, int i10, int i11, boolean z10) throws MathIllegalArgumentException {
        if (dArr2 != null && dArr != null) {
            checkEqualLength(dArr2, dArr);
            boolean z11 = false;
            for (int i12 = i10; i12 < i10 + i11; i12++) {
                double d10 = dArr2[i12];
                if (!Double.isNaN(d10)) {
                    if (Double.isInfinite(d10)) {
                        throw new MathIllegalArgumentException(LocalizedFormats.INFINITE_ARRAY_ELEMENT, Double.valueOf(d10), Integer.valueOf(i12));
                    }
                    if (d10 < 0.0d) {
                        throw new MathIllegalArgumentException(LocalizedFormats.NEGATIVE_ELEMENT_AT_INDEX, Integer.valueOf(i12), Double.valueOf(d10));
                    }
                    if (!z11 && d10 > 0.0d) {
                        z11 = true;
                    }
                } else {
                    throw new MathIllegalArgumentException(LocalizedFormats.NAN_ELEMENT_AT_INDEX, Integer.valueOf(i12));
                }
            }
            if (z11) {
                return verifyValues(dArr, i10, i11, z10);
            }
            throw new MathIllegalArgumentException(LocalizedFormats.WEIGHT_AT_LEAST_ONE_NON_ZERO, new Object[0]);
        }
        throw new NullArgumentException(LocalizedFormats.INPUT_ARRAY, new Object[0]);
    }

    public static void checkOrder(double[] dArr, OrderDirection orderDirection, boolean z10) throws NonMonotonicSequenceException {
        checkOrder(dArr, orderDirection, z10, true);
    }

    public static void checkOrder(double[] dArr) throws NonMonotonicSequenceException {
        checkOrder(dArr, OrderDirection.INCREASING, true);
    }

    public static void shuffle(int[] iArr, RandomGenerator randomGenerator) {
        shuffle(iArr, 0, Position.TAIL, randomGenerator);
    }

    public static void shuffle(int[] iArr) {
        shuffle(iArr, new Well19937c());
    }

    public static double linearCombination(double d10, double d11, double d12, double d13) {
        double longBitsToDouble = Double.longBitsToDouble(Double.doubleToRawLongBits(d10) & (-134217728));
        double d14 = d10 - longBitsToDouble;
        double longBitsToDouble2 = Double.longBitsToDouble(Double.doubleToRawLongBits(d11) & (-134217728));
        double d15 = d11 - longBitsToDouble2;
        double d16 = d10 * d11;
        double d17 = (d14 * d15) - (((d16 - (longBitsToDouble * longBitsToDouble2)) - (d14 * longBitsToDouble2)) - (longBitsToDouble * d15));
        double longBitsToDouble3 = Double.longBitsToDouble(Double.doubleToRawLongBits(d12) & (-134217728));
        double d18 = d12 - longBitsToDouble3;
        double longBitsToDouble4 = Double.longBitsToDouble((-134217728) & Double.doubleToRawLongBits(d13));
        double d19 = d13 - longBitsToDouble4;
        double d20 = d12 * d13;
        double d21 = (d18 * d19) - (((d20 - (longBitsToDouble3 * longBitsToDouble4)) - (d18 * longBitsToDouble4)) - (longBitsToDouble3 * d19));
        double d22 = d16 + d20;
        double d23 = d22 - d20;
        double d24 = d17 + d21 + (d20 - (d22 - d23)) + (d16 - d23) + d22;
        return Double.isNaN(d24) ? d22 : d24;
    }

    public static double linearCombination(double d10, double d11, double d12, double d13, double d14, double d15) {
        double longBitsToDouble = Double.longBitsToDouble(Double.doubleToRawLongBits(d10) & (-134217728));
        double d16 = d10 - longBitsToDouble;
        double longBitsToDouble2 = Double.longBitsToDouble(Double.doubleToRawLongBits(d11) & (-134217728));
        double d17 = d11 - longBitsToDouble2;
        double d18 = d10 * d11;
        double d19 = (d16 * d17) - (((d18 - (longBitsToDouble * longBitsToDouble2)) - (d16 * longBitsToDouble2)) - (longBitsToDouble * d17));
        double longBitsToDouble3 = Double.longBitsToDouble(Double.doubleToRawLongBits(d12) & (-134217728));
        double d20 = d12 - longBitsToDouble3;
        double longBitsToDouble4 = Double.longBitsToDouble(Double.doubleToRawLongBits(d13) & (-134217728));
        double d21 = d13 - longBitsToDouble4;
        double d22 = d12 * d13;
        double d23 = (d20 * d21) - (((d22 - (longBitsToDouble3 * longBitsToDouble4)) - (d20 * longBitsToDouble4)) - (longBitsToDouble3 * d21));
        double longBitsToDouble5 = Double.longBitsToDouble(Double.doubleToRawLongBits(d14) & (-134217728));
        double d24 = d14 - longBitsToDouble5;
        double longBitsToDouble6 = Double.longBitsToDouble((-134217728) & Double.doubleToRawLongBits(d15));
        double d25 = d15 - longBitsToDouble6;
        double d26 = d14 * d15;
        double d27 = (d24 * d25) - (((d26 - (longBitsToDouble5 * longBitsToDouble6)) - (d24 * longBitsToDouble6)) - (longBitsToDouble5 * d25));
        double d28 = d18 + d22;
        double d29 = d28 - d22;
        double d30 = (d22 - (d28 - d29)) + (d18 - d29);
        double d31 = d28 + d26;
        double d32 = d31 - d26;
        double d33 = d19 + d23 + d27 + d30 + (d26 - (d31 - d32)) + (d28 - d32) + d31;
        return Double.isNaN(d33) ? d31 : d33;
    }

    public static double linearCombination(double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17) {
        double longBitsToDouble = Double.longBitsToDouble(Double.doubleToRawLongBits(d10) & (-134217728));
        double d18 = d10 - longBitsToDouble;
        double longBitsToDouble2 = Double.longBitsToDouble(Double.doubleToRawLongBits(d11) & (-134217728));
        double d19 = d11 - longBitsToDouble2;
        double d20 = d10 * d11;
        double d21 = (d18 * d19) - (((d20 - (longBitsToDouble * longBitsToDouble2)) - (d18 * longBitsToDouble2)) - (longBitsToDouble * d19));
        double longBitsToDouble3 = Double.longBitsToDouble(Double.doubleToRawLongBits(d12) & (-134217728));
        double d22 = d12 - longBitsToDouble3;
        double longBitsToDouble4 = Double.longBitsToDouble(Double.doubleToRawLongBits(d13) & (-134217728));
        double d23 = d13 - longBitsToDouble4;
        double d24 = d12 * d13;
        double d25 = (d22 * d23) - (((d24 - (longBitsToDouble3 * longBitsToDouble4)) - (d22 * longBitsToDouble4)) - (longBitsToDouble3 * d23));
        double longBitsToDouble5 = Double.longBitsToDouble(Double.doubleToRawLongBits(d14) & (-134217728));
        double d26 = d14 - longBitsToDouble5;
        double longBitsToDouble6 = Double.longBitsToDouble(Double.doubleToRawLongBits(d15) & (-134217728));
        double d27 = d15 - longBitsToDouble6;
        double d28 = d14 * d15;
        double d29 = (d26 * d27) - (((d28 - (longBitsToDouble5 * longBitsToDouble6)) - (d26 * longBitsToDouble6)) - (longBitsToDouble5 * d27));
        double longBitsToDouble7 = Double.longBitsToDouble(Double.doubleToRawLongBits(d16) & (-134217728));
        double d30 = d16 - longBitsToDouble7;
        double longBitsToDouble8 = Double.longBitsToDouble((-134217728) & Double.doubleToRawLongBits(d17));
        double d31 = d17 - longBitsToDouble8;
        double d32 = d16 * d17;
        double d33 = (d30 * d31) - (((d32 - (longBitsToDouble7 * longBitsToDouble8)) - (d30 * longBitsToDouble8)) - (longBitsToDouble7 * d31));
        double d34 = d20 + d24;
        double d35 = d34 - d24;
        double d36 = (d24 - (d34 - d35)) + (d20 - d35);
        double d37 = d34 + d28;
        double d38 = d37 - d28;
        double d39 = (d28 - (d37 - d38)) + (d34 - d38);
        double d40 = d37 + d32;
        double d41 = d40 - d32;
        double d42 = d21 + d25 + d29 + d33 + d36 + d39 + (d32 - (d40 - d41)) + (d37 - d41) + d40;
        return Double.isNaN(d42) ? d40 : d42;
    }
}
