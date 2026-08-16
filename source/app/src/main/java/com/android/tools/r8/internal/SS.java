package com.android.tools.r8.internal;

public abstract class SS implements InterfaceC5580Mq0 {

    public static final SS[] f44209c = new SS[0];

    public final int f44210b;

    public SS(int i10) {
        this.f44210b = i10;
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    public abstract int a();

    @Override
    public final int a(InterfaceC5580Mq0 interfaceC5580Mq0, AbstractC8953pf abstractC8953pf) {
        SS ss = (SS) interfaceC5580Mq0;
        int a10 = abstractC8953pf.a(a(), ss.a());
        return a10 != 0 ? a10 : a(ss, abstractC8953pf);
    }

    public abstract int a(SS ss, AbstractC8953pf abstractC8953pf);

    public abstract B60 a(com.android.tools.r8.graph.A2 a22, boolean z10);

    public abstract void b(AbstractC9213rA abstractC9213rA);

    public abstract boolean b();

    @Override
    public final InterfaceC5638Nq0 m() {
        throw new C5417Jv0();
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        ((C9547tA) abstractC9213rA).f52553a.a(a());
        b(abstractC9213rA);
    }
}
