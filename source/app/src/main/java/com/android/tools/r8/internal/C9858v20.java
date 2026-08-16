package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C9858v20 extends AbstractC7848j0 {

    public final D20 f53003b;

    public C9858v20(D20 d20) {
        this.f53003b = d20;
    }

    @Override
    public final InterfaceC8258lU a() {
        return new C20(this.f53003b);
    }

    @Override
    public final boolean b(long j10) {
        return this.f53003b.a(j10);
    }

    @Override
    public final void clear() {
        this.f53003b.clear();
    }

    @Override
    public final Iterator iterator() {
        return new C20(this.f53003b);
    }

    @Override
    public final int size() {
        return this.f53003b.f39420h;
    }
}
