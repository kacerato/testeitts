package com.android.tools.r8.graph;

import com.android.tools.r8.dex.C4320u;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.BR;
import com.android.tools.r8.internal.C9547tA;
import com.android.tools.r8.internal.InterfaceC5580Mq0;

public final class N0 extends O0 {

    public final int f36628d;

    public N0(int i10) {
        this.f36628d = i10;
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
        return abstractC8953pf.a(this.f36628d, ((N0) o02).f36628d);
    }

    @Override
    public final void c(AbstractC9213rA abstractC9213rA) {
        ((C9547tA) abstractC9213rA).f52553a.a(this.f36628d);
    }

    public final int hashCode() {
        return (this.f36628d * 7) + 2;
    }

    @Override
    public final N0 k0() {
        return this;
    }

    @Override
    public final int n0() {
        return 2;
    }

    public final String toString() {
        return "ADVANCE_LINE " + this.f36628d;
    }

    @Override
    public final void a(C4320u c4320u, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        c4320u.b(2);
        byte[] a10 = BR.a(this.f36628d);
        c4320u.a(a10.length);
        c4320u.f35969e.put(a10, 0, a10.length);
    }

    @Override
    public final void a(V0 v02) {
        v02.a(this);
    }
}
