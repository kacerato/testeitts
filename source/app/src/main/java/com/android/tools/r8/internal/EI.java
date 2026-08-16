package com.android.tools.r8.internal;

import com.android.tools.r8.errors.InterfaceDesugarMissingTypeDiagnostic;
import com.android.tools.r8.graph.AbstractC4420e;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4440f0;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.MethodPosition;
import com.android.tools.r8.references.Reference;
import com.android.tools.r8.synthesis.AbstractC11602t;
import com.android.tools.r8.synthesis.S;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

public final class EI implements X9 {

    public static final boolean f39815l = true;

    public final C4798y f39816b;

    public final C8570nJ f39817c;

    public final C4724u1 f39818d;

    public final int f39819e;

    public final C10404yI f39820f;

    public final Set f39821g = AbstractC5513Ll0.c();

    public final C7873j80 f39822h;

    public final ConcurrentHashMap f39823i;

    public final QC f39824j;

    public final QC f39825k;

    public EI(C4798y c4798y, QC qc2, QC qc3, int i10) {
        C8040k80 c8040k80 = AbstractC8374m80.f50207d;
        this.f39822h = new C7873j80();
        this.f39823i = new ConcurrentHashMap();
        this.f39816b = c4798y;
        this.f39824j = qc2;
        this.f39825k = qc3;
        this.f39817c = c4798y.E();
        this.f39818d = c4798y.b();
        boolean z10 = f39815l;
        if (!z10 && i10 != 2 && i10 != 1) {
            throw new AssertionError();
        }
        this.f39819e = i10;
        if (!z10 && i10 != 2 && !c4798y.E().Q()) {
            throw new AssertionError();
        }
        this.f39820f = new C10404yI(c4798y);
        b();
    }

    public static void f(com.android.tools.r8.graph.H5 h52) {
        if (h52.getHolder().f36367v == null) {
            h52.d().a(C5313Ib.f41138i);
            return;
        }
        C4516j1 d10 = h52.d();
        C5313Ib c5313Ib = C5313Ib.f41138i;
        C5313Ib G12 = h52.getHolder().G1();
        if (!c5313Ib.b(G12)) {
            c5313Ib = G12;
        }
        d10.a(c5313Ib);
    }

    @Override
    public final boolean a() {
        return false;
    }

    public final void b() {
        Iterator<com.android.tools.r8.graph.M2> it = this.f39817c.x().a().f53766c.g().o().iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.E0 g10 = this.f39816b.g(it.next());
            if (g10 != null) {
                Iterator<C4516j1> it2 = g10.c(new com.android.tools.r8.graph.F7()).iterator();
                while (it2.hasNext()) {
                    this.f39821g.add(it2.next().getReference().f38298g);
                }
            }
        }
    }

    public final Collection c(com.android.tools.r8.graph.H0 h02, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        return a(this.f39820f.a(h02, abstractC7103ea).getReference());
    }

    public final Collection d(com.android.tools.r8.graph.H0 h02, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        com.android.tools.r8.graph.G0 a10;
        C10404yI c10404yI = this.f39820f;
        c10404yI.getClass();
        h02.getClass();
        if (h02 instanceof com.android.tools.r8.graph.H5) {
            a10 = c10404yI.d(h02.H(), abstractC7103ea);
        } else {
            InterfaceC4440f0 z10 = h02.getHolder().z();
            com.android.tools.r8.graph.A2 reference = h02.getReference();
            C4724u1 b10 = c10404yI.f53990a.b();
            a10 = C10404yI.a(reference.a(C10404yI.a(b10, reference.s0()), b10), z10, c10404yI.f53990a);
        }
        return a((com.android.tools.r8.graph.A2) a10.getReference());
    }

    public final void e(com.android.tools.r8.graph.H5 h52) {
        f(h52);
    }

    public final C5218Gj a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.M2 m22) {
        Set c10 = AbstractC5513Ll0.c();
        Set c11 = AbstractC5513Ll0.c();
        com.android.tools.r8.graph.E0 g10 = this.f39816b.g(m22);
        if (g10 == null) {
            this.f39820f.a(h22, e02, m22);
            c10.removeAll(c11);
            if (c10.isEmpty() && c11.isEmpty()) {
                return C5218Gj.f40564c;
            }
            return new C5218Gj(CT.a(c10), CT.a(c11));
        }
        if (g10.isInterface()) {
            if (g10.f0() && !this.f39820f.a(g10)) {
                c10.removeAll(c11);
                if (c10.isEmpty() && c11.isEmpty()) {
                    return C5218Gj.f40564c;
                }
                return new C5218Gj(CT.a(c10), CT.a(c11));
            }
            if (e02.e0() && !g10.f0()) {
                this.f39816b.f().a(e02.d0(), g10);
            }
            for (com.android.tools.r8.graph.M2 m23 : g10.f36248h.f36675b) {
                C5218Gj b10 = b(h22, g10, m23);
                c10.addAll(b10.f40565a);
                c11.addAll(b10.f40566b);
            }
            Iterator<C4516j1> it = g10.D1().iterator();
            while (it.hasNext()) {
                com.android.tools.r8.graph.A2 reference = it.next().getReference();
                Iterator it2 = c10.iterator();
                while (it2.hasNext()) {
                    C4516j1 c4516j1 = (C4516j1) it2.next();
                    if (reference.a(c4516j1)) {
                        c11.add(c4516j1);
                        it2.remove();
                    }
                }
            }
            for (C4516j1 c4516j12 : g10.D1()) {
                this.f39820f.getClass();
                if (C10404yI.a(c4516j12)) {
                    c10.add(c4516j12);
                }
            }
            c10.removeAll(c11);
            if (c10.isEmpty() && c11.isEmpty()) {
                return C5218Gj.f40564c;
            }
            return new C5218Gj(CT.a(c10), CT.a(c11));
        }
        throw new C5325If("Type " + m22.j0() + " is referenced as an interface from `" + e02.toString() + "`.");
    }

    public final void c(com.android.tools.r8.graph.H5 h52) {
        f(h52);
    }

    public final C6473am c(C7437ga c7437ga, final com.android.tools.r8.graph.H5 h52) {
        final com.android.tools.r8.graph.A2 V10 = c7437ga.V();
        C4798y c4798y = this.f39816b;
        com.android.tools.r8.graph.M2 m22 = V10.f38297f;
        c4798y.getClass();
        com.android.tools.r8.graph.E0 holder = h52.getHolder();
        if (m22 != holder.f36245e) {
            holder = c4798y.a(m22);
        }
        if (holder == null) {
            return new C6204Xl(new C6261Yl().a(new InterfaceC6318Zl() {
                @Override
                public final void a() {
                    EI.this.a(h52, V10);
                }
            }));
        }
        final Z4.c<?> o10 = this.f39816b.g().h(holder, V10).o();
        if (holder.isInterface() && (o10 == null || o10.q().w0())) {
            return a(c7437ga, o10, h52);
        }
        if (holder.isInterface() && !com.android.tools.r8.graph.H0.a(o10.f37021c, o10.f37022d).getHolder().f0()) {
            C4516j1 q10 = o10.q();
            q10.L0();
            if (q10.f37314g.h()) {
                C4798y c4798y2 = this.f39816b;
                if (AbstractC4420e.a(com.android.tools.r8.graph.H0.a(o10.f37021c, o10.f37022d), o10.f37020b, h52, c4798y2, c4798y2.g()).a()) {
                    return a(c7437ga, (Z4.c) null, h52);
                }
                return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
                    @Override
                    public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h53, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                        return EI.this.a(o10, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h53, c5035Df, y92, c4724u1);
                    }
                }));
            }
            return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
                @Override
                public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h53, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                    return EI.this.a(o10, V10, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h53, c5035Df, y92, c4724u1);
                }
            }));
        }
        C6473am a10 = a(holder, V10, h52);
        if (a10.a()) {
            return a10;
        }
        if (h52.F()) {
            return C8355m2.a(this.f39816b, c7437ga, new InterfaceC6318Zl() {
                @Override
                public final void a() {
                    EI.this.d(h52);
                }
            });
        }
        return new C6204Xl(new C6261Yl().a(new InterfaceC6318Zl() {
            @Override
            public final void a() {
                EI.this.e(h52);
            }
        }));
    }

    public final void b(C7437ga c7437ga, com.android.tools.r8.graph.H5 h52) {
        if (c7437ga.O()) {
            f(h52);
        }
        a(c7437ga.V().s0(), h52);
    }

    public final void d(com.android.tools.r8.graph.H5 h52) {
        this.f39816b.E().f50691j.warning(new StringDiagnostic("Interface method desugaring has inserted NoSuchMethodError replacing a super call in " + h52.r(), h52.f36317b.f36244d));
    }

    public final C6473am b(com.android.tools.r8.graph.E0 e02, final C7437ga c7437ga, final com.android.tools.r8.graph.H5 h52) {
        if (!e02.isInterface()) {
            return new C6204Xl(new C6261Yl().a(new InterfaceC6318Zl() {
                @Override
                public final void a() {
                    EI.this.b(h52);
                }
            }));
        }
        com.android.tools.r8.synthesis.J g10 = this.f39816b.f38408a.g();
        if (g10.f58087d.f58055a.containsKey(c7437ga.V().s0())) {
            return C6473am.f46625a;
        }
        if (e02.f0() && !this.f39820f.a(e02)) {
            C8570nJ c8570nJ = this.f39817c;
            c8570nJ.getClass();
            if (c8570nJ.c(C2.L)) {
                return new C6204Xl(new C6261Yl().a(new InterfaceC6318Zl() {
                    @Override
                    public final void a() {
                        EI.this.c(h52);
                    }
                }));
            }
            if (this.f39822h.f45165b.containsKey(h52.getReference())) {
                return C6473am.f46625a;
            }
            return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
                @Override
                public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h53, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                    return EI.this.a(c7437ga, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h53, c5035Df, y92, c4724u1);
                }
            }));
        }
        Z4.c<?> o10 = this.f39816b.g().g(e02, c7437ga.V()).o();
        if (e02.isInterface() && (o10 == null || !o10.q().w0())) {
            return a(c7437ga, o10, h52);
        }
        boolean z10 = f39815l;
        if (!z10 && o10 == null) {
            throw new AssertionError();
        }
        if (!z10 && !o10.q().w0()) {
            throw new AssertionError();
        }
        final com.android.tools.r8.graph.H0 a10 = com.android.tools.r8.graph.H0.a(o10.f37021c, o10.f37022d);
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h53, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                return EI.this.d(a10, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h53, c5035Df, y92, c4724u1);
            }
        }));
    }

    public static void a(final C4477h c4477h, C8570nJ c8570nJ) {
        C10261xU a10 = c8570nJ.x().a();
        a10.f53766c.g().forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                EI.a(C4477h.this, (com.android.tools.r8.graph.M2) obj, (C7163eu) obj2);
            }
        });
        a10.h().forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                EI.a(C4477h.this, (com.android.tools.r8.graph.M2) obj, (C9796ui) obj2);
            }
        });
    }

    public static void a(C4477h c4477h, com.android.tools.r8.graph.M2 m22, C7163eu c7163eu) {
        a(c4477h, m22);
        a(c4477h, c7163eu.f47804a);
    }

    public static void a(C4477h c4477h, com.android.tools.r8.graph.M2 m22, C9796ui c9796ui) {
        a(c4477h, m22);
        a(c4477h, c9796ui.f52924a.s0());
        a(c4477h, c9796ui.f52925b.s0());
    }

    public final Collection b(C6257Yj c6257Yj, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        return a(this.f39820f.a(c6257Yj, abstractC7103ea).getReference());
    }

    public static void a(final C4477h c4477h, com.android.tools.r8.graph.M2 m22) {
        c4477h.b().a(m22);
        com.android.tools.r8.graph.E0 g10 = c4477h.g(m22);
        if (g10 != null && g10.f0() && g10.isInterface()) {
            g10.g(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    EI.a(C4477h.this, (C4516j1) obj);
                }
            });
        }
    }

    public final Collection b(com.android.tools.r8.graph.H0 h02, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        com.android.tools.r8.graph.A2 reference;
        C4516j1 d10 = h02.d();
        d10.L0();
        if (d10.f37314g.h()) {
            if (h02 instanceof com.android.tools.r8.graph.H5) {
                reference = this.f39820f.c(h02.H(), abstractC7103ea).getReference();
            } else {
                C10404yI c10404yI = this.f39820f;
                c10404yI.getClass();
                reference = C10404yI.a(h02.getReference(), "$private$", c10404yI.f53990a.b());
            }
        } else {
            reference = this.f39820f.a(h02, abstractC7103ea).getReference();
        }
        return a(reference);
    }

    public static void a(C4477h c4477h, C4516j1 c4516j1) {
        if (c4516j1.g1()) {
            c4477h.b().a(c4516j1.getReference().f36127i.f36440e);
            for (com.android.tools.r8.graph.M2 m22 : c4516j1.getReference().f36127i.f36441f.f36675b) {
                c4477h.b().a(m22);
            }
        }
    }

    public final boolean a(final C7437ga c7437ga, final com.android.tools.r8.graph.H5 h52) {
        return AbstractC9907vK.b(this.f39824j, new V60() {
            @Override
            public final boolean apply(Object obj) {
                boolean a10;
                X9 x92 = (X9) obj;
                a10 = x92.a(h52, C7437ga.this).a();
                return a10;
            }
        });
    }

    public final boolean a(final C7604ha c7604ha, final com.android.tools.r8.graph.H5 h52) {
        return AbstractC9907vK.b(this.f39825k, new V60() {
            @Override
            public final boolean apply(Object obj) {
                boolean a10;
                X9 x92 = (X9) obj;
                a10 = x92.a(h52, C7604ha.this).a();
                return a10;
            }
        });
    }

    @Override
    public final void a(IntConsumer intConsumer) {
        AbstractC4962Ca.b(intConsumer);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, AbstractC7103ea abstractC7103ea) {
        if (this.f39819e == 2) {
            return;
        }
        if (a(h52)) {
            f(h52);
            return;
        }
        for (W9 w92 : h52.d().Q0().V().E0()) {
            w92.getClass();
            if ((w92 instanceof C7604ha) && !a(w92.k(), h52)) {
                com.android.tools.r8.graph.D0 V10 = w92.k().V();
                a(h52, V10.f36214g);
                for (com.android.tools.r8.graph.R2 r22 : V10.f36215h) {
                    r22.getClass();
                    if (r22 instanceof com.android.tools.r8.graph.X2) {
                        a(h52, (com.android.tools.r8.graph.C2) r22.z0().f36759d);
                    }
                }
            }
            a(h52, w92).b();
        }
    }

    public final void b(com.android.tools.r8.graph.H5 h52) {
        f(h52);
    }

    public final C5218Gj b(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.M2 m22) {
        C5218Gj c5218Gj = (C5218Gj) this.f39823i.get(m22);
        if (c5218Gj != null) {
            return c5218Gj;
        }
        C5218Gj a10 = a(h22, e02, m22);
        C5218Gj c5218Gj2 = (C5218Gj) this.f39823i.putIfAbsent(m22, a10);
        return c5218Gj2 != null ? c5218Gj2 : a10;
    }

    @Override
    public final C6473am a(final com.android.tools.r8.graph.H5 h52, W9 w92) {
        if (a(h52)) {
            return C6473am.f46625a;
        }
        final C7437ga j10 = w92.j();
        if (j10 == null) {
            return C6473am.f46625a;
        }
        if (a(j10, h52)) {
            return C6473am.f46625a;
        }
        if (j10.N()) {
            if (j10.V().b(this.f39818d)) {
                return C6473am.f46625a;
            }
        }
        if (this.f39819e == 2) {
            if (!j10.V().s0().I0()) {
                return C6473am.f46625a;
            }
            C4798y c4798y = this.f39816b;
            com.android.tools.r8.graph.A2 V10 = j10.V();
            c4798y.getClass();
            com.android.tools.r8.graph.M2 m22 = V10.f38297f;
            com.android.tools.r8.graph.E0 holder = h52.getHolder();
            if (m22 != holder.f36245e) {
                holder = c4798y.a(m22);
            }
            if (holder == null) {
                return C6473am.f46625a;
            }
            if (!j10.X()) {
                if (j10.N()) {
                    return a(holder, j10.V(), h52);
                }
                if (!j10.P() && !j10.M()) {
                    return C6473am.f46625a;
                }
                C6204Xl a10 = a(j10);
                return a10 == null ? C6473am.f46625a : a10;
            }
            if (!j10.P() && !j10.M()) {
                return C6473am.f46625a;
            }
            C4514j g10 = this.f39816b.g();
            Z4.c<?> o10 = g10.b(j10.V(), j10.X()).o();
            if (o10 != null && o10.q().G0()) {
                if (AbstractC4420e.a(com.android.tools.r8.graph.H0.a(o10.f37021c, o10.f37022d), o10.f37020b, h52, this.f39816b, g10).d()) {
                    return C6473am.f46625a;
                }
            }
            if (o10 != null && o10.q().w0()) {
                return C6473am.f46625a;
            }
            C6204Xl a11 = a(j10);
            return a11 != null ? a11 : C6473am.f46625a;
        }
        if (!j10.X()) {
            if (!f39815l && j10.X()) {
                throw new AssertionError();
            }
            if (j10.N()) {
                C4798y c4798y2 = this.f39816b;
                com.android.tools.r8.graph.A2 V11 = j10.V();
                c4798y2.getClass();
                com.android.tools.r8.graph.M2 m23 = V11.f38297f;
                com.android.tools.r8.graph.E0 holder2 = h52.getHolder();
                if (m23 != holder2.f36245e) {
                    holder2 = c4798y2.a(m23);
                }
                if (holder2 == null) {
                    return C6473am.f46625a;
                }
                return a(holder2, j10.V(), h52);
            }
            if (!j10.P() && !j10.M()) {
                return C6473am.f46625a;
            }
            C6204Xl a12 = a(j10);
            if (a12 != null) {
                return a12;
            }
            C4514j g11 = this.f39816b.g();
            com.android.tools.r8.graph.Z4 b10 = g11.b(j10.V(), j10.X());
            if (b10.w() && b10.o().q().w0()) {
                com.android.tools.r8.graph.M2 s02 = j10.V().s0();
                com.android.tools.r8.graph.E0 holder3 = h52.getHolder();
                if (s02 != holder3.f36245e) {
                    holder3 = g11.a(s02);
                }
                com.android.tools.r8.graph.H0 b11 = g11.b(holder3, j10.V());
                if (b11 != null && b11.F()) {
                    return a(j10, b10.o(), h52);
                }
                return C6473am.f46625a;
            }
            return C6473am.f46625a;
        }
        C4798y c4798y3 = this.f39816b;
        com.android.tools.r8.graph.A2 V12 = j10.V();
        c4798y3.getClass();
        com.android.tools.r8.graph.M2 m24 = V12.f38297f;
        com.android.tools.r8.graph.E0 holder4 = h52.getHolder();
        if (m24 != holder4.f36245e) {
            holder4 = c4798y3.a(m24);
        }
        if (holder4 == null) {
            if (!j10.P() && !j10.M()) {
                return new C6204Xl(new C6261Yl().a(new InterfaceC6318Zl() {
                    @Override
                    public final void a() {
                        EI.this.b(j10, h52);
                    }
                }));
            }
            return C6473am.f46625a;
        }
        if (!j10.P() && !j10.M()) {
            if (j10.O()) {
                return b(holder4, j10, h52);
            }
            if (j10.N()) {
                if (j10.b(h52.p())) {
                    return c(j10, h52);
                }
                return a(holder4, j10, h52);
            }
            return C6473am.f46625a;
        }
        C4514j g12 = this.f39816b.g();
        Z4.c<?> o11 = g12.b(j10.V(), j10.X()).o();
        if (o11 != null && o11.q().G0()) {
            if (AbstractC4420e.a(com.android.tools.r8.graph.H0.a(o11.f37021c, o11.f37022d), o11.f37020b, h52, this.f39816b, g12).d()) {
                return a(holder4, j10, h52);
            }
        }
        if (o11 != null && o11.q().w0()) {
            return a(j10, o11, h52);
        }
        C6204Xl a13 = a(j10);
        return a13 != null ? a13 : C6473am.f46625a;
    }

    public final Collection a(final C7437ga c7437ga, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        com.android.tools.r8.graph.H5 b10 = this.f39816b.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58152E;
                return bVar;
            }
        }, c5035Df.a(), this.f39816b, new Consumer() {
            @Override
            public final void accept(Object obj) {
                EI.this.a(c7437ga, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        this.f39822h.add((C7873j80) b10);
        abstractC7103ea.g(b10, h52);
        f(b10);
        return a(b10.getReference());
    }

    public final void a(final C7437ga c7437ga, com.android.tools.r8.synthesis.N n10) {
        n10.f58115e = c7437ga.V().y0();
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return EI.this.a(c7437ga, a22);
            }
        };
    }

    public final AbstractC4497i0 a(C7437ga c7437ga, com.android.tools.r8.graph.A2 a22) {
        C6842cy a10 = new C6842cy(this.f39818d).a(c7437ga.V(), true);
        a10.f47222b = a22;
        a10.f47225e = true;
        return a10.a();
    }

    public final Collection a(Z4.c cVar, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        com.android.tools.r8.graph.A2 a10;
        com.android.tools.r8.graph.H0 a11 = com.android.tools.r8.graph.H0.a(cVar.f37021c, cVar.f37022d);
        if (a11 instanceof com.android.tools.r8.graph.H5) {
            a10 = this.f39820f.c(a11.H(), abstractC7103ea).getReference();
        } else {
            C10404yI c10404yI = this.f39820f;
            c10404yI.getClass();
            a10 = C10404yI.a(a11.getReference(), "$private$", c10404yI.f53990a.b());
        }
        return a(a10);
    }

    public final Collection a(Z4.c cVar, com.android.tools.r8.graph.A2 a22, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        com.android.tools.r8.graph.H0 a10 = com.android.tools.r8.graph.H0.a(cVar.f37021c, cVar.f37022d);
        com.android.tools.r8.graph.H2 holder = h52.getHolder();
        Iterator it = b(holder, holder, a22.f38297f).f40565a.iterator();
        com.android.tools.r8.graph.A2 a23 = null;
        com.android.tools.r8.graph.A2 a24 = null;
        while (true) {
            if (!it.hasNext()) {
                a23 = a24;
                break;
            }
            com.android.tools.r8.graph.A2 reference = ((C4516j1) it.next()).getReference();
            if (reference.f36127i == a22.f36127i && reference.f38298g == a22.f38298g) {
                if (a24 != null) {
                    break;
                }
                a24 = reference;
            }
        }
        if (a23 != null) {
            a22 = a23;
        }
        if (f39815l || a10.getReference() == a22) {
            return a(this.f39820f.a(a10, abstractC7103ea).getReference());
        }
        throw new AssertionError();
    }

    public final C6204Xl a(C7437ga c7437ga) {
        com.android.tools.r8.graph.Z4 b10 = this.f39816b.g().b(c7437ga.V(), c7437ga.X());
        C10404yI c10404yI = this.f39820f;
        c10404yI.getClass();
        C6830cu a10 = c10404yI.a(b10.a(), b10.p());
        final C6257Yj c6257Yj = a10 == null ? null : a10.f47198b;
        if (c6257Yj == null) {
            return null;
        }
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                return EI.this.b(c6257Yj, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, y92, c4724u1);
            }
        }));
    }

    public final C6473am a(com.android.tools.r8.graph.E0 e02, C7437ga c7437ga, com.android.tools.r8.graph.H5 h52) {
        Origin origin;
        com.android.tools.r8.graph.A2 V10 = c7437ga.V();
        if (!e02.isInterface()) {
            return C6473am.f46625a;
        }
        if (!e02.f0()) {
            com.android.tools.r8.graph.Z4 b10 = this.f39816b.g().b(V10, c7437ga.X());
            if (b10.h()) {
                return a(c7437ga, (Z4.c) null, h52);
            }
            Z4.c<?> o10 = b10.o();
            if (o10 == null) {
                return C6473am.f46625a;
            }
            final com.android.tools.r8.graph.H0 a10 = e02.a(V10);
            if (a10 != null) {
                if (f39815l || a10.d() == com.android.tools.r8.graph.H0.a(o10.f37021c, o10.f37022d).d()) {
                    return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
                        @Override
                        public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h53, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                            return EI.this.b(a10, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h53, c5035Df, y92, c4724u1);
                        }
                    }));
                }
                throw new AssertionError();
            }
            final com.android.tools.r8.graph.H0 b11 = this.f39816b.g().b(e02, V10);
            if (b11 != null) {
                if (!f39815l && b11.d() != com.android.tools.r8.graph.H0.a(o10.f37021c, o10.f37022d).d()) {
                    throw new AssertionError();
                }
                return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
                    @Override
                    public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h53, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                        return EI.this.c(b11, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h53, c5035Df, y92, c4724u1);
                    }
                }));
            }
            if (f39815l) {
                return C6473am.f46625a;
            }
            throw new AssertionError();
        }
        String str = "Unexpected call to a private method defined in library class " + e02.j0();
        com.android.tools.r8.graph.M2 m22 = h52.getReference().f38297f;
        C5313Ib c5313Ib = C10404yI.f53988c;
        if (m22.f36592f.toString().endsWith("$-CC;")) {
            m22 = C10404yI.b(this.f39820f.f53990a.b(), m22);
        }
        com.android.tools.r8.graph.E0 g10 = this.f39816b.g(m22);
        if (g10 == null) {
            origin = Origin.unknown();
        } else {
            origin = g10.f36244d;
        }
        throw new C5325If(origin, str, null);
    }

    public final C6204Xl a(C7437ga c7437ga, Z4.c cVar, com.android.tools.r8.graph.H5 h52) {
        if (f39815l || !a(c7437ga, h52)) {
            return C8355m2.a(this.f39816b, c7437ga, cVar);
        }
        throw new AssertionError();
    }

    public static List a(com.android.tools.r8.graph.A2 a22) {
        return Collections.singletonList(new C7437ga(184, a22, false));
    }

    public final boolean a(com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.synthesis.J g10 = this.f39816b.f38408a.g();
        AbstractC8552nC abstractC8552nC = g10.f58086c.f58241b;
        com.android.tools.r8.graph.M2 p10 = h52.p();
        Object obj = Collections.EMPTY_LIST;
        Object obj2 = abstractC8552nC.get(p10);
        if (obj2 != null) {
            obj = obj2;
        }
        Iterator it = ((List) obj).iterator();
        while (it.hasNext()) {
            S.b bVar = ((com.android.tools.r8.synthesis.P) it.next()).f58222a;
            S.b bVar2 = g10.f58085b.f58152E;
            bVar.getClass();
            if (InterfaceC7166ev.a(bVar, bVar2)) {
                return true;
            }
        }
        AbstractC11602t abstractC11602t = (AbstractC11602t) g10.f58087d.f58055a.get(h52.p());
        if (abstractC11602t == null) {
            return false;
        }
        S.b bVar3 = abstractC11602t.f58331a;
        S.b bVar4 = g10.f58085b.f58152E;
        bVar3.getClass();
        return InterfaceC7166ev.a(bVar3, bVar4);
    }

    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.A2 a22) {
        a(a22.f38297f, h52);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0099  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C6473am a(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H5 h52) {
        final C6257Yj c6257Yj;
        C4514j g10 = this.f39816b.g();
        C4514j g11 = this.f39816b.g();
        C4798y<?> c4798y = this.f39816b;
        g11.getClass();
        final com.android.tools.r8.graph.H0 a10 = g11.a(a22, h52.getHolder(), c4798y, g10);
        if (e02.isInterface() && e02.f0() && this.f39820f.a(e02) && !this.f39820f.c(e02.f36245e) && a10 != null && a10.d().g1()) {
            com.android.tools.r8.graph.E0 holder = a10.getHolder();
            if (holder.f0() && holder.isInterface()) {
                return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
                    @Override
                    public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h53, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                        return EI.this.a(a10, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h53, c5035Df, y92, c4724u1);
                    }
                }));
            }
        }
        C10404yI c10404yI = this.f39820f;
        if (a10 == null) {
            c10404yI.getClass();
        } else {
            com.android.tools.r8.graph.A2 a23 = X2.a(c10404yI.f53990a).f53766c.i().get(a10.getReference());
            if (a23 != null) {
                c6257Yj = new C6257Yj(a23);
            } else {
                C6830cu a11 = c10404yI.a(e02, a10);
                if (a11 != null) {
                    c6257Yj = a11.f47199c;
                }
            }
            if (c6257Yj != null) {
                return C6473am.f46625a;
            }
            return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
                @Override
                public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h53, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                    return EI.this.a(c6257Yj, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h53, c5035Df, y92, c4724u1);
                }
            }));
        }
        c6257Yj = null;
        if (c6257Yj != null) {
        }
    }

    public final Collection a(com.android.tools.r8.graph.H0 h02, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        return a(this.f39820f.a(h02, abstractC7103ea).getReference());
    }

    public final Collection a(C6257Yj c6257Yj, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        return a(this.f39820f.a(c6257Yj, (CI) abstractC7103ea));
    }

    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.C2 c22) {
        if (c22.f36190e.c()) {
            com.android.tools.r8.graph.E0 g10 = this.f39816b.g(c22.m0().f38297f);
            if (g10 == null) {
                a(c22.m0().f38297f, h52);
                return;
            }
            if (g10.isInterface()) {
                throw new C6501av0("Desugaring of static interface method handle in `" + h52.r() + "` is not yet supported.");
            }
        }
    }

    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52) {
        Origin origin;
        if (this.f39820f.d(m22)) {
            return;
        }
        AbstractC5308Hz v10 = this.f39816b.v();
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        v10.getClass();
        com.android.tools.r8.graph.A2 a10 = v10.a(AbstractC5308Hz.g(), reference);
        com.android.tools.r8.graph.M2 m23 = a10.f38297f;
        C5313Ib c5313Ib = C10404yI.f53988c;
        if (m23.f36592f.toString().endsWith("$-CC;")) {
            m23 = C10404yI.b(this.f39820f.f53990a.b(), m23);
        }
        com.android.tools.r8.graph.E0 g10 = this.f39816b.g(m23);
        if (g10 == null) {
            origin = Origin.unknown();
        } else {
            origin = g10.f36244d;
        }
        Origin origin2 = origin;
        MethodPosition methodPosition = new MethodPosition(a10.v0());
        C8570nJ c8570nJ = this.f39817c;
        if (c8570nJ.f50671c2.add(m22)) {
            c8570nJ.f50691j.warning(new InterfaceDesugarMissingTypeDiagnostic(origin2, methodPosition, Reference.classFromDescriptor(m22.V0()), Reference.classFromDescriptor(a10.f38297f.V0()), null));
        }
    }
}
