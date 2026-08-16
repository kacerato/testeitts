package com.google.android.gms.internal.auth;

import java.util.Arrays;
import java.util.RandomAccess;

public final class C11965n2 extends W0 implements RandomAccess {

    public static final C11965n2 f61805e = new C11965n2(new Object[0], 0, false);

    public Object[] f61806c;

    public int f61807d;

    public C11965n2() {
        this(new Object[10], 0, true);
    }

    public static C11965n2 b() {
        return f61805e;
    }

    private final String j(int i10) {
        return "Index:" + i10 + ", Size:" + this.f61807d;
    }

    private final void k(int i10) {
        if (i10 < 0 || i10 >= this.f61807d) {
            throw new IndexOutOfBoundsException(j(i10));
        }
    }

    @Override
    public final F1 L0(int i10) {
        if (i10 >= this.f61807d) {
            return new C11965n2(Arrays.copyOf(this.f61806c, i10), this.f61807d, true);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final void add(int i10, Object obj) {
        int i11;
        a();
        if (i10 >= 0 && i10 <= (i11 = this.f61807d)) {
            Object[] objArr = this.f61806c;
            if (i11 < objArr.length) {
                System.arraycopy(objArr, i10, objArr, i10 + 1, i11 - i10);
            } else {
                Object[] objArr2 = new Object[((i11 * 3) / 2) + 1];
                System.arraycopy(objArr, 0, objArr2, 0, i10);
                System.arraycopy(this.f61806c, i10, objArr2, i10 + 1, this.f61807d - i10);
                this.f61806c = objArr2;
            }
            this.f61806c[i10] = obj;
            this.f61807d++;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(j(i10));
    }

    @Override
    public final Object get(int i10) {
        k(i10);
        return this.f61806c[i10];
    }

    @Override
    public final Object remove(int i10) {
        a();
        k(i10);
        Object[] objArr = this.f61806c;
        Object obj = objArr[i10];
        if (i10 < this.f61807d - 1) {
            System.arraycopy(objArr, i10 + 1, objArr, i10, (r2 - i10) - 1);
        }
        this.f61807d--;
        this.modCount++;
        return obj;
    }

    @Override
    public final Object set(int i10, Object obj) {
        a();
        k(i10);
        Object[] objArr = this.f61806c;
        Object obj2 = objArr[i10];
        objArr[i10] = obj;
        this.modCount++;
        return obj2;
    }

    @Override
    public final int size() {
        return this.f61807d;
    }

    public C11965n2(Object[] objArr, int i10, boolean z10) {
        super(z10);
        this.f61806c = objArr;
        this.f61807d = i10;
    }

    @Override
    public final boolean add(Object obj) {
        a();
        int i10 = this.f61807d;
        Object[] objArr = this.f61806c;
        if (i10 == objArr.length) {
            this.f61806c = Arrays.copyOf(objArr, ((i10 * 3) / 2) + 1);
        }
        Object[] objArr2 = this.f61806c;
        int i11 = this.f61807d;
        this.f61807d = i11 + 1;
        objArr2[i11] = obj;
        this.modCount++;
        return true;
    }
}
