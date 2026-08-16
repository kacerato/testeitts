package com.google.common.collect;

import java.util.ListIterator;

@X
@v2.b
public abstract class f3<E> extends e3<E> implements ListIterator<E> {
    @Override
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final void add(@InterfaceC12518f2 E e10) {
        throw new UnsupportedOperationException();
    }

    @Override
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final void set(@InterfaceC12518f2 E e10) {
        throw new UnsupportedOperationException();
    }
}
