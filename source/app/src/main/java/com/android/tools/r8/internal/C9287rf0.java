package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4365b1;
import com.android.tools.r8.graph.C4425e4;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.IdentityHashMap;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;

public final class C9287rf0 {

    public static final boolean f52085f = true;

    public final C4798y f52086a;

    public final com.android.tools.r8.graph.K5 f52087b;

    public final IdentityHashMap f52088c;

    public final Set f52089d;

    public final C9121qf0 f52090e;

    public C9287rf0(C4798y c4798y, com.android.tools.r8.graph.K5 k52) {
        IdentityHashMap identityHashMap = new IdentityHashMap();
        this.f52088c = identityHashMap;
        Set c10 = AbstractC5513Ll0.c();
        this.f52089d = c10;
        this.f52086a = c4798y;
        this.f52087b = k52;
        com.android.tools.r8.graph.E0 g10 = c4798y.g(c4798y.b().f38068i2);
        C9121qf0 c9121qf0 = new C9121qf0(g10);
        identityHashMap.put(g10, c9121qf0);
        this.f52090e = c9121qf0;
        c10.add(c9121qf0);
    }

    public final C9121qf0 a(AbstractC4365b1 abstractC4365b1) {
        boolean z10;
        C4798y c4798y = this.f52086a;
        if (abstractC4365b1.s0()) {
            z10 = abstractC4365b1.l0().v1();
        } else {
            com.android.tools.r8.graph.E0 g10 = c4798y.g(abstractC4365b1.n0().B0());
            z10 = g10 == null || g10.v1();
        }
        if (z10) {
            if (abstractC4365b1.S().z0().equals(this.f52087b.f36536b)) {
                return this.f52090e;
            }
            return null;
        }
        return (C9121qf0) this.f52088c.get(abstractC4365b1);
    }

    public final void b(C9955vf0 c9955vf0, com.android.tools.r8.graph.M2 m22) {
        c9955vf0.h(c9955vf0.f53168g.c(this.f52086a.v(), m22));
    }

    public final void c(C9955vf0 c9955vf0, com.android.tools.r8.graph.M2 m22) {
        c9955vf0.h(c9955vf0.f53168g.c(this.f52086a.v(), m22));
    }

    public final void a(ExecutorService executorService) {
        final com.android.tools.r8.graph.K5 k52 = this.f52087b;
        Objects.requireNonNull(k52);
        C5467Kr0.a(new InterfaceC6285Yx() {
            @Override
            public final void forEach(Consumer consumer) {
                com.android.tools.r8.graph.K5.this.b(consumer);
            }
        }, new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C9287rf0.this.a((com.android.tools.r8.graph.H5) obj);
            }
        }, this.f52086a.E().G(), executorService);
        this.f52087b.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9287rf0.this.a((com.android.tools.r8.graph.H2) obj);
            }
        });
        this.f52087b.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9287rf0.this.a((com.android.tools.r8.graph.F5) obj);
            }
        });
    }

    public final void a(final com.android.tools.r8.graph.H2 h22) {
        final C9955vf0 c9955vf0 = new C9955vf0(this.f52086a, this, h22, this.f52090e);
        if (h22.f36247g != null) {
            com.android.tools.r8.graph.M2 a12 = h22.a1();
            c9955vf0.h(c9955vf0.f53168g.c(this.f52086a.v(), a12));
        }
        h22.f36248h.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9287rf0.this.a(c9955vf0, (com.android.tools.r8.graph.M2) obj);
            }
        });
        new C8954pf0(this.f52086a, c9955vf0).a(h22.k0());
        if (h22.q1()) {
            if (h22.t1()) {
                h22.h(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C9287rf0.this.b(c9955vf0, (com.android.tools.r8.graph.M2) obj);
                    }
                });
            } else {
                if (!f52085f && !h22.u1()) {
                    throw new AssertionError();
                }
                com.android.tools.r8.graph.M2 T02 = h22.T0();
                c9955vf0.h(c9955vf0.f53168g.c(this.f52086a.v(), T02));
            }
        }
        h22.Q0().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9955vf0 c9955vf02 = C9955vf0.this;
                com.android.tools.r8.graph.H2 h23 = h22;
                c9955vf02.a((C4425e4) obj);
            }
        });
        c9955vf0.a(h22.O0());
        c9955vf0.a(h22.U0());
        c9955vf0.a(h22.V0());
    }

    public final void a(C9955vf0 c9955vf0, com.android.tools.r8.graph.M2 m22) {
        c9955vf0.h(c9955vf0.f53168g.c(this.f52086a.v(), m22));
    }

    public final void a(com.android.tools.r8.graph.F5 f52) {
        C9955vf0 c9955vf0 = new C9955vf0(this.f52086a, this, f52, this.f52090e);
        com.android.tools.r8.graph.M2 type = f52.getReference().getType();
        c9955vf0.h(c9955vf0.f53168g.c(this.f52086a.v(), type));
        new C8954pf0(this.f52086a, c9955vf0).a(f52.d().k0());
    }

    public final void a(com.android.tools.r8.graph.H5 h52) {
        C4516j1 d10 = h52.d();
        final C9955vf0 c9955vf0 = new C9955vf0(this.f52086a, this, h52, this.f52090e);
        d10.X0().d(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9287rf0.this.c(c9955vf0, (com.android.tools.r8.graph.M2) obj);
            }
        });
        if (h52.getHolder().f36247g != null) {
            C4798y c4798y = this.f52086a;
            com.android.tools.r8.graph.M2 a12 = h52.getHolder().a1();
            com.android.tools.r8.graph.E0 holder = h52.getHolder();
            c4798y.getClass();
            if (a12 != holder.f36245e) {
                holder = c4798y.a(a12);
            }
            if (holder != null) {
                c9955vf0.a((com.android.tools.r8.graph.J4) ((C11245i) this.f52086a.f()).h(holder, h52.getReference()), false);
            }
        }
        C8954pf0 c8954pf0 = new C8954pf0(this.f52086a, c9955vf0);
        c8954pf0.a(d10.k0());
        c8954pf0.a(d10.U0());
        if (d10.b1()) {
            d10.Q0().a(h52, c9955vf0);
        }
    }
}
