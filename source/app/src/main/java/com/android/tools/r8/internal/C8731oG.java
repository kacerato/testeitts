package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C8731oG extends AbstractC10355y1 {

    public final DG f51202b;

    public C8731oG(DG dg2) {
        this.f51202b = dg2;
    }

    @Override
    public final void clear() {
        this.f51202b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f51202b.containsValue(obj);
    }

    @Override
    public final A30 iterator() {
        return new CG(this.f51202b);
    }

    @Override
    public final int size() {
        return this.f51202b.f39474c;
    }

    @Override
    public final Iterator iterator() {
        return new CG(this.f51202b);
    }
}
