package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;

public final class A extends AbstractC12219x {
    public A() {
        this.f62478a.add(N.APPLY);
        this.f62478a.add(N.BLOCK);
        this.f62478a.add(N.BREAK);
        this.f62478a.add(N.CASE);
        this.f62478a.add(N.DEFAULT);
        this.f62478a.add(N.CONTINUE);
        this.f62478a.add(N.DEFINE_FUNCTION);
        this.f62478a.add(N.FN);
        this.f62478a.add(N.IF);
        this.f62478a.add(N.QUOTE);
        this.f62478a.add(N.RETURN);
        this.f62478a.add(N.SWITCH);
        this.f62478a.add(N.TERNARY);
    }

    public static InterfaceC12157q c(C12079h2 c12079h2, List list) {
        I2.b(N.FN.name(), 2, list);
        InterfaceC12157q a10 = c12079h2.a((InterfaceC12157q) list.get(0));
        InterfaceC12157q a11 = c12079h2.a((InterfaceC12157q) list.get(1));
        if (!(a11 instanceof C12058f)) {
            throw new IllegalArgumentException(String.format("FN requires an ArrayValue of parameter names found %s", a11.getClass().getCanonicalName()));
        }
        List i10 = ((C12058f) a11).i();
        List arrayList = new ArrayList();
        if (list.size() > 2) {
            arrayList = list.subList(2, list.size());
        }
        return new C12148p(a10.P1(), i10, arrayList, c12079h2);
    }

    @Override
    public final InterfaceC12157q a(String str, C12079h2 c12079h2, List list) {
        N n10 = N.ADD;
        int ordinal = I2.e(str).ordinal();
        if (ordinal == 2) {
            I2.a(N.APPLY.name(), 3, list);
            InterfaceC12157q a10 = c12079h2.a((InterfaceC12157q) list.get(0));
            String P12 = c12079h2.a((InterfaceC12157q) list.get(1)).P1();
            InterfaceC12157q a11 = c12079h2.a((InterfaceC12157q) list.get(2));
            if (!(a11 instanceof C12058f)) {
                throw new IllegalArgumentException(String.format("Function arguments for Apply are not a list found %s", a11.getClass().getCanonicalName()));
            }
            if (P12.isEmpty()) {
                throw new IllegalArgumentException("Function name for apply is undefined");
            }
            return a10.h(P12, c12079h2, ((C12058f) a11).i());
        }
        if (ordinal == 15) {
            I2.a(N.BREAK.name(), 0, list);
            return InterfaceC12157q.f62396q4;
        }
        if (ordinal == 25) {
            return c(c12079h2, list);
        }
        if (ordinal == 41) {
            I2.b(N.IF.name(), 2, list);
            InterfaceC12157q a12 = c12079h2.a((InterfaceC12157q) list.get(0));
            InterfaceC12157q a13 = c12079h2.a((InterfaceC12157q) list.get(1));
            InterfaceC12157q a14 = list.size() > 2 ? c12079h2.a((InterfaceC12157q) list.get(2)) : null;
            InterfaceC12157q interfaceC12157q = InterfaceC12157q.f62394o4;
            InterfaceC12157q b10 = a12.R1().booleanValue() ? c12079h2.b((C12058f) a13) : a14 != null ? c12079h2.b((C12058f) a14) : interfaceC12157q;
            return true != (b10 instanceof C12076h) ? interfaceC12157q : b10;
        }
        if (ordinal == 54) {
            return new C12058f(list);
        }
        if (ordinal == 57) {
            if (list.isEmpty()) {
                return InterfaceC12157q.f62398s4;
            }
            I2.a(N.RETURN.name(), 1, list);
            return new C12076h("return", c12079h2.a((InterfaceC12157q) list.get(0)));
        }
        if (ordinal != 19) {
            if (ordinal == 20) {
                I2.b(N.DEFINE_FUNCTION.name(), 2, list);
                C12148p c12148p = (C12148p) c(c12079h2, list);
                if (c12148p.j() == null) {
                    c12079h2.e("", c12148p);
                    return c12148p;
                }
                c12079h2.e(c12148p.j(), c12148p);
                return c12148p;
            }
            if (ordinal == 60) {
                I2.a(N.SWITCH.name(), 3, list);
                InterfaceC12157q a15 = c12079h2.a((InterfaceC12157q) list.get(0));
                InterfaceC12157q a16 = c12079h2.a((InterfaceC12157q) list.get(1));
                InterfaceC12157q a17 = c12079h2.a((InterfaceC12157q) list.get(2));
                if (!(a16 instanceof C12058f)) {
                    throw new IllegalArgumentException("Malformed SWITCH statement, cases are not a list");
                }
                if (!(a17 instanceof C12058f)) {
                    throw new IllegalArgumentException("Malformed SWITCH statement, case statements are not a list");
                }
                C12058f c12058f = (C12058f) a16;
                C12058f c12058f2 = (C12058f) a17;
                boolean z10 = false;
                for (int i10 = 0; i10 < c12058f.k(); i10++) {
                    if (z10 || a15.equals(c12079h2.a(c12058f.m(i10)))) {
                        InterfaceC12157q a18 = c12079h2.a(c12058f2.m(i10));
                        if (a18 instanceof C12076h) {
                            return ((C12076h) a18).c().equals("break") ? InterfaceC12157q.f62394o4 : a18;
                        }
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
                if (c12058f.k() + 1 == c12058f2.k()) {
                    InterfaceC12157q a19 = c12079h2.a(c12058f2.m(c12058f.k()));
                    if (a19 instanceof C12076h) {
                        String c10 = ((C12076h) a19).c();
                        if (c10.equals("return") || c10.equals("continue")) {
                            return a19;
                        }
                    }
                }
                return InterfaceC12157q.f62394o4;
            }
            if (ordinal == 61) {
                I2.a(N.TERNARY.name(), 3, list);
                return c12079h2.a((InterfaceC12157q) list.get(0)).R1().booleanValue() ? c12079h2.a((InterfaceC12157q) list.get(1)) : c12079h2.a((InterfaceC12157q) list.get(2));
            }
            switch (ordinal) {
                case 11:
                    return c12079h2.c().b(new C12058f(list));
                case 12:
                    I2.a(N.BREAK.name(), 0, list);
                    return InterfaceC12157q.f62397r4;
                case 13:
                    break;
                default:
                    return super.b(str);
            }
        }
        if (list.isEmpty()) {
            return InterfaceC12157q.f62394o4;
        }
        InterfaceC12157q a20 = c12079h2.a((InterfaceC12157q) list.get(0));
        return a20 instanceof C12058f ? c12079h2.b((C12058f) a20) : InterfaceC12157q.f62394o4;
    }
}
