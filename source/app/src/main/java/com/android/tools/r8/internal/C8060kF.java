package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C8060kF extends AbstractC6519b1 {

    public final C10564zF f49562b;

    public C8060kF(C10564zF c10564zF) {
        this.f49562b = c10564zF;
    }

    @Override
    public final void clear() {
        this.f49562b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f49562b.containsValue(obj);
    }

    @Override
    public final A30 iterator() {
        return new C10397yF(this.f49562b);
    }

    @Override
    public final int size() {
        return this.f49562b.f54327c;
    }

    @Override
    public final Iterator iterator() {
        return new C10397yF(this.f49562b);
    }
}
