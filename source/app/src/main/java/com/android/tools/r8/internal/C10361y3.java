package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C10361y3 {

    public static final boolean f53928g = true;

    public final C4798y f53929a;

    public final C10374y70 f53930b;

    public final C5591Mw f53931c;

    public final C10601zX f53932d;

    public final C8570nJ f53933e;

    public final O60 f53934f;

    public C10361y3(C4798y c4798y, C10374y70 c10374y70, C5591Mw c5591Mw, C10601zX c10601zX, O60 o60) {
        this.f53929a = c4798y;
        this.f53930b = c10374y70;
        this.f53931c = c5591Mw;
        this.f53932d = c10601zX;
        this.f53933e = c4798y.E();
        this.f53934f = o60;
    }

    public final com.android.tools.r8.graph.O5 a(ExecutorService executorService) {
        C8040k80 c8040k80 = AbstractC8374m80.f50207d;
        final C7873j80 c7873j80 = new C7873j80();
        com.android.tools.r8.J.a(this.f53929a, ((C11245i) this.f53929a.f()).d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10361y3.this.a(c7873j80, (com.android.tools.r8.graph.H2) obj);
            }
        }, executorService);
        for (com.android.tools.r8.graph.H5 h52 : c7873j80.f45165b.values()) {
            C10374y70 c10374y70 = this.f53930b;
            c10374y70.a(h52);
            com.android.tools.r8.graph.N5 n52 = c10374y70.f49517C;
            n52.f36611g.add(h52.getReference());
            O60 o60 = this.f53934f;
            o60.f42781a.a(this.f53929a.v(), h52.getReference());
        }
        this.f53930b.b(executorService);
        this.f53930b.a(AbstractC8374m80.f50207d, executorService);
        com.android.tools.r8.graph.M5 m52 = new com.android.tools.r8.graph.M5();
        m52.f36605a = this.f53929a.e();
        m52.f36611g = c7873j80.b(new EZ0());
        return m52.a();
    }

    public final void a(AbstractC8374m80 abstractC8374m80, com.android.tools.r8.graph.H2 h22) {
        abstractC8374m80.f45165b.putAll(a(h22).f45165b);
    }

    public final AbstractC8374m80 a(com.android.tools.r8.graph.H2 h22) {
        final AbstractC8374m80 c10 = AbstractC8374m80.c();
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10361y3.this.a((com.android.tools.r8.graph.F5) obj);
            }
        };
        h22.getClass();
        h22.f(consumer, EnumC6871d70.f47286b);
        h22.l(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10361y3.this.a(c10, (com.android.tools.r8.graph.H5) obj);
            }
        });
        com.android.tools.r8.graph.N4 b02 = h22.b0();
        Set<C4516j1> b10 = c10.b();
        b02.getClass();
        if (b10.isEmpty()) {
            return c10;
        }
        b02.f36638b.a((Set) b10);
        b02.f36639c = C4516j1.f37311v;
        return c10;
    }

    public final void a(com.android.tools.r8.graph.F5 f52) {
        AbstractC5361Iw0 abstractC5361Iw0 = (AbstractC5361Iw0) this.f53931c.f42460a.f43368b.remove(new C7333fv(C5573Mn.f42399a, f52));
        if (abstractC5361Iw0 == null) {
            abstractC5361Iw0 = AbstractC5361Iw0.a(f52.getReference().getType());
        }
        if (abstractC5361Iw0 instanceof C10671zv0) {
            return;
        }
        if (abstractC5361Iw0.i()) {
            C8696o40 a10 = AbstractC8028k40.a();
            C4460g1 d10 = f52.d();
            C4798y c4798y = this.f53929a;
            int i10 = F1.f40064a;
            a10.a(d10, c4798y, A7.f38535b);
            return;
        }
        boolean z10 = f53928g;
        if (!z10 && !this.f53929a.a(f52).a(this.f53929a, f52)) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.M2 type = f52.getReference().getType();
        if (type.E0()) {
            C8854p10 c8854p10 = abstractC5361Iw0.a().f49010f;
            if (c8854p10.e()) {
                this.f53929a.f38427t.getClass();
                AbstractC8028k40.a().a(f52.d(), this.f53929a, G1.b(type));
                boolean z11 = AbstractC10330xt.f53865a;
                a(f52, C10664zt.f54561d);
                return;
            }
            if (c8854p10.d()) {
                boolean z12 = AbstractC10330xt.f53865a;
                a(f52, C7520h10.f48413b);
                return;
            }
            return;
        }
        if (type.I0()) {
            C8288lg b10 = abstractC5361Iw0.b();
            AbstractC8028k40.a().a(f52.d(), this.f53929a, b10.a(this.f53929a));
            C10664zt a11 = f52.d().f37207l.g().a();
            AbstractC10330xt abstractC10330xt = b10.f50031g;
            if (a11 == null || a11.l() || (abstractC10330xt.h() && abstractC10330xt.a().b(this.f53929a, a11))) {
                a(f52, abstractC10330xt);
                return;
            }
            return;
        }
        if (!z10 && !type.P0()) {
            throw new AssertionError();
        }
        AbstractC8028k40.a().a(f52.d(), this.f53929a, abstractC5361Iw0.e().f52914e);
    }

    public final void a(com.android.tools.r8.graph.F5 f52, AbstractC10330xt abstractC10330xt) {
        if (abstractC10330xt.f()) {
            C10664zt a10 = abstractC10330xt.a();
            AbstractC8999pu0 b10 = f52.getReference().getType().b(this.f53929a);
            C4798y c4798y = this.f53929a;
            a10.getClass();
            if (!a10.b(c4798y, C10664zt.a((C4798y<? extends C4514j>) c4798y, b10))) {
                return;
            }
        }
        C8696o40 a11 = AbstractC8028k40.a();
        a11.getClass();
        a11.a(f52.d(), abstractC10330xt);
    }

    public final void a(AbstractC8374m80 abstractC8374m80, com.android.tools.r8.graph.H5 h52) {
        C10601zX c10601zX = this.f53932d;
        InterfaceC10100wX interfaceC10100wX = C9371s7.f52282a;
        InterfaceC10100wX interfaceC10100wX2 = (InterfaceC10100wX) c10601zX.f54040a.remove(c10601zX.a(h52));
        if (interfaceC10100wX2 != null) {
            interfaceC10100wX = interfaceC10100wX2;
        }
        a(h52, abstractC8374m80, interfaceC10100wX);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.android.tools.r8.internal.jg] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.tools.r8.internal.F8] */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.android.tools.r8.internal.vs0] */
    public final void a(com.android.tools.r8.graph.H5 h52, AbstractC8374m80 abstractC8374m80, InterfaceC10100wX interfaceC10100wX) {
        if (interfaceC10100wX.g()) {
            if (h52.d().f1()) {
                return;
            }
            if (h52.d().f37314g.D() && !h52.A().E() && !h52.d().A0().b()) {
                if (!((C11245i) this.f53929a.f()).f57399n.contains(h52.getReference())) {
                    abstractC8374m80.add((AbstractC8374m80) h52);
                    return;
                }
            }
            if (h52.d().b1()) {
                h52.c(this.f53929a);
                this.f53930b.c(h52);
                this.f53934f.f42781a.a(this.f53929a.v(), h52.getReference());
                return;
            }
            return;
        }
        com.android.tools.r8.shaking.I1 a10 = this.f53929a.a(h52);
        if (!a10.c(this.f53933e) || !a10.f56557p) {
            interfaceC10100wX = C9669tv0.f52729a;
        }
        if (this.f53929a.a(h52).i(this.f53933e)) {
            interfaceC10100wX = a(h52, interfaceC10100wX);
        }
        if (interfaceC10100wX.isUnknown()) {
            return;
        }
        AbstractC8455mg d10 = interfaceC10100wX.d();
        d10.getClass();
        if (d10 instanceof C9456sg) {
            if (!f53928g) {
                throw new AssertionError();
            }
            return;
        }
        C8622ng b10 = d10.b();
        for (int i10 = 0; i10 < b10.f51020c.size(); i10++) {
            AbstractC10458yg c10 = ((AbstractC5361Iw0) b10.f51020c.get(i10)).c();
            if (c10 != null && (c10 instanceof C8288lg)) {
                AbstractC10330xt abstractC10330xt = c10.b().f50031g;
                com.android.tools.r8.graph.M2 a11 = h52.a(i10);
                if (!abstractC10330xt.l()) {
                    if (!AbstractC5363Ix0.a(this.f53929a, abstractC10330xt, a11, C8854p10.h()).l()) {
                        AbstractC8999pu0 b11 = a11.b(this.f53929a);
                        if (abstractC10330xt.a(b11).a(b11, this.f53929a)) {
                        }
                    }
                    C4798y c4798y = this.f53929a;
                    int i11 = F1.f40064a;
                    b10.a(i10, c10.a(c4798y, new C8288lg(A7.f38535b, AbstractC10330xt.m(), Collections.EMPTY_SET), null, a11, AbstractC4939Bo0.f39021b, InterfaceC6522b2.f46683a));
                }
            }
        }
        if (C8622ng.a(b10.f51020c, b10.f51019b)) {
            return;
        }
        boolean z10 = f53928g;
        if (!z10 && !b10.f51020c.stream().noneMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((AbstractC5361Iw0) obj).i();
            }
        })) {
            throw new AssertionError();
        }
        if (!z10 && !b10.f51020c.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((AbstractC5361Iw0) obj).j();
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((AbstractC5361Iw0) obj).c();
            }
        }).noneMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((AbstractC10458yg) obj).t();
            }
        })) {
            throw new AssertionError();
        }
        if (b10.f51020c.size() > 0) {
            C8696o40 a12 = AbstractC8028k40.a();
            C4798y c4798y2 = this.f53929a;
            int size = b10.f51020c.size();
            ?? c7954jg = new C7954jg(size, new GG(size), new GG(size));
            boolean z11 = true;
            for (int i12 = 0; i12 < b10.f51020c.size(); i12++) {
                AbstractC5361Iw0 abstractC5361Iw0 = (AbstractC5361Iw0) b10.f51020c.get(i12);
                abstractC5361Iw0.getClass();
                if (!(abstractC5361Iw0 instanceof C10671zv0)) {
                    AbstractC10458yg c11 = abstractC5361Iw0.c();
                    F1 a13 = c11.a(c4798y2);
                    if (a13.b0()) {
                        c7954jg.f49292c.a(i12, a13);
                        z11 = false;
                    }
                    C4516j1 d11 = h52.d();
                    com.android.tools.r8.graph.M2 a14 = d11.getReference().a(i12, d11.w0());
                    if (a14.Q0()) {
                        C10664zt a15 = AbstractC10330xt.a(c4798y2, AbstractC8999pu0.a(a14, C8854p10.h(), (C4798y<?>) c4798y2));
                        if (a14.E0()) {
                            C8854p10 c8854p10 = c11.a().f49010f;
                            if (c8854p10.e()) {
                                SG sg2 = c7954jg.f49292c;
                                c4798y2.f38427t.getClass();
                                sg2.a(i12, G1.b(a14));
                            } else if (c8854p10.d()) {
                                c7954jg.f49291b.a(i12, a15.a(C8854p10.b()));
                            } else if (!C7954jg.f49289d) {
                                throw new AssertionError();
                            }
                            z11 = false;
                        } else if (a14.I0()) {
                            AbstractC10330xt z12 = c11.g().z();
                            if (!z12.l()) {
                                c7954jg.f49291b.a(i12, z12);
                                z11 = false;
                            }
                        }
                    } else {
                        continue;
                    }
                }
            }
            if (z11) {
                c7954jg = C9994vs0.f53360a;
            }
            a12.getClass();
            h52.d().T0().f45447b = c7954jg;
        }
        if (!b10.f51019b) {
            C8696o40 a16 = AbstractC8028k40.a();
            AbstractC9530t40 abstractC9530t40 = AbstractC9530t40.f52518b;
            a16.getClass();
            h52.d().T0().f45456k = abstractC9530t40;
        }
        TW A10 = h52.A();
        if (A10.G()) {
            AbstractC5361Iw0 abstractC5361Iw02 = (AbstractC5361Iw0) b10.f51020c.get(A10.t());
            C8696o40 a17 = AbstractC8028k40.a();
            C4516j1 d12 = h52.d();
            F1 a18 = abstractC5361Iw02.a(this.f53929a);
            a17.getClass();
            d12.T0().a(a18, d12);
        }
    }

    public final InterfaceC10100wX a(final com.android.tools.r8.graph.H5 h52, InterfaceC10100wX interfaceC10100wX) {
        boolean z10;
        List list;
        boolean z11 = f53928g;
        if (!z11 && !interfaceC10100wX.f() && !interfaceC10100wX.isUnknown()) {
            throw new AssertionError();
        }
        com.android.tools.r8.shaking.I1 a10 = this.f53929a.a(h52);
        if (!a10.c(this.f53933e) || !a10.f56557p) {
            return interfaceC10100wX;
        }
        C4516j1 d10 = h52.d();
        int a11 = d10.getReference().a(d10.w0());
        if (interfaceC10100wX.f()) {
            C8622ng b10 = interfaceC10100wX.b();
            z10 = b10.f51019b;
            list = b10.f51020c;
        } else {
            if (!z11 && !interfaceC10100wX.isUnknown()) {
                throw new AssertionError();
            }
            C10671zv0 c10671zv0 = C10671zv0.f54579b;
            boolean z12 = AT.f38618a;
            ArrayList arrayList = new ArrayList(a11);
            for (int i10 = 0; i10 < a11; i10++) {
                arrayList.add(c10671zv0);
            }
            z10 = true;
            list = arrayList;
        }
        List a12 = AT.a(list, new InterfaceC6568bI() {
            @Override
            public final Object a(int i11, Object obj) {
                return C10361y3.this.a(h52, i11, (AbstractC5361Iw0) obj);
            }
        }, (List) null);
        return a12 != null ? new C8622ng(a12, z10) : interfaceC10100wX;
    }

    public final AbstractC5361Iw0 a(com.android.tools.r8.graph.H5 h52, int i10, AbstractC5361Iw0 abstractC5361Iw0) {
        if (h52.d().w0() || i10 != 0) {
            com.android.tools.r8.graph.M2 a10 = h52.a(i10);
            if (a10.a(this.f53929a)) {
                this.f53929a.f38427t.getClass();
                C5283Hm0 b10 = G1.b(a10);
                boolean z10 = AbstractC10330xt.f53865a;
                return new C8288lg(b10, C10664zt.f54561d, Collections.EMPTY_SET);
            }
        }
        return abstractC5361Iw0;
    }
}
