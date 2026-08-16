package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.Objects;

public final class C12118l5 extends AbstractC12103k {

    public final InterfaceC12119l6 f62356d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12118l5(K5 k52, String str, InterfaceC12119l6 interfaceC12119l6) {
        super("getValue");
        this.f62356d = interfaceC12119l6;
        Objects.requireNonNull(k52);
    }

    @Override
    public final InterfaceC12157q i(C12079h2 c12079h2, List list) {
        I2.a("getValue", 2, list);
        InterfaceC12157q a10 = c12079h2.a((InterfaceC12157q) list.get(0));
        InterfaceC12157q a11 = c12079h2.a((InterfaceC12157q) list.get(1));
        String a12 = this.f62356d.a(a10.P1());
        return a12 != null ? new C12192u(a12) : a11;
    }
}
