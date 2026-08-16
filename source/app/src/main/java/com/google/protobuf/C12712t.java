package com.google.protobuf;

import com.google.protobuf.D0;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

public final class C12712t extends AbstractC12665d<Boolean> implements D0.a, RandomAccess, InterfaceC12726x1 {

    public static final C12712t f69473f;

    public boolean[] f69474d;

    public int f69475e;

    static {
        C12712t c12712t = new C12712t(new boolean[0], 0);
        f69473f = c12712t;
        c12712t.r9();
    }

    public C12712t() {
        this(new boolean[10], 0);
    }

    public static C12712t g() {
        return f69473f;
    }

    @Override
    public boolean addAll(Collection<? extends Boolean> collection) {
        a();
        D0.d(collection);
        if (!(collection instanceof C12712t)) {
            return super.addAll(collection);
        }
        C12712t c12712t = (C12712t) collection;
        int i10 = c12712t.f69475e;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f69475e;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        boolean[] zArr = this.f69474d;
        if (i12 > zArr.length) {
            this.f69474d = Arrays.copyOf(zArr, i12);
        }
        System.arraycopy(c12712t.f69474d, 0, this.f69474d, this.f69475e, c12712t.f69475e);
        this.f69475e = i12;
        this.modCount++;
        return true;
    }

    @Override
    public void add(int index, Boolean element) {
        d(index, element.booleanValue());
    }

    @Override
    public boolean add(Boolean element) {
        l4(element.booleanValue());
        return true;
    }

    @Override
    public boolean contains(Object element) {
        return indexOf(element) != -1;
    }

    public final void d(int index, boolean element) {
        int i10;
        a();
        if (index < 0 || index > (i10 = this.f69475e)) {
            throw new IndexOutOfBoundsException(l(index));
        }
        boolean[] zArr = this.f69474d;
        if (i10 < zArr.length) {
            System.arraycopy(zArr, index, zArr, index + 1, i10 - index);
        } else {
            boolean[] zArr2 = new boolean[((i10 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, index);
            System.arraycopy(this.f69474d, index, zArr2, index + 1, this.f69475e - index);
            this.f69474d = zArr2;
        }
        this.f69474d[index] = element;
        this.f69475e++;
        this.modCount++;
    }

    @Override
    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (!(o10 instanceof C12712t)) {
            return super.equals(o10);
        }
        C12712t c12712t = (C12712t) o10;
        if (this.f69475e != c12712t.f69475e) {
            return false;
        }
        boolean[] zArr = c12712t.f69474d;
        for (int i10 = 0; i10 < this.f69475e; i10++) {
            if (this.f69474d[i10] != zArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean getBoolean(int index) {
        j(index);
        return this.f69474d[index];
    }

    @Override
    public int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f69475e; i11++) {
            i10 = (i10 * 31) + D0.k(this.f69474d[i11]);
        }
        return i10;
    }

    @Override
    public int indexOf(Object element) {
        if (!(element instanceof Boolean)) {
            return -1;
        }
        boolean booleanValue = ((Boolean) element).booleanValue();
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.f69474d[i10] == booleanValue) {
                return i10;
            }
        }
        return -1;
    }

    public final void j(int index) {
        if (index < 0 || index >= this.f69475e) {
            throw new IndexOutOfBoundsException(l(index));
        }
    }

    @Override
    public Boolean get(int index) {
        return Boolean.valueOf(getBoolean(index));
    }

    public final String l(int index) {
        return "Index:" + index + ", Size:" + this.f69475e;
    }

    @Override
    public void l4(boolean element) {
        a();
        int i10 = this.f69475e;
        boolean[] zArr = this.f69474d;
        if (i10 == zArr.length) {
            boolean[] zArr2 = new boolean[((i10 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i10);
            this.f69474d = zArr2;
        }
        boolean[] zArr3 = this.f69474d;
        int i11 = this.f69475e;
        this.f69475e = i11 + 1;
        zArr3[i11] = element;
    }

    @Override
    public Boolean remove(int index) {
        a();
        j(index);
        boolean[] zArr = this.f69474d;
        boolean z10 = zArr[index];
        if (index < this.f69475e - 1) {
            System.arraycopy(zArr, index + 1, zArr, index, (r2 - index) - 1);
        }
        this.f69475e--;
        this.modCount++;
        return Boolean.valueOf(z10);
    }

    @Override
    public Boolean set(int index, Boolean element) {
        return Boolean.valueOf(setBoolean(index, element.booleanValue()));
    }

    @Override
    public void removeRange(int fromIndex, int toIndex) {
        a();
        if (toIndex < fromIndex) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        boolean[] zArr = this.f69474d;
        System.arraycopy(zArr, toIndex, zArr, fromIndex, this.f69475e - toIndex);
        this.f69475e -= toIndex - fromIndex;
        this.modCount++;
    }

    @Override
    public boolean setBoolean(int index, boolean element) {
        a();
        j(index);
        boolean[] zArr = this.f69474d;
        boolean z10 = zArr[index];
        zArr[index] = element;
        return z10;
    }

    @Override
    public int size() {
        return this.f69475e;
    }

    public C12712t(boolean[] other, int size) {
        this.f69474d = other;
        this.f69475e = size;
    }

    @Override
    public D0.k<Boolean> q2(int capacity) {
        if (capacity >= this.f69475e) {
            return new C12712t(Arrays.copyOf(this.f69474d, capacity), this.f69475e);
        }
        throw new IllegalArgumentException();
    }
}
