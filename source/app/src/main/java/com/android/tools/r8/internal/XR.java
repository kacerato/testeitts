package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4423e2;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4517j2;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import com.android.tools.r8.shaking.C11350o3;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;

public final class XR {

    public static final boolean f45703e = true;

    public final C4798y f45704a;

    public final Set f45705b = AbstractC5513Ll0.c();

    public final Set f45706c = AbstractC5513Ll0.c();

    public final IdentityHashMap f45707d = new IdentityHashMap();

    public XR(C4798y c4798y, C8659ns0 c8659ns0) {
        this.f45704a = c4798y;
        c8659ns0.b("Register optimizers");
        A70.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                XR.this.a((A70) obj);
            }
        }, c4798y);
        a(new C5029Dd(c4798y));
        a(new Cif(c4798y));
        a(new C6461ai(c4798y));
        a(new C10426yT(c4798y));
        a(new QU(c4798y));
        a(new WW(c4798y));
        a(new H30(c4798y));
        a(new W30(c4798y));
        a(new C10641zl0(c4798y));
        a(new C9651tp0(c4798y));
        a(new C7319fq0(c4798y));
        if (c4798y.m() && c4798y.E().f50682g.isOptimizedShrinking()) {
            a(new C10134wj0(c4798y));
        }
        if (c4798y.m()) {
            a(new C10166wu(c4798y));
        }
        C11350o3 B10 = c4798y.E().B();
        if (B10 != null && (B10.i() >= 2 || B10.s())) {
            a(new TT(c4798y));
        }
        c8659ns0.d();
        c8659ns0.a("Initialize final fields", new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                XR.this.a();
            }
        });
        if (c4798y.m()) {
            c8659ns0.b("Initialize opt info");
            C6754cS c6754cS = new C6754cS(c4798y);
            C4516j1 b10 = c6754cS.b(c6754cS.f47050b.f37859F4.f38228f);
            if (b10 != null) {
                C5817Qt c5817Qt = C5817Qt.f43747a;
                C6921dS c6921dS = c6754cS.f47051c;
                C7127ei c7127ei = new C7127ei(new Y00(7, c5817Qt, C5701Ot.f43063a, null).a());
                c6921dS.getClass();
                b10.T0().f45458m = c7127ei;
            }
            com.android.tools.r8.graph.J1 j12 = c6754cS.f47050b.f37943R4;
            C4516j1 b11 = c6754cS.b(j12.f36492k);
            if (b11 != null) {
                AbstractC5649Nw.a(c6754cS.f47049a);
                VD vd2 = c6754cS.f47049a.f38431x;
                TD a10 = new TD().a(j12.f36482a, vd2.a(1)).a(j12.f36483b, vd2.a(2));
                UD w00 = a10.f44420a.isEmpty() ? C5817Qt.f43747a : new W00(a10.f44420a);
                C6921dS c6921dS2 = c6754cS.f47051c;
                C7127ei c7127ei2 = new C7127ei(new Y00(7, w00, C5701Ot.f43063a, c6754cS.f47050b.f37859F4.f38228f).a());
                c6921dS2.getClass();
                b11.T0().f45458m = c7127ei2;
            }
            G1 g12 = c6754cS.f47049a.f38427t;
            C4554l1 c4554l1 = c6754cS.f47050b.f38190x4.f38215a;
            g12.getClass();
            C7140em0 c7140em0 = C7140em0.f47780d;
            boolean z10 = AbstractC10330xt.f53865a;
            C7520h10 c7520h10 = C7520h10.f48413b;
            c6754cS.a(c4554l1, c7140em0);
            c6754cS.a(c6754cS.f47050b.f38190x4.f38216b, C7140em0.f47781e);
            c6754cS.a();
            Iterator it = c6754cS.f47050b.f38208z6.iterator();
            while (it.hasNext()) {
                C4516j1 b12 = c6754cS.b((com.android.tools.r8.graph.A2) it.next());
                if (b12 != null) {
                    if (!C6754cS.f47048e) {
                        b12.L0();
                        if (!b12.f37320m.n().l()) {
                            b12.L0();
                            if (!b12.f37320m.n().j()) {
                                throw new AssertionError();
                            }
                        }
                    }
                    C6921dS c6921dS3 = c6754cS.f47051c;
                    C4798y c4798y2 = c6754cS.f47049a;
                    boolean z11 = AbstractC10330xt.f53865a;
                    C7520h10 c7520h102 = C7520h10.f48413b;
                    c6921dS3.getClass();
                    b12.T0().a(c4798y2, b12, c7520h102);
                }
            }
            Iterator<com.android.tools.r8.graph.A2> it2 = c6754cS.f47050b.f38200y6.iterator();
            while (it2.hasNext()) {
                C4516j1 b13 = c6754cS.b(it2.next());
                if (b13 != null) {
                    c6754cS.f47051c.getClass();
                    b13.T0().b(0);
                }
            }
            c6754cS.b();
            C4517j2 c4517j2 = c6754cS.f47050b.f37852E4;
            Iterator<E> it3 = AbstractC7552hC.a(c4517j2.f37354f, c4517j2.f37355g, c4517j2.f37356h).iterator();
            while (it3.hasNext()) {
                C4516j1 b14 = c6754cS.b((com.android.tools.r8.graph.A2) it3.next());
                if (b14 != null) {
                    c6754cS.f47051c.getClass();
                    b14.T0().b(0);
                }
            }
            this.f45706c.addAll(c6754cS.f47052d);
            c8659ns0.d();
        }
    }

    public final void a() {
        for (AbstractC4423e2 abstractC4423e2 : this.f45704a.b().f38135q5) {
            Set set = this.f45705b;
            Objects.requireNonNull(set);
            abstractC4423e2.a(new KH0(set));
        }
    }

    public final void a(ZR zr) {
        com.android.tools.r8.graph.M2 type = zr.getType();
        ZR zr2 = (ZR) this.f45707d.put(type, zr);
        if (!f45703e && zr2 != null) {
            throw new AssertionError();
        }
        this.f45706c.add(type);
    }

    public final void a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX, C5035Df c5035Df) {
        VJ e02;
        com.android.tools.r8.graph.H0 e10;
        ZR zr;
        C10696a c10696a = new C10696a();
        Z5 u10 = c7215fB.u();
        Set c10 = AbstractC5513Ll0.c();
        while (u10.f46159b.hasNext()) {
            W5 w52 = (W5) u10.f46159b.next();
            u10.f46160c = w52;
            if (!c10.contains(w52)) {
                Y5 I10 = w52.I();
                IdentityHashMap identityHashMap = new IdentityHashMap();
                EE ee2 = I10;
                while (ee2.hasNext()) {
                    AbstractC10561zE next = ee2.next();
                    if (next.P1() && (e10 = (e02 = next.e0()).e(this.f45704a, c7215fB.j())) != null && (zr = (ZR) this.f45707d.get(e10.p())) != null) {
                        ee2 = zr.a(c7215fB, u10, ee2, e02, e10, c10696a, c10, (YR) identityHashMap.computeIfAbsent(zr, new Function() {
                            @Override
                            public final Object apply(Object obj) {
                                return ((ZR) obj).a();
                            }
                        }), abstractC6931dX, c5035Df);
                        identityHashMap = identityHashMap;
                    }
                }
            }
        }
        c7215fB.b((Collection<W5>) c10);
        c10696a.a(this.f45704a, c7215fB, C6628bi.b());
        c7215fB.x();
        if (!f45703e && !c7215fB.b(this.f45704a)) {
            throw new AssertionError();
        }
    }
}
