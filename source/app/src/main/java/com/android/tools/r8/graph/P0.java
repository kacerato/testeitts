package com.android.tools.r8.graph;

import com.android.tools.r8.dex.C4320u;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.C9547tA;
import com.android.tools.r8.internal.InterfaceC5580Mq0;

public final class P0 extends O0 {

    public final int f36692d;

    public P0(int i10) {
        this.f36692d = i10;
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    @Override
    public final int a(InterfaceC5580Mq0 interfaceC5580Mq0, AbstractC8953pf abstractC8953pf) {
        return a((O0) interfaceC5580Mq0, abstractC8953pf);
    }

    @Override
    public final int b(O0 o02, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this.f36692d, ((P0) o02).f36692d);
    }

    @Override
    public final void c(AbstractC9213rA abstractC9213rA) {
        ((C9547tA) abstractC9213rA).f52553a.a(this.f36692d);
    }

    public final int hashCode() {
        return (this.f36692d * 7) + 5;
    }

    @Override
    public final int n0() {
        return 5;
    }

    @Override
    public final boolean o0() {
        return true;
    }

    public final String toString() {
        return "END_LOCAL " + this.f36692d;
    }

    @Override
    public final void a(C4320u c4320u, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        c4320u.b(5);
        c4320u.c(this.f36692d);
    }

    @Override
    public final void a(V0 v02) {
        v02.a(this);
    }
}
