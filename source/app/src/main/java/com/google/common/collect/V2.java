package com.google.common.collect;

import java.util.Iterator;

@X
@v2.b
public abstract class V2<F, T> implements Iterator<T> {

    public final Iterator<? extends F> f66320b;

    public V2(Iterator<? extends F> it) {
        this.f66320b = (Iterator) w2.H.E(it);
    }

    @InterfaceC12518f2
    public abstract T a(@InterfaceC12518f2 F f10);

    @Override
    public final boolean hasNext() {
        return this.f66320b.hasNext();
    }

    @Override
    @InterfaceC12518f2
    public final T next() {
        return a(this.f66320b.next());
    }

    @Override
    public final void remove() {
        this.f66320b.remove();
    }
}
