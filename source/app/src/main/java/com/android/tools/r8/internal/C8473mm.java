package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4440f0;
import com.android.tools.r8.synthesis.C11579l;
import com.android.tools.r8.synthesis.C11591p;
import com.android.tools.r8.synthesis.S;
import java.util.Objects;
import java.util.function.Consumer;

public final class C8473mm {

    public static final boolean f50418c = true;

    public final C4798y f50419a;

    public final C4724u1 f50420b;

    public C8473mm(C4798y c4798y) {
        this.f50419a = c4798y;
        this.f50420b = c4798y.b();
    }

    public static AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
        return null;
    }

    public static AbstractC4497i0 b(com.android.tools.r8.graph.A2 a22) {
        return null;
    }

    public final void a(com.android.tools.r8.synthesis.N n10, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, com.android.tools.r8.synthesis.M m10) {
        com.android.tools.r8.synthesis.N a10 = n10.a(this.f50420b.f38114o0);
        a10.f58115e = this.f50420b.a(m23, m22);
        a10.f58119i = com.android.tools.r8.graph.L4.a(4105, false);
        a10.f58127q = false;
        a10.f58117g = m10;
    }

    public final void b(final com.android.tools.r8.graph.M2 m22, final com.android.tools.r8.graph.M2 m23, final Iterable iterable, com.android.tools.r8.synthesis.N n10) {
        a(n10, m22, m23, new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return C8473mm.this.b(iterable, m22, m23, a22);
            }
        });
    }

    public final AbstractC4497i0 b(Iterable iterable, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, com.android.tools.r8.graph.A2 a22) {
        return new C9354s10(this.f50419a, a22.s0(), iterable, m22, m23).b();
    }

    public final void b(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, com.android.tools.r8.synthesis.N n10) {
        a(n10, m22, m23, new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return C8473mm.b(a22);
            }
        });
    }

    public final void b(final Iterable iterable, final com.android.tools.r8.graph.M2 m22, final com.android.tools.r8.graph.M2 m23, com.android.tools.r8.synthesis.W w10) {
        ((com.android.tools.r8.synthesis.W) w10.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8473mm.this.a(m22, m23, iterable, (com.android.tools.r8.synthesis.N) obj);
            }
        })).a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8473mm.this.b(m23, m22, iterable, (com.android.tools.r8.synthesis.N) obj);
            }
        });
    }

    public final void a(final com.android.tools.r8.graph.M2 m22, final com.android.tools.r8.graph.M2 m23, final Iterable iterable, com.android.tools.r8.synthesis.N n10) {
        a(n10, m22, m23, new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return C8473mm.this.a(iterable, m22, m23, a22);
            }
        });
    }

    public final AbstractC4497i0 a(Iterable iterable, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, com.android.tools.r8.graph.A2 a22) {
        return new C9354s10(this.f50419a, a22.s0(), iterable, m22, m23).b();
    }

    public final void b(final com.android.tools.r8.graph.M2 m22, final com.android.tools.r8.graph.M2 m23, C11591p c11591p) {
        ((C11591p) c11591p.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8473mm.this.a(m22, m23, (com.android.tools.r8.synthesis.N) obj);
            }
        })).a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8473mm.this.b(m23, m22, (com.android.tools.r8.synthesis.N) obj);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, com.android.tools.r8.synthesis.N n10) {
        a(n10, m22, m23, new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return C8473mm.a(a22);
            }
        });
    }

    public final com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        com.android.tools.r8.graph.H2 a10 = this.f50419a.f38408a.g().a(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58190q;
                return bVar;
            }
        }, e02, this.f50419a);
        C4724u1 c4724u1 = this.f50420b;
        com.android.tools.r8.graph.A2 a11 = c4724u1.a(a10.f36245e, c4724u1.a(m23, m22), this.f50420b.f38114o0);
        if (f50418c || a10.e(a11) != null) {
            return a11;
        }
        throw new AssertionError();
    }

    public final void a(com.android.tools.r8.graph.E0 e02, final AbstractC8710o9 abstractC8710o9) {
        boolean z10 = f50418c;
        if (!z10 && abstractC8710o9 == null) {
            throw new AssertionError();
        }
        if (!z10 && !e02.e0()) {
            throw new AssertionError();
        }
        final com.android.tools.r8.graph.M2 m22 = e02.f36245e;
        final com.android.tools.r8.graph.M2 a10 = C7139em.a(this.f50419a, m22);
        if (!z10 && !this.f50419a.E().x().f45396a.f53764a) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.H2 d02 = e02.d0();
        final C9239rK c10 = AbstractC9907vK.c(d02.A1(), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return ((C4460g1) obj).N0();
            }
        });
        com.android.tools.r8.synthesis.J g10 = this.f50419a.f38408a.g();
        com.android.tools.r8.synthesis.I i10 = new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58190q;
                return bVar;
            }
        };
        C4798y c4798y = this.f50419a;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8473mm.this.b(c10, m22, a10, (com.android.tools.r8.synthesis.W) obj);
            }
        };
        Objects.requireNonNull(abstractC8710o9);
        g10.a(i10, d02, c4798y, consumer, new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC8710o9.this.f((com.android.tools.r8.graph.H2) obj);
            }
        });
    }

    public final com.android.tools.r8.graph.E0 a(com.android.tools.r8.graph.E0 e02, final InterfaceC5166Fm interfaceC5166Fm) {
        if (!f50418c && interfaceC5166Fm == null) {
            throw new AssertionError();
        }
        if (e02.e0()) {
            return this.f50419a.f38408a.g().a(new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    S.b bVar;
                    bVar = s10.f58190q;
                    return bVar;
                }
            }, e02, this.f50419a);
        }
        final com.android.tools.r8.graph.M2 m22 = e02.f36245e;
        final com.android.tools.r8.graph.M2 a10 = C7139em.a(this.f50419a, m22);
        com.android.tools.r8.synthesis.J g10 = this.f50419a.f38408a.g();
        com.android.tools.r8.synthesis.I i10 = new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58190q;
                return bVar;
            }
        };
        InterfaceC4440f0 z10 = e02.z();
        C4798y c4798y = this.f50419a;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8473mm.this.b(m22, a10, (C11591p) obj);
            }
        };
        Objects.requireNonNull(interfaceC5166Fm);
        Consumer consumer2 = new Consumer() {
            @Override
            public final void accept(Object obj) {
                InterfaceC5166Fm.this.e((com.android.tools.r8.graph.I0) obj);
            }
        };
        g10.getClass();
        return g10.a(i10.a(g10.f58085b), consumer, consumer2, C11579l.a(z10), c4798y);
    }
}
