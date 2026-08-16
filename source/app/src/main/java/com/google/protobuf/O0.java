package com.google.protobuf;

import com.google.protobuf.D0;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

public final class O0 extends AbstractC12665d<Long> implements D0.i, RandomAccess, InterfaceC12726x1 {

    public static final O0 f68814f;

    public long[] f68815d;

    public int f68816e;

    static {
        O0 o02 = new O0(new long[0], 0);
        f68814f = o02;
        o02.r9();
    }

    public O0() {
        this(new long[10], 0);
    }

    public static O0 g() {
        return f68814f;
    }

    private void j(int index) {
        if (index < 0 || index >= this.f68816e) {
            throw new IndexOutOfBoundsException(l(index));
        }
    }

    private String l(int index) {
        return "Index:" + index + ", Size:" + this.f68816e;
    }

    @Override
    public boolean addAll(Collection<? extends Long> collection) {
        a();
        D0.d(collection);
        if (!(collection instanceof O0)) {
            return super.addAll(collection);
        }
        O0 o02 = (O0) collection;
        int i10 = o02.f68816e;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f68816e;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        long[] jArr = this.f68815d;
        if (i12 > jArr.length) {
            this.f68815d = Arrays.copyOf(jArr, i12);
        }
        System.arraycopy(o02.f68815d, 0, this.f68815d, this.f68816e, o02.f68816e);
        this.f68816e = i12;
        this.modCount++;
        return true;
    }

    @Override
    public void add(int index, Long element) {
        d(index, element.longValue());
    }

    @Override
    public boolean add(Long element) {
        x7(element.longValue());
        return true;
    }

    @Override
    public boolean contains(Object element) {
        return indexOf(element) != -1;
    }

    public final void d(int index, long element) {
        int i10;
        a();
        if (index < 0 || index > (i10 = this.f68816e)) {
            throw new IndexOutOfBoundsException(l(index));
        }
        long[] jArr = this.f68815d;
        if (i10 < jArr.length) {
            System.arraycopy(jArr, index, jArr, index + 1, i10 - index);
        } else {
            long[] jArr2 = new long[((i10 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, index);
            System.arraycopy(this.f68815d, index, jArr2, index + 1, this.f68816e - index);
            this.f68815d = jArr2;
        }
        this.f68815d[index] = element;
        this.f68816e++;
        this.modCount++;
    }

    @Override
    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (!(o10 instanceof O0)) {
            return super.equals(o10);
        }
        O0 o02 = (O0) o10;
        if (this.f68816e != o02.f68816e) {
            return false;
        }
        long[] jArr = o02.f68815d;
        for (int i10 = 0; i10 < this.f68816e; i10++) {
            if (this.f68815d[i10] != jArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override
    public long getLong(int index) {
        j(index);
        return this.f68815d[index];
    }

    @Override
    public int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f68816e; i11++) {
            i10 = (i10 * 31) + D0.s(this.f68815d[i11]);
        }
        return i10;
    }

    @Override
    public int indexOf(Object element) {
        if (!(element instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) element).longValue();
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.f68815d[i10] == longValue) {
                return i10;
            }
        }
        return -1;
    }

    @Override
    public Long get(int index) {
        return Long.valueOf(getLong(index));
    }

    @Override
    public Long remove(int index) {
        a();
        j(index);
        long[] jArr = this.f68815d;
        long j10 = jArr[index];
        if (index < this.f68816e - 1) {
            System.arraycopy(jArr, index + 1, jArr, index, (r3 - index) - 1);
        }
        this.f68816e--;
        this.modCount++;
        return Long.valueOf(j10);
    }

    @Override
    public Long set(int index, Long element) {
        return Long.valueOf(setLong(index, element.longValue()));
    }

    @Override
    public void removeRange(int fromIndex, int toIndex) {
        a();
        if (toIndex < fromIndex) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f68815d;
        System.arraycopy(jArr, toIndex, jArr, fromIndex, this.f68816e - toIndex);
        this.f68816e -= toIndex - fromIndex;
        this.modCount++;
    }

    @Override
    public long setLong(int index, long element) {
        a();
        j(index);
        long[] jArr = this.f68815d;
        long j10 = jArr[index];
        jArr[index] = element;
        return j10;
    }

    @Override
    public int size() {
        return this.f68816e;
    }

    @Override
    public void x7(long element) {
        a();
        int i10 = this.f68816e;
        long[] jArr = this.f68815d;
        if (i10 == jArr.length) {
            long[] jArr2 = new long[((i10 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i10);
            this.f68815d = jArr2;
        }
        long[] jArr3 = this.f68815d;
        int i11 = this.f68816e;
        this.f68816e = i11 + 1;
        jArr3[i11] = element;
    }

    public O0(long[] other, int size) {
        this.f68815d = other;
        this.f68816e = size;
    }

    @Override
    public D0.k<Long> q2(int capacity) {
        if (capacity >= this.f68816e) {
            return new O0(Arrays.copyOf(this.f68815d, capacity), this.f68816e);
        }
        throw new IllegalArgumentException();
    }
}
