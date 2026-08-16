package com.google.android.gms.internal.measurement;

import java.util.List;

public final class C12237z extends AbstractC12219x {
    public C12237z() {
        this.f62478a.add(N.EQUALS);
        this.f62478a.add(N.GREATER_THAN);
        this.f62478a.add(N.GREATER_THAN_EQUALS);
        this.f62478a.add(N.IDENTITY_EQUALS);
        this.f62478a.add(N.IDENTITY_NOT_EQUALS);
        this.f62478a.add(N.LESS_THAN);
        this.f62478a.add(N.LESS_THAN_EQUALS);
        this.f62478a.add(N.NOT_EQUALS);
    }

    public static boolean c(InterfaceC12157q interfaceC12157q, InterfaceC12157q interfaceC12157q2) {
        if (interfaceC12157q instanceof InterfaceC12121m) {
            interfaceC12157q = new C12192u(interfaceC12157q.P1());
        }
        if (interfaceC12157q2 instanceof InterfaceC12121m) {
            interfaceC12157q2 = new C12192u(interfaceC12157q2.P1());
        }
        if ((interfaceC12157q instanceof C12192u) && (interfaceC12157q2 instanceof C12192u)) {
            return interfaceC12157q.P1().compareTo(interfaceC12157q2.P1()) < 0;
        }
        double doubleValue = interfaceC12157q.Q1().doubleValue();
        double doubleValue2 = interfaceC12157q2.Q1().doubleValue();
        return (Double.isNaN(doubleValue) || Double.isNaN(doubleValue2) || (doubleValue == 0.0d && doubleValue2 == 0.0d) || ((doubleValue == 0.0d && doubleValue2 == 0.0d) || Double.compare(doubleValue, doubleValue2) >= 0)) ? false : true;
    }

    public static boolean d(InterfaceC12157q interfaceC12157q, InterfaceC12157q interfaceC12157q2) {
        if (interfaceC12157q.getClass().equals(interfaceC12157q2.getClass())) {
            if ((interfaceC12157q instanceof C12201v) || (interfaceC12157q instanceof C12139o)) {
                return true;
            }
            return interfaceC12157q instanceof C12094j ? (Double.isNaN(interfaceC12157q.Q1().doubleValue()) || Double.isNaN(interfaceC12157q2.Q1().doubleValue()) || interfaceC12157q.Q1().doubleValue() != interfaceC12157q2.Q1().doubleValue()) ? false : true : interfaceC12157q instanceof C12192u ? interfaceC12157q.P1().equals(interfaceC12157q2.P1()) : interfaceC12157q instanceof C12067g ? interfaceC12157q.R1().equals(interfaceC12157q2.R1()) : interfaceC12157q == interfaceC12157q2;
        }
        if (((interfaceC12157q instanceof C12201v) || (interfaceC12157q instanceof C12139o)) && ((interfaceC12157q2 instanceof C12201v) || (interfaceC12157q2 instanceof C12139o))) {
            return true;
        }
        boolean z10 = interfaceC12157q instanceof C12094j;
        if (z10 && (interfaceC12157q2 instanceof C12192u)) {
            return d(interfaceC12157q, new C12094j(interfaceC12157q2.Q1()));
        }
        boolean z11 = interfaceC12157q instanceof C12192u;
        if ((!z11 || !(interfaceC12157q2 instanceof C12094j)) && !(interfaceC12157q instanceof C12067g)) {
            if (interfaceC12157q2 instanceof C12067g) {
                return d(interfaceC12157q, new C12094j(interfaceC12157q2.Q1()));
            }
            if ((z11 || z10) && (interfaceC12157q2 instanceof InterfaceC12121m)) {
                return d(interfaceC12157q, new C12192u(interfaceC12157q2.P1()));
            }
            if ((interfaceC12157q instanceof InterfaceC12121m) && ((interfaceC12157q2 instanceof C12192u) || (interfaceC12157q2 instanceof C12094j))) {
                return d(new C12192u(interfaceC12157q.P1()), interfaceC12157q2);
            }
            return false;
        }
        return d(new C12094j(interfaceC12157q.Q1()), interfaceC12157q2);
    }

    public static boolean e(InterfaceC12157q interfaceC12157q, InterfaceC12157q interfaceC12157q2) {
        if (interfaceC12157q instanceof InterfaceC12121m) {
            interfaceC12157q = new C12192u(interfaceC12157q.P1());
        }
        if (interfaceC12157q2 instanceof InterfaceC12121m) {
            interfaceC12157q2 = new C12192u(interfaceC12157q2.P1());
        }
        return (((interfaceC12157q instanceof C12192u) && (interfaceC12157q2 instanceof C12192u)) || !(Double.isNaN(interfaceC12157q.Q1().doubleValue()) || Double.isNaN(interfaceC12157q2.Q1().doubleValue()))) && !c(interfaceC12157q2, interfaceC12157q);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x003a. Please report as an issue. */
    @Override
    public final InterfaceC12157q a(String str, C12079h2 c12079h2, List list) {
        boolean d10;
        boolean d11;
        I2.a(I2.e(str).name(), 2, list);
        InterfaceC12157q a10 = c12079h2.a((InterfaceC12157q) list.get(0));
        InterfaceC12157q a11 = c12079h2.a((InterfaceC12157q) list.get(1));
        int ordinal = I2.e(str).ordinal();
        if (ordinal != 23) {
            if (ordinal == 48) {
                d11 = d(a10, a11);
            } else if (ordinal == 42) {
                d10 = c(a10, a11);
            } else if (ordinal != 43) {
                switch (ordinal) {
                    case 37:
                        d10 = c(a11, a10);
                        break;
                    case 38:
                        d10 = e(a11, a10);
                        break;
                    case 39:
                        d10 = I2.f(a10, a11);
                        break;
                    case 40:
                        d11 = I2.f(a10, a11);
                        break;
                    default:
                        return super.b(str);
                }
            } else {
                d10 = e(a10, a11);
            }
            d10 = !d11;
        } else {
            d10 = d(a10, a11);
        }
        return d10 ? InterfaceC12157q.f62399t4 : InterfaceC12157q.f62400u4;
    }
}
