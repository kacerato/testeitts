package com.google.android.gms.internal.measurement;

import java.util.List;

public final class c8 extends AbstractC12103k {

    public final g8 f62247d;

    public c8(g8 g8Var) {
        super("internal.registerCallback");
        this.f62247d = g8Var;
    }

    @Override
    public final InterfaceC12157q i(C12079h2 c12079h2, List list) {
        I2.a(this.f62337b, 3, list);
        String P12 = c12079h2.a((InterfaceC12157q) list.get(0)).P1();
        InterfaceC12157q a10 = c12079h2.a((InterfaceC12157q) list.get(1));
        if (!(a10 instanceof C12148p)) {
            throw new IllegalArgumentException("Invalid callback type");
        }
        InterfaceC12157q a11 = c12079h2.a((InterfaceC12157q) list.get(2));
        if (!(a11 instanceof C12130n)) {
            throw new IllegalArgumentException("Invalid callback params");
        }
        C12130n c12130n = (C12130n) a11;
        if (!c12130n.e("type")) {
            throw new IllegalArgumentException("Undefined rule type");
        }
        this.f62247d.a(P12, c12130n.e("priority") ? I2.g(c12130n.c("priority").Q1().doubleValue()) : 1000, (C12148p) a10, c12130n.c("type").P1());
        return InterfaceC12157q.f62394o4;
    }
}
