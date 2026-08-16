package com.google.android.gms.internal.auth;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

public final class C11912a1 extends W0 implements RandomAccess, F1, InterfaceC11957l2 {

    public static final C11912a1 f61694e = new C11912a1(new boolean[0], 0, false);

    public boolean[] f61695c;

    public int f61696d;

    public C11912a1() {
        this(new boolean[10], 0, true);
    }

    private final String j(int i10) {
        return "Index:" + i10 + ", Size:" + this.f61696d;
    }

    @Override
    public final F1 L0(int i10) {
        if (i10 >= this.f61696d) {
            return new C11912a1(Arrays.copyOf(this.f61695c, i10), this.f61696d, true);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final void add(int i10, Object obj) {
        int i11;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        a();
        if (i10 >= 0 && i10 <= (i11 = this.f61696d)) {
            boolean[] zArr = this.f61695c;
            if (i11 < zArr.length) {
                System.arraycopy(zArr, i10, zArr, i10 + 1, i11 - i10);
            } else {
                boolean[] zArr2 = new boolean[((i11 * 3) / 2) + 1];
                System.arraycopy(zArr, 0, zArr2, 0, i10);
                System.arraycopy(this.f61695c, i10, zArr2, i10 + 1, this.f61696d - i10);
                this.f61695c = zArr2;
            }
            this.f61695c[i10] = booleanValue;
            this.f61696d++;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(j(i10));
    }

    @Override
    public final boolean addAll(Collection collection) {
        a();
        byte[] bArr = H1.f61617d;
        collection.getClass();
        if (!(collection instanceof C11912a1)) {
            return super.addAll(collection);
        }
        C11912a1 c11912a1 = (C11912a1) collection;
        int i10 = c11912a1.f61696d;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f61696d;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        boolean[] zArr = this.f61695c;
        if (i12 > zArr.length) {
            this.f61695c = Arrays.copyOf(zArr, i12);
        }
        System.arraycopy(c11912a1.f61695c, 0, this.f61695c, this.f61696d, c11912a1.f61696d);
        this.f61696d = i12;
        this.modCount++;
        return true;
    }

    public final void b(boolean z10) {
        a();
        int i10 = this.f61696d;
        boolean[] zArr = this.f61695c;
        if (i10 == zArr.length) {
            boolean[] zArr2 = new boolean[((i10 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i10);
            this.f61695c = zArr2;
        }
        boolean[] zArr3 = this.f61695c;
        int i11 = this.f61696d;
        this.f61696d = i11 + 1;
        zArr3[i11] = z10;
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
        if (!(obj instanceof C11912a1)) {
            return super.equals(obj);
        }
        C11912a1 c11912a1 = (C11912a1) obj;
        if (this.f61696d != c11912a1.f61696d) {
            return false;
        }
        boolean[] zArr = c11912a1.f61695c;
        for (int i10 = 0; i10 < this.f61696d; i10++) {
            if (this.f61695c[i10] != zArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final Object get(int i10) {
        k(i10);
        return Boolean.valueOf(this.f61695c[i10]);
    }

    @Override
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f61696d; i11++) {
            i10 = (i10 * 31) + H1.a(this.f61695c[i11]);
        }
        return i10;
    }

    @Override
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int i10 = this.f61696d;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f61695c[i11] == booleanValue) {
                return i11;
            }
        }
        return -1;
    }

    public final void k(int i10) {
        if (i10 < 0 || i10 >= this.f61696d) {
            throw new IndexOutOfBoundsException(j(i10));
        }
    }

    @Override
    public final Object remove(int i10) {
        a();
        k(i10);
        boolean[] zArr = this.f61695c;
        boolean z10 = zArr[i10];
        if (i10 < this.f61696d - 1) {
            System.arraycopy(zArr, i10 + 1, zArr, i10, (r2 - i10) - 1);
        }
        this.f61696d--;
        this.modCount++;
        return Boolean.valueOf(z10);
    }

    @Override
    public final void removeRange(int i10, int i11) {
        a();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        boolean[] zArr = this.f61695c;
        System.arraycopy(zArr, i11, zArr, i10, this.f61696d - i11);
        this.f61696d -= i11 - i10;
        this.modCount++;
    }

    @Override
    public final Object set(int i10, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        a();
        k(i10);
        boolean[] zArr = this.f61695c;
        boolean z10 = zArr[i10];
        zArr[i10] = booleanValue;
        return Boolean.valueOf(z10);
    }

    @Override
    public final int size() {
        return this.f61696d;
    }

    public C11912a1(boolean[] zArr, int i10, boolean z10) {
        super(z10);
        this.f61695c = zArr;
        this.f61696d = i10;
    }

    @Override
    public final boolean add(Object obj) {
        b(((Boolean) obj).booleanValue());
        return true;
    }
}
