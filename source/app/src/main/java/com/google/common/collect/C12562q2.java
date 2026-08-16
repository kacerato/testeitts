package com.google.common.collect;

import java.util.Objects;

@X
@v2.b(emulated = true, serializable = true)
public class C12562q2<E> extends AbstractC12521g1<E> {

    public static final AbstractC12521g1<Object> f66817f = new C12562q2(new Object[0], 0);

    @v2.d
    public final transient Object[] f66818d;

    public final transient int f66819e;

    public C12562q2(Object[] objArr, int i10) {
        this.f66818d = objArr;
        this.f66819e = i10;
    }

    @Override
    public int b(Object[] objArr, int i10) {
        System.arraycopy(this.f66818d, 0, objArr, i10, this.f66819e);
        return i10 + this.f66819e;
    }

    @Override
    public Object[] c() {
        return this.f66818d;
    }

    @Override
    public int d() {
        return this.f66819e;
    }

    @Override
    public int g() {
        return 0;
    }

    @Override
    public E get(int i10) {
        w2.H.C(i10, this.f66819e);
        E e10 = (E) this.f66818d[i10];
        Objects.requireNonNull(e10);
        return e10;
    }

    @Override
    public boolean h() {
        return false;
    }

    @Override
    public int size() {
        return this.f66819e;
    }
}
