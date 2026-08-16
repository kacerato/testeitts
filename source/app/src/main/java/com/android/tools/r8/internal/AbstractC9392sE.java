package com.android.tools.r8.internal;

public abstract class AbstractC9392sE {

    public static final boolean f52320c = true;

    public C10340xw0 f52321a;

    public B60 f52322b;

    public abstract AbstractC9392sE a();

    public final AbstractC9392sE a(InterfaceC10674zw0 interfaceC10674zw0, AbstractC8999pu0 abstractC8999pu0) {
        this.f52321a = interfaceC10674zw0.a(abstractC8999pu0, null);
        return a();
    }

    public boolean b() {
        throw new C5417Jv0();
    }

    public final AbstractC9392sE a(B60 b60, C8570nJ c8570nJ) {
        if (!f52320c && !b()) {
            throw new AssertionError();
        }
        if (c8570nJ.f50690i1) {
            this.f52322b = b60;
            return a();
        }
        this.f52322b = B60.s();
        return a();
    }
}
