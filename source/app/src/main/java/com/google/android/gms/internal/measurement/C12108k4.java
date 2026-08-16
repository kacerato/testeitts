package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.List;

public final class C12108k4 extends AbstractC12103k {

    public final C12031c f62344d;

    public C12108k4(C12031c c12031c) {
        super("internal.eventLogger");
        this.f62344d = c12031c;
    }

    @Override
    public final InterfaceC12157q i(C12079h2 c12079h2, List list) {
        I2.a(this.f62337b, 3, list);
        String P12 = c12079h2.a((InterfaceC12157q) list.get(0)).P1();
        long i10 = (long) I2.i(c12079h2.a((InterfaceC12157q) list.get(1)).Q1().doubleValue());
        InterfaceC12157q a10 = c12079h2.a((InterfaceC12157q) list.get(2));
        this.f62344d.e(P12, i10, a10 instanceof C12130n ? I2.k((C12130n) a10) : new HashMap());
        return InterfaceC12157q.f62394o4;
    }
}
