package com.android.tools.r8.graph;

import com.android.tools.r8.dex.C4320u;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.InterfaceC5580Mq0;

public final class T0 extends O0 {

    public static final boolean f36819d = true;

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
        if (f36819d || (o02 instanceof T0)) {
            return 0;
        }
        throw new AssertionError();
    }

    @Override
    public final void c(AbstractC9213rA abstractC9213rA) {
    }

    public final int hashCode() {
        return 7;
    }

    @Override
    public final int n0() {
        return 7;
    }

    @Override
    public final boolean o0() {
        return true;
    }

    public final String toString() {
        return "SET_PROLOGUE_END";
    }

    @Override
    public final void a(C4320u c4320u, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        c4320u.b(7);
    }

    @Override
    public final void a(V0 v02) {
        v02.a(this);
    }
}
