package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4517j2;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

public final class C5756Pr0 extends AbstractC9617te {

    public static final boolean f43394e = true;

    public C5756Pr0(C4798y c4798y) {
        super(c4798y);
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return true;
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB) {
        boolean a10 = new C5006Ct(this.f52646a, c7215fB).a();
        C10696a c10696a = new C10696a();
        Set<W5> c10 = AbstractC5513Ll0.c();
        Z5 u10 = c7215fB.u();
        com.android.tools.r8.graph.H5 j10 = c7215fB.j();
        boolean z10 = false;
        while (u10.hasNext()) {
            W5 next = u10.next();
            if (next.q() == 0 || !next.u().isEmpty()) {
                if (c10.contains(next)) {
                    continue;
                } else {
                    Y5 I10 = next.I();
                    boolean z11 = z10;
                    while (I10.hasNext()) {
                        AbstractC10561zE next2 = I10.next();
                        if (next2.t2() && next2.Z0().c(this.f52646a)) {
                            if (next2 instanceof C4) {
                                if (next.z()) {
                                    if (!W5.f45287q && next2.b() != next) {
                                        throw new AssertionError();
                                    }
                                    Y5 it = next.l().iterator();
                                    while (it.hasNext()) {
                                        AbstractC10561zE next3 = it.next();
                                        if (next3 == next2) {
                                            N8 j11 = next.j();
                                            j11.getClass();
                                            int i10 = 0;
                                            while (i10 < j11.size()) {
                                                Object obj = j11.f42511c.get(i10);
                                                i10++;
                                                ((W5) obj).R();
                                            }
                                            z11 = true;
                                        } else if (next3.o()) {
                                        }
                                    }
                                    throw new C5417Jv0();
                                }
                            } else if (next2.J1()) {
                                Object X10 = next2.X();
                                C4798y c4798y = this.f52646a;
                                C10060wE c10060wE = C10394yE.f53982e;
                                AbstractC10561zE abstractC10561zE = (AbstractC10561zE) X10;
                                abstractC10561zE.getClass();
                                if (abstractC10561zE.a(c4798y, j10, M1.a(c4798y, j10), c10060wE)) {
                                    I10.next();
                                }
                            } else if (next2.Q1()) {
                                WJ f02 = next2.f0();
                                C10227xE c10227xE = new C10227xE();
                                C4798y c4798y2 = this.f52646a;
                                f02.getClass();
                                if (f02.b(c4798y2, j10, M1.a(c4798y2, j10), c10227xE)) {
                                    I10.next();
                                }
                            }
                            I10.a(this.f52646a, c7215fB, u10, c10, c10696a);
                        } else if (this.f52646a.f().h() && next2.P1()) {
                            C4798y L10 = this.f52646a.L();
                            VJ e02 = next2.e0();
                            Z4.c<?> o10 = e02.b(L10).o();
                            if (o10 != null) {
                                TW a11 = o10.a(L10, e02, e02.e(this.f52646a, c7215fB.j()));
                                if (a11.s() != null) {
                                    BitSet s10 = a11.s();
                                    for (int i11 = 0; i11 < e02.f54321f.size(); i11++) {
                                        if (((C10340xw0) e02.f54321f.get(i11)).c(this.f52646a) && s10.get(i11)) {
                                            break;
                                        }
                                    }
                                }
                                if (a11.D()) {
                                    I10.f45926f = e02.getPosition();
                                    I10.next();
                                    I10.a(this.f52646a, c7215fB, u10, c10, c10696a);
                                    I10.f45926f = null;
                                }
                            }
                        }
                        a10 = true;
                    }
                    z10 = z11;
                }
            }
        }
        c7215fB.b((Collection<W5>) c10);
        if (z10) {
            C10696a c10696a2 = new C10696a();
            c7215fB.a(c10696a2, C6628bi.b());
            c10696a.f54829b.addAll(c10696a2);
        }
        if (!f43394e && !c7215fB.n().isEmpty()) {
            throw new AssertionError();
        }
        c10696a.a(this.f52646a, c7215fB, C6628bi.b());
        if (a10) {
            c7215fB.x();
        }
        if (!a(c7215fB.j())) {
            a10 |= c(c7215fB);
        }
        return a10 ? InterfaceC10118we.f53548b : InterfaceC10118we.f53547a;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0187 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean c(C7215fB c7215fB) {
        Iterator<W5> it;
        int i10;
        Iterator it2;
        Iterator<W5> it3 = c7215fB.f47897d.iterator();
        int i11 = 0;
        boolean z10 = false;
        boolean z11 = false;
        while (it3.hasNext()) {
            W5 next = it3.next();
            Y5 I10 = next.I();
            while (I10.hasNext()) {
                AbstractC10561zE next2 = I10.next();
                if (next2.H1()) {
                    C4517j2 c4517j2 = this.f52646a.b().f37852E4;
                    com.android.tools.r8.graph.A2 reference = c7215fB.j().getReference();
                    if (reference != c4517j2.f37354f && reference != c4517j2.f37355g && reference != c4517j2.f37356h && reference != c4517j2.f37357i && reference != c4517j2.f37358j) {
                        EB V10 = next2.V();
                        if (V10.x2()) {
                            C10340xw0 c10340xw0 = (C10340xw0) V10.f54321f.get(i11);
                            if (c10340xw0.u().y()) {
                                W5 b10 = V10.b(i11);
                                if (b10.u().size() == 1 && b10.i().m2()) {
                                    C5698Or0 R02 = b10.i().R0();
                                    C10340xw0 i12 = ((C10340xw0) R02.f54321f.get(i11)).i();
                                    if (!(i12.K() && i12.f53886c.J().A2()) && i12.d(new C7680hz0())) {
                                        C9603tZ w02 = i12.f53886c.w0();
                                        if (w02.f52627k == this.f52647b.f37851E3) {
                                            if (w02.d().U() == 2) {
                                                QJ a10 = AbstractC7716iB.a(this.f52647b, w02.d());
                                                if (a10 != null) {
                                                    if (a10.B2() != this.f52647b.f37978W4.f37263a) {
                                                    }
                                                    it2 = b10.b(R02).iterator();
                                                    while (true) {
                                                        if (!it2.hasNext()) {
                                                            AbstractC10561zE abstractC10561zE = (AbstractC10561zE) it2.next();
                                                            C4798y c4798y = this.f52646a;
                                                            com.android.tools.r8.graph.H5 j10 = c7215fB.j();
                                                            if (abstractC10561zE.e1()) {
                                                                C10340xw0 d10 = abstractC10561zE.d();
                                                                if (d10.V() > 0) {
                                                                    break;
                                                                }
                                                                Iterator<AbstractC10561zE> it4 = d10.b0().iterator();
                                                                while (it4.hasNext()) {
                                                                    it = it3;
                                                                    if (it4.next().b() != abstractC10561zE.b()) {
                                                                        break;
                                                                    }
                                                                    it3 = it;
                                                                }
                                                            }
                                                            it = it3;
                                                            if (abstractC10561zE.b(c4798y, j10, M1.a(c4798y, j10), C10394yE.f53978a)) {
                                                                break;
                                                            }
                                                            it3 = it;
                                                        } else {
                                                            it = it3;
                                                            if (next.c(b10)) {
                                                                W5 b11 = V10.b(1);
                                                                B60 position = R02.getPosition();
                                                                b10.T();
                                                                boolean z12 = f43394e;
                                                                if (!z12 && V10 != next.i()) {
                                                                    throw new AssertionError();
                                                                }
                                                                I10.previous();
                                                                C8405mK c8405mK = new C8405mK(this.f52646a.b().f37859F4.f38226d, null, new C5920Sm0((C10340xw0) V10.f54321f.get(0)));
                                                                c8405mK.b(position);
                                                                I10.add(c8405mK);
                                                                I10.next();
                                                                I10.a(new C4960Bz(), (C10696a) null);
                                                                if (!z12 && !next.i().G1()) {
                                                                    throw new AssertionError();
                                                                }
                                                                if (!z12 && R5.a(next) != b11) {
                                                                    throw new AssertionError();
                                                                }
                                                                z10 = true;
                                                                z11 = true;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    } else if (i12.K()) {
                                        if (!i12.f53886c.J().A2()) {
                                        }
                                        it2 = b10.b(R02).iterator();
                                        while (true) {
                                            if (!it2.hasNext()) {
                                            }
                                            it3 = it;
                                        }
                                    }
                                }
                            } else if (!f43394e && !c10340xw0.u().x()) {
                                throw new AssertionError();
                            }
                        }
                    }
                    it = it3;
                    it3 = it;
                    i11 = 0;
                } else {
                    it = it3;
                }
                if (next2.c2() && next2.w0().f52627k == this.f52647b.f37851E3 && next2.d().U() == 2 && !next2.d().z() && next2.V0().isEmpty() && I10.hasNext()) {
                    AbstractC10561zE next3 = I10.next();
                    if (next3.O1() && next3.V0().isEmpty()) {
                        QJ c02 = next3.c0();
                        if (c02.B2() == this.f52647b.f37978W4.f37263a && c02.C2() == next2.d() && c02.f54321f.size() == 1 && c02.getPosition() == next2.getPosition() && I10.hasNext()) {
                            AbstractC10561zE next4 = I10.next();
                            if (next4.m2()) {
                                i10 = 0;
                                if (((C10340xw0) next4.R0().f54321f.get(0)) == next2.d()) {
                                    C9126qh a11 = c7215fB.a(0L, AbstractC8999pu0.m());
                                    C5698Or0 c5698Or0 = new C5698Or0(a11.d());
                                    if (!f43394e && next2.getPosition() != next3.getPosition()) {
                                        throw new AssertionError();
                                    }
                                    a11.b(next2.getPosition());
                                    c5698Or0.b(next4.getPosition());
                                    next4.c(c5698Or0);
                                    I10.remove();
                                    I10.previous();
                                    I10.remove();
                                    I10.previous();
                                    I10.remove();
                                    I10.add(a11);
                                    I10.add(c5698Or0);
                                    z11 = true;
                                }
                                i11 = i10;
                                it3 = it;
                            }
                        }
                    }
                }
                i10 = 0;
                i11 = i10;
                it3 = it;
            }
        }
        if (z10) {
            C10696a c10696a = new C10696a();
            c7215fB.a(c10696a, C6628bi.b());
            c10696a.a(this.f52646a, c7215fB, C6628bi.b());
        }
        if (z11) {
            c7215fB.x();
        }
        return z11;
    }

    @Override
    public final String a() {
        return "ThrowCatchOptimizer";
    }

    public static boolean a(W5 w52) {
        C7201f60 c7201f60;
        Y5 I10 = w52.I();
        AbstractC10561zE next = I10.next();
        next.getClass();
        if (!(next instanceof C6600bY)) {
            return false;
        }
        C10340xw0 d10 = next.d();
        if (d10.y() || (!d10.D() ? d10.V() == 1 : !d10.B() && d10.C() && d10.Z().m2())) {
            return false;
        }
        while (I10.hasNext()) {
            AbstractC10561zE next2 = I10.next();
            W5 b10 = next2.b();
            if (next2.G1()) {
                W5 v22 = next2.U().v2();
                int indexOf = v22.u().indexOf(b10);
                Iterator<C7201f60> it = v22.s().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        c7201f60 = null;
                        break;
                    }
                    c7201f60 = it.next();
                    if (d10 == ((C10340xw0) c7201f60.f47863q.get(indexOf))) {
                        break;
                    }
                }
                if (c7201f60 != null) {
                    if (!c7201f60.y()) {
                        if (c7201f60.D()) {
                            if (!c7201f60.B()) {
                                if (c7201f60.C()) {
                                    if (!c7201f60.Z().m2()) {
                                    }
                                    d10 = c7201f60;
                                }
                            }
                        } else {
                            if (c7201f60.V() != 1) {
                            }
                            d10 = c7201f60;
                        }
                    }
                    return false;
                }
                I10 = v22.I();
            } else {
                if (!next2.m2()) {
                    return false;
                }
                ArrayList arrayList = next2.f54321f;
                if (!f43394e && arrayList.size() != 1) {
                    throw new AssertionError();
                }
                if (arrayList.get(0) != d10) {
                    return false;
                }
                N8 j10 = b10.j();
                if (!j10.isEmpty()) {
                    int i10 = 0;
                    while (i10 < j10.size()) {
                        Object obj = j10.f42511c.get(i10);
                        i10++;
                        if (!a((W5) obj)) {
                            return false;
                        }
                    }
                }
                return true;
            }
        }
        throw new C5417Jv0("Triviality check should always return before the loop terminates");
    }
}
