package com.google.protobuf;

import com.google.protobuf.D0;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

public final class C0 extends AbstractC12665d<Integer> implements D0.g, RandomAccess, InterfaceC12726x1 {

    public static final C0 f67882f;

    public int[] f67883d;

    public int f67884e;

    static {
        C0 c02 = new C0(new int[0], 0);
        f67882f = c02;
        c02.r9();
    }

    public C0() {
        this(new int[10], 0);
    }

    public static C0 g() {
        return f67882f;
    }

    private void j(int index) {
        if (index < 0 || index >= this.f67884e) {
            throw new IndexOutOfBoundsException(l(index));
        }
    }

    private String l(int index) {
        return "Index:" + index + ", Size:" + this.f67884e;
    }

    @Override
    public void Cc(int element) {
        a();
        int i10 = this.f67884e;
        int[] iArr = this.f67883d;
        if (i10 == iArr.length) {
            int[] iArr2 = new int[((i10 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i10);
            this.f67883d = iArr2;
        }
        int[] iArr3 = this.f67883d;
        int i11 = this.f67884e;
        this.f67884e = i11 + 1;
        iArr3[i11] = element;
    }

    @Override
    public boolean addAll(Collection<? extends Integer> collection) {
        a();
        D0.d(collection);
        if (!(collection instanceof C0)) {
            return super.addAll(collection);
        }
        C0 c02 = (C0) collection;
        int i10 = c02.f67884e;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f67884e;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        int[] iArr = this.f67883d;
        if (i12 > iArr.length) {
            this.f67883d = Arrays.copyOf(iArr, i12);
        }
        System.arraycopy(c02.f67883d, 0, this.f67883d, this.f67884e, c02.f67884e);
        this.f67884e = i12;
        this.modCount++;
        return true;
    }

    @Override
    public void add(int index, Integer element) {
        e(index, element.intValue());
    }

    @Override
    public boolean add(Integer element) {
        Cc(element.intValue());
        return true;
    }

    @Override
    public boolean contains(Object element) {
        return indexOf(element) != -1;
    }

    public final void e(int index, int element) {
        int i10;
        a();
        if (index < 0 || index > (i10 = this.f67884e)) {
            throw new IndexOutOfBoundsException(l(index));
        }
        int[] iArr = this.f67883d;
        if (i10 < iArr.length) {
            System.arraycopy(iArr, index, iArr, index + 1, i10 - index);
        } else {
            int[] iArr2 = new int[((i10 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, index);
            System.arraycopy(this.f67883d, index, iArr2, index + 1, this.f67884e - index);
            this.f67883d = iArr2;
        }
        this.f67883d[index] = element;
        this.f67884e++;
        this.modCount++;
    }

    @Override
    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (!(o10 instanceof C0)) {
            return super.equals(o10);
        }
        C0 c02 = (C0) o10;
        if (this.f67884e != c02.f67884e) {
            return false;
        }
        int[] iArr = c02.f67883d;
        for (int i10 = 0; i10 < this.f67884e; i10++) {
            if (this.f67883d[i10] != iArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override
    public int getInt(int index) {
        j(index);
        return this.f67883d[index];
    }

    @Override
    public int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f67884e; i11++) {
            i10 = (i10 * 31) + this.f67883d[i11];
        }
        return i10;
    }

    @Override
    public int indexOf(Object element) {
        if (!(element instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) element).intValue();
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.f67883d[i10] == intValue) {
                return i10;
            }
        }
        return -1;
    }

    @Override
    public Integer get(int index) {
        return Integer.valueOf(getInt(index));
    }

    @Override
    public Integer remove(int index) {
        a();
        j(index);
        int[] iArr = this.f67883d;
        int i10 = iArr[index];
        if (index < this.f67884e - 1) {
            System.arraycopy(iArr, index + 1, iArr, index, (r2 - index) - 1);
        }
        this.f67884e--;
        this.modCount++;
        return Integer.valueOf(i10);
    }

    @Override
    public Integer set(int index, Integer element) {
        return Integer.valueOf(setInt(index, element.intValue()));
    }

    @Override
    public void removeRange(int fromIndex, int toIndex) {
        a();
        if (toIndex < fromIndex) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f67883d;
        System.arraycopy(iArr, toIndex, iArr, fromIndex, this.f67884e - toIndex);
        this.f67884e -= toIndex - fromIndex;
        this.modCount++;
    }

    @Override
    public int setInt(int index, int element) {
        a();
        j(index);
        int[] iArr = this.f67883d;
        int i10 = iArr[index];
        iArr[index] = element;
        return i10;
    }

    @Override
    public int size() {
        return this.f67884e;
    }

    public C0(int[] other, int size) {
        this.f67883d = other;
        this.f67884e = size;
    }

    @Override
    public D0.k<Integer> q2(int capacity) {
        if (capacity >= this.f67884e) {
            return new C0(Arrays.copyOf(this.f67883d, capacity), this.f67884e);
        }
        throw new IllegalArgumentException();
    }
}
