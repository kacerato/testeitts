package com.google.common.collect;

import java.io.Serializable;
import java.util.Iterator;
import javax.annotation.CheckForNull;

@X
@v2.b(serializable = true)
public final class C12597z2<T> extends Ordering<T> implements Serializable {

    public static final long f66957e = 0;

    public final Ordering<? super T> f66958d;

    public C12597z2(Ordering<? super T> ordering) {
        this.f66958d = (Ordering) w2.H.E(ordering);
    }

    @Override
    public <S extends T> Ordering<S> F() {
        return this.f66958d;
    }

    @Override
    public int compare(@InterfaceC12518f2 T t10, @InterfaceC12518f2 T t11) {
        return this.f66958d.compare(t11, t10);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C12597z2) {
            return this.f66958d.equals(((C12597z2) obj).f66958d);
        }
        return false;
    }

    public int hashCode() {
        return -this.f66958d.hashCode();
    }

    @Override
    public <E extends T> E r(Iterable<E> iterable) {
        return (E) this.f66958d.w(iterable);
    }

    @Override
    public <E extends T> E s(@InterfaceC12518f2 E e10, @InterfaceC12518f2 E e11) {
        return (E) this.f66958d.x(e10, e11);
    }

    public String toString() {
        String valueOf = String.valueOf(this.f66958d);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 10);
        sb2.append(valueOf);
        sb2.append(".reverse()");
        return sb2.toString();
    }

    @Override
    public <E extends T> E u(@InterfaceC12518f2 E e10, @InterfaceC12518f2 E e11, @InterfaceC12518f2 E e12, E... eArr) {
        return (E) this.f66958d.y(e10, e11, e12, eArr);
    }

    @Override
    public <E extends T> E v(Iterator<E> it) {
        return (E) this.f66958d.z(it);
    }

    @Override
    public <E extends T> E w(Iterable<E> iterable) {
        return (E) this.f66958d.r(iterable);
    }

    @Override
    public <E extends T> E x(@InterfaceC12518f2 E e10, @InterfaceC12518f2 E e11) {
        return (E) this.f66958d.s(e10, e11);
    }

    @Override
    public <E extends T> E y(@InterfaceC12518f2 E e10, @InterfaceC12518f2 E e11, @InterfaceC12518f2 E e12, E... eArr) {
        return (E) this.f66958d.u(e10, e11, e12, eArr);
    }

    @Override
    public <E extends T> E z(Iterator<E> it) {
        return (E) this.f66958d.v(it);
    }
}
