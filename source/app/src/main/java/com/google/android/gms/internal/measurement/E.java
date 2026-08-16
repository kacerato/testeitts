package com.google.android.gms.internal.measurement;

import java.util.List;

public final class E extends AbstractC12219x {
    public E() {
        this.f62478a.add(N.AND);
        this.f62478a.add(N.NOT);
        this.f62478a.add(N.OR);
    }

    @Override
    public final InterfaceC12157q a(String str, C12079h2 c12079h2, List list) {
        N n10 = N.ADD;
        int ordinal = I2.e(str).ordinal();
        if (ordinal == 1) {
            I2.a(N.AND.name(), 2, list);
            InterfaceC12157q a10 = c12079h2.a((InterfaceC12157q) list.get(0));
            return a10.R1().booleanValue() ? c12079h2.a((InterfaceC12157q) list.get(1)) : a10;
        }
        if (ordinal == 47) {
            I2.a(N.NOT.name(), 1, list);
            return new C12067g(Boolean.valueOf(!c12079h2.a((InterfaceC12157q) list.get(0)).R1().booleanValue()));
        }
        if (ordinal != 50) {
            return super.b(str);
        }
        I2.a(N.OR.name(), 2, list);
        InterfaceC12157q a11 = c12079h2.a((InterfaceC12157q) list.get(0));
        return !a11.R1().booleanValue() ? c12079h2.a((InterfaceC12157q) list.get(1)) : a11;
    }
}
