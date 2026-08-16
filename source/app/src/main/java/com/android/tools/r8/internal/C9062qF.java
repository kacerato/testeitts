package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C9062qF extends AbstractC6519b1 {

    public final C10063wF f51743b;

    public C9062qF(C10063wF c10063wF) {
        this.f51743b = c10063wF;
    }

    @Override
    public final void clear() {
        this.f51743b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f51743b.containsValue(obj);
    }

    @Override
    public final A30 iterator() {
        return new C9896vF(this.f51743b);
    }

    @Override
    public final int size() {
        return this.f51743b.size();
    }

    @Override
    public final Iterator iterator() {
        return new C9896vF(this.f51743b);
    }
}
