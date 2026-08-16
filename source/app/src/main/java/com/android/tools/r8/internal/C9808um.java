package com.android.tools.r8.internal;

import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4421e0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4440f0;
import com.android.tools.r8.synthesis.AbstractC11582m;
import com.android.tools.r8.synthesis.C11579l;
import com.android.tools.r8.synthesis.C11591p;
import com.android.tools.r8.synthesis.S;
import java.util.LinkedHashMap;
import java.util.Objects;
import java.util.function.Consumer;

public final class C9808um {

    public static final boolean f52945b = true;

    public final C4798y f52946a;

    public C9808um(C4798y c4798y) {
        this.f52946a = c4798y;
    }

    public static void a(C11591p c11591p) {
    }

    public final com.android.tools.r8.graph.A2 b(com.android.tools.r8.graph.M2 m22, C6257Yj c6257Yj) {
        boolean z10 = f52945b;
        if (!z10) {
            S.b a10 = new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    S.b bVar;
                    bVar = s10.f58186m;
                    return bVar;
                }
            }.a(this.f52946a.f38408a.g().f58085b);
            if (!z10) {
                S.b a11 = c6257Yj.a(this.f52946a);
                a11.getClass();
                if (!InterfaceC7166ev.a(a11, a10)) {
                    throw new AssertionError();
                }
            }
        }
        return this.f52946a.b().a(m22, c6257Yj.f46071a.y0(), c6257Yj.f46071a.t0());
    }

    public final com.android.tools.r8.graph.A2 a(final com.android.tools.r8.graph.A2 a22, final com.android.tools.r8.graph.A2 a23, AbstractC7103ea abstractC7103ea, C5035Df c5035Df) {
        com.android.tools.r8.graph.H5 b10 = this.f52946a.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58164Q;
                return bVar;
            }
        }, c5035Df.a(), this.f52946a, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9808um.this.a(a22, a23, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        abstractC7103ea.v(b10, c5035Df.f39582c);
        return b10.getReference();
    }

    public final S.b c(C6257Yj c6257Yj, com.android.tools.r8.synthesis.S s10) {
        return c6257Yj.a(this.f52946a);
    }

    public final S.b d(C6257Yj c6257Yj, com.android.tools.r8.synthesis.S s10) {
        return c6257Yj.a(this.f52946a);
    }

    public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, com.android.tools.r8.graph.A2 a24) {
        C6842cy b10 = new C6842cy(this.f52946a.b()).b(a22, false);
        b10.f47222b = a23;
        b10.f47225e = false;
        b10.f47228h = true;
        return b10.a();
    }

    public final void b(final C6830cu c6830cu, AbstractC8710o9 abstractC8710o9) {
        boolean z10 = f52945b;
        if (!z10 && abstractC8710o9 == null) {
            throw new AssertionError();
        }
        if (!z10 && !this.f52946a.E().x().f45396a.f53764a) {
            throw new AssertionError();
        }
        final C6257Yj c6257Yj = c6830cu.f47198b;
        com.android.tools.r8.graph.E0 a10 = this.f52946a.a(c6257Yj.f46071a.s0());
        final com.android.tools.r8.graph.H2 a11 = a(c6830cu, abstractC8710o9);
        this.f52946a.f38408a.g().a(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                return C9808um.this.d(c6257Yj, s10);
            }
        }, a10, this.f52946a, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9808um.this.a(a11, c6830cu, (com.android.tools.r8.synthesis.W) obj);
            }
        }, new C8669nv1(abstractC8710o9));
    }

    public final com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.A2 a22, InterfaceC9307rm interfaceC9307rm) {
        com.android.tools.r8.graph.E0 g10 = this.f52946a.g(a22.s0());
        if (g10 != null && !(g10 instanceof com.android.tools.r8.graph.I0)) {
            if (!f52945b && g10.b(a22) == null) {
                throw new AssertionError();
            }
        } else {
            boolean z10 = f52945b;
            if (!z10 && interfaceC9307rm == null) {
                throw new AssertionError();
            }
            com.android.tools.r8.synthesis.J g11 = this.f52946a.f38408a.g();
            com.android.tools.r8.graph.L2 t02 = a22.t0();
            com.android.tools.r8.graph.I2 y02 = a22.y0();
            com.android.tools.r8.synthesis.I i10 = new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    S.b bVar;
                    bVar = s10.f58179f;
                    return bVar;
                }
            };
            com.android.tools.r8.graph.M2 s02 = a22.s0();
            C4798y c4798y = this.f52946a;
            Consumer consumer = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C9808um.a((C11591p) obj);
                }
            };
            Objects.requireNonNull(interfaceC9307rm);
            C9837uv1 c9837uv1 = new C9837uv1(interfaceC9307rm);
            C4421e0 a10 = com.android.tools.r8.synthesis.J.a(t02, y02, i10.a(g11.f58085b), c4798y, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C9808um.a((com.android.tools.r8.synthesis.N) obj);
                }
            }, g11.a(i10.a(g11.f58085b), consumer, c9837uv1, new C11579l(s02, s02, com.android.tools.r8.origin.c.a(), FeatureSplit.BASE), c4798y));
            if (!z10 && a10.getReference() != a22) {
                throw new AssertionError();
            }
        }
        return a22;
    }

    public final S.b b(C6257Yj c6257Yj, com.android.tools.r8.synthesis.S s10) {
        return c6257Yj.a(this.f52946a);
    }

    public final void a(AbstractC11582m abstractC11582m, final C6830cu c6830cu, final com.android.tools.r8.graph.E0 e02, final InterfaceC9307rm interfaceC9307rm, com.android.tools.r8.synthesis.N n10) {
        com.android.tools.r8.graph.A2 a10 = a(abstractC11582m.f58283b, c6830cu.f47198b);
        com.android.tools.r8.synthesis.N a11 = n10.a(a10.t0());
        a11.f58115e = a10.y0();
        a11.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        a11.f58127q = false;
        a11.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return C9808um.this.a(c6830cu, e02, interfaceC9307rm, a22);
            }
        };
    }

    public final void a(AbstractC11582m abstractC11582m, C6830cu c6830cu, com.android.tools.r8.synthesis.N n10) {
        com.android.tools.r8.graph.A2 b10 = b(abstractC11582m.f58283b, c6830cu.f47197a);
        com.android.tools.r8.graph.L4 b11 = com.android.tools.r8.graph.L4.b(5121, false);
        com.android.tools.r8.synthesis.N a10 = n10.a(b10.t0());
        a10.f58115e = b10.y0();
        a10.f58127q = false;
        a10.f58119i = b11;
    }

    public final void a(final com.android.tools.r8.graph.A2 a22, final com.android.tools.r8.graph.A2 a23, com.android.tools.r8.synthesis.N n10) {
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        C4724u1 b10 = this.f52946a.b();
        b10.getClass();
        n10.f58115e = a22.y0().b(b10, a22.s0());
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a24) {
                return C9808um.this.a(a23, a22, a24);
            }
        };
    }

    public static void a(com.android.tools.r8.synthesis.N n10) {
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        n10.f58117g = null;
    }

    public final com.android.tools.r8.graph.A2 a(C6830cu c6830cu) {
        if (f52945b || c6830cu.f47199c.a(this.f52946a) == null) {
            return c6830cu.f47199c.f46071a;
        }
        throw new AssertionError();
    }

    public final void a(final AbstractC11582m abstractC11582m, final C6830cu c6830cu) {
        abstractC11582m.f58286e = true;
        abstractC11582m.f58287f = false;
        abstractC11582m.f58288g = true;
        abstractC11582m.c().a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9808um.this.a(abstractC11582m, c6830cu, (com.android.tools.r8.synthesis.N) obj);
            }
        });
    }

    public final com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.M2 m22, C6257Yj c6257Yj) {
        boolean z10 = f52945b;
        if (!z10) {
            S.b a10 = new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    S.b bVar;
                    bVar = s10.f58185l;
                    return bVar;
                }
            }.a(this.f52946a.f38408a.g().f58085b);
            if (!z10) {
                S.b a11 = c6257Yj.a(this.f52946a);
                a11.getClass();
                if (!InterfaceC7166ev.a(a11, a10)) {
                    throw new AssertionError();
                }
            }
        }
        C4724u1 b10 = this.f52946a.b();
        com.android.tools.r8.graph.A2 a22 = c6257Yj.f46071a;
        b10.getClass();
        return this.f52946a.b().a(m22, a22.y0().b(b10, a22.s0()), c6257Yj.f46071a.t0());
    }

    public final com.android.tools.r8.graph.A2 a(final C6830cu c6830cu, final AbstractC7103ea abstractC7103ea) {
        boolean z10 = f52945b;
        if (!z10 && abstractC7103ea == null) {
            throw new AssertionError();
        }
        final C6257Yj c6257Yj = c6830cu.f47198b;
        com.android.tools.r8.graph.E0 a10 = this.f52946a.a(c6257Yj.f46071a.s0());
        if (this.f52946a.E().x().f45396a.f53764a) {
            com.android.tools.r8.graph.H2 a11 = this.f52946a.f38408a.g().a(new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    return C9808um.this.a(c6257Yj, s10);
                }
            }, a10, this.f52946a);
            com.android.tools.r8.graph.A2 a12 = a(a11.f36245e, c6257Yj);
            if (z10 || a11.b(a12) != null) {
                return a12;
            }
            throw new AssertionError();
        }
        final com.android.tools.r8.graph.E0 a13 = a(c6830cu, (InterfaceC9307rm) abstractC7103ea);
        InterfaceC4440f0 z11 = a10.z();
        if (!z10 && z11 == null) {
            throw new AssertionError();
        }
        com.android.tools.r8.synthesis.J g10 = this.f52946a.f38408a.g();
        com.android.tools.r8.synthesis.I i10 = new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58185l;
                return bVar;
            }
        };
        C4798y c4798y = this.f52946a;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9808um.this.a(a13, c6830cu, abstractC7103ea, (C11591p) obj);
            }
        };
        Objects.requireNonNull(abstractC7103ea);
        C9837uv1 c9837uv1 = new C9837uv1(abstractC7103ea);
        g10.getClass();
        com.android.tools.r8.graph.I0 a14 = g10.a(i10.a(g10.f58085b), consumer, c9837uv1, C11579l.a(z11), c4798y);
        com.android.tools.r8.graph.A2 a15 = a(a14.f36245e, c6257Yj);
        if (z10 || a14.b(a15) != null) {
            return a15;
        }
        throw new AssertionError();
    }

    public final S.b a(C6257Yj c6257Yj, com.android.tools.r8.synthesis.S s10) {
        return c6257Yj.a(this.f52946a);
    }

    public final void a(com.android.tools.r8.graph.E0 e02, C6830cu c6830cu, com.android.tools.r8.synthesis.W w10) {
        a(w10, e02, c6830cu, (InterfaceC9307rm) null);
    }

    public final com.android.tools.r8.graph.E0 a(final C6830cu c6830cu, InterfaceC9307rm interfaceC9307rm) {
        boolean z10 = f52945b;
        if (!z10 && interfaceC9307rm == null) {
            throw new AssertionError();
        }
        final C6257Yj c6257Yj = c6830cu.f47197a;
        com.android.tools.r8.graph.E0 a10 = this.f52946a.a(c6257Yj.f46071a.s0());
        if (this.f52946a.E().x().f45396a.f53764a) {
            return this.f52946a.f38408a.g().a(new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    return C9808um.this.b(c6257Yj, s10);
                }
            }, a10, this.f52946a);
        }
        InterfaceC4440f0 z11 = a10.z();
        if (!z10 && z11 == null) {
            throw new AssertionError();
        }
        com.android.tools.r8.synthesis.J g10 = this.f52946a.f38408a.g();
        com.android.tools.r8.synthesis.I i10 = new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58186m;
                return bVar;
            }
        };
        C4798y c4798y = this.f52946a;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9808um.this.a(c6830cu, (C11591p) obj);
            }
        };
        Objects.requireNonNull(interfaceC9307rm);
        C9837uv1 c9837uv1 = new C9837uv1(interfaceC9307rm);
        g10.getClass();
        return g10.a(i10.a(g10.f58085b), consumer, c9837uv1, C11579l.a(z11), c4798y);
    }

    public final com.android.tools.r8.graph.H2 a(final C6830cu c6830cu, AbstractC8710o9 abstractC8710o9) {
        boolean z10 = f52945b;
        if (!z10 && !this.f52946a.E().x().f45396a.f53764a) {
            throw new AssertionError();
        }
        if (!z10 && abstractC8710o9 == null) {
            throw new AssertionError();
        }
        final C6257Yj c6257Yj = c6830cu.f47197a;
        com.android.tools.r8.graph.E0 a10 = this.f52946a.a(c6257Yj.f46071a.s0());
        com.android.tools.r8.synthesis.J g10 = this.f52946a.f38408a.g();
        com.android.tools.r8.synthesis.I i10 = new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                return C9808um.this.c(c6257Yj, s10);
            }
        };
        C4798y c4798y = this.f52946a;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9808um.this.a(c6830cu, (com.android.tools.r8.synthesis.W) obj);
            }
        };
        Objects.requireNonNull(abstractC8710o9);
        return g10.a(i10, a10, c4798y, consumer, new C8669nv1(abstractC8710o9));
    }

    public final void a(final AbstractC11582m abstractC11582m, final com.android.tools.r8.graph.E0 e02, final C6830cu c6830cu, final InterfaceC9307rm interfaceC9307rm) {
        abstractC11582m.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9808um.this.a(abstractC11582m, c6830cu, e02, interfaceC9307rm, (com.android.tools.r8.synthesis.N) obj);
            }
        });
    }

    public final AbstractC4497i0 a(C6830cu c6830cu, com.android.tools.r8.graph.E0 e02, InterfaceC9307rm interfaceC9307rm, com.android.tools.r8.graph.A2 a22) {
        if (!this.f52946a.E().x().f45396a.f53764a) {
            return null;
        }
        com.android.tools.r8.graph.A2 a10 = a(a(c6830cu), interfaceC9307rm);
        com.android.tools.r8.graph.A2 b10 = b(e02.f36245e, c6830cu.f47197a);
        boolean z10 = f52945b;
        if (!z10 && e02.b(b10) == null) {
            throw new AssertionError();
        }
        if (z10 || c6830cu.f47200d.isEmpty()) {
            return new C6664bu(a22.s0(), a10, b10, new LinkedHashMap(), 1, this.f52946a).b();
        }
        throw new AssertionError();
    }
}
