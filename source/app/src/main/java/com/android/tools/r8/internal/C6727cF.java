package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C6727cF extends AbstractC6682c0 {

    public final C7561hF f47008b;

    public C6727cF(C7561hF c7561hF) {
        this.f47008b = c7561hF;
    }

    @Override
    public final void clear() {
        this.f47008b.clear();
    }

    @Override
    public final boolean h(int i10) {
        return this.f47008b.a(i10);
    }

    @Override
    public final PH iterator() {
        return new C6561bF(this.f47008b);
    }

    @Override
    public final boolean remove(int i10) {
        C7561hF c7561hF = this.f47008b;
        int i11 = c7561hF.f48514i;
        c7561hF.remove(i10);
        return this.f47008b.f48514i != i11;
    }

    @Override
    public final int size() {
        return this.f47008b.f48514i;
    }

    @Override
    public final Iterator iterator() {
        return new C6561bF(this.f47008b);
    }
}
