package com.android.tools.r8.internal;

import java.nio.charset.StandardCharsets;

public final class C9547tA extends AbstractC9213rA {

    public final InterfaceC8546nA f52553a;

    public final InterfaceC5152Ff0 f52554b;

    public C9547tA(InterfaceC8546nA interfaceC8546nA, InterfaceC5152Ff0 interfaceC5152Ff0) {
        this.f52553a = interfaceC8546nA;
        this.f52554b = interfaceC5152Ff0;
    }

    @Override
    public final void a(String str) {
        this.f52553a.a(str.getBytes(StandardCharsets.UTF_8));
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22) {
        this.f52553a.a(((com.android.tools.r8.graph.M2) this.f52554b.a(m22)).v0().f36562f);
    }
}
