package com.android.tools.r8.internal;

import java.util.BitSet;

public final class C5844Re0 extends AbstractC5728Pe0 {

    public static final boolean f43947c = true;

    public final C5786Qe0 f43948a;

    public final BitSet f43949b;

    public C5844Re0(C5786Qe0 c5786Qe0) {
        this.f43948a = c5786Qe0;
        this.f43949b = new BitSet(c5786Qe0.f43657a);
    }

    @Override
    public final boolean a(int i10, EnumC5670Oe0 enumC5670Oe0) {
        if (!f43947c && this.f43949b.get(i10)) {
            throw new AssertionError();
        }
        return this.f43948a.a(i10, enumC5670Oe0);
    }

    @Override
    public final boolean b(int i10) {
        return this.f43948a.f43662f.get(i10) || this.f43949b.get(i10);
    }

    @Override
    public final void c(int i10) {
        this.f43948a.f43662f.set(i10);
    }

    @Override
    public final void a(int i10, int i11, FT ft) {
        this.f43948a.a(i10, i11, ft);
    }

    @Override
    public final int a(int i10) {
        if (!f43947c && this.f43949b.get(i10)) {
            throw new AssertionError();
        }
        return this.f43948a.a(i10);
    }
}
