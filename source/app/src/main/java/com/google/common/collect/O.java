package com.google.common.collect;

import com.google.common.collect.AbstractC12588x1;
import java.lang.Comparable;
import java.util.NoSuchElementException;
import java.util.Objects;
import v2.InterfaceC15800a;

@X
@v2.b(emulated = true)
public abstract class O<C extends Comparable> extends AbstractC12588x1<C> {

    public final W<C> f65894i;

    public O(W<C> w10) {
        super(Ordering.A());
        this.f65894i = w10;
    }

    @InterfaceC15800a
    public static O<Long> B0(long j10, long j11) {
        return E0(C12534j2.f(Long.valueOf(j10), Long.valueOf(j11)), W.d());
    }

    @InterfaceC15800a
    public static O<Integer> C0(int i10, int i11) {
        return E0(C12534j2.g(Integer.valueOf(i10), Integer.valueOf(i11)), W.c());
    }

    @InterfaceC15800a
    public static O<Long> D0(long j10, long j11) {
        return E0(C12534j2.g(Long.valueOf(j10), Long.valueOf(j11)), W.d());
    }

    public static <C extends Comparable> O<C> E0(C12534j2<C> c12534j2, W<C> w10) {
        w2.H.E(c12534j2);
        w2.H.E(w10);
        try {
            C12534j2<C> s10 = !c12534j2.q() ? c12534j2.s(C12534j2.c(w10.f())) : c12534j2;
            if (!c12534j2.r()) {
                s10 = s10.s(C12534j2.d(w10.e()));
            }
            if (!s10.v()) {
                C o10 = c12534j2.f66693b.o(w10);
                Objects.requireNonNull(o10);
                C k10 = c12534j2.f66694c.k(w10);
                Objects.requireNonNull(k10);
                if (C12534j2.h(o10, k10) <= 0) {
                    return new C12550n2(s10, w10);
                }
            }
            return new Y(w10);
        } catch (NoSuchElementException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public static <E> AbstractC12588x1.a<E> H() {
        throw new UnsupportedOperationException();
    }

    @InterfaceC15800a
    public static O<Integer> z0(int i10, int i11) {
        return E0(C12534j2.f(Integer.valueOf(i10), Integer.valueOf(i11)), W.c());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public O<C> headSet(C c10) {
        return f0((Comparable) w2.H.E(c10), false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @v2.c
    public O<C> headSet(C c10, boolean z10) {
        return f0((Comparable) w2.H.E(c10), z10);
    }

    @Override
    public abstract O<C> f0(C c10, boolean z10);

    public abstract O<C> I0(O<C> o10);

    public abstract C12534j2<C> J0();

    public abstract C12534j2<C> M0(EnumC12586x enumC12586x, EnumC12586x enumC12586x2);

    @Override
    public O<C> subSet(C c10, C c11) {
        w2.H.E(c10);
        w2.H.E(c11);
        w2.H.d(comparator().compare(c10, c11) <= 0);
        return t0(c10, true, c11, false);
    }

    @Override
    @v2.c
    public O<C> subSet(C c10, boolean z10, C c11, boolean z11) {
        w2.H.E(c10);
        w2.H.E(c11);
        w2.H.d(comparator().compare(c10, c11) <= 0);
        return t0(c10, z10, c11, z11);
    }

    @Override
    public abstract O<C> t0(C c10, boolean z10, C c11, boolean z11);

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public O<C> tailSet(C c10) {
        return w0((Comparable) w2.H.E(c10), true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @v2.c
    public O<C> tailSet(C c10, boolean z10) {
        return w0((Comparable) w2.H.E(c10), z10);
    }

    @Override
    public abstract O<C> w0(C c10, boolean z10);

    @Override
    @v2.c
    public AbstractC12588x1<C> Z() {
        return new U(this);
    }

    @Override
    public String toString() {
        return J0().toString();
    }
}
