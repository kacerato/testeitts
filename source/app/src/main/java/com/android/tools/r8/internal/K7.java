package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.PriorityQueue;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class K7 extends AbstractC9617te {

    public static final boolean f41578e = true;

    public K7(C4798y c4798y) {
        super(c4798y);
    }

    public static void a(C7215fB c7215fB, W5 w52, C9569tI c9569tI) {
        EB eb2;
        int i10 = c9569tI.f46640m;
        int i11 = c9569tI.f46639l[0];
        if (i10 < i11) {
            w52.a(i10, i11);
        }
        int i12 = c9569tI.f52578o[0];
        if (i12 == 0) {
            eb2 = new EB(NB.f42527b, (C10340xw0) c9569tI.f54321f.get(0));
        } else {
            C9126qh a10 = c7215fB.a(i12, (C4515j0) null);
            a10.b(c9569tI.getPosition());
            Y5 y52 = new Y5(w52, c9569tI);
            y52.add(a10);
            AbstractC10561zE next = y52.next();
            if (!f41578e && next != c9569tI) {
                throw new AssertionError();
            }
            eb2 = new EB(NB.f42527b, AbstractC7552hC.a((C10340xw0) c9569tI.f54321f.get(0), a10.d()));
        }
        w52.i().d(eb2);
    }

    @Override
    public final InterfaceC10118we b() {
        return F7.f40109h;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x055a, code lost:
    
        if (r8.a(r24, r11, r0) != false) goto L207;
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x02dd, code lost:
    
        if (r6 > 0) goto L144;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:231:0x0516. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:51:0x00ef. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:153:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x0553  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x010d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final F7 c(C7215fB c7215fB) {
        boolean z10;
        X5 x52;
        Iterator<W5> it;
        EB V10;
        boolean z11;
        K7 k72;
        int i10;
        int i11;
        NB nb2;
        X5 x53;
        Iterator<W5> it2;
        int i12;
        int i13;
        K7 k73 = this;
        X5 x54 = new X5(k73.f52646a, c7215fB);
        Iterator<W5> it3 = c7215fB.f47897d.iterator();
        int i14 = 0;
        boolean z12 = false;
        while (it3.hasNext()) {
            W5 next = it3.next();
            if ((next.q() == 0 || !next.u().isEmpty()) && next.i().H1()) {
                EB V11 = next.i().V();
                W5 v22 = V11.v2();
                W5 u22 = V11.u2();
                boolean z13 = f41578e;
                if (!z13 && v22 == u22) {
                    throw new AssertionError();
                }
                if (u22.F() && !v22.F()) {
                    next.a((AbstractC9408sL) new EB(V11.f39789l.b(), V11.f54321f));
                    boolean z14 = W5.f45287q;
                    if (!z14 && v22 == u22) {
                        throw new AssertionError();
                    }
                    int indexOf = next.f45289b.indexOf(v22);
                    int indexOf2 = next.f45289b.indexOf(u22);
                    if (!z14 && (indexOf < 0 || indexOf2 < 0)) {
                        throw new AssertionError();
                    }
                    next.a(indexOf, indexOf2);
                }
                EB V12 = next.i().V();
                if (!V12.x2()) {
                    C10340xw0 c10340xw0 = (C10340xw0) V12.f54321f.get(i14);
                    C10340xw0 y22 = V12.y2();
                    if (c10340xw0.K() || y22.K()) {
                        if (c10340xw0.K()) {
                            if (c10340xw0.n().J().A2()) {
                                NB nb3 = V12.f39789l;
                                nb3.getClass();
                                switch (MB.f42237a[nb3.ordinal()]) {
                                    case 1:
                                    case 2:
                                        EB eb2 = new EB(nb3, y22);
                                        next.a((AbstractC9408sL) eb2);
                                        if (!z13 && next.i() != eb2) {
                                            throw new AssertionError();
                                        }
                                        z12 = true;
                                        break;
                                    case 3:
                                        nb3 = NB.f42530e;
                                        EB eb22 = new EB(nb3, y22);
                                        next.a((AbstractC9408sL) eb22);
                                        if (!z13) {
                                            throw new AssertionError();
                                        }
                                        z12 = true;
                                        break;
                                    case 4:
                                        nb3 = NB.f42531f;
                                        EB eb222 = new EB(nb3, y22);
                                        next.a((AbstractC9408sL) eb222);
                                        if (!z13) {
                                        }
                                        z12 = true;
                                        break;
                                    case 5:
                                        nb3 = NB.f42528c;
                                        EB eb2222 = new EB(nb3, y22);
                                        next.a((AbstractC9408sL) eb2222);
                                        if (!z13) {
                                        }
                                        z12 = true;
                                        break;
                                    case 6:
                                        nb3 = NB.f42529d;
                                        EB eb22222 = new EB(nb3, y22);
                                        next.a((AbstractC9408sL) eb22222);
                                        if (!z13) {
                                        }
                                        z12 = true;
                                        break;
                                    default:
                                        throw new C5417Jv0("Unknown if condition type.");
                                }
                            }
                        } else if (y22.n().J().A2()) {
                            EB eb3 = new EB(V12.f39789l, c10340xw0);
                            next.a((AbstractC9408sL) eb3);
                            if (!z13 && next.i() != eb3) {
                                throw new AssertionError();
                            }
                            z12 = true;
                        }
                    }
                }
                if (k73.b(next)) {
                    z12 = true;
                }
                EB V13 = next.i().V();
                C10340xw0 c10340xw02 = (C10340xw0) V13.f54321f.get(i14);
                if (V13.x2() && c10340xw02.a((Set) null)) {
                    W5 v23 = V13.v2();
                    W5 u23 = V13.u2();
                    if (a(v23) && a(u23) && v23.v().get(i14) == u23.v().get(i14)) {
                        W5 w52 = v23.v().get(i14);
                        if (w52.u().size() == 2) {
                            int indexOf3 = w52.u().indexOf(v23);
                            int i15 = indexOf3 == 0 ? 1 : i14;
                            int i16 = i14;
                            for (C7201f60 c7201f60 : w52.s()) {
                                C10340xw0 c10340xw03 = (C10340xw0) c7201f60.f47863q.get(indexOf3);
                                boolean z15 = z12;
                                C10340xw0 c10340xw04 = (C10340xw0) c7201f60.f47863q.get(i15);
                                if (c10340xw03.K() && c10340xw04.K()) {
                                    C9126qh J10 = c10340xw03.n().J();
                                    C9126qh J11 = c10340xw04.n().J();
                                    it2 = it3;
                                    NB nb4 = V13.f39789l;
                                    i12 = indexOf3;
                                    NB nb5 = NB.f42527b;
                                    if (nb4 == nb5 && J10.z2() && J11.y2()) {
                                        i13 = i15;
                                    } else {
                                        NB nb6 = V13.f39789l;
                                        i13 = i15;
                                        NB nb7 = NB.f42532g;
                                        if (nb6 != nb7 || !J10.y2() || !J11.z2()) {
                                            if ((V13.f39789l == nb7 && J10.z2() && J11.y2()) || (V13.f39789l == nb5 && J10.y2() && J11.z2())) {
                                                C10340xw0 a10 = c7215fB.a(c7201f60.u(), c7201f60.s());
                                                if (!J10.y2()) {
                                                    J10 = J11;
                                                }
                                                W5 w53 = c7201f60.f47862p;
                                                B60 t10 = w53.t();
                                                CE l10 = w53.l();
                                                AbstractC10561zE a11 = l10.a();
                                                x53 = x54;
                                                if (J10.b() == v23 || J10.b() == u23) {
                                                    J10 = C9126qh.a(c7215fB.a(J10.a(), J10.q()), J10);
                                                    J10.b(t10);
                                                    l10.a(J10, a11);
                                                }
                                                c7201f60.f(a10);
                                                C7343fy0 c7343fy0 = new C7343fy0(T10.f44369e, a10, c10340xw02, J10.d());
                                                c7343fy0.x2();
                                                c7343fy0.b(t10);
                                                l10.a(c7343fy0, a11);
                                                i16++;
                                            } else {
                                                x53 = x54;
                                            }
                                        }
                                    }
                                    c7201f60.f(c10340xw02);
                                    i16++;
                                    z12 = z15;
                                    it3 = it2;
                                    indexOf3 = i12;
                                    i15 = i13;
                                } else {
                                    x53 = x54;
                                    it2 = it3;
                                    i12 = indexOf3;
                                    i13 = i15;
                                }
                                z12 = z15;
                                it3 = it2;
                                indexOf3 = i12;
                                i15 = i13;
                                x54 = x53;
                            }
                            z10 = z12;
                            x52 = x54;
                            it = it3;
                            if (i16 == w52.s().size()) {
                                a(next, V13, v23, u23);
                            }
                            if (next.i().H1()) {
                                z10 = true;
                                V10 = next.i().V();
                                if (V10.x2()) {
                                    z11 = true;
                                    k72 = this;
                                } else {
                                    C10340xw0 c10340xw05 = (C10340xw0) V10.f54321f.get(0);
                                    C10340xw0 i17 = c10340xw05.i();
                                    if (i17.K()) {
                                        C9126qh J12 = i17.n().J();
                                        boolean z16 = EB.f39788m;
                                        if (!z16 && !V10.x2()) {
                                            throw new AssertionError();
                                        }
                                        if (!z16 && !EB.a(J12.a(), V10.f39789l)) {
                                            throw new AssertionError();
                                        }
                                        W5 b10 = V10.b(Long.signum(J12.w2()));
                                        a(next, V10, b10, b10 == V10.v2() ? V10.u2() : V10.v2());
                                        z11 = true;
                                        i14 = 0;
                                        k72 = this;
                                    } else {
                                        if (V10.x2() && ((C10340xw0) V10.f54321f.get(0)).u().y()) {
                                            if (!f41578e && (nb2 = V10.f39789l) != NB.f42527b && nb2 != NB.f42532g) {
                                                throw new AssertionError();
                                            }
                                            k72 = this;
                                            if (c10340xw05.c(k72.f52646a)) {
                                                boolean z17 = EB.f39788m;
                                                if (!z17 && !V10.x2()) {
                                                    throw new AssertionError();
                                                }
                                                if (z17) {
                                                    i11 = 0;
                                                } else {
                                                    i11 = 0;
                                                    if (!((C10340xw0) V10.f54321f.get(0)).Y().a()) {
                                                        throw new AssertionError();
                                                    }
                                                }
                                                W5 b11 = V10.b(i11);
                                                a(next, V10, b11, b11 == V10.v2() ? V10.u2() : V10.v2());
                                            } else if (c10340xw05.O()) {
                                                W5 z22 = V10.z2();
                                                a(next, V10, z22, z22 == V10.v2() ? V10.u2() : V10.v2());
                                            }
                                            z11 = true;
                                            i14 = 0;
                                        } else {
                                            k72 = this;
                                        }
                                        NB nb8 = V10.f39789l;
                                        if (nb8 == NB.f42527b || nb8 == NB.f42532g) {
                                            F1 a12 = c10340xw05.a(k72.f52646a, c7215fB.j(), M1.f42128a);
                                            if (!a12.Y() || a12.G().a(0)) {
                                                z11 = true;
                                                if (!i17.j()) {
                                                    AbstractC10561zE r10 = i17.r();
                                                    r10.getClass();
                                                    if (r10 instanceof C7343fy0) {
                                                        C7343fy0 T02 = i17.r().T0();
                                                        C10340xw0 c10340xw06 = null;
                                                        if (((C10340xw0) T02.f54321f.get(0)).a((Set) null) && T02.y2().a((Set) null)) {
                                                            C10340xw0 c10340xw07 = (C10340xw0) T02.f54321f.get(0);
                                                            if (c10340xw07.M() && c10340xw07.n().w1() && c10340xw07.n().J().w2() == 1) {
                                                                c10340xw06 = T02.y2();
                                                            } else {
                                                                C10340xw0 y23 = T02.y2();
                                                                if (y23.M() && y23.n().w1() && y23.n().J().w2() == 1) {
                                                                    c10340xw06 = (C10340xw0) T02.f54321f.get(0);
                                                                }
                                                            }
                                                        }
                                                        if (c10340xw06 != null) {
                                                            next.a((AbstractC9408sL) new EB(V10.f39789l.b(), c10340xw06));
                                                        }
                                                    }
                                                }
                                            } else {
                                                z11 = true;
                                                W5 b12 = V10.b(1);
                                                a(next, V10, b12, b12 == V10.v2() ? V10.u2() : V10.v2());
                                            }
                                            i14 = 0;
                                        } else {
                                            z11 = true;
                                        }
                                        if (c10340xw05.G()) {
                                            C8091kU v10 = c10340xw05.v();
                                            if (v10.f49646a <= 0 && 0 <= v10.f49647b) {
                                                switch (E7.f39759a[V10.f39789l.ordinal()]) {
                                                    case 1:
                                                    case 2:
                                                        i10 = 0;
                                                        if (v10.b() == 0) {
                                                            a(next, V10, 0);
                                                            i14 = i10;
                                                            break;
                                                        }
                                                        break;
                                                    case 3:
                                                    case 4:
                                                        if (v10.a() == 0) {
                                                            i10 = 0;
                                                            a(next, V10, 0);
                                                            i14 = i10;
                                                            break;
                                                        }
                                                        break;
                                                    case 5:
                                                    case 6:
                                                        if (!f41578e && v10.c()) {
                                                            throw new AssertionError();
                                                        }
                                                        break;
                                                }
                                            } else {
                                                a(next, V10, Long.signum(v10.b()));
                                                i14 = 0;
                                            }
                                        }
                                        i14 = 0;
                                        if (x52.a((C10340xw0) V10.f54321f.get(0), V10.getPosition(), V10.v2().H(), V10.u2().H(), null)) {
                                            W5 u24 = V10.u2();
                                            a(next, V10, u24, u24 == V10.v2() ? V10.u2() : V10.v2());
                                        } else {
                                            k73 = k72;
                                            z12 = z10;
                                        }
                                    }
                                    k73 = k72;
                                    z12 = z11;
                                }
                            } else {
                                z12 = true;
                                i14 = 0;
                                k73 = this;
                            }
                        }
                    }
                }
                z10 = z12;
                x52 = x54;
                it = it3;
                V10 = next.i().V();
                if (V10.x2()) {
                }
            } else {
                x52 = x54;
                it = it3;
                k73 = k73;
            }
            it3 = it;
            x54 = x52;
        }
        K7 k74 = k73;
        C10696a c10696a = new C10696a();
        c7215fB.a(c10696a, C6628bi.b());
        c10696a.a(k74.f52646a, c7215fB, C6628bi.b());
        c7215fB.x();
        if (c10696a.f54829b.isEmpty()) {
            return z12 ? F7.f40108g : F7.f40109h;
        }
        if (F7.f40110i || z12) {
            return F7.f40107f;
        }
        throw new AssertionError();
    }

    public final boolean b(W5 w52) {
        EB V10 = w52.i().V();
        if (V10.x2()) {
            NB nb2 = V10.f39789l;
            nb2.getClass();
            if (nb2 == NB.f42527b || nb2 == NB.f42532g) {
                C10340xw0 c10340xw0 = (C10340xw0) V10.f54321f.get(0);
                if (c10340xw0.d(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return ((AbstractC10561zE) obj).R1();
                    }
                })) {
                    C7405gK i02 = c10340xw0.r().i0();
                    com.android.tools.r8.graph.A2 B22 = i02.B2();
                    if (B22.a(this.f52647b.f37852E4.f37352d)) {
                        w52.a((AbstractC9408sL) new EB(V10.f39789l.b(), i02.b(0)));
                        return true;
                    }
                    if (B22.a(this.f52647b.f37852E4.f37353e)) {
                        w52.a((AbstractC9408sL) new EB(V10.f39789l, i02.b(0)));
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean a(C7215fB c7215fB, W5 w52, EB eb2) {
        NB nb2;
        C10340xw0 c10340xw0 = (C10340xw0) eb2.f54321f.get(0);
        C10340xw0 i10 = c10340xw0.i();
        C10340xw0 y22 = eb2.y2();
        C10340xw0 i11 = y22.i();
        if (i10 == i11) {
            W5 b10 = eb2.b(0);
            a(w52, eb2, b10, b10 == eb2.v2() ? eb2.u2() : eb2.v2());
            return true;
        }
        if (i10.d(new C8740oK0()) && i11.d(new C8740oK0())) {
            if (!f41578e && (nb2 = eb2.f39789l) != NB.f42527b && nb2 != NB.f42532g) {
                throw new AssertionError();
            }
            W5 b11 = eb2.b(1);
            a(w52, eb2, b11, b11 == eb2.v2() ? eb2.u2() : eb2.v2());
            return true;
        }
        if (i10.K() && i11.K()) {
            W5 a10 = eb2.a(i10.n().J(), i11.n().J());
            a(w52, eb2, a10, a10 == eb2.v2() ? eb2.u2() : eb2.v2());
            return true;
        }
        NB nb3 = eb2.f39789l;
        NB nb4 = NB.f42527b;
        if (nb3 == nb4 || nb3 == NB.f42532g) {
            C4798y c4798y = this.f52646a;
            com.android.tools.r8.graph.H5 j10 = c7215fB.j();
            L1 l12 = M1.f42128a;
            F1 a11 = c10340xw0.a(c4798y, j10, l12);
            F1 a12 = y22.a(this.f52646a, c7215fB.j(), l12);
            if (a11.Y() && a12.Y() && !a11.G().a(a12.G())) {
                a(w52, eb2, 1);
                return true;
            }
        }
        if (c10340xw0.G() && y22.G()) {
            C8091kU v10 = c10340xw0.v();
            C8091kU v11 = y22.v();
            v10.getClass();
            if (v11.f49647b >= v10.f49646a && v10.f49647b >= v11.f49646a) {
                int i12 = E7.f39759a[eb2.f39789l.ordinal()];
                if (i12 == 1 || i12 == 2) {
                    if (v10.b() == v11.a()) {
                        a(w52, eb2, 0);
                        return true;
                    }
                } else if ((i12 == 3 || i12 == 4) && v10.a() == v11.b()) {
                    a(w52, eb2, 0);
                    return true;
                }
            } else {
                a(w52, eb2, Long.signum(v10.b() - v11.b()));
                return true;
            }
        }
        NB nb5 = eb2.f39789l;
        if (nb5 == nb4 || nb5 == NB.f42532g) {
            com.android.tools.r8.graph.H5 j11 = c7215fB.j();
            C4798y c4798y2 = this.f52646a;
            L1 l13 = M1.f42128a;
            F1 a13 = c10340xw0.a(c4798y2, j11, l13);
            a13.getClass();
            if (a13 instanceof C4877Am0) {
                F1 a14 = y22.a(this.f52646a, j11, l13);
                a14.getClass();
                if (!(a14 instanceof C4877Am0)) {
                    return false;
                }
                a(w52, eb2, C8704o7.a(a13.K().f38716c != a14.K().f38716c));
                return true;
            }
            if (a13.f0()) {
                F1 a15 = y22.a(this.f52646a, j11, l13);
                if (a15.f0()) {
                    AbstractC5167Fm0 N10 = a13.N();
                    AbstractC5167Fm0 N11 = a15.N();
                    C4554l1 c4554l1 = N10.f40306c;
                    if (c4554l1 == N11.f40306c) {
                        a(w52, eb2, 0);
                        return true;
                    }
                    C4798y c4798y3 = this.f52646a;
                    c4798y3.getClass();
                    C4460g1 b12 = N10.f40306c.b(c4798y3.g(c4554l1.f38297f));
                    if (b12 != null && b12.N0()) {
                        C4798y c4798y4 = this.f52646a;
                        C4554l1 c4554l12 = N11.f40306c;
                        c4798y4.getClass();
                        C4460g1 b13 = N11.f40306c.b(c4798y4.g(c4554l12.f38297f));
                        if (b13 != null && b13.N0()) {
                            a(w52, eb2, 1);
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x013b  */
    /* JADX WARN: Type inference failed for: r5v14, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v35 */
    /* JADX WARN: Type inference failed for: r5v41 */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final InterfaceC10118we b(C7215fB c7215fB, AbstractC6931dX abstractC6931dX, C5035Df c5035Df) {
        boolean z10;
        F7 f72;
        F7 f73;
        C10696a c10696a;
        boolean z11;
        C6901dI c6901dI;
        boolean z12;
        int i10;
        F1 f12;
        X5 x52;
        C8570nJ c8570nJ = this.f52648c;
        boolean z13 = false;
        if (c8570nJ.f50657Z && !c8570nJ.f50690i1) {
            if (!c7215fB.f47902i.e()) {
                f72 = F7.f40109h;
                z10 = false;
            } else {
                Z5 u10 = c7215fB.u();
                boolean z14 = false;
                boolean z15 = false;
                while (u10.hasNext()) {
                    W5 next = u10.next();
                    if (next.i().l2()) {
                        AbstractC6489ar0 Q02 = next.i().Q0();
                        if (this.f52648c.f50599F1.f50856Z) {
                            W5 u22 = Q02.u2();
                            C6822cr0 c6822cr0 = new C6822cr0(Q02);
                            X5 x53 = new X5(this.f52646a, c7215fB);
                            F1 a10 = ((C10340xw0) Q02.f54321f.get(z13 ? 1 : 0)).a(this.f52646a, c7215fB.j(), M1.f42128a);
                            int i11 = z13 ? 1 : 0;
                            int i12 = i11;
                            ?? r52 = z13;
                            while (true) {
                                if (i11 >= Q02.v2()) {
                                    break;
                                }
                                W5 b10 = Q02.b(i11);
                                if (AbstractC6656br0.a(Q02, i11)) {
                                    if (!C6822cr0.f47186h && c6822cr0.f47189c >= 0) {
                                        throw new AssertionError();
                                    }
                                    c6822cr0.f47189c = i11;
                                    c6822cr0.f47190d = c6822cr0.f47188b.b(i11);
                                    c6822cr0.f47191e = r52;
                                } else {
                                    if (AbstractC6656br0.a(Q02, a10, i11)) {
                                        if (c6822cr0.f47193g == null) {
                                            c6822cr0.f47193g = new C6901dI(16);
                                        }
                                        c6822cr0.f47193g.add(i11);
                                        i10 = i11;
                                        f12 = a10;
                                        x52 = x53;
                                    } else {
                                        i10 = i11;
                                        f12 = a10;
                                        x52 = x53;
                                        if (x53.a((C10340xw0) Q02.f54321f.get(r52), Q02.getPosition(), b10.H(), u22.H(), null)) {
                                            if (c6822cr0.f47193g == null) {
                                                c6822cr0.f47193g = new C6901dI(16);
                                            }
                                            c6822cr0.f47193g.add(i10);
                                            i12 = 1;
                                        }
                                    }
                                    i11 = i10 + 1;
                                    x53 = x52;
                                    a10 = f12;
                                    r52 = 0;
                                }
                            }
                            F1 f13 = a10;
                            if (c6822cr0.f47191e && i12 == 0) {
                                if (Q02.M1()) {
                                    C9569tI Z10 = Q02.Z();
                                    if (f13.Y()) {
                                        z12 = f13.G().a(Z10.x2()).d();
                                        if (z12) {
                                            if (!C6822cr0.f47186h) {
                                                if (c6822cr0.f47189c >= 0) {
                                                    throw new AssertionError();
                                                }
                                            }
                                            z11 = false;
                                            c6822cr0.f47191e = false;
                                            c6822cr0.b();
                                            if (C6822cr0.f47186h && (c6901dI = c6822cr0.f47193g) != null && c6901dI.isEmpty()) {
                                                throw new AssertionError();
                                            }
                                            z15 |= (c6822cr0.f47193g == null || c6822cr0.f47189c >= 0 || !c6822cr0.f47191e) ? true : z11;
                                            if (c6822cr0.f47192f) {
                                                z14 = true;
                                            }
                                            if (!next.i().G1()) {
                                                if (!f41578e && !next.i().l2()) {
                                                    throw new AssertionError();
                                                }
                                                Q02 = next.i().Q0();
                                            }
                                            z13 = z11;
                                        }
                                    }
                                } else if (!AbstractC6656br0.f46875a && !Q02.k2()) {
                                    throw new AssertionError();
                                }
                                z12 = false;
                                if (z12) {
                                }
                            }
                            z11 = false;
                            c6822cr0.b();
                            if (C6822cr0.f47186h) {
                            }
                            z15 |= (c6822cr0.f47193g == null || c6822cr0.f47189c >= 0 || !c6822cr0.f47191e) ? true : z11;
                            if (c6822cr0.f47192f) {
                            }
                            if (!next.i().G1()) {
                            }
                            z13 = z11;
                        } else {
                            z11 = z13 ? 1 : 0;
                        }
                        if (Q02.M1()) {
                            z15 |= a(c7215fB, u10, next, Q02.Z());
                        }
                        z13 = z11;
                    }
                }
                z10 = z13 ? 1 : 0;
                c7215fB.z();
                if (z14) {
                    c10696a = new C10696a();
                    c7215fB.a(c10696a, C6628bi.b());
                } else {
                    c10696a = C10696a.f54828c;
                }
                C4798y c4798y = this.f52646a;
                c10696a.getClass();
                c10696a.a(c4798y, c7215fB, C6628bi.b());
                c7215fB.x();
                if (!c10696a.f54829b.isEmpty()) {
                    if (!F7.f40110i && !z15) {
                        throw new AssertionError();
                    }
                    f72 = F7.f40107f;
                } else {
                    f72 = z15 ? F7.f40108g : F7.f40109h;
                }
            }
        } else {
            z10 = false;
            f72 = F7.f40109h;
        }
        F7 c10 = c(c7215fB);
        boolean z16 = (f72.f40111d || c10.f40111d) ? true : z10;
        if (f72.f40112e || c10.f40112e) {
            z10 = true;
        }
        if (z16) {
            if (!F7.f40110i && !z10) {
                throw new AssertionError();
            }
            f73 = F7.f40107f;
        } else {
            f73 = z10 ? F7.f40108g : F7.f40109h;
        }
        if (f73.f40111d) {
            new C7827it0(this.f52646a).a(c7215fB, abstractC6931dX, c5035Df, C8659ns0.c());
        }
        return f73;
    }

    @Override
    public final String a() {
        return "BranchSimplifier";
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return c7215fB.f47902i.a(25) || c7215fB.f47902i.e();
    }

    public static void a(W5 w52, EB eb2, int i10) {
        W5 b10 = eb2.b(i10);
        a(w52, eb2, b10, b10 == eb2.v2() ? eb2.u2() : eb2.v2());
    }

    public static boolean a(W5 w52) {
        if (w52.G()) {
            return true;
        }
        int size = w52.l().size();
        if (w52.i().G1() && (size == 2 || size == 3)) {
            AbstractC10561zE b12 = w52.l().b().b1();
            if (!b12.w1() || (!b12.J().y2() && !b12.J().z2())) {
                return false;
            }
            if (size == 2) {
                return true;
            }
            AbstractC10561zE a10 = w52.l().a();
            a10.getClass();
            if (a10 instanceof C7631hj) {
                if (!f41578e && w52.u().size() != 1) {
                    throw new AssertionError();
                }
                W5 w53 = w52.u().get(0);
                AbstractC9408sL i10 = w53.i();
                CE ce2 = w53.f45293f;
                ce2.getClass();
                Y5 y52 = new Y5(ce2.f39166b, i10);
                AbstractC10561zE abstractC10561zE = null;
                while (y52.hasPrevious()) {
                    abstractC10561zE = y52.previous();
                    if (abstractC10561zE instanceof C7631hj) {
                        break;
                    }
                }
                if (abstractC10561zE != null && abstractC10561zE.getPosition() == a10.getPosition()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void a(W5 w52, EB eb2, W5 w53, W5 w54) {
        w54.T();
        boolean z10 = f41578e;
        if (!z10 && eb2 != w52.i()) {
            throw new AssertionError();
        }
        w52.a((AbstractC9408sL) new C4960Bz());
        if (!z10 && !w52.i().G1()) {
            throw new AssertionError();
        }
        if (!z10 && R5.a(w52) != w53) {
            throw new AssertionError();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:140:0x02bb, code lost:
    
        r33 = r12;
     */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(C7215fB c7215fB, Z5 z52, W5 w52, C9569tI c9569tI) {
        EnumC9738uJ enumC9738uJ;
        int i10;
        EnumC9738uJ enumC9738uJ2;
        EnumC9738uJ enumC9738uJ3;
        int i11;
        int i12;
        CH ch2;
        int i13;
        int i14;
        EnumC9738uJ enumC9738uJ4;
        long j10;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19 = 1;
        if (c9569tI.v2() == 1) {
            a(c7215fB, w52, c9569tI);
            return true;
        }
        final EnumC9738uJ w10 = this.f52648c.w();
        int[] x22 = c9569tI.x2();
        PriorityQueue priorityQueue = new PriorityQueue(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int compare;
                I7 i72 = (I7) obj2;
                compare = Long.compare(i72.a(r0), ((I7) obj).a(EnumC9738uJ.this));
                return compare;
            }
        });
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        int i20 = x22[0];
        CH ch3 = new CH(16);
        ch3.add(i20);
        int i21 = 1;
        I7 i72 = null;
        while (i21 < x22.length) {
            int i22 = x22[i21];
            int i23 = i21;
            int[] iArr = x22;
            if (i22 - i20 > 1) {
                I7 i73 = new I7(ch3);
                I7 a10 = a(arrayList, i72, i73);
                if (a10 != i73 && hashSet.contains(i72)) {
                    hashSet.remove(i72);
                    priorityQueue.remove(i72);
                }
                a(hashSet, priorityQueue, a10);
                ch3 = new CH(16);
                i72 = a10;
            }
            ch3.add(i22);
            i21 = i23 + 1;
            i19 = 1;
            i20 = i22;
            x22 = iArr;
        }
        TH[] thArr = new TH[i19];
        thArr[0] = ch3;
        I7 i74 = new I7(thArr);
        I7 a11 = a(arrayList, i72, i74);
        if (a11 != i74 && hashSet.contains(i72)) {
            hashSet.remove(i72);
            priorityQueue.remove(i72);
        }
        a(hashSet, priorityQueue, a11);
        if (hashSet.size() == 10 && 10 < arrayList.size()) {
            hashSet.remove(priorityQueue.poll());
        }
        ArrayList arrayList2 = new ArrayList(10);
        I7 i75 = null;
        for (int i24 = 0; i24 < arrayList.size(); i24++) {
            I7 i76 = (I7) arrayList.get(i24);
            if (hashSet.contains(i76)) {
                arrayList2.add(i76);
            } else if (i75 == null) {
                arrayList2.add(i76);
                i75 = i76;
            } else {
                if (!I7.f40979b) {
                    CH ch4 = i75.f40980a;
                    if (ch4.c(ch4.f39177c - 1) >= i76.f40980a.c(0)) {
                        throw new AssertionError();
                    }
                }
                CH ch5 = i75.f40980a;
                ch5.a(ch5.size(), i76.f40980a);
            }
        }
        CH ch6 = new CH(16);
        if (this.f52648c.f50599F1.f50880h0) {
            HashSet hashSet2 = new HashSet();
            EnumC9738uJ w11 = this.f52648c.w();
            int size = arrayList2.size();
            int i25 = 0;
            int i26 = 0;
            while (i26 < size) {
                Object obj = arrayList2.get(i26);
                i26++;
                I7 i77 = (I7) obj;
                long a12 = C9569tI.a(w11, i77.f40980a.a((int[]) null));
                int a13 = a(((C10340xw0) c9569tI.f54321f.get(0)).Y(), i77.f40980a);
                if (i77.f40980a.f39177c <= 10) {
                    enumC9738uJ2 = w10;
                    i11 = size;
                    enumC9738uJ3 = w11;
                    if (a13 < a12 - (this.f52648c.w().a() ? 3 : 1)) {
                        i25 += a13;
                        hashSet2.add(i77);
                        ch6.a(ch6.size(), i77.f40980a);
                        w10 = enumC9738uJ2;
                        size = i11;
                        w11 = enumC9738uJ3;
                    }
                } else {
                    enumC9738uJ2 = w10;
                    enumC9738uJ3 = w11;
                    i11 = size;
                }
                CH ch7 = i77.f40980a;
                long j11 = Long.MAX_VALUE;
                int i27 = -1;
                int i28 = 0;
                while (i28 < ch7.f39177c) {
                    int i29 = i25;
                    long abs = Math.abs(ch7.c(i28));
                    if (abs < j11) {
                        i27 = i28;
                        j11 = abs;
                    }
                    i28++;
                    i25 = i29;
                }
                int i30 = i25;
                CH ch8 = new CH(16);
                ch8.add(ch7.c(i27));
                long a14 = a12 - a(((C10340xw0) c9569tI.f54321f.get(0)).Y(), ch8);
                long j12 = ch7.f39177c - ch8.f39177c;
                long j13 = enumC9738uJ3.a() ? j12 * 8 : (j12 * 4) + 2;
                if (enumC9738uJ3.a()) {
                    i12 = i26;
                    ch2 = ch6;
                    i13 = 12;
                } else {
                    i12 = i26;
                    ch2 = ch6;
                    i13 = 3;
                }
                long j14 = a14 - (j13 + i13);
                int i31 = i27 - 1;
                int i32 = i27 + 1;
                long j15 = 0;
                while (true) {
                    i14 = ch8.f39177c;
                    enumC9738uJ4 = enumC9738uJ2;
                    if (i14 >= 10 || j14 <= j15) {
                        break;
                    }
                    if (i31 < 0 || i32 >= ch7.f39177c) {
                        j10 = j14;
                        if (i31 >= 0) {
                            i18 = i31 - 1;
                            ch8.add(ch7.c(i31));
                            i31 = i18;
                        } else {
                            if (i32 >= ch7.f39177c) {
                                break;
                            }
                            i17 = i32 + 1;
                            ch8.add(ch7.c(i32));
                            i32 = i17;
                        }
                    } else {
                        j10 = j14;
                        if (Math.abs(ch7.c(i32)) <= Math.abs(ch7.c(i31))) {
                            i17 = i32 + 1;
                            ch8.add(ch7.c(i32));
                            i32 = i17;
                        } else {
                            i18 = i31 - 1;
                            ch8.add(ch7.c(i31));
                            i31 = i18;
                        }
                    }
                    long a15 = a12 - a(((C10340xw0) c9569tI.f54321f.get(0)).Y(), ch8);
                    long j16 = ch7.f39177c - ch8.f39177c;
                    int i33 = i31;
                    j14 = a15 - ((enumC9738uJ3.a() ? j16 * 8 : (j16 * 4) + 2) + (enumC9738uJ3.a() ? 12 : 3));
                    enumC9738uJ2 = enumC9738uJ4;
                    j15 = j10;
                    i31 = i33;
                }
                if (j15 >= j10) {
                    i15 = 1;
                    int c10 = ch8.c(i14 - 1);
                    ch8.i(ch8.f39177c - 1);
                    int i34 = i31 + 1;
                    if (c10 == ch7.c(i34)) {
                        i31 = i34;
                    } else {
                        i16 = -1;
                        i32--;
                        int i35 = i31 + i15;
                        int i36 = i32 + i16;
                        if (ch8.f39177c > 0) {
                            int a16 = a(((C10340xw0) c9569tI.f54321f.get(0)).Y(), ch8);
                            long j17 = ch7.f39177c - ch8.f39177c;
                            if ((enumC9738uJ3.a() ? j17 * 8 : (j17 * 4) + 2) + (enumC9738uJ3.a() ? 12 : 3) + a16 + (this.f52648c.w().a() ? 3 : 1) < a12) {
                                ch7.a(i35, i36);
                                ch6 = ch2;
                                ch6.a(ch2.size(), ch8);
                                i25 = i30 + a16;
                                size = i11;
                                w11 = enumC9738uJ3;
                                i26 = i12;
                                w10 = enumC9738uJ4;
                            }
                        }
                        ch6 = ch2;
                        size = i11;
                        w11 = enumC9738uJ3;
                        i25 = i30;
                        i26 = i12;
                        w10 = enumC9738uJ4;
                    }
                } else {
                    i15 = 1;
                }
                i16 = -1;
                int i352 = i31 + i15;
                int i362 = i32 + i16;
                if (ch8.f39177c > 0) {
                }
                ch6 = ch2;
                size = i11;
                w11 = enumC9738uJ3;
                i25 = i30;
                i26 = i12;
                w10 = enumC9738uJ4;
            }
            enumC9738uJ = w10;
            arrayList2.removeAll(hashSet2);
            i10 = i25;
        } else {
            enumC9738uJ = w10;
            i10 = 0;
        }
        ArrayList arrayList3 = new ArrayList(arrayList2.size());
        int size2 = arrayList2.size();
        int i37 = 0;
        long j18 = 0;
        while (i37 < size2) {
            Object obj2 = arrayList2.get(i37);
            i37++;
            I7 i78 = (I7) obj2;
            j18 += C9569tI.a(enumC9738uJ, i78.f40980a.a((int[]) null));
            arrayList3.add(i78.f40980a);
        }
        if (j18 + i10 + (this.f52648c.w().a() ? 3 : 1) >= C9569tI.a(enumC9738uJ, c9569tI.x2())) {
            return false;
        }
        a(c7215fB, z52, w52, c9569tI, arrayList3, ch6);
        return true;
    }

    public final I7 a(ArrayList arrayList, I7 i72, I7 i73) {
        EnumC9738uJ w10 = this.f52648c.w();
        int i10 = w10.a() ? 4 : 0;
        if (i72 == null) {
            arrayList.add(i73);
            return i73;
        }
        I7 i74 = new I7(i72.f40980a, i73.f40980a);
        long a10 = i74.a(w10);
        if (a10 > 0 && a10 >= (C9569tI.a(w10, i73.f40980a.a((int[]) null)) + C9569tI.a(w10, i72.f40980a.a((int[]) null))) - i10) {
            arrayList.set(arrayList.size() - 1, i74);
            return i74;
        }
        arrayList.add(i73);
        return i73;
    }

    public final void a(HashSet hashSet, PriorityQueue priorityQueue, I7 i72) {
        if (!f41578e && hashSet.contains(i72)) {
            throw new AssertionError();
        }
        long a10 = i72.a(this.f52648c.w());
        if (a10 <= 0) {
            return;
        }
        if (priorityQueue.size() < 10) {
            priorityQueue.add(i72);
            hashSet.add(i72);
        } else if (a10 > ((I7) priorityQueue.peek()).a(this.f52648c.w())) {
            priorityQueue.add(i72);
            hashSet.add(i72);
            hashSet.remove(priorityQueue.poll());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x00c5, code lost:
    
        if ((Sg.b.f23266s & r9) == 0) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00fe, code lost:
    
        if (java.lang.Double.doubleToLongBits(r7) == java.lang.Double.doubleToLongBits(-0.0d)) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x011c, code lost:
    
        if (java.lang.Float.floatToIntBits((float) r9) == java.lang.Float.floatToIntBits(-0.0f)) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0125, code lost:
    
        if (r9 != 1) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x013f, code lost:
    
        if (r9 <= 127) goto L98;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(EnumC5477Kw0 enumC5477Kw0, TH th2) {
        EnumC9738uJ w10 = this.f52648c.w();
        boolean z10 = EB.f39788m;
        int size = th2.size() * (w10.a() ? 3 : 2);
        if (this.f52648c.w().a()) {
            size += th2.size() * 4;
        }
        Iterator<E> it = th2.iterator();
        while (it.hasNext()) {
            int intValue = ((Integer) it.next()).intValue();
            if (intValue != 0) {
                EnumC9738uJ w11 = this.f52648c.w();
                long j10 = intValue;
                boolean z11 = C9126qh.f51850m;
                int i10 = 1;
                if (w11 != EnumC9738uJ.f52835d) {
                    enumC5477Kw0.getClass();
                    if (enumC5477Kw0 == EnumC5477Kw0.f41825c || enumC5477Kw0 == EnumC5477Kw0.f41826d) {
                        if (!z11 && (-2147483648L > j10 || j10 > 2147483647L)) {
                            throw new AssertionError();
                        }
                        if (-8 > j10 || j10 > 7) {
                            if (!P10.a(j10)) {
                            }
                            i10 = 2;
                        }
                        size += i10;
                    } else {
                        if (!z11 && !enumC5477Kw0.b()) {
                            throw new AssertionError();
                        }
                        if (!P10.a(j10) && (281474976710655L & j10) != 0) {
                            if (-2147483648L > j10 || j10 > 2147483647L) {
                                i10 = 5;
                                size += i10;
                            }
                            i10 = 3;
                            size += i10;
                        }
                        i10 = 2;
                        size += i10;
                    }
                } else {
                    int i11 = AbstractC8792oh.f51314a[enumC5477Kw0.ordinal()];
                    if (i11 == 1) {
                        if (-1 > j10 || j10 > 5) {
                            if (-128 <= j10) {
                            }
                            i10 = 3;
                        }
                        size += i10;
                    } else if (i11 == 2) {
                        if (j10 != 0) {
                        }
                        size += i10;
                    } else if (i11 != 3) {
                        if (i11 == 4) {
                            if (j10 == 0 || j10 == 1) {
                                double d10 = j10;
                                boolean z12 = C10546z9.f54293e;
                            }
                            i10 = 3;
                        } else if (i11 != 5) {
                            throw new UnsupportedOperationException("Not a constant number");
                        }
                        size += i10;
                    } else {
                        if (j10 == 0 || j10 == 1 || j10 == 2) {
                            boolean z13 = C10546z9.f54293e;
                        }
                        i10 = 3;
                        size += i10;
                    }
                }
            }
        }
        return size;
    }

    public static void a(C7215fB c7215fB, final Z5 z52, W5 w52, C9569tI c9569tI, List list, CH ch2) {
        EB eb2;
        W5 w53;
        C9569tI c9569tI2 = c9569tI;
        int i10 = 0;
        B60 position = c9569tI.getPosition();
        InterfaceC10068wH w22 = c9569tI.w2();
        W5 u22 = c9569tI.u2();
        W5 a10 = new Y5(w52, c9569tI2).a(c7215fB, z52);
        boolean z10 = f41578e;
        if (!z10 && a10.z()) {
            throw new AssertionError();
        }
        if (!z10 && a10.l().size() != 1) {
            throw new AssertionError();
        }
        if (!z10 && !w52.i().G1()) {
            throw new AssertionError();
        }
        c9569tI2.c(w52.i());
        z52.remove();
        c9569tI.b().f();
        W5 S10 = c9569tI.b().S();
        if (!z10 && c9569tI.b().u().size() != 0) {
            throw new AssertionError();
        }
        if (!z10 && c9569tI.b().v().size() != 0) {
            throw new AssertionError();
        }
        if (!z10 && S10 != w52) {
            throw new AssertionError();
        }
        LinkedList linkedList = new LinkedList();
        int size = list.size() - 1;
        while (size >= 0) {
            J7 j72 = new J7(position);
            j72.f41294c = (C10340xw0) c9569tI2.f54321f.get(i10);
            TH th2 = (TH) list.get(size);
            for (int i11 = i10; i11 < th2.size(); i11++) {
                int c10 = th2.c(i11);
                j72.f41295d.a(c10, (W5) ((DG) w22).get(c10));
            }
            j72.f41296e = u22;
            j72.f40682a = c7215fB.f47899f.a();
            u22 = j72.a(c7215fB.f47902i);
            linkedList.addFirst(u22);
            size--;
            i10 = 0;
        }
        int i12 = ch2.f39177c - 1;
        while (i12 >= 0) {
            int c11 = ch2.c(i12);
            W5 w54 = (W5) ((DG) w22).get(c11);
            C10340xw0 c10340xw0 = (C10340xw0) c9569tI2.f54321f.get(0);
            int a11 = c7215fB.f47899f.a();
            boolean z11 = G7.f40394c;
            if (!z11 && w54 == null) {
                throw new AssertionError();
            }
            if (!z11 && u22 == null) {
                throw new AssertionError();
            }
            if (c11 != 0) {
                C9126qh a12 = c7215fB.a(c11, (C4515j0) null);
                a12.b(position);
                eb2 = new EB(NB.f42527b, AbstractC7552hC.a(c10340xw0, a12.f54320e));
                C8382mB c8382mB = c7215fB.f47902i;
                AbstractC10561zE[] abstractC10561zEArr = {a12};
                W5 w55 = new W5(c8382mB);
                w55.a(abstractC10561zEArr[0], c8382mB);
                w55.a(eb2, c8382mB);
                w55.a((C6382aB) null);
                w55.d(a11);
                w53 = w55;
            } else {
                eb2 = new EB(NB.f42527b, c10340xw0);
                C8382mB c8382mB2 = c7215fB.f47902i;
                w53 = new W5(c8382mB2);
                w53.a(eb2, c8382mB2);
                w53.a((C6382aB) null);
                w53.d(a11);
            }
            eb2.b(position);
            w53.g(w54);
            w53.g(u22);
            linkedList.addFirst(w53);
            i12--;
            c9569tI2 = c9569tI;
            u22 = w53;
        }
        w52.g(u22);
        linkedList.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ListIterator.this.add((W5) obj);
            }
        });
    }
}
