package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.D3;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.AE;
import com.android.tools.r8.internal.AbstractC10241xK;
import com.android.tools.r8.internal.AbstractC10330xt;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC7670hw;
import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.AbstractC9907vK;
import com.android.tools.r8.internal.C10231xF0;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C10664zt;
import com.android.tools.r8.internal.C4;
import com.android.tools.r8.internal.C5160Fj;
import com.android.tools.r8.internal.C6301Zd0;
import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.internal.C6993dt;
import com.android.tools.r8.internal.C7201f60;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C8331lu0;
import com.android.tools.r8.internal.C8391mE;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C8704o7;
import com.android.tools.r8.internal.C8854p10;
import com.android.tools.r8.internal.C9126qh;
import com.android.tools.r8.internal.C9587tR;
import com.android.tools.r8.internal.CH;
import com.android.tools.r8.internal.EB;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.internal.G4;
import com.android.tools.r8.internal.InterfaceC7495gt0;
import com.android.tools.r8.internal.InterfaceC7662ht0;
import com.android.tools.r8.internal.Iv1;
import com.android.tools.r8.internal.R5;
import com.android.tools.r8.internal.TH;
import com.android.tools.r8.internal.TW;
import com.android.tools.r8.internal.UH;
import com.android.tools.r8.internal.V60;
import com.android.tools.r8.internal.VJ;
import com.android.tools.r8.internal.W5;
import com.android.tools.r8.internal.Y5;
import com.android.tools.r8.internal.Z5;
import com.android.tools.r8.ir.optimize.C10712i;
import com.android.tools.r8.ir.optimize.C10716k;
import com.android.tools.r8.ir.optimize.C10726q;
import com.android.tools.r8.shaking.C11295l;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.Predicate;

public class C10726q {

    public static final boolean f54914c = true;

    public final C4798y f54915a;

    public final boolean f54916b = false;

    public C10726q(C4798y<? extends C4514j> c4798y) {
        this.f54915a = c4798y;
    }

    public static boolean a(AbstractC10561zE abstractC10561zE, AbstractC10561zE abstractC10561zE2) {
        return abstractC10561zE2 != abstractC10561zE;
    }

    public static boolean b(AbstractC10561zE abstractC10561zE, AbstractC10561zE abstractC10561zE2) {
        return abstractC10561zE2 != abstractC10561zE;
    }

    public static boolean c(AbstractC10561zE abstractC10561zE, AbstractC10561zE abstractC10561zE2) {
        return abstractC10561zE2 != abstractC10561zE;
    }

    public static boolean a(AbstractC10561zE abstractC10561zE, AbstractC10561zE abstractC10561zE2, AbstractC10561zE abstractC10561zE3) {
        return abstractC10561zE3 == abstractC10561zE || abstractC10561zE3 == abstractC10561zE2;
    }

    public final void b(C7215fB c7215fB, C10716k c10716k) {
        Set c10 = AbstractC5513Ll0.c();
        IdentityHashMap identityHashMap = new IdentityHashMap();
        a(c7215fB, c10716k, c10, identityHashMap, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10726q.a((C10712i) obj);
            }
        });
        a(c7215fB, c10716k, c10, identityHashMap, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10726q.b((C10712i) obj);
            }
        });
        identityHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10726q.a((W5) obj, (Map) obj2);
            }
        });
        if (c10.isEmpty()) {
            return;
        }
        C8331lu0 c8331lu0 = new C8331lu0(this.f54915a, c7215fB, false);
        c8331lu0.f50139b = this.f54916b;
        c8331lu0.a(c10, C6628bi.b());
    }

    public void a(C7215fB c7215fB, C8659ns0 c8659ns0) {
        a(c7215fB, c7215fB.u(), EnumC6871d70.f47286b, c8659ns0);
        c7215fB.x();
        if (!f54914c && !c7215fB.b(this.f54915a)) {
            throw new AssertionError();
        }
    }

    public C10726q(C4798y c4798y, int i10) {
        this.f54915a = c4798y;
    }

    public final void a(C7215fB c7215fB, Z5 z52, Predicate predicate, C8659ns0 c8659ns0) {
        c8659ns0.b("Insert assume instructions");
        c8659ns0.b("Part 1: Compute assumed values");
        C10714j c10714j = new C10714j();
        while (z52.f46159b.hasNext()) {
            W5 w52 = (W5) z52.f46159b.next();
            z52.f46160c = w52;
            if (predicate.test(w52)) {
                a(c7215fB, z52, w52, c10714j);
            }
        }
        LinkedHashMap linkedHashMap = c10714j.f54883a;
        C10716k c10716k = new C10716k(linkedHashMap);
        c8659ns0.d();
        if (!linkedHashMap.isEmpty()) {
            c8659ns0.b("Part 2: Remove redundant assume instructions");
            a(c10716k);
            c8659ns0.d();
            c8659ns0.b("Part 3: Compute dominated users");
            IdentityHashMap a10 = a(c7215fB, c10716k);
            c8659ns0.d();
            if (!linkedHashMap.isEmpty()) {
                c8659ns0.b("Part 4: Remove redundant dominated assume instructions");
                c10716k.a(a10);
                c8659ns0.d();
                if (!linkedHashMap.isEmpty()) {
                    c8659ns0.b("Part 5: Materialize assume instructions");
                    b(c7215fB, c10716k);
                    c8659ns0.d();
                }
            }
        }
        c8659ns0.d();
    }

    public static boolean b(C10712i c10712i) {
        AbstractC10710h abstractC10710h = c10712i.f54879a;
        abstractC10710h.getClass();
        return abstractC10710h instanceof C10718l;
    }

    public static List b(AbstractC10561zE abstractC10561zE) {
        return new ArrayList();
    }

    public static boolean b(AbstractC10561zE abstractC10561zE, C10340xw0 c10340xw0) {
        AbstractC8999pu0 u10 = c10340xw0.u();
        return u10.y() && u10.d().v() && !u10.B().e() && a(abstractC10561zE, c10340xw0);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0288 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x000c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(C7215fB c7215fB, Z5 z52, W5 w52, C10714j c10714j) {
        boolean z10;
        D3.a<?> l10;
        boolean a10;
        TW tw;
        com.android.tools.r8.graph.H0 h02;
        boolean z11;
        C10664zt m10;
        Y5 I10 = w52.I();
        while (I10.hasNext()) {
            AbstractC10561zE next = I10.next();
            if (next.t2()) {
                C10340xw0 Z02 = next.Z0();
                if (!c10714j.f54884b.contains(Z02)) {
                    AbstractC8999pu0 u10 = Z02.u();
                    u10.getClass();
                    if (!(u10 instanceof C6301Zd0) && b(next, Z02)) {
                        c10714j.b(next, Z02);
                        z10 = true;
                        if (!next.P1()) {
                            VJ e02 = next.e0();
                            if (e02.f1() || !e02.f54321f.isEmpty()) {
                                A2 B22 = e02.B2();
                                if (B22.s0().E0() && B22.c(this.f54915a.b().f37859F4.f38224b)) {
                                    C10340xw0 d10 = e02.d();
                                    if (d10 != null && d10.A()) {
                                        M2 s02 = e02.B2().s0();
                                        C4798y c4798y = this.f54915a;
                                        C8854p10 b10 = C8854p10.b();
                                        s02.getClass();
                                        c10714j.a(e02, d10, AbstractC10330xt.a(c4798y, AbstractC8999pu0.a(s02, b10, (C4798y<?>) c4798y)));
                                        a10 = true;
                                        z10 |= a10;
                                    }
                                } else {
                                    Z4.c<?> o10 = ((C4514j) this.f54915a.f()).f(e02.B2()).o();
                                    if (o10 != null) {
                                        com.android.tools.r8.graph.H0 b11 = o10.a(this.f54915a, e02, c7215fB.j()).b();
                                        if (e02.f1() && e02.a().y() && G4.a(this.f54915a, o10, b11).f40087a.d().d()) {
                                            c10714j.a(e02, e02.d());
                                        }
                                        TW a11 = o10.a(this.f54915a, e02, b11);
                                        a11.getClass();
                                        if (!(a11 instanceof C5160Fj)) {
                                            a10 = e02.f1() ? a(e02, a11.n(), c10714j) : false;
                                            BitSet r10 = a11.r();
                                            int i10 = 0;
                                            while (i10 < e02.f54321f.size()) {
                                                C10340xw0 b12 = e02.b(i10);
                                                if (((e02.Q1() && i10 == 0) || (r10 != null && r10.get(i10))) && !c10714j.f54884b.contains(b12)) {
                                                    AbstractC8999pu0 u11 = b12.u();
                                                    u11.getClass();
                                                    if (!(u11 instanceof C6301Zd0) && b(e02, b12)) {
                                                        c10714j.b(e02, b12);
                                                        a10 = true;
                                                    }
                                                }
                                                if (i10 == a11.t() && a(e02, b12)) {
                                                    if (a11.n().h()) {
                                                        m10 = a11.n().a();
                                                    } else {
                                                        m10 = AbstractC10330xt.m();
                                                    }
                                                    if (b11 == null || b11.d().w0() || a11.t() != 0) {
                                                        tw = a11;
                                                        h02 = b11;
                                                        z11 = a10;
                                                    } else {
                                                        C4798y c4798y2 = this.f54915a;
                                                        tw = a11;
                                                        M2 p10 = b11.p();
                                                        h02 = b11;
                                                        C4798y c4798y3 = this.f54915a;
                                                        z11 = a10;
                                                        C8854p10 b13 = C8854p10.b();
                                                        p10.getClass();
                                                        C10664zt a12 = C10664zt.a((C4798y<? extends C4514j>) c4798y2, AbstractC8999pu0.a(p10, b13, (C4798y<?>) c4798y3));
                                                        if (a12.b(this.f54915a, m10)) {
                                                            m10 = a12;
                                                        }
                                                    }
                                                    if (!m10.l()) {
                                                        C10664zt a13 = AbstractC10330xt.a(this.f54915a, b12.u());
                                                        if (m10.a(a13.f54564b.B()).b(this.f54915a, a13)) {
                                                            C8854p10 B10 = m10.f54564b.B();
                                                            C8854p10 B11 = a13.f54564b.B();
                                                            B10.getClass();
                                                            C8854p10 c8854p10 = C8854p10.f51411c;
                                                            if (B10 == c8854p10) {
                                                                B10 = B11;
                                                            } else if (B11 != c8854p10 && B10 != B11) {
                                                                B10 = C8854p10.f51412d;
                                                            }
                                                            c10714j.b(e02, b12, m10.a(B10));
                                                            a10 = true;
                                                            i10++;
                                                            a11 = tw;
                                                            b11 = h02;
                                                        }
                                                    }
                                                } else {
                                                    tw = a11;
                                                    h02 = b11;
                                                    z11 = a10;
                                                }
                                                a10 = z11;
                                                i10++;
                                                a11 = tw;
                                                b11 = h02;
                                            }
                                            z10 |= a10;
                                        }
                                    }
                                }
                            }
                            a10 = false;
                            z10 |= a10;
                        } else if (next.D1()) {
                            AbstractC7670hw S10 = next.S();
                            if (S10.f1() && (l10 = ((C4514j) this.f54915a.f()).c(S10.getField()).l()) != null) {
                                com.android.tools.r8.graph.F0 a14 = com.android.tools.r8.graph.F0.a(l10.f36224c, l10.f36225d);
                                if (a14.getReference().getType().Q0()) {
                                    C11295l c11295l = this.f54915a.f38412e;
                                    c11295l.getClass();
                                    if (c11295l.a(a14.getReference()).f40087a.d().d()) {
                                        c10714j.a(S10, S10.d());
                                    }
                                }
                                a10 = a(S10, a14.d().f37207l.g(), c10714j);
                                z10 |= a10;
                            }
                            a10 = false;
                            z10 |= a10;
                        }
                        if (w52.z()) {
                            if (z10) {
                                W5 a15 = I10.a(c7215fB, z52);
                                boolean z12 = f54914c;
                                if (!z12 && I10.hasNext()) {
                                    throw new AssertionError();
                                }
                                if (!z12 && !I10.n().G1()) {
                                    throw new AssertionError();
                                }
                                if (!z12) {
                                    z52.getClass();
                                    if (((W5) AbstractC10241xK.b(z52)) != a15) {
                                        throw new AssertionError();
                                    }
                                }
                                a(c7215fB, z52, a15, c10714j);
                                return;
                            }
                            if (next.o()) {
                                break;
                            }
                        }
                    }
                }
            }
            z10 = false;
            if (!next.P1()) {
            }
            if (w52.z()) {
            }
        }
        EB V10 = w52.i().V();
        if (V10 != null) {
            C10340xw0 c10340xw0 = (C10340xw0) V10.f54321f.get(0);
            if (V10.w2()) {
                C8391mE Y10 = c10340xw0.i().r().Y();
                C10340xw0 c10340xw02 = (C10340xw0) Y10.f54321f.get(0);
                C4798y c4798y4 = this.f54915a;
                M2 m22 = Y10.f50246k;
                C8854p10 B12 = c10340xw02.u().B();
                m22.getClass();
                C10664zt a16 = AbstractC10330xt.a(c4798y4, AbstractC8999pu0.a(m22, B12, (C4798y<?>) c4798y4));
                if (a16.b(this.f54915a, AbstractC10330xt.a(this.f54915a, c10340xw02.u())) && a(Y10, c10340xw02)) {
                    c10714j.b(V10, c10340xw02, a16);
                    return;
                }
                return;
            }
            if (V10.x2() && ((C10340xw0) V10.f54321f.get(0)).u().y() && ((C10340xw0) V10.f54321f.get(0)).u().v() && !c10714j.f54884b.contains(c10340xw0)) {
                AbstractC8999pu0 u12 = c10340xw0.u();
                u12.getClass();
                if (!(u12 instanceof C6301Zd0) && b(V10, c10340xw0) && V10.z2().u().size() == 1) {
                    c10714j.b(V10, c10340xw0);
                }
            }
        }
    }

    public final boolean a(AbstractC10561zE abstractC10561zE, AbstractC10330xt abstractC10330xt, C10714j c10714j) {
        C10340xw0 d10 = abstractC10561zE.d();
        if (abstractC10330xt.l()) {
            return false;
        }
        if (abstractC10330xt.j()) {
            c10714j.a(abstractC10561zE, d10);
            return true;
        }
        C10664zt a10 = abstractC10330xt.a();
        C10664zt a11 = AbstractC10330xt.a(this.f54915a, d10.u());
        if (!a10.b(this.f54915a, a11)) {
            return false;
        }
        if (!a10.f54564b.B().f() && a10.a(C8854p10.h()).equals(a11)) {
            if (!f54914c && !a10.f54564b.B().d()) {
                throw new AssertionError();
            }
            c10714j.a(abstractC10561zE, d10);
        } else {
            c10714j.a(abstractC10561zE, d10, a10);
        }
        return true;
    }

    public static void a(final C10716k c10716k) {
        c10716k.a(new InterfaceC7662ht0() {
            @Override
            public final boolean a(Object obj, Object obj2, Object obj3) {
                return C10726q.a(C10716k.this, (AbstractC10561zE) obj, (C10340xw0) obj2, (C10712i) obj3);
            }
        });
    }

    public final IdentityHashMap a(C7215fB c7215fB, C10716k c10716k) {
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        final C9587tR c9587tR = new C9587tR(c7215fB);
        final IdentityHashMap identityHashMap2 = new IdentityHashMap();
        c10716k.a(new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return C10726q.this.a(identityHashMap, c9587tR, identityHashMap2, (AbstractC10561zE) obj, (C10340xw0) obj2, (C10712i) obj3);
            }
        });
        return identityHashMap;
    }

    public final AbstractC10710h a(Map map, C9587tR c9587tR, Map map2, final AbstractC10561zE abstractC10561zE, final C10340xw0 c10340xw0, C10712i c10712i) {
        W5 b10;
        AbstractC10561zE next;
        C10712i c10712i2;
        Map map3 = (Map) map.get(abstractC10561zE);
        if (map3 != null && (c10712i2 = (C10712i) map3.get(c10340xw0)) != null) {
            if ((!c10712i.f54880b.h() || c10712i.f54880b.l()) && c10712i2.a()) {
                return C10725p.f54913a;
            }
            if (c10712i2.a()) {
                c10712i.b();
            }
            if ((!c10712i.f54880b.h() || c10712i.f54880b.l()) && c10712i2.f54880b.h() && !c10712i2.f54880b.l()) {
                c10712i.a(c10712i2.f54880b.a(c10712i.f54880b.d()));
            }
        }
        if (c10340xw0 == abstractC10561zE.d()) {
            return C10718l.f54890a;
        }
        W5 b11 = abstractC10561zE.b();
        if (c10340xw0.b() == b11 && b11.i().G1() && !abstractC10561zE.b().z()) {
            AE H10 = abstractC10561zE.b().H();
            if (!c10340xw0.j()) {
                H10.a(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return C10726q.a(C10340xw0.this, (AbstractC10561zE) obj);
                    }
                });
                H10.previous();
            }
            while (H10.hasNext() && (next = H10.next()) != abstractC10561zE) {
                if (!next.f54321f.contains(c10340xw0) && !next.V0().contains(c10340xw0)) {
                }
            }
            return C10720m.f54892a;
        }
        if (abstractC10561zE.H1()) {
            EB V10 = abstractC10561zE.V();
            if (V10.w2()) {
                if (!EB.f39788m && !V10.x2()) {
                    throw new AssertionError();
                }
                b10 = V10.b(C8704o7.a(true));
            } else {
                b10 = V10.z2();
            }
        } else {
            b10 = abstractC10561zE.b();
            if (b10.z()) {
                b10 = R5.a(b10);
            }
        }
        if (!f54914c && !c10340xw0.B() && !c10340xw0.b0().stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10726q.a(AbstractC10561zE.this, (AbstractC10561zE) obj);
            }
        }) && !c10340xw0.H()) {
            throw new AssertionError();
        }
        final C6993dt a10 = c9587tR.a();
        Set set = (Set) map2.computeIfAbsent(b10, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10726q.a(C6993dt.this, (W5) obj);
            }
        });
        C10708g c10708g = new C10708g(c10340xw0);
        for (final AbstractC10561zE abstractC10561zE2 : c10340xw0.b0()) {
            if (abstractC10561zE2 != abstractC10561zE && set.contains(abstractC10561zE2.b())) {
                if (abstractC10561zE2.b() == b10 && b10 == b11) {
                    AbstractC10561zE abstractC10561zE3 = (AbstractC10561zE) b11.H().a(new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            return C10726q.a(AbstractC10561zE.this, abstractC10561zE2, (AbstractC10561zE) obj);
                        }
                    });
                    if (!f54914c && abstractC10561zE3 == null) {
                        throw new AssertionError();
                    }
                    if (abstractC10561zE3 == abstractC10561zE2) {
                        continue;
                    }
                }
                boolean z10 = C10708g.f54872d;
                if (!z10 && !c10708g.f54873a.b0().contains(abstractC10561zE2)) {
                    throw new AssertionError();
                }
                if (!z10 && c10708g.f54874b.contains(abstractC10561zE2)) {
                    throw new AssertionError();
                }
                c10708g.f54874b.add(abstractC10561zE2);
                ((Map) map.computeIfAbsent(abstractC10561zE2, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return C10726q.a((AbstractC10561zE) obj);
                    }
                })).put(c10340xw0, c10712i);
            }
        }
        for (C7201f60 c7201f60 : c10340xw0.a0()) {
            boolean z11 = f54914c;
            if (!z11 && !c7201f60.c0().contains(c10340xw0)) {
                throw new AssertionError();
            }
            List<C10340xw0> c02 = c7201f60.c0();
            List<W5> u10 = c7201f60.f47862p.u();
            if (!z11 && c02.size() != u10.size()) {
                throw new AssertionError();
            }
            CH ch2 = new CH(16);
            Iterator<C10340xw0> it = c02.iterator();
            Iterator<W5> it2 = u10.iterator();
            int i10 = 0;
            while (it.hasNext() && it2.hasNext()) {
                C10340xw0 next2 = it.next();
                W5 next3 = it2.next();
                if (next2 == c10340xw0 && set.contains(next3)) {
                    ch2.add(i10);
                }
                i10++;
            }
            if (!ch2.isEmpty()) {
                boolean z12 = C10708g.f54872d;
                if (!z12 && !c10708g.f54873a.a0().contains(c7201f60)) {
                    throw new AssertionError();
                }
                if (!z12 && c10708g.f54875c.containsKey(c7201f60)) {
                    throw new AssertionError();
                }
                c10708g.f54875c.put(c7201f60, ch2);
            }
        }
        if (c10708g.f54874b.isEmpty() && c10708g.f54875c.isEmpty()) {
            return C10722n.f54904a;
        }
        if (!C10708g.f54872d && c10708g.f54874b.size() >= c10708g.f54873a.b0().size() && c10708g.f54875c.size() >= c10708g.f54873a.a0().size()) {
            throw new AssertionError();
        }
        return new C10724o(c10708g.f54874b, c10708g.f54875c);
    }

    public static boolean a(C10340xw0 c10340xw0, AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE != c10340xw0.f53886c;
    }

    public static Set a(C6993dt c6993dt, W5 w52) {
        return (Set) c6993dt.a(w52, AbstractC5513Ll0.c());
    }

    public static Map a(AbstractC10561zE abstractC10561zE) {
        return new IdentityHashMap();
    }

    public static boolean a(C10712i c10712i) {
        c10712i.f54879a.getClass();
        return !(r0 instanceof C10718l);
    }

    public static void a(W5 w52, Map map) {
        Y5 I10 = w52.I();
        while (I10.hasNext() && !map.isEmpty()) {
            List list = (List) map.remove(I10.next());
            if (list != null) {
                list.forEach(new Iv1(I10));
            }
        }
    }

    public final void a(final C7215fB c7215fB, C10716k c10716k, final Set set, final IdentityHashMap identityHashMap, final Predicate predicate) {
        c10716k.a(new InterfaceC7662ht0() {
            @Override
            public final boolean a(Object obj, Object obj2, Object obj3) {
                return C10726q.this.a(predicate, c7215fB, set, identityHashMap, (AbstractC10561zE) obj, (C10340xw0) obj2, (C10712i) obj3);
            }
        });
    }

    public final boolean a(Predicate predicate, C7215fB c7215fB, Set set, Map map, final AbstractC10561zE abstractC10561zE, final C10340xw0 c10340xw0, C10712i c10712i) {
        W5 b10;
        AbstractC8999pu0 u10;
        C10340xw0 a10;
        AbstractC10561zE a11;
        if (!predicate.test(c10712i)) {
            return false;
        }
        W5 b11 = abstractC10561zE.b();
        if (abstractC10561zE.H1()) {
            EB V10 = abstractC10561zE.V();
            if (V10.w2()) {
                if (!EB.f39788m && !V10.x2()) {
                    throw new AssertionError();
                }
                b10 = V10.b(C8704o7.a(true));
            } else {
                b10 = V10.z2();
            }
        } else {
            b10 = abstractC10561zE.b();
            if (b10.z()) {
                b10 = R5.a(b10);
            }
        }
        W5 w52 = b10;
        AbstractC10710h abstractC10710h = c10712i.f54879a;
        if (c10712i.f54880b.d().e()) {
            a10 = c7215fB.a(AbstractC8999pu0.m(), (C4515j0) null);
        } else {
            if (c10712i.a()) {
                u10 = c10340xw0.u().d().D();
            } else {
                u10 = c10340xw0.u();
            }
            a10 = c7215fB.a(u10, c10340xw0.s());
        }
        abstractC10710h.getClass();
        if (abstractC10710h instanceof C10718l) {
            c10340xw0.f(a10);
        } else if (abstractC10710h instanceof C10720m) {
            Predicate predicate2 = new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C10726q.c(AbstractC10561zE.this, (AbstractC10561zE) obj);
                }
            };
            if (c10340xw0 == a10) {
                c10340xw0.getClass();
            } else {
                for (AbstractC10561zE abstractC10561zE2 : c10340xw0.b0()) {
                    if (predicate2.test(abstractC10561zE2)) {
                        c10340xw0.b(abstractC10561zE2);
                        abstractC10561zE2.a(c10340xw0, a10, (Set) null);
                    }
                }
            }
            c10340xw0.e(a10);
        } else if (abstractC10710h instanceof C10724o) {
            C10724o a12 = abstractC10710h.a();
            a12.f54909b.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C10726q.a(C10340xw0.this, (C7201f60) obj, (TH) obj2);
                }
            });
            c10340xw0.a(a10, a12.f54908a, a12.f54909b, null);
        }
        set.addAll(a10.a());
        if (c10712i.f54880b.d().e()) {
            a11 = new C9126qh(a10, 0L);
        } else {
            a11 = C4.a(c10712i.f54880b, a10, c10340xw0, abstractC10561zE, this.f54915a, c7215fB.j());
        }
        a11.b(abstractC10561zE.getPosition());
        if (w52 != b11) {
            w52.I().add(a11);
        } else {
            ((List) ((Map) map.computeIfAbsent(b11, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C10726q.a((W5) obj);
                }
            })).computeIfAbsent(abstractC10561zE, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C10726q.b((AbstractC10561zE) obj);
                }
            })).add(a11);
        }
        return true;
    }

    public static void a(C10340xw0 c10340xw0, C7201f60 c7201f60, TH th2) {
        UH it = th2.iterator();
        while (it.hasNext()) {
            C10340xw0 c10340xw02 = (C10340xw0) c7201f60.f47863q.get(it.r());
            if (c10340xw02 != c10340xw0) {
                if (!f54914c && !c10340xw02.d(new C10231xF0())) {
                    throw new AssertionError();
                }
                it.remove();
            }
        }
    }

    public static Map a(W5 w52) {
        return new IdentityHashMap();
    }

    public static boolean a(final AbstractC10561zE abstractC10561zE, C10340xw0 c10340xw0) {
        return c10340xw0.B() || AbstractC9907vK.b(c10340xw0.b0(), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return C10726q.b(AbstractC10561zE.this, (AbstractC10561zE) obj);
            }
        });
    }

    public static boolean a(C10716k c10716k, AbstractC10561zE abstractC10561zE, C10340xw0 c10340xw0, C10712i c10712i) {
        AbstractC10561zE r10;
        if (c10712i.f54880b.h() && !c10712i.f54880b.l()) {
            return false;
        }
        if (!f54914c && !c10712i.a()) {
            throw new AssertionError();
        }
        if (c10340xw0.j() || (r10 = c10340xw0.r()) == abstractC10561zE) {
            return false;
        }
        Map map = (Map) c10716k.f54888a.get(r10);
        C10712i c10712i2 = map != null ? (C10712i) map.get(c10340xw0) : null;
        if (c10712i2 == null) {
            return false;
        }
        if (c10712i2.a() || c10712i2.f54880b.d().e()) {
            return true;
        }
        c10712i.a(c10712i2.f54880b.a(C8854p10.b()));
        return false;
    }
}
