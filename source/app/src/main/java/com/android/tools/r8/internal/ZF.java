package com.android.tools.r8.internal;

import java.util.Iterator;

public final class ZF extends AbstractC6519b1 {

    public final C7230fG f46208b;

    public ZF(C7230fG c7230fG) {
        this.f46208b = c7230fG;
    }

    @Override
    public final void clear() {
        this.f46208b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f46208b.containsValue(obj);
    }

    @Override
    public final A30 iterator() {
        return new C7063eG(this.f46208b);
    }

    @Override
    public final int size() {
        return this.f46208b.size();
    }

    @Override
    public final Iterator iterator() {
        return new C7063eG(this.f46208b);
    }
}
