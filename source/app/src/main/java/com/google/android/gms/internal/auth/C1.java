package com.google.android.gms.internal.auth;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

public final class C1 extends W0 implements RandomAccess, F1, InterfaceC11957l2 {

    public static final C1 f61584e = new C1(new int[0], 0, false);

    public int[] f61585c;

    public int f61586d;

    public C1() {
        this(new int[10], 0, true);
    }

    private final String k(int i10) {
        return "Index:" + i10 + ", Size:" + this.f61586d;
    }

    private final void l(int i10) {
        if (i10 < 0 || i10 >= this.f61586d) {
            throw new IndexOutOfBoundsException(k(i10));
        }
    }

    @Override
    public final F1 L0(int i10) {
        if (i10 >= this.f61586d) {
            return new C1(Arrays.copyOf(this.f61585c, i10), this.f61586d, true);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final void add(int i10, Object obj) {
        int i11;
        int intValue = ((Integer) obj).intValue();
        a();
        if (i10 >= 0 && i10 <= (i11 = this.f61586d)) {
            int[] iArr = this.f61585c;
            if (i11 < iArr.length) {
                System.arraycopy(iArr, i10, iArr, i10 + 1, i11 - i10);
            } else {
                int[] iArr2 = new int[((i11 * 3) / 2) + 1];
                System.arraycopy(iArr, 0, iArr2, 0, i10);
                System.arraycopy(this.f61585c, i10, iArr2, i10 + 1, this.f61586d - i10);
                this.f61585c = iArr2;
            }
            this.f61585c[i10] = intValue;
            this.f61586d++;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(k(i10));
    }

    @Override
    public final boolean addAll(Collection collection) {
        a();
        byte[] bArr = H1.f61617d;
        collection.getClass();
        if (!(collection instanceof C1)) {
            return super.addAll(collection);
        }
        C1 c12 = (C1) collection;
        int i10 = c12.f61586d;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f61586d;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        int[] iArr = this.f61585c;
        if (i12 > iArr.length) {
            this.f61585c = Arrays.copyOf(iArr, i12);
        }
        System.arraycopy(c12.f61585c, 0, this.f61585c, this.f61586d, c12.f61586d);
        this.f61586d = i12;
        this.modCount++;
        return true;
    }

    @Override
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1)) {
            return super.equals(obj);
        }
        C1 c12 = (C1) obj;
        if (this.f61586d != c12.f61586d) {
            return false;
        }
        int[] iArr = c12.f61585c;
        for (int i10 = 0; i10 < this.f61586d; i10++) {
            if (this.f61585c[i10] != iArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final Object get(int i10) {
        l(i10);
        return Integer.valueOf(this.f61585c[i10]);
    }

    @Override
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f61586d; i11++) {
            i10 = (i10 * 31) + this.f61585c[i11];
        }
        return i10;
    }

    @Override
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int i10 = this.f61586d;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f61585c[i11] == intValue) {
                return i11;
            }
        }
        return -1;
    }

    public final void j(int i10) {
        a();
        int i11 = this.f61586d;
        int[] iArr = this.f61585c;
        if (i11 == iArr.length) {
            int[] iArr2 = new int[((i11 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i11);
            this.f61585c = iArr2;
        }
        int[] iArr3 = this.f61585c;
        int i12 = this.f61586d;
        this.f61586d = i12 + 1;
        iArr3[i12] = i10;
    }

    @Override
    public final Object remove(int i10) {
        a();
        l(i10);
        int[] iArr = this.f61585c;
        int i11 = iArr[i10];
        if (i10 < this.f61586d - 1) {
            System.arraycopy(iArr, i10 + 1, iArr, i10, (r2 - i10) - 1);
        }
        this.f61586d--;
        this.modCount++;
        return Integer.valueOf(i11);
    }

    @Override
    public final void removeRange(int i10, int i11) {
        a();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f61585c;
        System.arraycopy(iArr, i11, iArr, i10, this.f61586d - i11);
        this.f61586d -= i11 - i10;
        this.modCount++;
    }

    @Override
    public final Object set(int i10, Object obj) {
        int intValue = ((Integer) obj).intValue();
        a();
        l(i10);
        int[] iArr = this.f61585c;
        int i11 = iArr[i10];
        iArr[i10] = intValue;
        return Integer.valueOf(i11);
    }

    @Override
    public final int size() {
        return this.f61586d;
    }

    public C1(int[] iArr, int i10, boolean z10) {
        super(z10);
        this.f61585c = iArr;
        this.f61586d = i10;
    }

    @Override
    public final boolean add(Object obj) {
        j(((Integer) obj).intValue());
        return true;
    }
}
