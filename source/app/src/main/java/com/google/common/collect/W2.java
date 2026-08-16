package com.google.common.collect;

import java.util.ListIterator;

@X
@v2.b
public abstract class W2<F, T> extends V2<F, T> implements ListIterator<T> {
    public W2(ListIterator<? extends F> listIterator) {
        super(listIterator);
    }

    @Override
    public void add(@InterfaceC12518f2 T t10) {
        throw new UnsupportedOperationException();
    }

    public final ListIterator<? extends F> b() {
        return E1.f(this.f66320b);
    }

    @Override
    public final boolean hasPrevious() {
        return b().hasPrevious();
    }

    @Override
    public final int nextIndex() {
        return b().nextIndex();
    }

    @Override
    @InterfaceC12518f2
    public final T previous() {
        return a(b().previous());
    }

    @Override
    public final int previousIndex() {
        return b().previousIndex();
    }

    public void set(@InterfaceC12518f2 T t10) {
        throw new UnsupportedOperationException();
    }
}
