package org.apache.commons.math3.util;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.OutOfRangeException;

public class Combinations implements Iterable<int[]> {
    private final IterationOrder iterationOrder;

    private final int f100359k;

    private final int f100360n;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$org$apache$commons$math3$util$Combinations$IterationOrder;

        static {
            int[] iArr = new int[IterationOrder.values().length];
            $SwitchMap$org$apache$commons$math3$util$Combinations$IterationOrder = iArr;
            try {
                iArr[IterationOrder.LEXICOGRAPHIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public enum IterationOrder {
        LEXICOGRAPHIC
    }

    public static class LexicographicComparator implements Comparator<int[]>, Serializable {
        private static final long serialVersionUID = 20130906;

        private final int f100361k;

        private final int f100362n;

        public LexicographicComparator(int i10, int i11) {
            this.f100362n = i10;
            this.f100361k = i11;
        }

        private long lexNorm(int[] iArr) {
            int i10;
            long j10 = 0;
            for (int i11 = 0; i11 < iArr.length; i11++) {
                int i12 = iArr[i11];
                if (i12 < 0 || i12 >= (i10 = this.f100362n)) {
                    throw new OutOfRangeException(Integer.valueOf(i12), 0, Integer.valueOf(this.f100362n - 1));
                }
                j10 += i12 * ArithmeticUtils.pow(i10, i11);
            }
            return j10;
        }

        @Override
        public int compare(int[] iArr, int[] iArr2) {
            int length = iArr.length;
            int i10 = this.f100361k;
            if (length == i10) {
                if (iArr2.length == i10) {
                    int[] copyOf = MathArrays.copyOf(iArr);
                    Arrays.sort(copyOf);
                    int[] copyOf2 = MathArrays.copyOf(iArr2);
                    Arrays.sort(copyOf2);
                    long lexNorm = lexNorm(copyOf);
                    long lexNorm2 = lexNorm(copyOf2);
                    if (lexNorm < lexNorm2) {
                        return -1;
                    }
                    return lexNorm > lexNorm2 ? 1 : 0;
                }
                throw new DimensionMismatchException(iArr2.length, this.f100361k);
            }
            throw new DimensionMismatchException(iArr.length, this.f100361k);
        }
    }

    public static class LexicographicIterator implements Iterator<int[]> {

        private final int[] f100363c;

        private int f100364j;

        private final int f100365k;
        private boolean more;

        public LexicographicIterator(int i10, int i11) {
            this.more = true;
            this.f100365k = i11;
            this.f100363c = new int[i11 + 3];
            if (i11 == 0 || i11 >= i10) {
                this.more = false;
                return;
            }
            for (int i12 = 1; i12 <= i11; i12++) {
                this.f100363c[i12] = i12 - 1;
            }
            int[] iArr = this.f100363c;
            iArr[i11 + 1] = i10;
            iArr[i11 + 2] = 0;
            this.f100364j = i11;
        }

        @Override
        public boolean hasNext() {
            return this.more;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public int[] next() {
            if (this.more) {
                int i10 = this.f100365k;
                int[] iArr = new int[i10];
                System.arraycopy(this.f100363c, 1, iArr, 0, i10);
                int i11 = this.f100364j;
                if (i11 > 0) {
                    this.f100363c[i11] = i11;
                    this.f100364j = i11 - 1;
                    return iArr;
                }
                int[] iArr2 = this.f100363c;
                int i12 = iArr2[1];
                if (i12 + 1 < iArr2[2]) {
                    iArr2[1] = i12 + 1;
                    return iArr;
                }
                this.f100364j = 2;
                boolean z10 = false;
                int i13 = 0;
                while (!z10) {
                    int[] iArr3 = this.f100363c;
                    int i14 = this.f100364j;
                    iArr3[i14 - 1] = i14 - 2;
                    int i15 = iArr3[i14] + 1;
                    if (i15 == iArr3[i14 + 1]) {
                        this.f100364j = i14 + 1;
                    } else {
                        z10 = true;
                    }
                    i13 = i15;
                }
                int i16 = this.f100364j;
                if (i16 > this.f100365k) {
                    this.more = false;
                    return iArr;
                }
                this.f100363c[i16] = i13;
                this.f100364j = i16 - 1;
                return iArr;
            }
            throw new NoSuchElementException();
        }
    }

    public static class SingletonIterator implements Iterator<int[]> {
        private boolean more = true;
        private final int[] singleton;

        public SingletonIterator(int[] iArr) {
            this.singleton = iArr;
        }

        @Override
        public boolean hasNext() {
            return this.more;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public int[] next() {
            if (this.more) {
                this.more = false;
                return this.singleton;
            }
            throw new NoSuchElementException();
        }
    }

    public Combinations(int i10, int i11) {
        this(i10, i11, IterationOrder.LEXICOGRAPHIC);
    }

    public Comparator<int[]> comparator() {
        return new LexicographicComparator(this.f100360n, this.f100359k);
    }

    public int getK() {
        return this.f100359k;
    }

    public int getN() {
        return this.f100360n;
    }

    @Override
    public Iterator<int[]> iterator() {
        int i10 = this.f100359k;
        if (i10 == 0 || i10 == this.f100360n) {
            return new SingletonIterator(MathArrays.natural(i10));
        }
        if (AnonymousClass1.$SwitchMap$org$apache$commons$math3$util$Combinations$IterationOrder[this.iterationOrder.ordinal()] == 1) {
            return new LexicographicIterator(this.f100360n, this.f100359k);
        }
        throw new MathInternalError();
    }

    private Combinations(int i10, int i11, IterationOrder iterationOrder) {
        CombinatoricsUtils.checkBinomial(i10, i11);
        this.f100360n = i10;
        this.f100359k = i11;
        this.iterationOrder = iterationOrder;
    }
}
