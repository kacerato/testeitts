package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C7359g30 extends AbstractC10355y1 {

    public final C8693o30 f48177b;

    public C7359g30(C8693o30 c8693o30) {
        this.f48177b = c8693o30;
    }

    @Override
    public final void clear() {
        this.f48177b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f48177b.containsValue(obj);
    }

    @Override
    public final A30 iterator() {
        return new C8526n30(this.f48177b);
    }

    @Override
    public final int size() {
        return this.f48177b.f51156k;
    }

    @Override
    public final Iterator iterator() {
        return new C8526n30(this.f48177b);
    }
}
