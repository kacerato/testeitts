package com.android.tools.r8.internal;

import java.util.Spliterator;
import java.util.Spliterators;

public final class C7119ef0 extends JC {

    public static final Object[] f47741i;

    public static final C7119ef0 f47742j;

    public final transient Object[] f47743e;

    public final transient int f47744f;

    public final transient Object[] f47745g;

    public final transient int f47746h;

    static {
        Object[] objArr = new Object[0];
        f47741i = objArr;
        f47742j = new C7119ef0(0, 0, objArr, objArr);
    }

    public C7119ef0(int i10, int i11, Object[] objArr, Object[] objArr2) {
        this.f47743e = objArr;
        this.f47744f = i10;
        this.f47745g = objArr2;
        this.f47746h = i11;
    }

    @Override
    public final int a(int i10, Object[] objArr) {
        Object[] objArr2 = this.f47743e;
        System.arraycopy(objArr2, 0, objArr, i10, objArr2.length);
        return i10 + this.f47743e.length;
    }

    @Override
    public final Object[] b() {
        return this.f47743e;
    }

    @Override
    public final int c() {
        return this.f47743e.length;
    }

    @Override
    public final boolean contains(Object obj) {
        Object[] objArr = this.f47745g;
        if (obj == null || objArr.length == 0) {
            return false;
        }
        int a10 = AbstractC9047qA.a(obj);
        while (true) {
            int i10 = a10 & this.f47746h;
            Object obj2 = objArr[i10];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            a10 = i10 + 1;
        }
    }

    @Override
    public final int d() {
        return 0;
    }

    @Override
    public final boolean g() {
        return false;
    }

    @Override
    public final int hashCode() {
        return this.f47744f;
    }

    @Override
    public final boolean i() {
        return true;
    }

    @Override
    public final AbstractC4895Av0 iterator() {
        Object[] objArr = this.f47743e;
        return JK.a(objArr.length, 0, objArr);
    }

    @Override
    public final AbstractC7552hC j() {
        return this.f47745g.length == 0 ? C6190Xe0.f45779e : new C5902Se0(this, this.f47743e);
    }

    @Override
    public final int size() {
        return this.f47743e.length;
    }

    @Override
    public final Spliterator spliterator() {
        return Spliterators.spliterator(this.f47743e, 1297);
    }
}
