package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C6241Yc0 extends W {

    public final C7447gd0 f46045b;

    public C6241Yc0(C7447gd0 c7447gd0) {
        this.f46045b = c7447gd0;
    }

    @Override
    public final void clear() {
        this.f46045b.clear();
    }

    @Override
    public final boolean h(int i10) {
        return this.f46045b.d(i10);
    }

    @Override
    public final PH iterator() {
        return new C7280fd0(this.f46045b);
    }

    @Override
    public final int size() {
        return this.f46045b.f48317l;
    }

    @Override
    public final Iterator iterator() {
        return new C7280fd0(this.f46045b);
    }
}
