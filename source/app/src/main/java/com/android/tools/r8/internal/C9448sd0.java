package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C9448sd0 extends AbstractC7848j0 {

    public final C4856Ad0 f52418b;

    public C9448sd0(C4856Ad0 c4856Ad0) {
        this.f52418b = c4856Ad0;
    }

    @Override
    public final InterfaceC8258lU a() {
        return new C10617zd0(this.f52418b);
    }

    @Override
    public final boolean b(long j10) {
        return this.f52418b.a(j10);
    }

    @Override
    public final void clear() {
        this.f52418b.clear();
    }

    @Override
    public final Iterator iterator() {
        return new C10617zd0(this.f52418b);
    }

    @Override
    public final int size() {
        return this.f52418b.f38652h;
    }
}
