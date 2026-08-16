package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import java.io.UTFDataFormatException;
import java.util.Iterator;
import java.util.Set;

public final class C9154qq0 {

    public static final boolean f51899e = true;

    public final W5 f51900a;

    public final C4724u1 f51901b;

    public final C7201f60 f51902c;

    public final C10340xw0 f51903d;

    public C9154qq0(W5 w52, C4724u1 c4724u1, C7201f60 c7201f60, C10340xw0 c10340xw0) {
        this.f51900a = w52;
        this.f51901b = c4724u1;
        if (c7201f60.c0().size() == 2) {
            Iterator<C10340xw0> it = c7201f60.c0().iterator();
            C7201f60 c7201f602 = null;
            while (true) {
                if (it.hasNext()) {
                    C10340xw0 next = it.next();
                    if (next.j()) {
                        if (c7201f602 != null) {
                            break;
                        } else {
                            c7201f602 = next.l();
                        }
                    }
                } else if (c7201f602 != null) {
                    Iterator<C10340xw0> it2 = c7201f602.c0().iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            c7201f60 = c7201f602;
                            break;
                        } else if (it2.next().j()) {
                            break;
                        }
                    }
                }
            }
        }
        this.f51902c = c7201f60;
        this.f51903d = c10340xw0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0040, code lost:
    
        if (com.android.tools.r8.internal.C9654tq0.a(r0, r6) != false) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C9320rq0 a(C9320rq0 c9320rq0, W5 w52) {
        C10340xw0 c10340xw0;
        NB nb2;
        C10340xw0 c10340xw02;
        C10340xw0 c10340xw03;
        AbstractC9408sL i10 = w52.i();
        int i11 = 0;
        if (i10.H1()) {
            EB V10 = i10.V();
            NB nb3 = V10.f39789l;
            NB nb4 = NB.f42527b;
            if (nb3 != nb4 && nb3 != NB.f42532g) {
                return c9320rq0;
            }
            C4724u1 c4724u1 = this.f51901b;
            boolean z10 = AbstractC9487sq0.f52463a;
            C10340xw0 c10340xw04 = (C10340xw0) V10.f54321f.get(0);
            if (!C9654tq0.a(c4724u1, c10340xw04)) {
                if (!V10.x2()) {
                    c10340xw04 = V10.y2();
                }
                if (r2 != null) {
                    return c9320rq0;
                }
                if (c9320rq0 != null && r2 != (c10340xw03 = c9320rq0.f52156b) && r2.f53886c.k0().C2() != c10340xw03.f53886c.k0().C2()) {
                    return c9320rq0;
                }
                if (!V10.x2()) {
                    if (r2 == ((C10340xw0) V10.f54321f.get(0))) {
                        c10340xw02 = V10.y2();
                    } else {
                        c10340xw02 = (C10340xw0) V10.f54321f.get(0);
                    }
                    C10340xw0 i12 = c10340xw02.i();
                    if (i12.j() || !i12.f53886c.w1()) {
                        return c9320rq0;
                    }
                    i11 = i12.f53886c.J().u2();
                }
                C7447gd0 c7447gd0 = new C7447gd0(16);
                if (!z10 && (nb2 = V10.f39789l) != nb4 && nb2 != NB.f42532g) {
                    throw new AssertionError();
                }
                if (!a(V10.f39789l == nb4 ? V10.v2() : V10.u2(), i11, c7447gd0, AbstractC5513Ll0.c())) {
                    return c9320rq0;
                }
                if (c9320rq0 == null) {
                    c9320rq0 = new C9320rq0(this.f51901b, r2);
                }
                C6447ad0 c6447ad0 = new C6447ad0(((C6614bd0) c7447gd0.o()).f46807b);
                while (c6447ad0.hasNext()) {
                    com.android.tools.r8.graph.L2 l22 = (com.android.tools.r8.graph.L2) c6447ad0.f46566g.f48308c[c6447ad0.b()];
                    c9320rq0.f52157c.b(c7447gd0.b(l22), l22);
                }
                c9320rq0.f52155a = V10.b();
                return b(c9320rq0, V10.b());
            }
            r2 = c10340xw04;
            if (r2 != null) {
            }
        } else {
            if (!i10.M1()) {
                return c9320rq0;
            }
            C9569tI Z10 = i10.Z();
            C4724u1 c4724u12 = this.f51901b;
            boolean z11 = AbstractC9487sq0.f52463a;
            C10340xw0 c10340xw05 = (C10340xw0) Z10.f54321f.get(0);
            r2 = C9654tq0.a(c4724u12, c10340xw05) ? c10340xw05 : null;
            if (r2 == null) {
                return c9320rq0;
            }
            if (c9320rq0 != null && r2 != (c10340xw0 = c9320rq0.f52156b) && r2.f53886c.k0().C2() != c10340xw0.f53886c.k0().C2()) {
                return c9320rq0;
            }
            C7447gd0 c7447gd02 = new C7447gd0(16);
            while (i11 < Z10.v2()) {
                if (!a(Z10.b(i11), Z10.f52578o[i11], c7447gd02, AbstractC5513Ll0.c())) {
                    return c9320rq0;
                }
                i11++;
            }
            if (c9320rq0 == null) {
                c9320rq0 = new C9320rq0(this.f51901b, r2);
            }
            C6447ad0 c6447ad02 = new C6447ad0(((C6614bd0) c7447gd02.o()).f46807b);
            while (c6447ad02.hasNext()) {
                com.android.tools.r8.graph.L2 l23 = (com.android.tools.r8.graph.L2) c6447ad02.f46566g.f48308c[c6447ad02.b()];
                c9320rq0.f52157c.b(c7447gd02.b(l23), l23);
            }
            c9320rq0.f52155a = Z10.b();
            return b(c9320rq0, Z10.b());
        }
    }

    public final C9320rq0 b(C9320rq0 c9320rq0, W5 w52) {
        Y5 it = w52.l().iterator();
        while (true) {
            if (it.hasNext()) {
                AbstractC10561zE next = it.next();
                if (!next.w1() || !next.d().a(w52)) {
                    if (next.T1()) {
                        C8405mK k02 = next.k0();
                        if (k02.B2() == this.f51901b.f37887J4.f38262x) {
                            if (k02.C2() == this.f51903d) {
                                if (k02.e1() && !k02.d().a(w52)) {
                                }
                            }
                        }
                    }
                    if (!next.U1()) {
                        break;
                    }
                }
            } else if (w52.B()) {
                W5 x10 = w52.x();
                x10.getClass();
                boolean z10 = false;
                W5 w53 = x10;
                while (true) {
                    if (!x10.G() || !x10.B()) {
                        break;
                    }
                    x10 = x10.x();
                    if (z10) {
                        w53 = w53.x();
                    }
                    z10 = !z10;
                    if (x10 == w53) {
                        x10 = null;
                        break;
                    }
                }
                return a(c9320rq0, x10);
            }
        }
        return c9320rq0;
    }

    public final boolean a(W5 w52, int i10, C7447gd0 c7447gd0, Set set) {
        C8405mK k02;
        EB V10;
        AE H10 = w52.H();
        AbstractC10561zE next = H10.next();
        C9960vh K10 = next.K();
        if (K10 != null && K10.v2()) {
            return false;
        }
        if (next.x1()) {
            k02 = H10.next().k0();
        } else {
            k02 = next.k0();
        }
        if (k02 != null) {
            com.android.tools.r8.graph.A2 a22 = this.f51901b.f37887J4.f38249k;
            int i11 = C9654tq0.f52704e;
            if ((k02.B2().a(a22) || (k02.C2().u().a(a22.s0()) && k02.B2().c(a22))) && k02.C2() == this.f51903d) {
                if (K10 != null && k02.b(1) != K10.d()) {
                    if (f51899e) {
                        return false;
                    }
                    throw new AssertionError();
                }
                C10340xw0 i12 = k02.b(1).i();
                if (!i12.d(new C6869d61()) || (V10 = H10.next().V()) == null) {
                    return false;
                }
                NB nb2 = V10.f39789l;
                if (nb2 != NB.f42527b && nb2 != NB.f42532g) {
                    return false;
                }
                try {
                    com.android.tools.r8.graph.L2 u22 = i12.f53886c.K().u2();
                    if (u22.l0() == i10) {
                        if (!a(V10.b(1), u22, c7447gd0)) {
                            return false;
                        }
                    }
                    W5 g10 = V10.b(0).g();
                    if (g10 == this.f51900a) {
                        return true;
                    }
                    if (set.add(g10)) {
                        return a(g10, i10, c7447gd0, set);
                    }
                    return false;
                } catch (UTFDataFormatException unused) {
                    throw new C5417Jv0();
                }
            }
        }
        return false;
    }

    public final boolean a(W5 w52, com.android.tools.r8.graph.L2 l22, C7447gd0 c7447gd0) {
        C9126qh J10;
        C4960Bz U10;
        AE H10 = w52.H();
        if (w52.G()) {
            W5 w10 = w52.w();
            W5 w53 = this.f51902c.f47862p;
            if (w10 != w53) {
                return false;
            }
            AbstractC10561zE abstractC10561zE = ((C10340xw0) this.f51902c.f47863q.get(w53.u().indexOf(w52))).f53886c;
            boolean z10 = C9126qh.f51850m;
            J10 = abstractC10561zE == null ? null : abstractC10561zE.J();
        } else {
            J10 = H10.next().J();
        }
        if (J10 == null || !this.f51902c.c0().contains(J10.d()) || (U10 = H10.next().U()) == null || U10.v2().g() != this.f51900a) {
            return false;
        }
        c7447gd0.putIfAbsent(l22, Integer.valueOf(J10.u2()));
        return true;
    }
}
