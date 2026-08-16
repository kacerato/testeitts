package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C7441gb0 {

    public static final boolean f48296d = true;

    public final C4798y f48297a;

    public final C8570nJ f48298b;

    public final C8775ob0 f48299c;

    public C7441gb0(C4798y c4798y) {
        this.f48297a = c4798y;
        this.f48298b = c4798y.E();
        this.f48299c = c4798y.E().f50596E1.a();
    }

    public final void a(ExecutorService executorService) {
        AbstractC5308Hz v10 = this.f48297a.v();
        C4798y c4798y = this.f48297a;
        if (v10 == c4798y.f38414g) {
            if (!f48296d && !c4798y.v().j()) {
                throw new AssertionError();
            }
            return;
        }
        C5467Kr0.a(c4798y.f().d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7441gb0.this.a((com.android.tools.r8.graph.H2) obj);
            }
        }, this.f48298b.G(), executorService);
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        h22.l(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7441gb0.this.a((com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.H5 h52) {
        if (h52.d().b1()) {
            AbstractC4497i0 Q02 = h52.d().Q0();
            if (Q02.t0()) {
                a(Q02.V(), h52);
            } else if (Q02.v0()) {
                a(Q02.C(), h52);
            } else if (!f48296d) {
                throw new AssertionError();
            }
        }
    }

    public final void a(final com.android.tools.r8.graph.G g10, final com.android.tools.r8.graph.H5 h52) {
        AT.a((List) g10.E0(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C7441gb0.this.a(h52, (W9) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.graph.G.this.a((List<W9>) obj);
            }
        });
    }

    public final W9 a(com.android.tools.r8.graph.H5 h52, W9 w92) {
        if (w92.L()) {
            C7437ga j10 = w92.j();
            com.android.tools.r8.graph.A2 V10 = j10.V();
            AbstractC5308Hz v10 = this.f48297a.v();
            com.android.tools.r8.graph.A2 reference = h52.getReference();
            C4798y c4798y = this.f48297a;
            com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) v10.a(V10, reference, EnumC8071kK.a(j10.W(), j10.f48286c, h52, c4798y, c4798y.f38414g), this.f48297a.f38414g, AbstractC9530t40.f52519c).f41111a;
            if (!a22.a(V10)) {
                return new C7437ga(j10.f48287d, a22, j10.X());
            }
        }
        if (w92 instanceof C10106wa) {
            C10106wa p10 = w92.p();
            com.android.tools.r8.graph.M2 type = p10.getType();
            com.android.tools.r8.graph.M2 c10 = this.f48297a.v().c(this.f48297a.f38414g, type);
            if (!c10.a(type)) {
                return new C10106wa(c10, p10.f53524d);
            }
        } else if (w92.I()) {
            F9 f10 = w92.f();
            C4554l1 field = f10.getField();
            C4554l1 e10 = this.f48297a.v().e(this.f48297a.f38414g, field);
            if (!e10.a(field)) {
                return f10.a(e10);
            }
        }
        return w92;
    }

    public final AbstractC5635Np a(com.android.tools.r8.graph.H5 h52, AbstractC5635Np abstractC5635Np) {
        if (abstractC5635Np.K()) {
            InterfaceC6984dq j10 = abstractC5635Np.j();
            com.android.tools.r8.graph.A2 b10 = j10.b();
            com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) this.f48297a.v().a(b10, h52.getReference(), j10.getType(), this.f48297a.f38414g, AbstractC9530t40.f52519c).f41111a;
            if (!a22.a(b10)) {
                return (AbstractC5635Np) j10.a(a22);
            }
        } else if (abstractC5635Np instanceof C7821ir) {
            C7821ir k10 = abstractC5635Np.k();
            com.android.tools.r8.graph.M2 O10 = k10.O();
            com.android.tools.r8.graph.M2 c10 = this.f48297a.v().c(this.f48297a.f38414g, O10);
            if (!c10.a(O10)) {
                C7821ir c7821ir = new C7821ir(k10.f45540f, c10);
                c7821ir.e(k10.u());
                return c7821ir;
            }
        } else if (abstractC5635Np.I()) {
            InterfaceC5404Jp h10 = abstractC5635Np.h();
            C4554l1 field = h10.getField();
            C4554l1 e10 = this.f48297a.v().e(this.f48297a.f38414g, field);
            if (!e10.a(field)) {
                return (AbstractC5635Np) h10.a(e10);
            }
        }
        return abstractC5635Np;
    }

    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.J0 j02, AbstractC5635Np[] abstractC5635NpArr) {
        h52.a(new com.android.tools.r8.graph.J0(j02.f36458e, j02.f36459f, j02.f36460g, abstractC5635NpArr, j02.f36461h, j02.f36462i, j02.E0()), this.f48297a);
    }

    public final void a(final com.android.tools.r8.graph.J0 j02, final com.android.tools.r8.graph.H5 h52) {
        X3.a(j02.f36463j, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C7441gb0.this.a(h52, (AbstractC5635Np) obj);
            }
        }, AbstractC5635Np.f42702c, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7441gb0.this.a(h52, j02, (AbstractC5635Np[]) obj);
            }
        });
    }
}
