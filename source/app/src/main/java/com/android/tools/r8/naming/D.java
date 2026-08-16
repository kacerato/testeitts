package com.android.tools.r8.naming;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.F5;
import com.android.tools.r8.graph.R2;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.shaking.C11130b3;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;

public final class D {

    public static final boolean f55589c = true;

    public final C4798y f55590a;

    public final C11130b3 f55591b;

    public D(C4798y c4798y) {
        this.f55590a = c4798y;
        this.f55591b = c4798y.E().B().a();
    }

    public final void a(ExecutorService executorService) {
        if (this.f55591b.f57189a.size() == 0) {
            return;
        }
        com.android.tools.r8.J.a(this.f55590a, ((C4514j) this.f55590a.f()).d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                D.this.a((com.android.tools.r8.graph.H2) obj);
            }
        }, executorService);
    }

    public final void b(ExecutorService executorService) {
        com.android.tools.r8.J.a(this.f55590a, ((C4514j) this.f55590a.f()).d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                D.this.b((com.android.tools.r8.graph.H2) obj);
            }
        }, executorService);
    }

    public final void c(ExecutorService executorService) {
        com.android.tools.r8.J.a(this.f55590a, ((C4514j) this.f55590a.f()).d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                D.this.c((com.android.tools.r8.graph.H2) obj);
            }
        }, executorService);
    }

    public final void d(ExecutorService executorService) {
        a(executorService);
        b(executorService);
    }

    public final void b(com.android.tools.r8.graph.H2 h22) {
        h22.i(new Consumer() {
            @Override
            public final void accept(Object obj) {
                D.this.a((F5) obj);
            }
        }, new C10924d1());
    }

    public final void c(com.android.tools.r8.graph.H2 h22) {
        h22.i(new Consumer() {
            @Override
            public final void accept(Object obj) {
                D.this.b((F5) obj);
            }
        }, new C10924d1());
    }

    public final void b(F5 f52) {
        com.android.tools.r8.graph.Q2 l02 = f52.d().K0().l0();
        f52.d().a((com.android.tools.r8.graph.R2) new com.android.tools.r8.graph.Q2(this.f55590a.v().a((com.android.tools.r8.graph.J2) l02.W0(), this.f55590a.f38414g), l02.f36720e.a(this.f55590a.v(), this.f55590a.f38414g)));
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        if (this.f55591b.a(h22.getType())) {
            for (C4460g1 c4460g1 : h22.A1()) {
                if (!f55589c && !c4460g1.w0()) {
                    throw new AssertionError();
                }
                R2.k D02 = c4460g1.K0().D0();
                if (D02 != null) {
                    c4460g1.a((com.android.tools.r8.graph.R2) new R2.k(a(this.f55590a, (com.android.tools.r8.graph.L2) D02.W0())));
                }
            }
        }
    }

    public static com.android.tools.r8.graph.L2 a(C4798y c4798y, com.android.tools.r8.graph.L2 l22) {
        com.android.tools.r8.graph.M2 c10;
        com.android.tools.r8.graph.E0 c11;
        com.android.tools.r8.graph.L2 b10;
        String l23 = l22.toString();
        String H10 = C4932Bl.E(l23) ? C4932Bl.H(l23) : null;
        if (H10 != null) {
            com.android.tools.r8.graph.M2 d10 = c4798y.b().d(H10);
            if (c4798y.v().a(AbstractC5308Hz.g(), d10).a(d10) && (c11 = ((C4514j) c4798y.f()).c((c10 = c4798y.v().c(AbstractC5308Hz.g(), d10)))) != null && !c11.v1() && (b10 = c4798y.s().b(c10)) != null) {
                return c4798y.b().b(C4932Bl.b(b10.toString()));
            }
        }
        return l22;
    }

    public final void a(F5 f52) {
        com.android.tools.r8.graph.Q2 l02 = f52.d().K0().l0();
        f52.d().a((com.android.tools.r8.graph.R2) new R2.k(l02.f36720e.a((com.android.tools.r8.graph.J2) l02.W0(), this.f55590a)));
    }

    public static boolean a(C4460g1 c4460g1) {
        if (!c4460g1.L0()) {
            return false;
        }
        com.android.tools.r8.graph.R2 K02 = c4460g1.K0();
        K02.getClass();
        return K02 instanceof com.android.tools.r8.graph.Q2;
    }
}
