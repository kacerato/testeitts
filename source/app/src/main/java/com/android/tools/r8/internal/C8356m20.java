package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C8356m20 extends W {

    public final C9691u20 f50182b;

    public C8356m20(C9691u20 c9691u20) {
        this.f50182b = c9691u20;
    }

    @Override
    public final void clear() {
        this.f50182b.clear();
    }

    @Override
    public final boolean h(int i10) {
        return this.f50182b.d(i10);
    }

    @Override
    public final PH iterator() {
        return new C9524t20(this.f50182b);
    }

    @Override
    public final int size() {
        return this.f50182b.f52768i;
    }

    @Override
    public final Iterator iterator() {
        return new C9524t20(this.f50182b);
    }
}
