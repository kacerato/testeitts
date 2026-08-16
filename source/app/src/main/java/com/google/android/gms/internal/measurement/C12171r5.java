package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

public final class C12171r5 extends E4 implements RandomAccess, InterfaceC12225x5, InterfaceC12047d6 {

    public static final int[] f62416e;

    public static final C12171r5 f62417f;

    public int[] f62418c;

    public int f62419d;

    static {
        int[] iArr = new int[0];
        f62416e = iArr;
        f62417f = new C12171r5(iArr, 0, false);
    }

    public C12171r5() {
        this(f62416e, 0, true);
    }

    public static C12171r5 b() {
        return f62417f;
    }

    public static int m(int i10) {
        return Math.max(((i10 * 3) / 2) + 1, 10);
    }

    @Override
    public final InterfaceC12225x5 K0(int i10) {
        if (i10 >= this.f62419d) {
            return new C12171r5(i10 == 0 ? f62416e : Arrays.copyOf(this.f62418c, i10), this.f62419d, true);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final void add(int i10, Object obj) {
        int i11;
        int intValue = ((Integer) obj).intValue();
        a();
        if (i10 >= 0 && i10 <= (i11 = this.f62419d)) {
            int i12 = i10 + 1;
            int[] iArr = this.f62418c;
            int length = iArr.length;
            if (i11 < length) {
                System.arraycopy(iArr, i10, iArr, i12, i11 - i10);
            } else {
                int[] iArr2 = new int[m(length)];
                System.arraycopy(this.f62418c, 0, iArr2, 0, i10);
                System.arraycopy(this.f62418c, i10, iArr2, i12, this.f62419d - i10);
                this.f62418c = iArr2;
            }
            this.f62418c[i10] = intValue;
            this.f62419d++;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(o(i10));
    }

    @Override
    public final boolean addAll(Collection collection) {
        a();
        byte[] bArr = A5.f61886b;
        collection.getClass();
        if (!(collection instanceof C12171r5)) {
            return super.addAll(collection);
        }
        C12171r5 c12171r5 = (C12171r5) collection;
        int i10 = c12171r5.f62419d;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f62419d;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        int[] iArr = this.f62418c;
        if (i12 > iArr.length) {
            this.f62418c = Arrays.copyOf(iArr, i12);
        }
        System.arraycopy(c12171r5.f62418c, 0, this.f62418c, this.f62419d, c12171r5.f62419d);
        this.f62419d = i12;
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
        if (!(obj instanceof C12171r5)) {
            return super.equals(obj);
        }
        C12171r5 c12171r5 = (C12171r5) obj;
        if (this.f62419d != c12171r5.f62419d) {
            return false;
        }
        int[] iArr = c12171r5.f62418c;
        for (int i10 = 0; i10 < this.f62419d; i10++) {
            if (this.f62418c[i10] != iArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final Object get(int i10) {
        n(i10);
        return Integer.valueOf(this.f62418c[i10]);
    }

    @Override
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f62419d; i11++) {
            i10 = (i10 * 31) + this.f62418c[i11];
        }
        return i10;
    }

    @Override
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int i10 = this.f62419d;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f62418c[i11] == intValue) {
                return i11;
            }
        }
        return -1;
    }

    public final int j(int i10) {
        n(i10);
        return this.f62418c[i10];
    }

    public final void k(int i10) {
        a();
        int i11 = this.f62419d;
        int length = this.f62418c.length;
        if (i11 == length) {
            int[] iArr = new int[m(length)];
            System.arraycopy(this.f62418c, 0, iArr, 0, this.f62419d);
            this.f62418c = iArr;
        }
        int[] iArr2 = this.f62418c;
        int i12 = this.f62419d;
        this.f62419d = i12 + 1;
        iArr2[i12] = i10;
    }

    public final void l(int i10) {
        int length = this.f62418c.length;
        if (i10 <= length) {
            return;
        }
        if (length == 0) {
            this.f62418c = new int[Math.max(i10, 10)];
            return;
        }
        while (length < i10) {
            length = m(length);
        }
        this.f62418c = Arrays.copyOf(this.f62418c, length);
    }

    public final void n(int i10) {
        if (i10 < 0 || i10 >= this.f62419d) {
            throw new IndexOutOfBoundsException(o(i10));
        }
    }

    public final String o(int i10) {
        return G4.a(this.f62419d, i10, (byte) 13, "Index:", ", Size:");
    }

    @Override
    public final Object remove(int i10) {
        a();
        n(i10);
        int[] iArr = this.f62418c;
        int i11 = iArr[i10];
        if (i10 < this.f62419d - 1) {
            System.arraycopy(iArr, i10 + 1, iArr, i10, (r2 - i10) - 1);
        }
        this.f62419d--;
        this.modCount++;
        return Integer.valueOf(i11);
    }

    @Override
    public final void removeRange(int i10, int i11) {
        a();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f62418c;
        System.arraycopy(iArr, i11, iArr, i10, this.f62419d - i11);
        this.f62419d -= i11 - i10;
        this.modCount++;
    }

    @Override
    public final Object set(int i10, Object obj) {
        int intValue = ((Integer) obj).intValue();
        a();
        n(i10);
        int[] iArr = this.f62418c;
        int i11 = iArr[i10];
        iArr[i10] = intValue;
        return Integer.valueOf(i11);
    }

    @Override
    public final int size() {
        return this.f62419d;
    }

    public C12171r5(int[] iArr, int i10, boolean z10) {
        super(z10);
        this.f62418c = iArr;
        this.f62419d = i10;
    }

    @Override
    public final boolean add(Object obj) {
        k(((Integer) obj).intValue());
        return true;
    }
}
