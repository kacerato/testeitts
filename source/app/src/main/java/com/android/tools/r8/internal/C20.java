package com.android.tools.r8.internal;

public final class C20 extends B20 implements InterfaceC8258lU {

    public final D20 f39107h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20(D20 d20) {
        super(d20);
        this.f39107h = d20;
    }

    @Override
    public final long l() {
        return this.f39107h.f39415c[a()];
    }

    @Override
    public final Object next() {
        return Long.valueOf(this.f39107h.f39415c[a()]);
    }
}
