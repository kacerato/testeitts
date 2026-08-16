package com.android.tools.r8.internal;

import java.util.Objects;

public final class C8486mq0 {
    public final C8653nq0 a(C8653nq0 c8653nq0, C9569tI c9569tI, W5 w52) {
        int i10 = 0;
        C10340xw0 c10340xw0 = (C10340xw0) c9569tI.f54321f.get(0);
        if (!c10340xw0.j() || !c10340xw0.C() || c10340xw0.B() || c10340xw0.y() || (c8653nq0 != null && c10340xw0 != c8653nq0.f51091b)) {
            if (c8653nq0 != null) {
                c8653nq0.f51090a = w52;
            }
            return c8653nq0;
        }
        C7201f60 l10 = c10340xw0.l();
        if (c8653nq0 == null) {
            c8653nq0 = new C8653nq0(l10);
        }
        final C6899dH c6899dH = c8653nq0.f51092c;
        Objects.requireNonNull(c6899dH);
        ZH zh2 = new ZH() {
            @Override
            public final void a(int i11, Object obj) {
                SG.this.putIfAbsent(Integer.valueOf(i11), (W5) obj);
            }
        };
        while (true) {
            int[] iArr = c9569tI.f52578o;
            if (i10 < iArr.length) {
                zh2.a(iArr[i10], c9569tI.b(i10));
                i10++;
            } else {
                return a(c8653nq0, c9569tI.u2());
            }
        }
    }

    public final C8653nq0 a(C8653nq0 c8653nq0, EB eb2, W5 w52) {
        C7201f60 c7201f60;
        NB nb2;
        C10340xw0 c10340xw0;
        NB nb3 = eb2.f39789l;
        NB nb4 = NB.f42527b;
        if (nb3 == nb4 || nb3 == NB.f42532g) {
            int i10 = 0;
            C10340xw0 c10340xw02 = (C10340xw0) eb2.f54321f.get(0);
            if (c10340xw02.j()) {
                c7201f60 = c10340xw02.l();
            } else {
                if (!eb2.x2()) {
                    C10340xw0 y22 = eb2.y2();
                    if (y22.j()) {
                        c7201f60 = y22.l();
                    }
                }
                c7201f60 = null;
            }
            if (c7201f60 != null) {
                AbstractC8999pu0 u10 = c7201f60.u();
                u10.getClass();
                if ((u10 instanceof C9736uI) && c7201f60.C() && !c7201f60.B() && !c7201f60.y() && (c8653nq0 == null || c7201f60 == c8653nq0.f51091b)) {
                    if (!eb2.x2()) {
                        if (c7201f60 == ((C10340xw0) eb2.f54321f.get(0))) {
                            c10340xw0 = eb2.y2();
                        } else {
                            c10340xw0 = (C10340xw0) eb2.f54321f.get(0);
                        }
                        C10340xw0 i11 = c10340xw0.i();
                        if (!i11.j() && i11.f53886c.w1()) {
                            i10 = i11.f53886c.J().u2();
                        } else if (c8653nq0 != null) {
                            c8653nq0.f51090a = w52;
                            return c8653nq0;
                        }
                    }
                    if (c8653nq0 == null) {
                        c8653nq0 = new C8653nq0(c7201f60);
                    }
                    C6899dH c6899dH = c8653nq0.f51092c;
                    Integer valueOf = Integer.valueOf(i10);
                    if (!AbstractC9487sq0.f52463a && (nb2 = eb2.f39789l) != nb4 && nb2 != NB.f42532g) {
                        throw new AssertionError();
                    }
                    c6899dH.putIfAbsent(valueOf, eb2.f39789l == nb4 ? eb2.v2() : eb2.u2());
                    return a(c8653nq0, AbstractC9487sq0.a(eb2));
                }
            }
            if (c8653nq0 != null) {
                c8653nq0.f51090a = w52;
            }
        } else if (c8653nq0 != null) {
            c8653nq0.f51090a = w52;
            return c8653nq0;
        }
        return c8653nq0;
    }

    public final C8653nq0 a(C8653nq0 c8653nq0, W5 w52) {
        W5 g10 = w52.g();
        if (g10 != null) {
            int size = g10.l().size();
            if (size == 1) {
                AbstractC9408sL i10 = g10.i();
                if (i10.H1()) {
                    return a(c8653nq0, i10.V(), w52);
                }
                if (i10.M1()) {
                    return a(c8653nq0, i10.Z(), w52);
                }
            }
            if (size == 2) {
                AbstractC10561zE a10 = g10.f45293f.a();
                AbstractC9408sL i11 = g10.i();
                if (a10.w1() && a10.d().a(g10) && i11.H1()) {
                    return a(c8653nq0, i11.V(), w52);
                }
            }
            if (c8653nq0 != null) {
                c8653nq0.f51090a = w52;
            }
        } else if (c8653nq0 != null) {
            c8653nq0.f51090a = w52;
            return c8653nq0;
        }
        return c8653nq0;
    }
}
