package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;

public final class J extends AbstractC12219x {
    public J() {
        this.f62478a.add(N.FOR_IN);
        this.f62478a.add(N.FOR_IN_CONST);
        this.f62478a.add(N.FOR_IN_LET);
        this.f62478a.add(N.FOR_LET);
        this.f62478a.add(N.FOR_OF);
        this.f62478a.add(N.FOR_OF_CONST);
        this.f62478a.add(N.FOR_OF_LET);
        this.f62478a.add(N.WHILE);
    }

    public static InterfaceC12157q c(H h10, InterfaceC12157q interfaceC12157q, InterfaceC12157q interfaceC12157q2) {
        return e(h10, interfaceC12157q.a(), interfaceC12157q2);
    }

    public static InterfaceC12157q d(H h10, InterfaceC12157q interfaceC12157q, InterfaceC12157q interfaceC12157q2) {
        if (interfaceC12157q instanceof Iterable) {
            return e(h10, ((Iterable) interfaceC12157q).iterator(), interfaceC12157q2);
        }
        throw new IllegalArgumentException("Non-iterable type in for...of loop.");
    }

    public static InterfaceC12157q e(H h10, Iterator it, InterfaceC12157q interfaceC12157q) {
        if (it != null) {
            while (it.hasNext()) {
                InterfaceC12157q b10 = h10.a((InterfaceC12157q) it.next()).b((C12058f) interfaceC12157q);
                if (b10 instanceof C12076h) {
                    C12076h c12076h = (C12076h) b10;
                    if ("break".equals(c12076h.c())) {
                        return InterfaceC12157q.f62394o4;
                    }
                    if ("return".equals(c12076h.c())) {
                        return c12076h;
                    }
                }
            }
        }
        return InterfaceC12157q.f62394o4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x02b2, code lost:
    
        if ("return".equals(r1.c()) != false) goto L70;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final InterfaceC12157q a(String str, C12079h2 c12079h2, List list) {
        C12076h c12076h;
        N n10 = N.ADD;
        int ordinal = I2.e(str).ordinal();
        if (ordinal == 65) {
            I2.a(N.WHILE.name(), 4, list);
            InterfaceC12157q interfaceC12157q = (InterfaceC12157q) list.get(0);
            InterfaceC12157q interfaceC12157q2 = (InterfaceC12157q) list.get(1);
            InterfaceC12157q interfaceC12157q3 = (InterfaceC12157q) list.get(2);
            InterfaceC12157q a10 = c12079h2.a((InterfaceC12157q) list.get(3));
            if (c12079h2.a(interfaceC12157q3).R1().booleanValue()) {
                InterfaceC12157q b10 = c12079h2.b((C12058f) a10);
                if (b10 instanceof C12076h) {
                    c12076h = (C12076h) b10;
                    if ("break".equals(c12076h.c())) {
                        return InterfaceC12157q.f62394o4;
                    }
                }
            }
            while (c12079h2.a(interfaceC12157q).R1().booleanValue()) {
                InterfaceC12157q b11 = c12079h2.b((C12058f) a10);
                if (b11 instanceof C12076h) {
                    c12076h = (C12076h) b11;
                    if ("break".equals(c12076h.c())) {
                        return InterfaceC12157q.f62394o4;
                    }
                    if ("return".equals(c12076h.c())) {
                        return c12076h;
                    }
                }
                c12079h2.a(interfaceC12157q2);
            }
            return InterfaceC12157q.f62394o4;
        }
        switch (ordinal) {
            case 26:
                I2.a(N.FOR_IN.name(), 3, list);
                if (!(list.get(0) instanceof C12192u)) {
                    throw new IllegalArgumentException("Variable name in FOR_IN must be a string");
                }
                return c(new I(c12079h2, ((InterfaceC12157q) list.get(0)).P1()), c12079h2.a((InterfaceC12157q) list.get(1)), c12079h2.a((InterfaceC12157q) list.get(2)));
            case 27:
                I2.a(N.FOR_IN_CONST.name(), 3, list);
                if (!(list.get(0) instanceof C12192u)) {
                    throw new IllegalArgumentException("Variable name in FOR_IN_CONST must be a string");
                }
                return c(new F(c12079h2, ((InterfaceC12157q) list.get(0)).P1()), c12079h2.a((InterfaceC12157q) list.get(1)), c12079h2.a((InterfaceC12157q) list.get(2)));
            case 28:
                I2.a(N.FOR_IN_LET.name(), 3, list);
                if (!(list.get(0) instanceof C12192u)) {
                    throw new IllegalArgumentException("Variable name in FOR_IN_LET must be a string");
                }
                return c(new G(c12079h2, ((InterfaceC12157q) list.get(0)).P1()), c12079h2.a((InterfaceC12157q) list.get(1)), c12079h2.a((InterfaceC12157q) list.get(2)));
            case 29:
                I2.a(N.FOR_LET.name(), 4, list);
                InterfaceC12157q a11 = c12079h2.a((InterfaceC12157q) list.get(0));
                if (!(a11 instanceof C12058f)) {
                    throw new IllegalArgumentException("Initializer variables in FOR_LET must be an ArrayList");
                }
                C12058f c12058f = (C12058f) a11;
                InterfaceC12157q interfaceC12157q4 = (InterfaceC12157q) list.get(1);
                InterfaceC12157q interfaceC12157q5 = (InterfaceC12157q) list.get(2);
                InterfaceC12157q a12 = c12079h2.a((InterfaceC12157q) list.get(3));
                C12079h2 c10 = c12079h2.c();
                for (int i10 = 0; i10 < c12058f.k(); i10++) {
                    String P12 = c12058f.m(i10).P1();
                    c10.e(P12, c12079h2.h(P12));
                }
                while (c12079h2.a(interfaceC12157q4).R1().booleanValue()) {
                    InterfaceC12157q b12 = c12079h2.b((C12058f) a12);
                    if (b12 instanceof C12076h) {
                        C12076h c12076h2 = (C12076h) b12;
                        if ("break".equals(c12076h2.c())) {
                            return InterfaceC12157q.f62394o4;
                        }
                        if ("return".equals(c12076h2.c())) {
                            return c12076h2;
                        }
                    }
                    C12079h2 c11 = c12079h2.c();
                    for (int i11 = 0; i11 < c12058f.k(); i11++) {
                        String P13 = c12058f.m(i11).P1();
                        c11.e(P13, c10.h(P13));
                    }
                    c11.a(interfaceC12157q5);
                    c10 = c11;
                }
                return InterfaceC12157q.f62394o4;
            case 30:
                I2.a(N.FOR_OF.name(), 3, list);
                if (!(list.get(0) instanceof C12192u)) {
                    throw new IllegalArgumentException("Variable name in FOR_OF must be a string");
                }
                return d(new I(c12079h2, ((InterfaceC12157q) list.get(0)).P1()), c12079h2.a((InterfaceC12157q) list.get(1)), c12079h2.a((InterfaceC12157q) list.get(2)));
            case 31:
                I2.a(N.FOR_OF_CONST.name(), 3, list);
                if (!(list.get(0) instanceof C12192u)) {
                    throw new IllegalArgumentException("Variable name in FOR_OF_CONST must be a string");
                }
                return d(new F(c12079h2, ((InterfaceC12157q) list.get(0)).P1()), c12079h2.a((InterfaceC12157q) list.get(1)), c12079h2.a((InterfaceC12157q) list.get(2)));
            case 32:
                I2.a(N.FOR_OF_LET.name(), 3, list);
                if (!(list.get(0) instanceof C12192u)) {
                    throw new IllegalArgumentException("Variable name in FOR_OF_LET must be a string");
                }
                return d(new G(c12079h2, ((InterfaceC12157q) list.get(0)).P1()), c12079h2.a((InterfaceC12157q) list.get(1)), c12079h2.a((InterfaceC12157q) list.get(2)));
            default:
                return super.b(str);
        }
    }
}
