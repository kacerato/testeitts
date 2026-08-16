package org.apache.commons.math3.util;

import java.util.NoSuchElementException;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;

public class MultidimensionalCounter implements Iterable<Integer> {
    private final int dimension;
    private final int last;
    private final int[] size;
    private final int totalSize;
    private final int[] uniCounterOffset;

    public class Iterator implements java.util.Iterator<Integer> {
        private int count;
        private final int[] counter;
        private final int maxCount;

        public Iterator() {
            int[] iArr = new int[MultidimensionalCounter.this.dimension];
            this.counter = iArr;
            this.count = -1;
            this.maxCount = MultidimensionalCounter.this.totalSize - 1;
            iArr[MultidimensionalCounter.this.last] = -1;
        }

        public int getCount() {
            return this.count;
        }

        public int[] getCounts() {
            return MathArrays.copyOf(this.counter);
        }

        @Override
        public boolean hasNext() {
            return this.count < this.maxCount;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        public int getCount(int i10) {
            return this.counter[i10];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Integer next() {
            if (hasNext()) {
                int i10 = MultidimensionalCounter.this.last;
                while (true) {
                    if (i10 >= 0) {
                        if (this.counter[i10] == MultidimensionalCounter.this.size[i10] - 1) {
                            this.counter[i10] = 0;
                            i10--;
                        } else {
                            int[] iArr = this.counter;
                            iArr[i10] = iArr[i10] + 1;
                            break;
                        }
                    } else {
                        break;
                    }
                }
                int i11 = this.count + 1;
                this.count = i11;
                return Integer.valueOf(i11);
            }
            throw new NoSuchElementException();
        }
    }

    public MultidimensionalCounter(int... iArr) throws NotStrictlyPositiveException {
        int i10;
        int length = iArr.length;
        this.dimension = length;
        this.size = MathArrays.copyOf(iArr);
        this.uniCounterOffset = new int[length];
        int i11 = length - 1;
        this.last = i11;
        int i12 = iArr[i11];
        int i13 = 0;
        while (true) {
            i10 = this.last;
            if (i13 >= i10) {
                break;
            }
            int i14 = i13 + 1;
            int i15 = 1;
            for (int i16 = i14; i16 < this.dimension; i16++) {
                i15 *= iArr[i16];
            }
            this.uniCounterOffset[i13] = i15;
            i12 *= iArr[i13];
            i13 = i14;
        }
        this.uniCounterOffset[i10] = 0;
        if (i12 <= 0) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i12));
        }
        this.totalSize = i12;
    }

    public int getCount(int... iArr) throws OutOfRangeException, DimensionMismatchException {
        if (iArr.length != this.dimension) {
            throw new DimensionMismatchException(iArr.length, this.dimension);
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.dimension; i11++) {
            int i12 = iArr[i11];
            if (i12 < 0 || i12 >= this.size[i11]) {
                throw new OutOfRangeException(Integer.valueOf(i12), 0, Integer.valueOf(this.size[i11] - 1));
            }
            i10 += this.uniCounterOffset[i11] * i12;
        }
        return i10 + iArr[this.last];
    }

    public int[] getCounts(int i10) throws OutOfRangeException {
        if (i10 < 0 || i10 >= this.totalSize) {
            throw new OutOfRangeException(Integer.valueOf(i10), 0, Integer.valueOf(this.totalSize));
        }
        int[] iArr = new int[this.dimension];
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int i13 = this.last;
            if (i11 >= i13) {
                iArr[i13] = i10 - i12;
                return iArr;
            }
            int i14 = this.uniCounterOffset[i11];
            int i15 = 0;
            while (i12 <= i10) {
                i12 += i14;
                i15++;
            }
            i12 -= i14;
            iArr[i11] = i15 - 1;
            i11++;
        }
    }

    public int getDimension() {
        return this.dimension;
    }

    public int getSize() {
        return this.totalSize;
    }

    public int[] getSizes() {
        return MathArrays.copyOf(this.size);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < this.dimension; i10++) {
            sb2.append("[");
            sb2.append(getCount(i10));
            sb2.append("]");
        }
        return sb2.toString();
    }

    @Override
    public Iterator iterator() {
        return new Iterator();
    }
}
