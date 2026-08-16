package com.android.dx.util;

import java.util.Arrays;
import org.eclipse.jdt.internal.core.JavaElement;

public final class IntList extends MutabilityControl {
    public static final IntList EMPTY;
    private int size;
    private boolean sorted;
    private int[] values;

    static {
        IntList intList = new IntList(0);
        EMPTY = intList;
        intList.setImmutable();
    }

    public IntList() {
        this(4);
    }

    private void growIfNeeded() {
        int i10 = this.size;
        int[] iArr = this.values;
        if (i10 == iArr.length) {
            int[] iArr2 = new int[((i10 * 3) / 2) + 10];
            System.arraycopy(iArr, 0, iArr2, 0, i10);
            this.values = iArr2;
        }
    }

    public static IntList makeImmutable(int i10) {
        IntList intList = new IntList(1);
        intList.add(i10);
        intList.setImmutable();
        return intList;
    }

    public void add(int i10) {
        throwIfImmutable();
        growIfNeeded();
        int[] iArr = this.values;
        int i11 = this.size;
        int i12 = i11 + 1;
        this.size = i12;
        iArr[i11] = i10;
        if (this.sorted) {
            if (i12 > 1) {
                this.sorted = i10 >= iArr[i11 + (-1)];
            }
        }
    }

    public int binarysearch(int i10) {
        int i11 = this.size;
        if (!this.sorted) {
            for (int i12 = 0; i12 < i11; i12++) {
                if (this.values[i12] == i10) {
                    return i12;
                }
            }
            return -i11;
        }
        int i13 = -1;
        int i14 = i11;
        while (i14 > i13 + 1) {
            int i15 = ((i14 - i13) >> 1) + i13;
            if (i10 <= this.values[i15]) {
                i14 = i15;
            } else {
                i13 = i15;
            }
        }
        return i14 != i11 ? i10 == this.values[i14] ? i14 : (-i14) - 1 : (-i11) - 1;
    }

    public boolean contains(int i10) {
        return indexOf(i10) >= 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof IntList)) {
            return false;
        }
        IntList intList = (IntList) obj;
        if (this.sorted != intList.sorted || this.size != intList.size) {
            return false;
        }
        for (int i10 = 0; i10 < this.size; i10++) {
            if (this.values[i10] != intList.values[i10]) {
                return false;
            }
        }
        return true;
    }

    public int get(int i10) {
        if (i10 >= this.size) {
            throw new IndexOutOfBoundsException("n >= size()");
        }
        try {
            return this.values[i10];
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IndexOutOfBoundsException("n < 0");
        }
    }

    public int hashCode() {
        int i10 = 0;
        for (int i11 = 0; i11 < this.size; i11++) {
            i10 = (i10 * 31) + this.values[i11];
        }
        return i10;
    }

    public int indexOf(int i10) {
        int binarysearch = binarysearch(i10);
        if (binarysearch >= 0) {
            return binarysearch;
        }
        return -1;
    }

    public void insert(int i10, int i11) {
        if (i10 > this.size) {
            throw new IndexOutOfBoundsException("n > size()");
        }
        growIfNeeded();
        int[] iArr = this.values;
        int i12 = i10 + 1;
        System.arraycopy(iArr, i10, iArr, i12, this.size - i10);
        int[] iArr2 = this.values;
        iArr2[i10] = i11;
        int i13 = this.size;
        this.size = i13 + 1;
        this.sorted = this.sorted && (i10 == 0 || i11 > iArr2[i10 + (-1)]) && (i10 == i13 || i11 < iArr2[i12]);
    }

    public IntList mutableCopy() {
        int i10 = this.size;
        IntList intList = new IntList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            intList.add(this.values[i11]);
        }
        return intList;
    }

    public int pop() {
        throwIfImmutable();
        this.size--;
        return get(this.size - 1);
    }

    public void removeIndex(int i10) {
        if (i10 >= this.size) {
            throw new IndexOutOfBoundsException("n >= size()");
        }
        int[] iArr = this.values;
        System.arraycopy(iArr, i10 + 1, iArr, i10, (r0 - i10) - 1);
        this.size--;
    }

    public void set(int i10, int i11) {
        throwIfImmutable();
        if (i10 >= this.size) {
            throw new IndexOutOfBoundsException("n >= size()");
        }
        try {
            this.values[i10] = i11;
            this.sorted = false;
        } catch (ArrayIndexOutOfBoundsException unused) {
            if (i10 < 0) {
                throw new IllegalArgumentException("n < 0");
            }
        }
    }

    public void shrink(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("newSize < 0");
        }
        if (i10 > this.size) {
            throw new IllegalArgumentException("newSize > size");
        }
        throwIfImmutable();
        this.size = i10;
    }

    public int size() {
        return this.size;
    }

    public void sort() {
        throwIfImmutable();
        if (this.sorted) {
            return;
        }
        Arrays.sort(this.values, 0, this.size);
        this.sorted = true;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer((this.size * 5) + 10);
        stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
        for (int i10 = 0; i10 < this.size; i10++) {
            if (i10 != 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(this.values[i10]);
        }
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
        return stringBuffer.toString();
    }

    public int top() {
        return get(this.size - 1);
    }

    public IntList(int i10) {
        super(true);
        try {
            this.values = new int[i10];
            this.size = 0;
            this.sorted = true;
        } catch (NegativeArraySizeException unused) {
            throw new IllegalArgumentException("size < 0");
        }
    }

    public static IntList makeImmutable(int i10, int i11) {
        IntList intList = new IntList(2);
        intList.add(i10);
        intList.add(i11);
        intList.setImmutable();
        return intList;
    }

    public void pop(int i10) {
        throwIfImmutable();
        this.size -= i10;
    }
}
