package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.D3;
import com.android.tools.r8.graph.F3;
import com.android.tools.r8.graph.F5;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.graph.Uc;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC5167Fm0;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC7670hw;
import com.android.tools.r8.internal.AbstractC7716iB;
import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.AbstractC9530t40;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C10394yE;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5576Mo0;
import com.android.tools.r8.internal.C5731Pf0;
import com.android.tools.r8.internal.C6286Yx0;
import com.android.tools.r8.internal.C6382aB;
import com.android.tools.r8.internal.C6558bE;
import com.android.tools.r8.internal.C6920dR0;
import com.android.tools.r8.internal.C7201f60;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C7680hz0;
import com.android.tools.r8.internal.C7957jh;
import com.android.tools.r8.internal.C8024k3;
import com.android.tools.r8.internal.C9073qK;
import com.android.tools.r8.internal.C9126qh;
import com.android.tools.r8.internal.C9603tZ;
import com.android.tools.r8.internal.C9820uq;
import com.android.tools.r8.internal.C9960vh;
import com.android.tools.r8.internal.EE;
import com.android.tools.r8.internal.F1;
import com.android.tools.r8.internal.FE;
import com.android.tools.r8.internal.G2;
import com.android.tools.r8.internal.InterfaceC7169ew;
import com.android.tools.r8.internal.J20;
import com.android.tools.r8.internal.K7;
import com.android.tools.r8.internal.M1;
import com.android.tools.r8.internal.M20;
import com.android.tools.r8.internal.N20;
import com.android.tools.r8.internal.QJ;
import com.android.tools.r8.internal.TU;
import com.android.tools.r8.internal.W5;
import com.android.tools.r8.internal.Y5;
import com.android.tools.r8.internal.Z5;
import com.android.tools.r8.ir.optimize.C10734z;
import java.util.Collections;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.UnaryOperator;

public final class C10734z {

    public static final boolean f54968g = true;

    public final C4798y f54969a;

    public final K7 f54970b;

    public final H5 f54971c;

    public final C7215fB f54972d;

    public AbstractC9530t40 f54973e = AbstractC9530t40.f52519c;

    public Set f54974f;

    public C10734z(C4798y c4798y, H5 h52, C7215fB c7215fB) {
        if (!f54968g && !c4798y.E().P()) {
            throw new AssertionError();
        }
        this.f54969a = c4798y;
        this.f54970b = new K7(c4798y);
        this.f54971c = h52;
        this.f54972d = c7215fB;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean a(InterfaceC7169ew interfaceC7169ew, C9603tZ c9603tZ) {
        if (this.f54973e.e()) {
            this.f54973e = AbstractC9530t40.a(d());
        }
        if (this.f54973e.d()) {
            return false;
        }
        C4798y L10 = this.f54969a.L();
        D3.a<?> l10 = ((C4514j) L10.f()).c(interfaceC7169ew.getField()).l();
        if (l10 == null || !(l10 instanceof F3)) {
            return false;
        }
        F5 r10 = l10.r();
        C4537k3 accessFlags = r10.getAccessFlags();
        if (!f54968g && AbstractC4458g.d(accessFlags.f37197c, 64)) {
            throw new AssertionError();
        }
        if (!r10.b(L10)) {
            return false;
        }
        if ((!r10.getAccessFlags().e() && c9603tZ != null) || this.f54969a.a(r10).d(this.f54969a.E())) {
            return false;
        }
        if (this.f54971c.d().i1()) {
            AbstractC10561zE abstractC10561zE = (AbstractC10561zE) interfaceC7169ew;
            if (this.f54971c.getAccessFlags().n() == (abstractC10561zE instanceof C5576Mo0)) {
                if (this.f54971c.getHolder() == r10.getHolder()) {
                    return false;
                }
                if ((abstractC10561zE instanceof C6558bE) && ((C4514j) L10.f()).b(this.f54971c.getHolder(), r10.getHolder())) {
                    return false;
                }
            }
        }
        return l10.f36223b.d(this.f54969a);
    }

    public final Set b() {
        final C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        this.f54972d.f47897d.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10734z.a(C6286Yx0.this, (W5) obj);
            }
        });
        while (c6286Yx0.b()) {
            c6286Yx0.b((Iterable) ((W5) c6286Yx0.c()).v());
        }
        return c6286Yx0.a();
    }

    public final Set c() {
        Set c10 = AbstractC5513Ll0.c();
        for (W5 w52 : b()) {
            for (C6558bE c6558bE : C9073qK.a(w52.l(), new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return ((AbstractC10561zE) obj).K1();
                }
            })) {
                C10340xw0 n10 = c6558bE.n();
                if (!n10.x() || (!n10.d(new C6920dR0()) && n10.b().z())) {
                    c10.add(c6558bE);
                }
            }
        }
        return c10;
    }

    public final boolean d() {
        if (!this.f54969a.f().h()) {
            return true;
        }
        C4798y c4798y = this.f54969a;
        C4514j l10 = c4798y.f().h() ? c4798y.f38408a.l() : null;
        Iterator it = this.f54972d.b(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((AbstractC10561zE) obj).E1();
            }
        }).iterator();
        while (it.hasNext()) {
            D3.a<?> l11 = l10.c(((AbstractC7670hw) it.next()).getField()).l();
            if (l11 == null || AbstractC4458g.d(l11.f36225d.getAccessFlags().f37197c, 64)) {
                return true;
            }
        }
        return false;
    }

    public static void a(C6286Yx0 c6286Yx0, W5 w52) {
        c6286Yx0.b((Iterable) w52.j().f42511c);
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0294  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a() {
        AbstractC10561zE a10;
        int r22;
        AbstractC10561zE abstractC10561zE;
        M20 m20 = new M20(new C10733y());
        for (AbstractC10561zE abstractC10561zE2 : this.f54972d.q()) {
            if (a(abstractC10561zE2) && (!abstractC10561zE2.o() || !this.f54972d.f47902i.a(42))) {
                Iterator<AbstractC10561zE> it = abstractC10561zE2.d().b0().iterator();
                while (true) {
                    if (it.hasNext()) {
                        AbstractC10561zE next = it.next();
                        if (!next.N1() || next.a0().y2() <= 5) {
                        }
                    } else {
                        ((List) m20.computeIfAbsent(abstractC10561zE2, TU.a(new Uc()))).add(abstractC10561zE2);
                        break;
                    }
                }
            }
        }
        if (m20.isEmpty()) {
            this.f54973e = AbstractC9530t40.f52519c;
            this.f54974f = null;
            return;
        }
        if (!f54968g && this.f54972d.k().z()) {
            throw new AssertionError();
        }
        if (m20.f42145m == null) {
            m20.f42145m = new J20(m20);
        }
        Iterator<T> iterator2 = m20.f42145m.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10734z.a((N20) obj);
            }
        }).sorted(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int compare;
                compare = Integer.compare(((List) ((N20) obj2).getValue()).size(), ((List) ((N20) obj).getValue()).size());
                return compare;
            }
        }).limit(22L).iterator2();
        if (!iterator2.hasNext()) {
            this.f54973e = AbstractC9530t40.f52519c;
            this.f54974f = null;
            return;
        }
        IdentityHashMap identityHashMap = new IdentityHashMap();
        boolean z10 = false;
        do {
            N20 n20 = (N20) iterator2.next();
            AbstractC10561zE abstractC10561zE3 = (AbstractC10561zE) n20.getKey();
            boolean z11 = f54968g;
            if (!z11 && !abstractC10561zE3.g1()) {
                throw new AssertionError();
            }
            if (!abstractC10561zE3.b().u().isEmpty()) {
                int r23 = abstractC10561zE3.r2();
                if (r23 == 12) {
                    C7215fB c7215fB = this.f54972d;
                    C7957jh F10 = abstractC10561zE3.F();
                    boolean z12 = C7957jh.f49302n;
                    a10 = C7957jh.a(c7215fB.a(F10.a(), F10.q()), F10);
                } else if (r23 == 20) {
                    C7215fB c7215fB2 = this.f54972d;
                    C9820uq O10 = abstractC10561zE3.O();
                    boolean z13 = C9820uq.f52960n;
                    a10 = C9820uq.a(c7215fB2.a(O10.a(), O10.q()), O10);
                } else if (r23 == 28) {
                    a10 = C6558bE.a(this.f54972d, abstractC10561zE3.c());
                } else if (r23 == 59) {
                    a10 = C5576Mo0.a(this.f54972d, abstractC10561zE3.K0());
                } else if (r23 == 71) {
                    C7215fB c7215fB3 = this.f54972d;
                    C5731Pf0 F02 = abstractC10561zE3.F0();
                    boolean z14 = C5731Pf0.f43305m;
                    abstractC10561zE3 = new C5731Pf0(c7215fB3.a(AbstractC8999pu0.k(), F02.q()), F02.f43306l);
                    r22 = abstractC10561zE3.r2();
                    if (r22 != 12 && r22 != 20) {
                        if (r22 != 28) {
                            C10340xw0 n10 = abstractC10561zE3.c().n();
                            if (!n10.f53893j) {
                                if (n10.j()) {
                                    abstractC10561zE = n10.l();
                                } else {
                                    AbstractC10561zE r10 = n10.r();
                                    if (r10.k1()) {
                                        AbstractC10561zE j10 = this.f54972d.k().l().j(r3.l() - 1);
                                        C8024k3 v10 = j10.v();
                                        boolean z15 = C7215fB.f47893k;
                                        if (!z15 && v10 == null) {
                                            throw new AssertionError();
                                        }
                                        if (!z15 && j10.Y0().k1()) {
                                            throw new AssertionError();
                                        }
                                        abstractC10561zE = v10;
                                    } else {
                                        boolean c22 = r10.c2();
                                        abstractC10561zE = r10;
                                        if (c22) {
                                            QJ a11 = AbstractC7716iB.a(this.f54969a.b(), r10.w0().d());
                                            abstractC10561zE = a11;
                                            abstractC10561zE = a11;
                                            if (!z11 && a11 == null) {
                                                throw new AssertionError();
                                            }
                                        }
                                    }
                                }
                                if (abstractC10561zE == null) {
                                    Y5 I10 = this.f54972d.k().I();
                                    while (true) {
                                        if (!I10.hasNext()) {
                                            break;
                                        }
                                        if (!I10.next().k1()) {
                                            abstractC10561zE3.b(this.f54972d.f47896c);
                                            I10.previous();
                                            break;
                                        }
                                    }
                                    I10.add(abstractC10561zE3);
                                } else {
                                    a(abstractC10561zE, abstractC10561zE3, identityHashMap);
                                }
                            }
                        } else if (r22 != 59 && r22 != 71 && r22 != 15 && r22 != 16) {
                            throw new C5417Jv0();
                        }
                    }
                    abstractC10561zE = null;
                    if (abstractC10561zE == null) {
                    }
                } else if (r23 == 15) {
                    C7215fB c7215fB4 = this.f54972d;
                    C9126qh J10 = abstractC10561zE3.J();
                    boolean z16 = C9126qh.f51850m;
                    a10 = C9126qh.a(c7215fB4.a(J10.a(), J10.q()), J10);
                } else if (r23 == 16) {
                    C7215fB c7215fB5 = this.f54972d;
                    C9960vh K10 = abstractC10561zE3.K();
                    boolean z17 = C9960vh.f53189m;
                    a10 = C9960vh.a(c7215fB5.a(K10.a(), K10.q()), K10);
                } else {
                    throw new C5417Jv0();
                }
                abstractC10561zE3 = a10;
                r22 = abstractC10561zE3.r2();
                if (r22 != 12) {
                    if (r22 != 28) {
                    }
                }
                abstractC10561zE = null;
                if (abstractC10561zE == null) {
                }
            }
            for (AbstractC10561zE abstractC10561zE4 : (List) n20.getValue()) {
                if (abstractC10561zE4 != abstractC10561zE3) {
                    abstractC10561zE4.d().f(abstractC10561zE3.d());
                    abstractC10561zE4.f54317b.l().c(abstractC10561zE4);
                    List list = (List) identityHashMap.remove(abstractC10561zE4);
                    if (list == null) {
                        list = Collections.EMPTY_LIST;
                    }
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        a(abstractC10561zE3, (AbstractC10561zE) it2.next(), identityHashMap);
                    }
                }
            }
            z10 |= abstractC10561zE3.d().c(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return ((AbstractC10561zE) obj).H1();
                }
            });
        } while (iterator2.hasNext());
        if (!identityHashMap.isEmpty()) {
            Z5 u10 = this.f54972d.u();
            while (u10.f46159b.hasNext()) {
                W5 w52 = (W5) u10.f46159b.next();
                u10.f46160c = w52;
                EE I11 = w52.I();
                Iterator<C7201f60> it3 = w52.s().iterator();
                while (it3.hasNext()) {
                    I11 = a(u10, I11, (C7201f60) it3.next(), identityHashMap);
                }
                while (I11.hasNext()) {
                    I11 = a(u10, I11, (AbstractC10561zE) I11.next(), identityHashMap);
                }
            }
        }
        boolean z18 = f54968g;
        if (!z18 && !identityHashMap.isEmpty()) {
            throw new AssertionError();
        }
        if (this.f54972d.a((C6382aB) null, (C10696a) null) | z10) {
            this.f54970b.c(this.f54972d);
        }
        this.f54972d.x();
        if (!z18 && !this.f54972d.b(this.f54969a)) {
            throw new AssertionError();
        }
        this.f54973e = AbstractC9530t40.f52519c;
        this.f54974f = null;
    }

    public static boolean a(N20 n20) {
        return ((List) n20.getValue()).size() > 1;
    }

    public static void a(FE fe2, AbstractC10561zE abstractC10561zE, IdentityHashMap identityHashMap) {
        ((List) identityHashMap.computeIfAbsent(fe2, TU.a(new Uc()))).add(abstractC10561zE);
    }

    public final EE a(Z5 z52, EE ee2, FE fe2, IdentityHashMap identityHashMap) {
        List list = (List) identityHashMap.remove(fe2);
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        if (list.isEmpty()) {
            return ee2;
        }
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((Iterable) list);
        while (c6286Yx0.b()) {
            AbstractC10561zE abstractC10561zE = (AbstractC10561zE) c6286Yx0.c();
            List list2 = (List) identityHashMap.remove(abstractC10561zE);
            if (list2 == null) {
                list2 = Collections.EMPTY_LIST;
            }
            if (list2.isEmpty()) {
                ee2 = a(z52, ee2, fe2, abstractC10561zE);
            } else {
                c6286Yx0.b((Iterable) list2);
                c6286Yx0.c(abstractC10561zE);
            }
        }
        return ee2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00cd, code lost:
    
        if (r0.f40306c.b(r8.f54969a.g(r1)) != null) goto L85;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0084 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x011d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x011e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(AbstractC10561zE abstractC10561zE) {
        boolean z10;
        boolean z11;
        int r22 = abstractC10561zE.r2();
        if (r22 == 12) {
            C4798y c4798y = this.f54969a;
            H5 h52 = this.f54971c;
            if (abstractC10561zE.b(c4798y, h52, M1.a(c4798y, h52), C10394yE.f53978a)) {
                return false;
            }
        } else if (r22 != 20) {
            C9603tZ c9603tZ = null;
            if (r22 == 28) {
                C6558bE c10 = abstractC10561zE.c();
                C4798y c4798y2 = this.f54969a;
                H5 h53 = this.f54971c;
                c10.getClass();
                if (c10.a(c4798y2, h53, M1.a(c4798y2, h53), C10394yE.f53978a)) {
                    return false;
                }
                M2 type = c10.getField().getType();
                C4798y c4798y3 = this.f54969a;
                M2 a10 = type.a(c4798y3.b());
                if (!a10.P0()) {
                    com.android.tools.r8.graph.E0 g10 = c4798y3.g(a10);
                    if (g10 == null) {
                        z10 = false;
                    } else if (g10.f0()) {
                        z10 = G2.a(g10.G(), c4798y3);
                    }
                    if (z10) {
                        return false;
                    }
                    if (c10.n().d(new C7680hz0())) {
                        c9603tZ = c10.n().r().w0();
                        if (AbstractC7716iB.a(this.f54969a.b(), c9603tZ.d()) == null) {
                            return false;
                        }
                    }
                    if (!a(c10, c9603tZ)) {
                        return false;
                    }
                    if (this.f54974f == null) {
                        this.f54974f = c();
                    }
                    if (this.f54974f.contains(c10)) {
                        return false;
                    }
                }
                z10 = true;
                if (z10) {
                }
            } else if (r22 == 59) {
                C5576Mo0 K02 = abstractC10561zE.K0();
                C4798y c4798y4 = this.f54969a;
                H5 h54 = this.f54971c;
                K02.getClass();
                if (K02.a(c4798y4, h54, M1.a(c4798y4, h54), C10394yE.f53978a)) {
                    return false;
                }
                M2 type2 = K02.getField().getType();
                C4798y c4798y5 = this.f54969a;
                M2 a11 = type2.a(c4798y5.b());
                if (!a11.P0()) {
                    com.android.tools.r8.graph.E0 g11 = c4798y5.g(a11);
                    if (g11 == null) {
                        z11 = false;
                    } else if (g11.f0()) {
                        z11 = G2.a(g11.G(), c4798y5);
                    }
                    if (z11) {
                        return false;
                    }
                    if (!a(K02, (C9603tZ) null)) {
                        F1 a12 = K02.d().a(this.f54969a, this.f54971c, M1.f42128a);
                        if (a12.f0()) {
                            AbstractC5167Fm0 N10 = a12.N();
                            M2 s02 = N10.f40306c.s0();
                            if (!this.f54971c.d().f1() || this.f54971c.p() != s02) {
                            }
                        }
                        return false;
                    }
                }
                z11 = true;
                if (z11) {
                }
            } else if (r22 != 71 && r22 != 15 && r22 != 16) {
                if (f54968g || !abstractC10561zE.g1()) {
                    return false;
                }
                throw new AssertionError((Object) abstractC10561zE.toString());
            }
        }
        return !abstractC10561zE.d().z();
    }

    public final EE a(Z5 z52, EE ee2, final FE fe2, AbstractC10561zE abstractC10561zE) {
        B60 position;
        boolean z10 = f54968g;
        if (!z10 && fe2.j() && ee2.hasPrevious()) {
            throw new AssertionError();
        }
        if (!z10 && !fe2.j() && ee2.n() != fe2) {
            throw new AssertionError();
        }
        if (fe2.j()) {
            position = fe2.b().t();
        } else {
            position = fe2.k().getPosition();
        }
        if (abstractC10561zE.o() && position.o()) {
            position = B60.c.f38822h;
        }
        abstractC10561zE.b(position);
        if (abstractC10561zE.o() && fe2.b().z() && fe2.b().a()) {
            W5 a10 = ee2.a(this.f54972d, z52, this.f54969a.E(), new UnaryOperator() {
                @Override
                public final Object apply(Object obj) {
                    W5 b10;
                    b10 = FE.this.b();
                    return b10;
                }
            });
            if (fe2.j()) {
                if (!z10 && fe2.b().l().size() != 1) {
                    throw new AssertionError();
                }
                ee2.d(abstractC10561zE);
                if (z10 || !ee2.hasPrevious()) {
                    return ee2;
                }
                throw new AssertionError();
            }
            if (fe2.b().a()) {
                if (!z10 && a10.a()) {
                    throw new AssertionError();
                }
                a10.I().add(abstractC10561zE);
            } else {
                if (!z10 && !a10.a()) {
                    throw new AssertionError();
                }
                ee2.d(abstractC10561zE);
            }
            ee2.c(fe2.k());
            return ee2;
        }
        ee2.e(abstractC10561zE);
        return ee2;
    }
}
