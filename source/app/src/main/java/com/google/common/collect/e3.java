package com.google.common.collect;

import java.util.Iterator;

@X
@v2.b
public abstract class e3<E> implements Iterator<E> {
    @Override
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
