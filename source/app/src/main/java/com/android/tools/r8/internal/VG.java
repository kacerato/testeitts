package com.android.tools.r8.internal;

import java.util.Iterator;

public final class VG extends AbstractC10355y1 {

    public final C6899dH f45009b;

    public VG(C6899dH c6899dH) {
        this.f45009b = c6899dH;
    }

    @Override
    public final void clear() {
        this.f45009b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f45009b.containsValue(obj);
    }

    @Override
    public final A30 iterator() {
        return new C6732cH(this.f45009b);
    }

    @Override
    public final int size() {
        return this.f45009b.f47346h;
    }

    @Override
    public final Iterator iterator() {
        return new C6732cH(this.f45009b);
    }
}
