package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.RandomAccess;

public final class C12065f6 extends E4 implements RandomAccess {

    public static final Object[] f62278e;

    public static final C12065f6 f62279f;

    public Object[] f62280c;

    public int f62281d;

    static {
        Object[] objArr = new Object[0];
        f62278e = objArr;
        f62279f = new C12065f6(objArr, 0, false);
    }

    public C12065f6() {
        this(f62278e, 0, true);
    }

    public static C12065f6 b() {
        return f62279f;
    }

    private static int k(int i10) {
        return Math.max(((i10 * 3) / 2) + 1, 10);
    }

    private final void l(int i10) {
        if (i10 < 0 || i10 >= this.f62281d) {
            throw new IndexOutOfBoundsException(m(i10));
        }
    }

    @Override
    public final InterfaceC12243z5 K0(int i10) {
        if (i10 >= this.f62281d) {
            return new C12065f6(i10 == 0 ? f62278e : Arrays.copyOf(this.f62280c, i10), this.f62281d, true);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final void add(int i10, Object obj) {
        int i11;
        a();
        if (i10 >= 0 && i10 <= (i11 = this.f62281d)) {
            int i12 = i10 + 1;
            Object[] objArr = this.f62280c;
            int length = objArr.length;
            if (i11 < length) {
                System.arraycopy(objArr, i10, objArr, i12, i11 - i10);
            } else {
                Object[] objArr2 = new Object[k(length)];
                System.arraycopy(this.f62280c, 0, objArr2, 0, i10);
                System.arraycopy(this.f62280c, i10, objArr2, i12, this.f62281d - i10);
                this.f62280c = objArr2;
            }
            this.f62280c[i10] = obj;
            this.f62281d++;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m(i10));
    }

    @Override
    public final Object get(int i10) {
        l(i10);
        return this.f62280c[i10];
    }

    public final void j(int i10) {
        int length = this.f62280c.length;
        if (i10 <= length) {
            return;
        }
        if (length == 0) {
            this.f62280c = new Object[Math.max(i10, 10)];
            return;
        }
        while (length < i10) {
            length = k(length);
        }
        this.f62280c = Arrays.copyOf(this.f62280c, length);
    }

    public final String m(int i10) {
        return G4.a(this.f62281d, i10, (byte) 13, "Index:", ", Size:");
    }

    @Override
    public final Object remove(int i10) {
        a();
        l(i10);
        Object[] objArr = this.f62280c;
        Object obj = objArr[i10];
        if (i10 < this.f62281d - 1) {
            System.arraycopy(objArr, i10 + 1, objArr, i10, (r2 - i10) - 1);
        }
        this.f62281d--;
        this.modCount++;
        return obj;
    }

    @Override
    public final Object set(int i10, Object obj) {
        a();
        l(i10);
        Object[] objArr = this.f62280c;
        Object obj2 = objArr[i10];
        objArr[i10] = obj;
        this.modCount++;
        return obj2;
    }

    @Override
    public final int size() {
        return this.f62281d;
    }

    public C12065f6(Object[] objArr, int i10, boolean z10) {
        super(z10);
        this.f62280c = objArr;
        this.f62281d = i10;
    }

    @Override
    public final boolean add(Object obj) {
        a();
        int i10 = this.f62281d;
        int length = this.f62280c.length;
        if (i10 == length) {
            this.f62280c = Arrays.copyOf(this.f62280c, k(length));
        }
        Object[] objArr = this.f62280c;
        int i11 = this.f62281d;
        this.f62281d = i11 + 1;
        objArr[i11] = obj;
        this.modCount++;
        return true;
    }
}
