package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.synthesis.S;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public final class PT extends AbstractC5877Ru {

    public static final boolean f43236d = true;

    public final com.android.tools.r8.graph.H2 f43237b;

    public final C8497mu f43238c;

    public PT(com.android.tools.r8.graph.H2 h22, C8497mu c8497mu, com.android.tools.r8.graph.H2 h23) {
        super(h23);
        this.f43237b = h22;
        this.f43238c = c8497mu;
    }

    @Override
    public final void a(final C4798y c4798y) {
        this.f43238c.f50449a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                PT.this.a(c4798y, (C4554l1) obj, (AbstractC9165qu) obj2);
            }
        });
        if (this.f43238c.f50449a.containsKey(c4798y.b().f37943R4.f36482a)) {
            b(c4798y);
            c(c4798y);
        }
    }

    public final com.android.tools.r8.graph.H5 b(final C4798y c4798y) {
        final C4724u1 b10 = c4798y.b();
        final C5688Om0 a10 = c4798y.f38427t.a(b10.b("null"));
        return a(c4798y, b10.b("stringValueOf"), b10.a(b10.f38052g2, b10.f37884J1), new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return PT.this.a(c4798y, b10, a10, a22);
            }
        });
    }

    public final com.android.tools.r8.graph.H5 c(final C4798y c4798y) {
        final C4724u1 b10 = c4798y.b();
        return a(c4798y, b10.b("valueOf"), b10.a(b10.f37884J1, b10.f38052g2), new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return PT.this.a(c4798y, b10, a22);
            }
        });
    }

    public final void a(C4798y c4798y, C4554l1 c4554l1, AbstractC9165qu abstractC9165qu) {
        if (abstractC9165qu.d()) {
            a(c4798y, c4554l1);
        }
    }

    public final com.android.tools.r8.graph.L2 a(C4554l1 c4554l1, C4724u1 c4724u1) {
        String l22 = c4554l1.t0().toString();
        if (c4554l1.s0() == this.f44016a.getType()) {
            return c4724u1.b("get" + C10656zq0.g(l22.substring(0, 1)) + l22.substring(1));
        }
        if (!f43236d) {
            com.android.tools.r8.graph.J1 j12 = c4724u1.f37943R4;
            if (c4554l1 != j12.f36482a && c4554l1 != j12.f36483b) {
                throw new AssertionError();
            }
        }
        return c4554l1.t0();
    }

    public static void a(C4798y c4798y, com.android.tools.r8.synthesis.M m10, com.android.tools.r8.synthesis.N n10) {
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        com.android.tools.r8.androidapi.f fVar = c4798y.f38405T;
        n10.f58123m = fVar;
        n10.f58124n = fVar;
        n10.f58117g = m10;
        n10.f58116f = C5313Ib.f41136g;
    }

    public final com.android.tools.r8.graph.H5 a(final C4798y c4798y, final C4554l1 c4554l1) {
        C4724u1 b10 = c4798y.b();
        return a(c4798y, a(c4554l1, b10), b10.a(c4554l1.getType(), b10.f37884J1), new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return PT.this.a(c4798y, c4554l1, a22);
            }
        });
    }

    public final AbstractC4497i0 a(C4798y c4798y, C4554l1 c4554l1, com.android.tools.r8.graph.A2 a22) {
        return new C5298Hu(c4798y, this.f43237b.getType(), this.f43238c, c4554l1, null).b();
    }

    public final AbstractC4497i0 a(C4798y c4798y, C4724u1 c4724u1, F1 f12, com.android.tools.r8.graph.A2 a22) {
        return new C5298Hu(c4798y, this.f43237b.getType(), this.f43238c, c4724u1.f37943R4.f36482a, f12).b();
    }

    public final AbstractC4497i0 a(C4798y c4798y, C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.M2 type = this.f43237b.getType();
        com.android.tools.r8.graph.M2 type2 = this.f44016a.getType();
        C8497mu c8497mu = this.f43238c;
        C4554l1 c4554l1 = c4724u1.f37943R4.f36482a;
        if (C8497mu.f50448f || c8497mu.f50449a.containsKey(c4554l1)) {
            return new C5414Ju(c4798y, type, type2, ((AbstractC9165qu) c8497mu.f50449a.get(c4554l1)).c()).b();
        }
        throw new AssertionError();
    }

    @Override
    public final com.android.tools.r8.graph.H2 a() {
        return this.f43237b;
    }

    public final com.android.tools.r8.graph.H5 a(final C4798y c4798y, com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.I2 i22, final com.android.tools.r8.synthesis.M m10) {
        com.android.tools.r8.synthesis.J g10 = c4798y.f38408a.g();
        com.android.tools.r8.synthesis.I i10 = new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58181h;
                return bVar;
            }
        };
        com.android.tools.r8.graph.H2 h22 = this.f44016a;
        Consumer b10 = C6628bi.b();
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                PT.a(C4798y.this, m10, (com.android.tools.r8.synthesis.N) obj);
            }
        };
        g10.getClass();
        return g10.a(l22, i22, i10, h22, c4798y, b10, consumer, C6628bi.b());
    }
}
