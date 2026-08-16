package com.android.tools.r8.internal;

import java.util.Iterator;

public final class IG extends AbstractC10355y1 {

    public final QG f41047b;

    public IG(QG qg2) {
        this.f41047b = qg2;
    }

    @Override
    public final void clear() {
        this.f41047b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f41047b.containsValue(obj);
    }

    @Override
    public final A30 iterator() {
        return new PG(this.f41047b);
    }

    @Override
    public final int size() {
        return this.f41047b.f43533k;
    }

    @Override
    public final Iterator iterator() {
        return new PG(this.f41047b);
    }
}
