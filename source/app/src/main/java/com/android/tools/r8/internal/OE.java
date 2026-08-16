package com.android.tools.r8.internal;

import java.util.Iterator;

public final class OE extends W {

    public final WE f42828b;

    public OE(WE we2) {
        this.f42828b = we2;
    }

    @Override
    public final void clear() {
        this.f42828b.clear();
    }

    @Override
    public final boolean h(int i10) {
        return this.f42828b.d(i10);
    }

    @Override
    public final PH iterator() {
        return new VE(this.f42828b);
    }

    @Override
    public final int size() {
        return this.f42828b.f45350l;
    }

    @Override
    public final Iterator iterator() {
        return new VE(this.f42828b);
    }
}
