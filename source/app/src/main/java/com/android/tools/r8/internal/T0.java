package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Iterator;

public final class T0 extends AbstractC5397Jl0 {

    public final V0 f44356b;

    public T0(V0 v02) {
        this.f44356b = v02;
    }

    @Override
    public final void clear() {
        this.f44356b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f44356b.contains(obj);
    }

    @Override
    public final boolean containsAll(Collection collection) {
        return this.f44356b.containsAll(collection);
    }

    @Override
    public final boolean isEmpty() {
        return this.f44356b.isEmpty();
    }

    @Override
    public final Iterator iterator() {
        return this.f44356b.d();
    }

    @Override
    public final boolean remove(Object obj) {
        return this.f44356b.b(Integer.MAX_VALUE, obj) > 0;
    }

    @Override
    public final int size() {
        return this.f44356b.entrySet().size();
    }
}
