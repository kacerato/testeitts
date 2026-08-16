package org.apache.commons.math3.random;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.MathUtils;

public class HaltonSequenceGenerator implements RandomVectorGenerator {
    private static final int[] PRIMES = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173};
    private static final int[] WEIGHTS = {1, 2, 3, 3, 8, 11, 12, 14, 7, 18, 12, 13, 17, 18, 29, 14, 18, 43, 41, 44, 40, 30, 47, 65, 71, 28, 40, 60, 79, 89, 56, 50, 52, 61, 108, 56, 66, 63, 60, 66};
    private final int[] base;
    private int count;
    private final int dimension;
    private final int[] weight;

    public HaltonSequenceGenerator(int i10) throws OutOfRangeException {
        this(i10, PRIMES, WEIGHTS);
    }

    public int getNextIndex() {
        return this.count;
    }

    @Override
    public double[] nextVector() {
        double[] dArr = new double[this.dimension];
        for (int i10 = 0; i10 < this.dimension; i10++) {
            int i11 = this.count;
            double d10 = this.base[i10];
            double d11 = 1.0d;
            while (true) {
                d11 /= d10;
                if (i11 > 0) {
                    int i12 = this.base[i10];
                    dArr[i10] = dArr[i10] + (scramble(i10, 0, i12, i11 % i12) * d11);
                    int i13 = this.base[i10];
                    i11 /= i13;
                    d10 = i13;
                }
            }
        }
        this.count++;
        return dArr;
    }

    public int scramble(int i10, int i11, int i12, int i13) {
        int[] iArr = this.weight;
        return iArr != null ? (iArr[i10] * i13) % i12 : i13;
    }

    public double[] skipTo(int i10) throws NotPositiveException {
        this.count = i10;
        return nextVector();
    }

    public HaltonSequenceGenerator(int i10, int[] iArr, int[] iArr2) throws NullArgumentException, OutOfRangeException, DimensionMismatchException {
        this.count = 0;
        MathUtils.checkNotNull(iArr);
        if (i10 >= 1 && i10 <= iArr.length) {
            if (iArr2 != null && iArr2.length != iArr.length) {
                throw new DimensionMismatchException(iArr2.length, iArr.length);
            }
            this.dimension = i10;
            this.base = (int[]) iArr.clone();
            this.weight = iArr2 == null ? null : (int[]) iArr2.clone();
            this.count = 0;
            return;
        }
        throw new OutOfRangeException(Integer.valueOf(i10), 1, Integer.valueOf(PRIMES.length));
    }
}
