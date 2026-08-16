package com.google.common.collect;

import java.util.Collection;
import java.util.Iterator;
import javax.annotation.CheckForNull;

@X
@v2.b
public abstract class AbstractC12563r0<E> extends I0 implements Collection<E> {
    public <T> T[] B0(T[] tArr) {
        return (T[]) C12506c2.m(this, tArr);
    }

    public String C0() {
        return C.l(this);
    }

    @I2.a
    public boolean add(@InterfaceC12518f2 E e10) {
        return k0().add(e10);
    }

    @I2.a
    public boolean addAll(Collection<? extends E> collection) {
        return k0().addAll(collection);
    }

    public void clear() {
        k0().clear();
    }

    public boolean contains(@CheckForNull Object obj) {
        return k0().contains(obj);
    }

    public boolean containsAll(Collection<?> collection) {
        return k0().containsAll(collection);
    }

    @Override
    public boolean isEmpty() {
        return k0().isEmpty();
    }

    public Iterator<E> iterator() {
        return k0().iterator();
    }

    @Override
    public abstract Collection<E> k0();

    public boolean o0(Collection<? extends E> collection) {
        return E1.a(this, collection.iterator());
    }

    public void p0() {
        E1.h(iterator());
    }

    public boolean q0(@CheckForNull Object obj) {
        return E1.q(iterator(), obj);
    }

    @I2.a
    public boolean remove(@CheckForNull Object obj) {
        return k0().remove(obj);
    }

    @I2.a
    public boolean removeAll(Collection<?> collection) {
        return k0().removeAll(collection);
    }

    @I2.a
    public boolean retainAll(Collection<?> collection) {
        return k0().retainAll(collection);
    }

    @Override
    public int size() {
        return k0().size();
    }

    public Object[] toArray() {
        return k0().toArray();
    }

    public boolean u0(Collection<?> collection) {
        return C.b(this, collection);
    }

    public boolean v0() {
        return !iterator().hasNext();
    }

    public boolean w0(@CheckForNull Object obj) {
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            if (w2.B.a(it.next(), obj)) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    public boolean x0(Collection<?> collection) {
        return E1.V(iterator(), collection);
    }

    public boolean y0(Collection<?> collection) {
        return E1.X(iterator(), collection);
    }

    public Object[] z0() {
        return toArray(new Object[size()]);
    }

    @I2.a
    public <T> T[] toArray(T[] tArr) {
        return (T[]) k0().toArray(tArr);
    }
}
