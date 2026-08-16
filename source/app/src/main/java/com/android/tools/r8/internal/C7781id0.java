package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C7781id0 extends W {

    public final C9115qd0 f49000b;

    public C7781id0(C9115qd0 c9115qd0) {
        this.f49000b = c9115qd0;
    }

    @Override
    public final void clear() {
        this.f49000b.clear();
    }

    @Override
    public final boolean h(int i10) {
        return this.f49000b.d(i10);
    }

    @Override
    public final PH iterator() {
        return new C8948pd0(this.f49000b);
    }

    @Override
    public final int size() {
        return this.f49000b.f51828i;
    }

    @Override
    public final Iterator iterator() {
        return new C8948pd0(this.f49000b);
    }
}
