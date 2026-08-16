package com.google.common.collect;

import java.util.ListIterator;

@X
@v2.b
public abstract class A0<E> extends AbstractC12591y0<E> implements ListIterator<E> {
    @Override
    public void add(@InterfaceC12518f2 E e10) {
        m0().add(e10);
    }

    @Override
    public boolean hasPrevious() {
        return m0().hasPrevious();
    }

    @Override
    public int nextIndex() {
        return m0().nextIndex();
    }

    @Override
    public abstract ListIterator<E> k0();

    @Override
    @I2.a
    @InterfaceC12518f2
    public E previous() {
        return m0().previous();
    }

    @Override
    public int previousIndex() {
        return m0().previousIndex();
    }

    @Override
    public void set(@InterfaceC12518f2 E e10) {
        m0().set(e10);
    }
}
