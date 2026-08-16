package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C6689c20 extends W {

    public final C8022k20 f46939b;

    public C6689c20(C8022k20 c8022k20) {
        this.f46939b = c8022k20;
    }

    @Override
    public final void clear() {
        this.f46939b.clear();
    }

    @Override
    public final boolean h(int i10) {
        return this.f46939b.d(i10);
    }

    @Override
    public final PH iterator() {
        return new C7855j20(this.f46939b);
    }

    @Override
    public final int size() {
        return this.f46939b.f49465l;
    }

    @Override
    public final Iterator iterator() {
        return new C7855j20(this.f46939b);
    }
}
