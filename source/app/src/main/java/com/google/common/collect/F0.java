package com.google.common.collect;

import com.google.common.collect.V1;
import com.google.common.collect.W1;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@X
@v2.b
public abstract class F0<E> extends AbstractC12563r0<E> implements V1<E> {

    @InterfaceC15800a
    public class a extends W1.h<E> {
        public a() {
        }

        @Override
        public V1<E> a() {
            return F0.this;
        }

        @Override
        public Iterator<E> iterator() {
            return W1.h(a().entrySet().iterator());
        }
    }

    @Override
    public int Ad(@CheckForNull Object obj) {
        return k0().Ad(obj);
    }

    @Override
    public String C0() {
        return entrySet().toString();
    }

    @Override
    public abstract V1<E> k0();

    public boolean E0(@InterfaceC12518f2 E e10) {
        y6(e10, 1);
        return true;
    }

    @InterfaceC15800a
    public int F0(@CheckForNull Object obj) {
        for (V1.a<E> aVar : entrySet()) {
            if (w2.B.a(aVar.getElement(), obj)) {
                return aVar.getCount();
            }
        }
        return 0;
    }

    public boolean G0(@CheckForNull Object obj) {
        return W1.i(this, obj);
    }

    public int H0() {
        return entrySet().hashCode();
    }

    public Iterator<E> I0() {
        return W1.n(this);
    }

    public int J0(@InterfaceC12518f2 E e10, int i10) {
        return W1.v(this, e10, i10);
    }

    public boolean M0(@InterfaceC12518f2 E e10, int i10, int i11) {
        return W1.w(this, e10, i10, i11);
    }

    public int N0() {
        return W1.o(this);
    }

    @Override
    @I2.a
    public int P9(@InterfaceC12518f2 E e10, int i10) {
        return k0().P9(e10, i10);
    }

    @Override
    public Set<E> S1() {
        return k0().S1();
    }

    @Override
    @I2.a
    public boolean e7(@InterfaceC12518f2 E e10, int i10, int i11) {
        return k0().e7(e10, i10, i11);
    }

    @Override
    public Set<V1.a<E>> entrySet() {
        return k0().entrySet();
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return obj == this || k0().equals(obj);
    }

    @Override
    public int hashCode() {
        return k0().hashCode();
    }

    @Override
    @InterfaceC15800a
    public boolean o0(Collection<? extends E> collection) {
        return W1.c(this, collection);
    }

    @Override
    public void p0() {
        E1.h(entrySet().iterator());
    }

    @Override
    @I2.a
    public int pc(@CheckForNull Object obj, int i10) {
        return k0().pc(obj, i10);
    }

    @Override
    public boolean q0(@CheckForNull Object obj) {
        return Ad(obj) > 0;
    }

    @Override
    public boolean w0(@CheckForNull Object obj) {
        return pc(obj, 1) > 0;
    }

    @Override
    public boolean x0(Collection<?> collection) {
        return W1.p(this, collection);
    }

    @Override
    public boolean y0(Collection<?> collection) {
        return W1.s(this, collection);
    }

    @Override
    @I2.a
    public int y6(@InterfaceC12518f2 E e10, int i10) {
        return k0().y6(e10, i10);
    }
}
