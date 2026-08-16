package com.android.tools.r8.internal;

import com.android.tools.r8.internal.B60;

public final class RS extends SS {

    public final int f43902d;

    public RS(int i10, int i11) {
        super(i10);
        this.f43902d = i11;
    }

    @Override
    public final int a() {
        return 0;
    }

    @Override
    public final boolean b() {
        return false;
    }

    @Override
    public final B60 a(com.android.tools.r8.graph.A2 a22, boolean z10) {
        B60.a a10 = (z10 ? B60.c.t() : B60.b.t()).a(a22);
        a10.f38816e = z10;
        return a10.c().a(this.f43902d).a();
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        ((C9547tA) abstractC9213rA).f52553a.a(this.f43902d);
    }

    @Override
    public final int a(SS ss, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this.f43902d, ((RS) ss).f43902d);
    }
}
