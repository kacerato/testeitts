package com.google.common.collect;

import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true, serializable = true)
public final class C12573t2<E> extends AbstractC12564r1<E> {

    public static final Object[] f66881l;

    public static final C12573t2<Object> f66882m;

    @v2.d
    public final transient Object[] f66883g;

    public final transient int f66884h;

    @v2.d
    public final transient Object[] f66885i;

    public final transient int f66886j;

    public final transient int f66887k;

    static {
        Object[] objArr = new Object[0];
        f66881l = objArr;
        f66882m = new C12573t2<>(objArr, 0, objArr, 0, 0);
    }

    public C12573t2(Object[] objArr, int i10, Object[] objArr2, int i11, int i12) {
        this.f66883g = objArr;
        this.f66884h = i10;
        this.f66885i = objArr2;
        this.f66886j = i11;
        this.f66887k = i12;
    }

    @Override
    public int b(Object[] objArr, int i10) {
        System.arraycopy(this.f66883g, 0, objArr, i10, this.f66887k);
        return i10 + this.f66887k;
    }

    @Override
    public Object[] c() {
        return this.f66883g;
    }

    @Override
    public boolean contains(@CheckForNull Object obj) {
        Object[] objArr = this.f66885i;
        if (obj == null || objArr.length == 0) {
            return false;
        }
        int d10 = Y0.d(obj);
        while (true) {
            int i10 = d10 & this.f66886j;
            Object obj2 = objArr[i10];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            d10 = i10 + 1;
        }
    }

    @Override
    public int d() {
        return this.f66887k;
    }

    @Override
    public int g() {
        return 0;
    }

    @Override
    public boolean h() {
        return false;
    }

    @Override
    public int hashCode() {
        return this.f66884h;
    }

    @Override
    public e3<E> iterator() {
        return a().iterator();
    }

    @Override
    public int size() {
        return this.f66887k;
    }

    @Override
    public AbstractC12521g1<E> x() {
        return AbstractC12521g1.l(this.f66883g, this.f66887k);
    }

    @Override
    public boolean y() {
        return true;
    }
}
