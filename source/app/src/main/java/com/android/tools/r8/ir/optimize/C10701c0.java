package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.I2;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.graph.Y5;
import com.android.tools.r8.graph.Z1;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.AbstractC10330xt;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC6931dX;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.AbstractC9617te;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C4;
import com.android.tools.r8.internal.C5035Df;
import com.android.tools.r8.internal.C6855d2;
import com.android.tools.r8.internal.C7201f60;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C7520h10;
import com.android.tools.r8.internal.C8405mK;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C9126qh;
import com.android.tools.r8.internal.EB;
import com.android.tools.r8.internal.InterfaceC10118we;
import com.android.tools.r8.internal.NB;
import com.android.tools.r8.internal.T10;
import com.android.tools.r8.internal.TJ;
import com.android.tools.r8.internal.W5;
import com.android.tools.r8.internal.WJ;
import com.android.tools.r8.ir.optimize.C10701c0;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.function.Predicate;

public final class C10701c0 extends AbstractC9617te {

    public final L2 f54842e;

    public final I2 f54843f;

    public final M2 f54844g;

    public final M2 f54845h;

    public final M2 f54846i;

    public final L2 f54847j;

    public final I2 f54848k;

    public final L2 f54849l;

    public final A2 f54850m;

    public final A2 f54851n;

    public final M2 f54852o;

    public final M2 f54853p;

    public C10701c0(C4798y c4798y) {
        super(c4798y);
        C4724u1 c4724u1 = this.f52647b;
        this.f54842e = c4724u1.f38130q0;
        this.f54843f = c4724u1.f37914N3;
        this.f54847j = c4724u1.f38138r0;
        this.f54848k = c4724u1.f38128p6.f36671a.y0();
        C4724u1 c4724u12 = this.f52647b;
        this.f54849l = c4724u12.f38146s0;
        this.f54844g = c4724u12.f37942R3;
        this.f54845h = c4724u12.f37984X3;
        this.f54846i = c4724u12.f37970V3;
        Z1 z12 = c4724u12.f38103m5;
        this.f54850m = z12.f37009a;
        this.f54851n = z12.f37010b;
        this.f54852o = c4724u12.f37963U3;
        this.f54853p = c4724u12.f37977W3;
    }

    public static boolean a(final C4798y c4798y, Y5 y52) {
        C8570nJ.p pVar = c4798y.E().f50599F1;
        if (!c4798y.f().i()) {
            return false;
        }
        if (pVar.f50884i1) {
            return true;
        }
        M2 m22 = c4798y.b().f37963U3;
        final Z1 z12 = c4798y.b().f38103m5;
        return y52.g(m22).stream().noneMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10701c0.a(C4798y.this, z12, (M2) obj);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01c5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0011 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0151  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final InterfaceC10118we b(C7215fB c7215fB, AbstractC6931dX abstractC6931dX, C5035Df c5035Df) {
        ArrayList arrayList;
        int i10;
        Z4 z42;
        int i11;
        C10340xw0 c10340xw0;
        C9126qh c9126qh;
        int i12;
        C10340xw0 d10;
        C10697a0 c10697a0;
        C10699b0 a10;
        WJ f02;
        C10340xw0 d11;
        C10699b0 a11;
        EB V10;
        C4 c42;
        WJ f03;
        A2 B22;
        int W10;
        ArrayList arrayList2 = new ArrayList();
        Iterator<AbstractC10561zE> it = c7215fB.q().iterator();
        while (it.hasNext()) {
            WJ f04 = it.next().f0();
            if (f04 != null && f04.B2().a(this.f54843f, this.f54842e)) {
                C10340xw0 C22 = f04.C2();
                if (C22.u().s()) {
                    M2 a12 = C22.u().b().a(this.f52647b);
                    if (!this.f52648c.f50599F1.f50881h1) {
                        if (!((C11245i) this.f52646a.f()).c(a12, this.f54852o) && !a12.a(this.f54853p)) {
                        }
                        d10 = f04.d();
                        if (d10 != null) {
                            C4 c43 = a10.f54841b;
                            if (c43 == null) {
                            }
                            d11 = f02.d();
                            if (!d11.B()) {
                                C4 c44 = a11.f54841b;
                                if (c44 == null) {
                                }
                                if (V10.f39789l != NB.f42527b) {
                                }
                                f03 = r7.f45293f.a().f0();
                                if (f03 != null) {
                                    B22 = f03.B2();
                                    if (B22.t0().g(this.f54849l)) {
                                        W10 = d10.W();
                                        if (c42 != null) {
                                        }
                                        if (W10 == 2) {
                                        }
                                    }
                                }
                            }
                        }
                        c10697a0 = null;
                        if (c10697a0 != null) {
                        }
                    } else if (((C11245i) this.f52646a.f()).c(a12, this.f54844g) && !a12.a(this.f54846i) && !a12.a(this.f54845h)) {
                        d10 = f04.d();
                        if (d10 != null && !d10.B() && !d10.y() && (a10 = a(f04)) != null && (f02 = a10.f54840a.f0()) != null && f02.C2().i() == d10 && f02.B2().a(this.f54848k, this.f54847j) && !f02.b().B() && f02.b().f45293f.a() == f02) {
                            C4 c432 = a10.f54841b;
                            C4 c45 = (c432 == null && c432.W0() == f04.W0()) ? a10.f54841b : null;
                            d11 = f02.d();
                            if (!d11.B() && d11.C() && !d11.y() && (a11 = a(f02)) != null && (V10 = a11.f54840a.V()) != null && d11.Z() == V10 && V10.x2()) {
                                C4 c442 = a11.f54841b;
                                c42 = (c442 == null && c442.W0() == f02.W0()) ? a11.f54841b : null;
                                W5 u22 = V10.f39789l != NB.f42527b ? V10.u2() : V10.v2();
                                f03 = u22.f45293f.a().f0();
                                if (f03 != null && f03.C2().i() == d10) {
                                    B22 = f03.B2();
                                    if (B22.t0().g(this.f54849l) && B22.y0().n0().isEmpty() && B22.z0().I0() && u22.B()) {
                                        W10 = d10.W();
                                        if (c42 != null) {
                                            if (!c42.d().B()) {
                                                W10 += c42.d().W() - 1;
                                            }
                                        }
                                        if (W10 == 2) {
                                            c10697a0 = new C10697a0(f04, f02, V10, f03, c45, c42);
                                            if (c10697a0 != null) {
                                                arrayList2.add(c10697a0);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        c10697a0 = null;
                        if (c10697a0 != null) {
                        }
                    }
                }
            }
        }
        if (arrayList2.isEmpty()) {
            return InterfaceC10118we.f53547a;
        }
        int size = arrayList2.size();
        int i13 = 0;
        int i14 = 0;
        while (i14 < size) {
            Object obj = arrayList2.get(i14);
            int i15 = i14 + 1;
            C10697a0 c10697a02 = (C10697a0) obj;
            WJ wj2 = c10697a02.f54830a;
            WJ wj3 = c10697a02.f54831b;
            EB eb2 = c10697a02.f54832c;
            WJ wj4 = c10697a02.f54833d;
            C4 c46 = c10697a02.f54834e;
            C4 c47 = c10697a02.f54835f;
            C10340xw0 C23 = wj2.C2();
            C9126qh a13 = c7215fB.a(i13, (C4515j0) null);
            a13.b(wj2.getPosition());
            wj2.b().l().a(a13, wj2);
            com.android.tools.r8.graph.E0 g10 = this.f52646a.g(C23.u().b().a(this.f52647b));
            C10340xw0 a14 = c7215fB.a(AbstractC8999pu0.k(), (C4515j0) null);
            List singletonList = Collections.singletonList(C23);
            if (g10 == null || g10.isInterface()) {
                arrayList = arrayList2;
                i10 = size;
                z42 = null;
            } else {
                arrayList = arrayList2;
                i10 = size;
                z42 = ((C11245i) this.f52646a.f()).e(g10, this.f54850m);
            }
            AbstractC10561zE tj2 = (z42 == null || z42.d().isInterface()) ? new TJ(this.f54850m, a14, singletonList) : new C8405mK(z42.q().getReference(), a14, singletonList);
            wj2.d(tj2);
            if (c46 != null) {
                boolean z10 = AbstractC10330xt.f53865a;
                i11 = i15;
                c10340xw0 = a14;
                c9126qh = a13;
                C4 a15 = C4.a(C7520h10.f48413b, c46.d(), C23, tj2, this.f52646a, c7215fB.j());
                c46.d(a15);
                C23 = a15.d();
            } else {
                i11 = i15;
                c10340xw0 = a14;
                c9126qh = a13;
            }
            W5 b10 = wj3.b();
            W5 b11 = tj2.b();
            while (true) {
                W5 w10 = b11.w();
                if (w10 == b10) {
                    break;
                }
                b11 = w10;
            }
            C7201f60 c7201f60 = new C7201f60(c7215fB.f47898e.a(), b10, AbstractC8999pu0.k(), null, C7201f60.a.f47867b);
            eb2.d(new EB(eb2.f39789l == NB.f42527b ? NB.f42528c : NB.f42531f, AbstractC7552hC.a(c7201f60, c10340xw0)));
            C10340xw0 d12 = wj4.d();
            AbstractC7552hC a16 = AbstractC7552hC.a(C23, c7201f60);
            Z4 e10 = (g10 == null || g10.isInterface()) ? null : ((C11245i) this.f52646a.f()).e(g10, this.f54851n);
            wj4.d((e10 == null || e10.d().isInterface()) ? new TJ(this.f54851n, d12, a16) : new C8405mK(e10.q().getReference(), d12, a16));
            AbstractC10561zE Y02 = wj4.Y0();
            if (Y02.G1()) {
                W5 b12 = Y02.b();
                b12.getClass();
                LinkedList<W5> linkedList = c7215fB.f47897d;
                boolean z11 = W5.f45287q;
                if (!z11 && !linkedList.contains(b12)) {
                    throw new AssertionError();
                }
                if (!z11 && Y02.f54317b != b12) {
                    throw new AssertionError();
                }
                i12 = 1;
                linkedList.add(linkedList.indexOf(b12) + 1, b12.a(c7215fB.f47899f.a(), true, Y02));
            } else {
                i12 = 1;
            }
            C9126qh a17 = c7215fB.a(i12, (C4515j0) null);
            a17.b(wj4.getPosition());
            Y02.b().l().a(a17, Y02);
            C6855d2 c6855d2 = new C6855d2(T10.f44369e, c7215fB.a(AbstractC8999pu0.k(), (C4515j0) null), c7201f60, a17.d());
            c6855d2.b(wj4.getPosition());
            Y02.b().l().a(c6855d2, Y02);
            if (c47 != null) {
                c47.f54317b.l().c(c47);
            }
            wj3.f54317b.l().c(wj3);
            Iterator<W5> it2 = b10.u().iterator();
            while (it2.hasNext()) {
                if (it2.next() == b11) {
                    c7201f60.g(c9126qh.d());
                } else {
                    c7201f60.g(c6855d2.d());
                }
            }
            arrayList2 = arrayList;
            size = i10;
            i14 = i11;
            i13 = 0;
        }
        c7215fB.x();
        return InterfaceC10118we.f53548b;
    }

    public static boolean a(Z1 z12, C4516j1 c4516j1) {
        return z12.f37011c.a(c4516j1) || z12.f37010b.a(c4516j1) || z12.f37009a.a(c4516j1);
    }

    @Override
    public final String a() {
        return "ListIterationRewriter";
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return c7215fB.f47902i.a(25);
    }

    public static C10699b0 a(WJ wj2) {
        AbstractC10561zE Y02 = wj2.Y0();
        C4 c42 = null;
        while (Y02 != null) {
            if (Y02.G1()) {
                Y02 = Y02.U().v2().f45293f.a();
            } else {
                if (Y02 instanceof C4) {
                    if (c42 != null) {
                        return null;
                    }
                    c42 = Y02.B();
                } else if (!Y02.w1()) {
                    return new C10699b0(Y02, c42);
                }
                Y02 = Y02.Y0();
            }
        }
        return null;
    }

    public static boolean a(C4798y c4798y, final Z1 z12, M2 m22) {
        com.android.tools.r8.graph.E0 a10 = c4798y.f().e(m22) ? c4798y.a(m22) : null;
        return a10 != null && a10.e0() && a10.b0().b(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10701c0.a(com.android.tools.r8.graph.Z1.this, (C4516j1) obj);
            }
        });
    }
}
