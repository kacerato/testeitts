package com.android.tools.r8.internal;

import java.util.Iterator;

public final class ZE extends W {

    public final C7561hF f46206b;

    public ZE(C7561hF c7561hF) {
        this.f46206b = c7561hF;
    }

    @Override
    public final void clear() {
        this.f46206b.clear();
    }

    @Override
    public final boolean h(int i10) {
        return this.f46206b.d(i10);
    }

    @Override
    public final PH iterator() {
        return new C7394gF(this.f46206b);
    }

    @Override
    public final int size() {
        return this.f46206b.f48514i;
    }

    @Override
    public final Iterator iterator() {
        return new C7394gF(this.f46206b);
    }
}
