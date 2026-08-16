package com.google.android.gms.internal.measurement;

import java.util.List;

public final class C12210w extends AbstractC12219x {
    public C12210w() {
        this.f62478a.add(N.BITWISE_AND);
        this.f62478a.add(N.BITWISE_LEFT_SHIFT);
        this.f62478a.add(N.BITWISE_NOT);
        this.f62478a.add(N.BITWISE_OR);
        this.f62478a.add(N.BITWISE_RIGHT_SHIFT);
        this.f62478a.add(N.BITWISE_UNSIGNED_RIGHT_SHIFT);
        this.f62478a.add(N.BITWISE_XOR);
    }

    @Override
    public final InterfaceC12157q a(String str, C12079h2 c12079h2, List list) {
        C12094j c12094j;
        N n10 = N.ADD;
        switch (I2.e(str).ordinal()) {
            case 4:
                I2.a(N.BITWISE_AND.name(), 2, list);
                c12094j = new C12094j(Double.valueOf(I2.g(c12079h2.a((InterfaceC12157q) list.get(0)).Q1().doubleValue()) & I2.g(c12079h2.a((InterfaceC12157q) list.get(1)).Q1().doubleValue())));
                break;
            case 5:
                I2.a(N.BITWISE_LEFT_SHIFT.name(), 2, list);
                c12094j = new C12094j(Double.valueOf(I2.g(c12079h2.a((InterfaceC12157q) list.get(0)).Q1().doubleValue()) << ((int) (I2.h(c12079h2.a((InterfaceC12157q) list.get(1)).Q1().doubleValue()) & 31))));
                break;
            case 6:
                I2.a(N.BITWISE_NOT.name(), 1, list);
                c12094j = new C12094j(Double.valueOf(~I2.g(c12079h2.a((InterfaceC12157q) list.get(0)).Q1().doubleValue())));
                break;
            case 7:
                I2.a(N.BITWISE_OR.name(), 2, list);
                c12094j = new C12094j(Double.valueOf(I2.g(c12079h2.a((InterfaceC12157q) list.get(0)).Q1().doubleValue()) | I2.g(c12079h2.a((InterfaceC12157q) list.get(1)).Q1().doubleValue())));
                break;
            case 8:
                I2.a(N.BITWISE_RIGHT_SHIFT.name(), 2, list);
                c12094j = new C12094j(Double.valueOf(I2.g(c12079h2.a((InterfaceC12157q) list.get(0)).Q1().doubleValue()) >> ((int) (I2.h(c12079h2.a((InterfaceC12157q) list.get(1)).Q1().doubleValue()) & 31))));
                break;
            case 9:
                I2.a(N.BITWISE_UNSIGNED_RIGHT_SHIFT.name(), 2, list);
                c12094j = new C12094j(Double.valueOf(I2.h(c12079h2.a((InterfaceC12157q) list.get(0)).Q1().doubleValue()) >>> ((int) (I2.h(c12079h2.a((InterfaceC12157q) list.get(1)).Q1().doubleValue()) & 31))));
                break;
            case 10:
                I2.a(N.BITWISE_XOR.name(), 2, list);
                c12094j = new C12094j(Double.valueOf(I2.g(c12079h2.a((InterfaceC12157q) list.get(0)).Q1().doubleValue()) ^ I2.g(c12079h2.a((InterfaceC12157q) list.get(1)).Q1().doubleValue())));
                break;
            default:
                return super.b(str);
        }
        return c12094j;
    }
}
