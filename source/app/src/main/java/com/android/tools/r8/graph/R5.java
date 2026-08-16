package com.android.tools.r8.graph;

import com.android.tools.r8.internal.C7604ha;
import com.android.tools.r8.internal.YS;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;

public final class R5 {

    public static final boolean f36777c = true;

    public final C4798y f36778a;

    public final Q5 f36779b;

    public R5(C4798y c4798y, Q5 q52) {
        this.f36778a = c4798y;
        this.f36779b = q52;
    }

    public final void a(ExecutorService executorService) {
        com.android.tools.r8.J.a(this.f36778a, ((C4514j) this.f36778a.f()).d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                R5.this.a((H2) obj);
            }
        }, executorService);
    }

    public final void a(H2 h22) {
        h22.h(new Consumer() {
            @Override
            public final void accept(Object obj) {
                R5.this.a((H5) obj);
            }
        }, new u.P0());
    }

    public final void a(H5 h52) {
        AbstractC4497i0 Q02 = h52.d().Q0();
        if (Q02.t0()) {
            if (!f36777c) {
                C4798y c4798y = this.f36778a;
                c4798y.getClass();
                if (!c4798y.a(h52.d())) {
                    throw new AssertionError();
                }
            }
            for (com.android.tools.r8.internal.W9 w92 : Q02.V().E0()) {
                if (w92.I()) {
                    this.f36779b.a(w92.f().getField());
                } else if (w92.L()) {
                    this.f36779b.a(w92.j().V());
                } else if (w92 instanceof C7604ha) {
                    a(w92.k().V(), h52);
                }
            }
            return;
        }
        if (Q02 instanceof C4553l0) {
            this.f36779b.a(C4553l0.a((H0) h52, this.f36778a.b()));
            return;
        }
        if (Q02.A0()) {
            for (YS ys : Q02.o0().f45405g) {
                if (ys instanceof C4554l1) {
                    this.f36779b.a((C4554l1) ys);
                } else if (ys instanceof D0) {
                    a((D0) ys, h52);
                } else if (ys instanceof A2) {
                    this.f36779b.a((A2) ys);
                } else if (ys instanceof C2) {
                    a(h52, (C2) ys);
                }
            }
            return;
        }
        if (!(Q02 instanceof C4389c6) && !f36777c) {
            throw new AssertionError((Object) Q02.getClass().getName());
        }
    }

    public final void a(D0 d02, H5 h52) {
        a(h52, d02.l0());
        for (R2 r22 : d02.f36215h) {
            r22.getClass();
            if (r22 instanceof U2) {
                this.f36779b.a((C4554l1) r22.u0().f36759d);
            } else if (r22 instanceof W2) {
                this.f36779b.a((A2) r22.y0().f36759d);
            } else if (r22 instanceof X2) {
                a(h52, (C2) r22.z0().f36759d);
            }
        }
    }

    public final void a(H5 h52, C2 c22) {
        if (c22.f36190e.a()) {
            this.f36779b.a(c22.l0());
        } else {
            if (!f36777c && !c22.f36190e.d()) {
                throw new AssertionError();
            }
            this.f36779b.a(c22.m0());
        }
    }
}
