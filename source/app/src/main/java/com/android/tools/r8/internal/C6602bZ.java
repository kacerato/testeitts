package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

public final class C6602bZ extends AbstractC9617te {

    public static final boolean f46788e = true;

    public C6602bZ(C4798y c4798y) {
        super(c4798y);
    }

    @Override
    public final String a() {
        return "NaturalIntLoopRemover";
    }

    /* JADX WARN: Code restructure failed: missing block: B:246:0x0300, code lost:
    
        r9 = r9.a0().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x030c, code lost:
    
        if (r9.hasNext() == false) goto L306;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x031a, code lost:
    
        if (r3.contains(((com.android.tools.r8.internal.C7201f60) r9.next()).f47862p) != false) goto L309;
     */
    /* JADX WARN: Removed duplicated region for block: B:159:0x029b A[LOOP:6: B:157:0x0295->B:159:0x029b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0328  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x02c8  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final InterfaceC10118we b(C7215fB c7215fB) {
        boolean z10;
        Set a10;
        W5 v22;
        W5 u22;
        Set c10;
        Iterator it;
        C10696a c10696a = new C10696a();
        Iterator<W5> it2 = c7215fB.f47897d.iterator();
        int i10 = 0;
        boolean z11 = false;
        while (it2.hasNext()) {
            W5 next = it2.next();
            if (next.i().H1() && !next.i().V().x2()) {
                Y5 it3 = next.l().iterator();
                while (it3.hasNext()) {
                    AbstractC10561zE next2 = it3.next();
                    if (next2.H1()) {
                        EB V10 = next.i().V();
                        C7201f60 l10 = (V10.y2().M() && ((C10340xw0) V10.f54321f.get(i10)).j()) ? ((C10340xw0) V10.f54321f.get(i10)).l() : (((C10340xw0) V10.f54321f.get(i10)).M() && V10.y2().j()) ? V10.y2().l() : null;
                        if (l10 == null || l10.c0().size() != 2 || l10.f47862p != V10.b()) {
                            l10 = null;
                        }
                        if (l10 != null) {
                            int i11 = i10;
                            int i12 = i11;
                            int i13 = i12;
                            W5 w52 = null;
                            W5 w53 = null;
                            while (true) {
                                if (i11 < l10.c0().size()) {
                                    C10340xw0 c10340xw0 = (C10340xw0) l10.f47863q.get(i11);
                                    if (c10340xw0.j()) {
                                        break;
                                    }
                                    W5 w54 = V10.b().u().get(i11);
                                    if (c10340xw0.K()) {
                                        AbstractC8999pu0 u10 = c10340xw0.u();
                                        u10.getClass();
                                        if (!(u10 instanceof C9736uI) || w52 != null) {
                                            break;
                                        }
                                        i13 = c10340xw0.f53886c.J().u2();
                                        w52 = w54;
                                        i11++;
                                        i10 = 0;
                                    } else if (!c10340xw0.f53886c.h1()) {
                                        AbstractC10561zE abstractC10561zE = c10340xw0.f53886c;
                                        abstractC10561zE.getClass();
                                        if (!(abstractC10561zE instanceof C5812Qq0) || w53 != null) {
                                            break;
                                        }
                                        C5812Qq0 P02 = c10340xw0.f53886c.P0();
                                        if (((C10340xw0) P02.f54321f.get(0)) != l10) {
                                            break;
                                        }
                                        C10340xw0 y22 = P02.y2();
                                        if (!y22.K()) {
                                            break;
                                        }
                                        AbstractC8999pu0 u11 = y22.u();
                                        u11.getClass();
                                        if (!(u11 instanceof C9736uI)) {
                                            break;
                                        }
                                        if (!f46788e && i12 != 0) {
                                            throw new AssertionError();
                                        }
                                        int i14 = -y22.f53886c.J().u2();
                                        if (i14 == 0) {
                                            break;
                                        }
                                        i12 = i14;
                                        w53 = w54;
                                        i11++;
                                        i10 = 0;
                                    } else {
                                        if (w53 != null) {
                                            break;
                                        }
                                        ArrayList arrayList = c10340xw0.f53886c.f54321f;
                                        int size = arrayList.size();
                                        int i15 = i10;
                                        int i16 = i15;
                                        while (i15 < size) {
                                            Object obj = arrayList.get(i15);
                                            i15++;
                                            C10340xw0 c10340xw02 = (C10340xw0) obj;
                                            if (c10340xw02.K()) {
                                                AbstractC8999pu0 u12 = c10340xw02.u();
                                                u12.getClass();
                                                if (u12 instanceof C9736uI) {
                                                    int u23 = c10340xw02.f53886c.J().u2();
                                                    if (u23 == 0 || i12 != 0) {
                                                        break;
                                                    }
                                                    i12 = u23;
                                                }
                                            }
                                            if (c10340xw02 != l10 || i16 != 0) {
                                                break;
                                            }
                                            i16 = 1;
                                        }
                                        w53 = w54;
                                        i11++;
                                        i10 = 0;
                                    }
                                } else {
                                    boolean z12 = f46788e;
                                    if (!z12 && w52 == null) {
                                        throw new AssertionError();
                                    }
                                    if (!z12 && !w52.i().G1()) {
                                        throw new AssertionError();
                                    }
                                    if (!z12 && w53 == null) {
                                        throw new AssertionError();
                                    }
                                    if (!z12 && !w53.i().G1()) {
                                        throw new AssertionError();
                                    }
                                    if (!z12 && i12 == 0) {
                                        throw new AssertionError();
                                    }
                                    W5 b10 = V10.b();
                                    C6286Yx0 c6286Yx0 = new C6286Yx0(2);
                                    c6286Yx0.b((C6286Yx0) w53);
                                    c6286Yx0.f46126b.add(b10);
                                    while (true) {
                                        if (!c6286Yx0.b()) {
                                            a10 = c6286Yx0.a();
                                            break;
                                        }
                                        W5 w55 = (W5) c6286Yx0.c();
                                        if (w55.u().isEmpty()) {
                                            a10 = null;
                                            break;
                                        }
                                        Iterator<W5> it4 = w55.u().iterator();
                                        while (it4.hasNext()) {
                                            c6286Yx0.b((C6286Yx0) it4.next());
                                        }
                                    }
                                    if (a10 != null) {
                                        if (a10.contains(w52)) {
                                            if (!f46788e) {
                                                throw new AssertionError();
                                            }
                                        } else if (a10.contains(V10.v2())) {
                                            if (!a10.contains(V10.u2())) {
                                                v22 = V10.u2();
                                                u22 = V10.v2();
                                                c10 = AbstractC5513Ll0.c();
                                                it = a10.iterator();
                                                while (it.hasNext()) {
                                                    c10.addAll(((W5) it.next()).v());
                                                }
                                                c10.removeAll(a10);
                                                if (c10.size() == 1) {
                                                    Iterator<C7201f60> it5 = V10.b().s().iterator();
                                                    while (it5.hasNext()) {
                                                        C7201f60 next3 = it5.next();
                                                        Iterator<AbstractC10561zE> it6 = next3.b0().iterator();
                                                        while (true) {
                                                            if (!it6.hasNext()) {
                                                                break;
                                                            }
                                                            if (!a10.contains(it6.next().b())) {
                                                                break;
                                                            }
                                                        }
                                                    }
                                                } else if (!f46788e && c10.iterator().next() != v22) {
                                                    throw new AssertionError();
                                                }
                                                if ((!V10.y2().K() ? V10.b(Integer.signum(i13 - V10.y2().r().J().u2())) : V10.b(Integer.signum(((C10340xw0) V10.f54321f.get(0)).r().J().u2() - i13))) == u22) {
                                                    int i17 = i13 + i12;
                                                    if ((V10.y2().K() ? V10.b(Integer.signum(i17 - V10.y2().r().J().u2())) : V10.b(Integer.signum(((C10340xw0) V10.f54321f.get(0)).r().J().u2() - i17))) == v22) {
                                                        W5 b11 = V10.b();
                                                        int indexOf = b11.u().indexOf(w53);
                                                        for (C7201f60 c7201f60 : b11.s()) {
                                                            int i18 = 1 - indexOf;
                                                            C10340xw0 c10340xw03 = (C10340xw0) c7201f60.f47863q.get(i18);
                                                            C10340xw0 c10340xw04 = (C10340xw0) c7201f60.f47863q.get(indexOf);
                                                            if (c10340xw04.j() && b11.s().contains(c10340xw04.l())) {
                                                                c10340xw04 = (C10340xw0) c10340xw04.l().f47863q.get(i18);
                                                            }
                                                            if (!AbstractC6435aZ.f46557a && c10340xw04.j() && b11.s().contains(c10340xw04.l())) {
                                                                throw new AssertionError();
                                                            }
                                                            for (AbstractC10561zE abstractC10561zE2 : c7201f60.b0()) {
                                                                if (a10.contains(abstractC10561zE2.b())) {
                                                                    abstractC10561zE2.a(c7201f60, c10340xw03, c10696a);
                                                                } else {
                                                                    abstractC10561zE2.a(c7201f60, c10340xw04, c10696a);
                                                                }
                                                            }
                                                            for (C7201f60 c7201f602 : c7201f60.a0()) {
                                                                if (a10.contains(c7201f602.f47862p)) {
                                                                    c7201f602.a(c7201f60, c10340xw03, c10696a);
                                                                } else {
                                                                    c7201f602.a(c7201f60, c10340xw04, c10696a);
                                                                }
                                                            }
                                                        }
                                                        if (!AbstractC6435aZ.f46557a && !v22.s().isEmpty()) {
                                                            throw new AssertionError();
                                                        }
                                                        b11.a((AbstractC9408sL) new C4960Bz());
                                                        b11.i(v22);
                                                        w53.b(b11, v22);
                                                        w53.a((AbstractC9408sL) new C4960Bz());
                                                        b11.a(w53, (C10696a) null, C6628bi.b(), EnumC6871d70.f47287c);
                                                        v22.a(b11, w53);
                                                        z10 = true;
                                                    }
                                                }
                                            }
                                        } else if (a10.contains(V10.u2())) {
                                            v22 = V10.v2();
                                            u22 = V10.u2();
                                            c10 = AbstractC5513Ll0.c();
                                            it = a10.iterator();
                                            while (it.hasNext()) {
                                            }
                                            c10.removeAll(a10);
                                            if (c10.size() == 1) {
                                            }
                                            if ((!V10.y2().K() ? V10.b(Integer.signum(i13 - V10.y2().r().J().u2())) : V10.b(Integer.signum(((C10340xw0) V10.f54321f.get(0)).r().J().u2() - i13))) == u22) {
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        z10 = false;
                        z11 |= z10;
                    } else {
                        if (!next2.w1()) {
                            break;
                        }
                        i10 = 0;
                    }
                }
                throw new C5417Jv0();
            }
            i10 = 0;
        }
        if (z11) {
            c7215fB.a((C6382aB) null, c10696a);
            c10696a.a(this.f52646a, c7215fB, C6628bi.b());
            c7215fB.x();
        }
        return z11 ? InterfaceC10118we.f53548b : InterfaceC10118we.f53547a;
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return this.f52646a.E().f50689i0 && c7215fB.f47902i.a(25) && c7215fB.f47897d.size() >= 4;
    }
}
