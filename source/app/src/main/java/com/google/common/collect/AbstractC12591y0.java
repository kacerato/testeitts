package com.google.common.collect;

import java.util.Iterator;

@X
@v2.b
public abstract class AbstractC12591y0<T> extends I0 implements Iterator<T> {
    @Override
    public boolean hasNext() {
        return k0().hasNext();
    }

    @Override
    public abstract Iterator<T> k0();

    @I2.a
    @InterfaceC12518f2
    public T next() {
        return k0().next();
    }

    public void remove() {
        k0().remove();
    }
}
