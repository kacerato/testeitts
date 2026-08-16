package com.android.tools.r8.internal;

public final class ZN extends AbstractC7246fO {

    public final InterfaceC8413mO f46233j;

    public final C8914pO f46234k;

    public ZN(B50 b50, InterfaceC8413mO interfaceC8413mO, C8914pO c8914pO) {
        super(b50);
        this.f46233j = interfaceC8413mO;
        this.f46234k = c8914pO;
    }

    @Override
    public final void a() {
        super.a();
        this.f46233j.accept(new ZM(c()));
    }

    @Override
    public final C8914pO b() {
        return this.f46234k;
    }
}
