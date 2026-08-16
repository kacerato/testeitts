package com.google.common.collect;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@X
@v2.b
public abstract class AbstractC12595z0<E> extends AbstractC12563r0<E> implements List<E> {
    @Override
    public abstract List<E> k0();

    public boolean E0(@InterfaceC12518f2 E e10) {
        add(size(), e10);
        return true;
    }

    public boolean F0(int i10, Iterable<? extends E> iterable) {
        return M1.a(this, i10, iterable);
    }

    @InterfaceC15800a
    public boolean G0(@CheckForNull Object obj) {
        return M1.j(this, obj);
    }

    @InterfaceC15800a
    public int H0() {
        return M1.k(this);
    }

    public int I0(@CheckForNull Object obj) {
        return M1.l(this, obj);
    }

    public Iterator<E> J0() {
        return listIterator();
    }

    public int M0(@CheckForNull Object obj) {
        return M1.n(this, obj);
    }

    public ListIterator<E> N0() {
        return listIterator(0);
    }

    @InterfaceC15800a
    public ListIterator<E> O0(int i10) {
        return M1.p(this, i10);
    }

    @InterfaceC15800a
    public List<E> P0(int i10, int i11) {
        return M1.C(this, i10, i11);
    }

    public void add(int i10, @InterfaceC12518f2 E e10) {
        k0().add(i10, e10);
    }

    @I2.a
    public boolean addAll(int i10, Collection<? extends E> collection) {
        return k0().addAll(i10, collection);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return obj == this || k0().equals(obj);
    }

    @Override
    @InterfaceC12518f2
    public E get(int i10) {
        return k0().get(i10);
    }

    @Override
    public int hashCode() {
        return k0().hashCode();
    }

    @Override
    public int indexOf(@CheckForNull Object obj) {
        return k0().indexOf(obj);
    }

    @Override
    public int lastIndexOf(@CheckForNull Object obj) {
        return k0().lastIndexOf(obj);
    }

    @Override
    public ListIterator<E> listIterator() {
        return k0().listIterator();
    }

    @Override
    @I2.a
    @InterfaceC12518f2
    public E remove(int i10) {
        return k0().remove(i10);
    }

    @Override
    @I2.a
    @InterfaceC12518f2
    public E set(int i10, @InterfaceC12518f2 E e10) {
        return k0().set(i10, e10);
    }

    @Override
    public List<E> subList(int i10, int i11) {
        return k0().subList(i10, i11);
    }

    @Override
    public ListIterator<E> listIterator(int i10) {
        return k0().listIterator(i10);
    }
}
