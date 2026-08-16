package com.google.common.collect;

import java.util.NoSuchElementException;
import java.util.Queue;
import javax.annotation.CheckForNull;

@X
@v2.b
public abstract class J0<E> extends AbstractC12563r0<E> implements Queue<E> {
    @Override
    public abstract Queue<E> k0();

    public boolean E0(@InterfaceC12518f2 E e10) {
        try {
            return add(e10);
        } catch (IllegalStateException unused) {
            return false;
        }
    }

    @CheckForNull
    public E F0() {
        try {
            return element();
        } catch (NoSuchElementException unused) {
            return null;
        }
    }

    @CheckForNull
    public E G0() {
        try {
            return remove();
        } catch (NoSuchElementException unused) {
            return null;
        }
    }

    @Override
    @InterfaceC12518f2
    public E element() {
        return k0().element();
    }

    @Override
    @I2.a
    public boolean offer(@InterfaceC12518f2 E e10) {
        return k0().offer(e10);
    }

    @Override
    @CheckForNull
    public E peek() {
        return k0().peek();
    }

    @Override
    @I2.a
    @CheckForNull
    public E poll() {
        return k0().poll();
    }

    @Override
    @I2.a
    @InterfaceC12518f2
    public E remove() {
        return k0().remove();
    }
}
