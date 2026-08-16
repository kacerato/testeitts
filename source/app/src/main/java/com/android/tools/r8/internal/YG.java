package com.android.tools.r8.internal;

import java.util.Iterator;

public final class YG extends AbstractC6682c0 {

    public final C6899dH f45960b;

    public YG(C6899dH c6899dH) {
        this.f45960b = c6899dH;
    }

    @Override
    public final void clear() {
        this.f45960b.clear();
    }

    @Override
    public final boolean h(int i10) {
        return this.f45960b.a(i10);
    }

    @Override
    public final PH iterator() {
        return new XG(this.f45960b);
    }

    @Override
    public final boolean remove(int i10) {
        C6899dH c6899dH = this.f45960b;
        int i11 = c6899dH.f47346h;
        c6899dH.remove(i10);
        return this.f45960b.f47346h != i11;
    }

    @Override
    public final int size() {
        return this.f45960b.f47346h;
    }

    @Override
    public final Iterator iterator() {
        return new XG(this.f45960b);
    }
}
