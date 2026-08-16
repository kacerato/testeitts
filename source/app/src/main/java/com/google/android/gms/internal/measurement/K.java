package com.google.android.gms.internal.measurement;

import java.util.List;

public final class K extends AbstractC12219x {
    public K() {
        this.f62478a.add(N.ADD);
        this.f62478a.add(N.DIVIDE);
        this.f62478a.add(N.MODULUS);
        this.f62478a.add(N.MULTIPLY);
        this.f62478a.add(N.NEGATE);
        this.f62478a.add(N.POST_DECREMENT);
        this.f62478a.add(N.POST_INCREMENT);
        this.f62478a.add(N.PRE_DECREMENT);
        this.f62478a.add(N.PRE_INCREMENT);
        this.f62478a.add(N.SUBTRACT);
    }

    @Override
    public final InterfaceC12157q a(String str, C12079h2 c12079h2, List list) {
        N n10 = N.ADD;
        int ordinal = I2.e(str).ordinal();
        if (ordinal == 0) {
            I2.a(n10.name(), 2, list);
            InterfaceC12157q a10 = c12079h2.a((InterfaceC12157q) list.get(0));
            InterfaceC12157q a11 = c12079h2.a((InterfaceC12157q) list.get(1));
            if (!(a10 instanceof InterfaceC12121m) && !(a10 instanceof C12192u) && !(a11 instanceof InterfaceC12121m) && !(a11 instanceof C12192u)) {
                return new C12094j(Double.valueOf(a10.Q1().doubleValue() + a11.Q1().doubleValue()));
            }
            return new C12192u(String.valueOf(a10.P1()).concat(String.valueOf(a11.P1())));
        }
        if (ordinal == 21) {
            I2.a(N.DIVIDE.name(), 2, list);
            return new C12094j(Double.valueOf(c12079h2.a((InterfaceC12157q) list.get(0)).Q1().doubleValue() / c12079h2.a((InterfaceC12157q) list.get(1)).Q1().doubleValue()));
        }
        if (ordinal == 59) {
            I2.a(N.SUBTRACT.name(), 2, list);
            return new C12094j(Double.valueOf(c12079h2.a((InterfaceC12157q) list.get(0)).Q1().doubleValue() + new C12094j(Double.valueOf(-c12079h2.a((InterfaceC12157q) list.get(1)).Q1().doubleValue())).Q1().doubleValue()));
        }
        if (ordinal == 52 || ordinal == 53) {
            I2.a(str, 2, list);
            InterfaceC12157q a12 = c12079h2.a((InterfaceC12157q) list.get(0));
            c12079h2.a((InterfaceC12157q) list.get(1));
            return a12;
        }
        if (ordinal == 55 || ordinal == 56) {
            I2.a(str, 1, list);
            return c12079h2.a((InterfaceC12157q) list.get(0));
        }
        switch (ordinal) {
            case 44:
                I2.a(N.MODULUS.name(), 2, list);
                return new C12094j(Double.valueOf(c12079h2.a((InterfaceC12157q) list.get(0)).Q1().doubleValue() % c12079h2.a((InterfaceC12157q) list.get(1)).Q1().doubleValue()));
            case 45:
                I2.a(N.MULTIPLY.name(), 2, list);
                return new C12094j(Double.valueOf(c12079h2.a((InterfaceC12157q) list.get(0)).Q1().doubleValue() * c12079h2.a((InterfaceC12157q) list.get(1)).Q1().doubleValue()));
            case 46:
                I2.a(N.NEGATE.name(), 1, list);
                return new C12094j(Double.valueOf(-c12079h2.a((InterfaceC12157q) list.get(0)).Q1().doubleValue()));
            default:
                return super.b(str);
        }
    }
}
