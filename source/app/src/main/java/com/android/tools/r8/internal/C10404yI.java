package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4281a;
import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.errors.InterfaceDesugarMissingTypeDiagnostic;
import com.android.tools.r8.graph.AbstractC4439f;
import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4389c6;
import com.android.tools.r8.graph.C4421e0;
import com.android.tools.r8.graph.C4422e1;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4463g4;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4518j3;
import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.C4823z5;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.InterfaceC4440f0;
import com.android.tools.r8.graph.R2;
import com.android.tools.r8.internal.C8106kb;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.references.Reference;
import com.android.tools.r8.synthesis.C11579l;
import com.android.tools.r8.synthesis.C11591p;
import com.android.tools.r8.synthesis.S;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C10404yI {

    public static final C5313Ib f53988c = C5313Ib.f41137h;

    public static final boolean f53989d = true;

    public final C4798y f53990a;

    public final Predicate f53991b;

    public C10404yI(C4798y c4798y) {
        this.f53990a = c4798y;
        this.f53991b = a(c4798y);
    }

    public static void a(com.android.tools.r8.graph.I0 i02) {
    }

    public static void b(com.android.tools.r8.graph.I0 i02) {
    }

    public final boolean c(com.android.tools.r8.graph.M2 m22) {
        return X2.a(this.f53990a).f53766c.g().containsKey(m22);
    }

    public static void a(C11591p c11591p) {
    }

    public static void b(C11591p c11591p) {
    }

    public static String a(String str) {
        return AbstractC4281a.a(str, 1, 0) + "$-CC;";
    }

    public static void b(com.android.tools.r8.synthesis.N n10) {
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                AbstractC4497i0 abstractC4497i0;
                abstractC4497i0 = C4389c6.f37098e;
                return abstractC4497i0;
            }
        };
    }

    public final com.android.tools.r8.graph.H5 d(final com.android.tools.r8.graph.H5 h52, final AI ai2) {
        if (!f53989d && h52.d().f1()) {
            throw new AssertionError();
        }
        if (h52.getHolder().c1()) {
            a(h52.getHolder(), ai2);
        }
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        C4724u1 b10 = this.f53990a.b();
        com.android.tools.r8.graph.A2 a10 = reference.a(a(b10, reference.s0()), b10);
        final C4516j1 d10 = h52.d();
        return JI.a(h52.getHolder(), a10.t0(), a10.y0(), this.f53990a, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10404yI.b(C4516j1.this, (com.android.tools.r8.synthesis.N) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                AI.this.i(h52, (com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    public static int a(C8570nJ c8570nJ) {
        if (c8570nJ.Q()) {
            return 1;
        }
        return c8570nJ.x().a().f53766c.g().isEmpty() ? 3 : 2;
    }

    public final com.android.tools.r8.graph.M2 b(com.android.tools.r8.graph.M2 m22) {
        C7163eu c7163eu = X2.a(this.f53990a).f53766c.g().get(m22);
        if (c7163eu == null) {
            return null;
        }
        return c7163eu.f47804a;
    }

    public final com.android.tools.r8.graph.H5 c(final com.android.tools.r8.graph.H5 h52, final AI ai2) {
        com.android.tools.r8.graph.A2 a10 = a(h52.getReference(), "$private$", this.f53990a.b());
        final C4516j1 d10 = h52.d();
        return JI.a(h52.getHolder(), a10.t0(), a10.y0(), this.f53990a, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10404yI.a(C4516j1.this, (com.android.tools.r8.synthesis.N) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                AI.this.t(h52, (com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    public static void a(com.android.tools.r8.synthesis.N n10) {
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                AbstractC4497i0 abstractC4497i0;
                abstractC4497i0 = C4389c6.f37098e;
                return abstractC4497i0;
            }
        };
    }

    public static com.android.tools.r8.graph.M2 b(C4724u1 c4724u1, com.android.tools.r8.graph.M2 m22) {
        if (!f53989d && !m22.f36592f.toString().endsWith("$-CC;")) {
            throw new AssertionError();
        }
        return c4724u1.d(AbstractC4281a.a(m22.f36592f.toString(), 5, 0) + ";");
    }

    public final boolean d(com.android.tools.r8.graph.M2 m22) {
        return this.f53991b.test(m22);
    }

    public final boolean a(com.android.tools.r8.graph.E0 e02) {
        if (!f53989d && !e02.f0() && !this.f53990a.E().x().f45396a.f53764a) {
            throw new AssertionError();
        }
        if (c(e02.f36245e) || this.f53990a.E().x().a().i().contains(e02.f36245e)) {
            return true;
        }
        return this.f53990a.E().x().b().a(e02.f36245e);
    }

    public static boolean c(com.android.tools.r8.graph.H2 h22) {
        return h22.c1() && h22.b0().a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10404yI.b((C4516j1) obj);
            }
        });
    }

    public static void b(C4516j1 c4516j1, com.android.tools.r8.synthesis.N n10) {
        com.android.tools.r8.graph.L4 accessFlags = c4516j1.getAccessFlags();
        com.android.tools.r8.graph.L4 l42 = new com.android.tools.r8.graph.L4(accessFlags.f37196b, accessFlags.f37197c);
        l42.r();
        n10.f58119i = l42;
        n10.f58120j = c4516j1.A0();
        n10.f58121k = c4516j1.k0();
        n10.f58122l = c4516j1.U0();
        n10.f58127q = false;
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                AbstractC4497i0 abstractC4497i0;
                abstractC4497i0 = C4463g4.f37236e;
                return abstractC4497i0;
            }
        };
    }

    public static boolean a(C4516j1 c4516j1) {
        boolean z10 = f53989d;
        if (!z10 && AbstractC4458g.d(c4516j1.f37314g.f37197c, 65536)) {
            throw new AssertionError();
        }
        if (!z10 && c4516j1.f37314g.n()) {
            throw new AssertionError();
        }
        if (c4516j1.f37314g.H()) {
            return false;
        }
        if (!c4516j1.f37314g.J()) {
            if (c4516j1.f37314g.l()) {
                return true;
            }
            throw new C6501av0("Non public default interface methods are not yet supported.");
        }
        throw new C6501av0("Native default interface methods are not yet supported.");
    }

    public final com.android.tools.r8.graph.H5 b(com.android.tools.r8.graph.H5 h52, AI ai2) {
        C4516j1 d10 = h52.d();
        boolean z10 = f53989d;
        if (!z10 && !h52.getHolder().isInterface()) {
            throw new AssertionError();
        }
        if (!z10 && !d10.m1()) {
            throw new AssertionError();
        }
        if (!z10 && d10.Q0() == null) {
            throw new AssertionError();
        }
        if (!z10 && C4463g4.a(d10.Q0())) {
            throw new AssertionError();
        }
        if (d10.w0()) {
            return d(h52, ai2);
        }
        if (d10.G0()) {
            return c(h52, ai2);
        }
        return a(h52, ai2);
    }

    public final void a(C6257Yj c6257Yj, com.android.tools.r8.synthesis.I i10) {
        S.b a10 = i10.a(this.f53990a.f38408a.g().f58085b);
        if (f53989d) {
            return;
        }
        S.b a11 = c6257Yj.a(this.f53990a);
        a11.getClass();
        if (!InterfaceC7166ev.a(a11, a10)) {
            throw new AssertionError();
        }
    }

    public static boolean b(C4516j1 c4516j1) {
        return c4516j1.w0() && !c4516j1.f1();
    }

    public static C4460g1 b(com.android.tools.r8.graph.H2 h22) {
        Iterator it = C9073qK.a(h22.A1(), new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10404yI.a((C4460g1) obj);
            }
        }).iterator();
        if (it.hasNext()) {
            return (C4460g1) it.next();
        }
        return null;
    }

    public final com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.M2 m22, C6257Yj c6257Yj) {
        if (!f53989d) {
            a(c6257Yj, new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    S.b bVar;
                    bVar = s10.f58184k;
                    return bVar;
                }
            });
        }
        C4724u1 b10 = this.f53990a.b();
        com.android.tools.r8.graph.A2 a22 = c6257Yj.f46071a;
        b10.getClass();
        return this.f53990a.b().a(m22, a22.y0().b(b10, a22.s0()), c6257Yj.f46071a.t0());
    }

    public static com.android.tools.r8.graph.M2 a(C4724u1 c4724u1, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.M2 d10;
        if (!f53989d && !m22.I0()) {
            throw new AssertionError();
        }
        String a10 = a(m22.f36592f.toString());
        synchronized (c4724u1) {
            d10 = c4724u1.d(c4724u1.b(a10));
            c4724u1.a(d10);
        }
        return d10;
    }

    public final com.android.tools.r8.graph.I0 a(com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.synthesis.J g10 = this.f53990a.f38408a.g();
        com.android.tools.r8.synthesis.I i10 = new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58180g;
                return bVar;
            }
        };
        C4798y c4798y = this.f53990a;
        return g10.a(i10.a(g10.f58085b), new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C11591p) obj).d();
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10404yI.a((com.android.tools.r8.graph.I0) obj);
            }
        }, new C11579l(m22, m22, com.android.tools.r8.origin.c.a(), FeatureSplit.BASE), c4798y);
    }

    public final C6830cu a(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.H0 h02) {
        if (h02 == null) {
            return null;
        }
        boolean z10 = f53989d;
        if (!z10 && e02 == null) {
            throw new AssertionError();
        }
        if (!(h02 instanceof com.android.tools.r8.graph.A4) && !c(h02.p()) && !X2.a(this.f53990a).f53766c.i().containsKey(h02.getReference())) {
            return null;
        }
        if (!z10 && !h02.p().I0()) {
            throw new AssertionError();
        }
        if (!h02.getHolder().isInterface()) {
            h02 = this.f53990a.g().b(e02, h02.getReference());
        }
        if (h02 == null) {
            return null;
        }
        return X2.a(this.f53990a).a(h02.getReference());
    }

    public final com.android.tools.r8.graph.A2 a(C6257Yj c6257Yj, CI ci2) {
        if (c6257Yj.a(this.f53990a) == null) {
            return c6257Yj.f46071a;
        }
        if (!f53989d) {
            a(c6257Yj, new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    S.b bVar;
                    bVar = s10.f58183j;
                    return bVar;
                }
            });
        }
        return a(this.f53990a.g().b(c6257Yj.f46071a, true).p(), ci2).getReference();
    }

    public final com.android.tools.r8.graph.H0 a(C6257Yj c6257Yj, final AbstractC7103ea abstractC7103ea) {
        boolean z10 = f53989d;
        if (!z10) {
            a(c6257Yj, new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    S.b bVar;
                    bVar = s10.f58184k;
                    return bVar;
                }
            });
        }
        com.android.tools.r8.graph.H0 p10 = this.f53990a.g().b(c6257Yj.f46071a, true).p();
        if (!z10) {
            a(c6257Yj, new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    S.b bVar;
                    bVar = s10.f58184k;
                    return bVar;
                }
            });
        }
        p10.getClass();
        if (p10 instanceof com.android.tools.r8.graph.H5) {
            if (!z10 && !this.f53990a.E().x().f45396a.f53764a) {
                throw new AssertionError();
            }
            com.android.tools.r8.graph.H2 a10 = this.f53990a.f38408a.g().a(new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    S.b bVar;
                    bVar = s10.f58184k;
                    return bVar;
                }
            }, p10.H().getHolder(), this.f53990a);
            com.android.tools.r8.graph.A2 a11 = a(a10.f36245e, c6257Yj);
            if (z10 || a10.e(a11) != null) {
                return a10.e(a11);
            }
            throw new AssertionError();
        }
        com.android.tools.r8.graph.A2 a12 = a(this.f53990a.b().f38068i2, c6257Yj);
        com.android.tools.r8.synthesis.J g10 = this.f53990a.f38408a.g();
        com.android.tools.r8.graph.L2 t02 = a12.t0();
        com.android.tools.r8.graph.I2 y02 = a12.y0();
        com.android.tools.r8.synthesis.I i10 = new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58184k;
                return bVar;
            }
        };
        InterfaceC4440f0 z11 = p10.getHolder().z();
        C4798y c4798y = this.f53990a;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10404yI.a((C11591p) obj);
            }
        };
        Objects.requireNonNull(abstractC7103ea);
        Consumer consumer2 = new Consumer() {
            @Override
            public final void accept(Object obj) {
                InterfaceC7330fu.this.d((com.android.tools.r8.graph.I0) obj);
            }
        };
        Consumer consumer3 = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10404yI.a((com.android.tools.r8.synthesis.N) obj);
            }
        };
        g10.getClass();
        return com.android.tools.r8.synthesis.J.a(t02, y02, i10.a(g10.f58085b), c4798y, consumer3, g10.a(i10.a(g10.f58085b), consumer, consumer2, C11579l.a(z11), c4798y));
    }

    public static void a(AI ai2, com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H5 h52) {
        ai2.j(h22.h(h22.L0()), h52);
    }

    public final com.android.tools.r8.graph.H0 a(com.android.tools.r8.graph.H0 h02, CI ci2) {
        h02.getClass();
        if (h02 instanceof com.android.tools.r8.graph.H5) {
            return a(h02.H(), (AI) ci2);
        }
        return a(a(h02.getReference(), "$default$", this.f53990a.b()), h02.getHolder().z(), this.f53990a);
    }

    public final com.android.tools.r8.graph.H5 a(final com.android.tools.r8.graph.H5 h52, final AI ai2) {
        final C4516j1 d10 = h52.d();
        com.android.tools.r8.graph.A2 a10 = a(h52.getReference(), "$default$", this.f53990a.b());
        return JI.a(h52.getHolder(), a10.t0(), a10.y0(), this.f53990a, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10404yI.this.a(h52, d10, (com.android.tools.r8.synthesis.N) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                AI.this.q(h52, (com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b4, code lost:
    
        throw new java.lang.AssertionError();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(com.android.tools.r8.graph.H5 h52, C4516j1 c4516j1, com.android.tools.r8.synthesis.N n10) {
        com.android.tools.r8.graph.L4 accessFlags = h52.getAccessFlags();
        com.android.tools.r8.graph.L4 l42 = new com.android.tools.r8.graph.L4(accessFlags.f37196b, accessFlags.f37197c);
        l42.f37197c |= 8;
        n10.f58119i = l42;
        n10.f58120j = H3.g.d();
        n10.f58127q = false;
        C4723u0 k02 = c4516j1.k0();
        C4724u1 b10 = this.f53990a.b();
        C4666r0[] c4666r0Arr = null;
        int i10 = 0;
        while (true) {
            C4666r0[] c4666r0Arr2 = k02.f37806d;
            if (i10 < c4666r0Arr2.length) {
                C4666r0 c4666r0 = c4666r0Arr2[i10];
                C4422e1 c4422e1 = c4666r0.f37693c;
                if (c4422e1.f37142b == b10.f37837C5) {
                    boolean z10 = C4723u0.f37805h;
                    if (!z10 && c4666r0.f37692b != 2) {
                        throw new AssertionError();
                    }
                    if (!z10 && c4422e1.f37143c.length != 2) {
                        throw new AssertionError();
                    }
                    if (!z10 && !c4422e1.f37143c[0].f37738b.toString().equals("names")) {
                        throw new AssertionError();
                    }
                    if (!z10 && !c4666r0.f37693c.f37143c[1].f37738b.toString().equals("accessFlags")) {
                        throw new AssertionError();
                    }
                    R2.b n02 = c4666r0.f37693c.f37143c[0].f37739c.n0();
                    R2.b n03 = c4666r0.f37693c.f37143c[1].f37739c.n0();
                    if (z10 || (n02 != null && n03 != null)) {
                        if (!z10 && n02.W0().length != n03.W0().length) {
                            throw new AssertionError();
                        }
                        if (c4666r0Arr == null) {
                            C4666r0[] c4666r0Arr3 = k02.f37806d;
                            C4666r0[] c4666r0Arr4 = new C4666r0[c4666r0Arr3.length];
                            System.arraycopy(c4666r0Arr3, 0, c4666r0Arr4, 0, i10);
                            c4666r0Arr = c4666r0Arr4;
                        }
                        com.android.tools.r8.graph.R2[] r2Arr = new com.android.tools.r8.graph.R2[n02.W0().length + 1];
                        r2Arr[0] = new R2.k(b10.b("_this"));
                        System.arraycopy(n02.W0(), 0, r2Arr, 1, n02.W0().length);
                        com.android.tools.r8.graph.R2[] r2Arr2 = new com.android.tools.r8.graph.R2[n03.W0().length + 1];
                        r2Arr2[0] = R2.h.j(0);
                        System.arraycopy(n03.W0(), 0, r2Arr2, 1, n03.W0().length);
                        c4666r0Arr[i10] = C4666r0.a(r2Arr, r2Arr2, b10);
                    }
                } else if (c4666r0Arr != null) {
                    c4666r0Arr[i10] = c4666r0;
                }
                i10++;
            } else {
                if (c4666r0Arr != null) {
                    boolean z11 = X3.f45604a;
                    k02 = c4666r0Arr.length == 0 ? C4723u0.l0() : new C4723u0(c4666r0Arr);
                }
                n10.f58121k = k02;
                C4823z5 U02 = c4516j1.U0();
                if (!U02.isEmpty()) {
                    C4723u0[] c4723u0Arr = new C4723u0[U02.size() + 1];
                    System.arraycopy(U02.f38467b, 0, c4723u0Arr, 1, U02.size());
                    c4723u0Arr[0] = C4723u0.l0();
                    U02 = new C4823z5(c4723u0Arr, 0);
                }
                n10.f58122l = U02;
                n10.f58117g = new com.android.tools.r8.synthesis.M() {
                    @Override
                    public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                        AbstractC4497i0 abstractC4497i0;
                        abstractC4497i0 = C4463g4.f37236e;
                        return abstractC4497i0;
                    }
                };
                return;
            }
        }
    }

    public static void a(C4516j1 c4516j1, com.android.tools.r8.synthesis.N n10) {
        com.android.tools.r8.graph.L4 accessFlags = c4516j1.getAccessFlags();
        com.android.tools.r8.graph.L4 l42 = new com.android.tools.r8.graph.L4(accessFlags.f37196b, accessFlags.f37197c);
        if (!f53989d && !l42.h()) {
            throw new AssertionError();
        }
        l42.r();
        l42.f37197c |= 8;
        n10.f58119i = l42;
        n10.f58120j = c4516j1.A0();
        n10.f58121k = c4516j1.k0();
        n10.f58127q = false;
        n10.f58122l = c4516j1.U0();
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                AbstractC4497i0 abstractC4497i0;
                abstractC4497i0 = C4463g4.f37236e;
                return abstractC4497i0;
            }
        };
    }

    public static boolean a(com.android.tools.r8.graph.H2 h22, C4554l1 c4554l1) {
        return h22.f36251k.f37700b.a(c4554l1) == null;
    }

    public static com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.A2 a22, String str, C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2[] m2Arr = a22.f36127i.f36441f.f36675b;
        com.android.tools.r8.graph.M2[] m2Arr2 = new com.android.tools.r8.graph.M2[m2Arr.length + 1];
        m2Arr2[0] = a22.f38297f;
        System.arraycopy(m2Arr, 0, m2Arr2, 1, m2Arr.length);
        return c4724u1.a(a(c4724u1, a22.f38297f), c4724u1.a(a22.f36127i.f36440e, m2Arr2), c4724u1.b(str + a22.f38298g.toString()));
    }

    public static C4421e0 a(com.android.tools.r8.graph.A2 a22, InterfaceC4440f0 interfaceC4440f0, C4798y c4798y) {
        com.android.tools.r8.synthesis.J g10 = c4798y.f38408a.g();
        com.android.tools.r8.graph.L2 t02 = a22.t0();
        com.android.tools.r8.graph.I2 y02 = a22.y0();
        com.android.tools.r8.synthesis.I i10 = new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58183j;
                return bVar;
            }
        };
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10404yI.b((C11591p) obj);
            }
        };
        Consumer consumer2 = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10404yI.b((com.android.tools.r8.graph.I0) obj);
            }
        };
        Consumer consumer3 = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10404yI.b((com.android.tools.r8.synthesis.N) obj);
            }
        };
        g10.getClass();
        return com.android.tools.r8.synthesis.J.a(t02, y02, i10.a(g10.f58085b), c4798y, consumer3, g10.a(i10.a(g10.f58085b), consumer, consumer2, C11579l.a(interfaceC4440f0), c4798y));
    }

    public final void a(final com.android.tools.r8.graph.H2 h22, final AI ai2) {
        if (!f53989d && !c(h22)) {
            throw new AssertionError();
        }
        JI.a(h22, this.f53990a.b().f38075j1, this.f53990a.b().a(this.f53990a.b().f37905M1, new com.android.tools.r8.graph.M2[0]), this.f53990a, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10404yI.this.b(h22, (com.android.tools.r8.synthesis.N) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10404yI.a(AI.this, h22, (com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    public static boolean a(C4460g1 c4460g1) {
        return (c4460g1.G0() || c4460g1.f37207l.i()) ? false : true;
    }

    public final C4460g1 a(final com.android.tools.r8.graph.H2 h22) {
        C4724u1 b10 = this.f53990a.b();
        C4554l1 a10 = b10.a(h22.getType(), b10.f37884J1, "$desugar$clinit", new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10404yI.a(com.android.tools.r8.graph.H2.this, (C4554l1) obj);
            }
        });
        C4460g1[] c4460g1Arr = C4460g1.f37200o;
        C4460g1.a a11 = new C4460g1.a(true).a(a10);
        boolean z10 = C4537k3.f37423f;
        C4518j3 c4518j3 = new C4518j3();
        if (!AbstractC4439f.f37167b && !c4518j3.f37168a.f()) {
            throw new AssertionError();
        }
        C4518j3 c4518j32 = (C4518j3) c4518j3.a();
        c4518j32.f37168a.y();
        c4518j32.f37168a.z();
        a11.f37213c = (C4537k3) c4518j32.f37168a;
        a11.f37216f = R2.h.f36753e;
        return a11.c().a();
    }

    public final void b(final com.android.tools.r8.graph.H2 h22, com.android.tools.r8.synthesis.N n10) {
        boolean z10 = com.android.tools.r8.graph.L4.f36564f;
        com.android.tools.r8.graph.K4 k42 = new com.android.tools.r8.graph.K4();
        ((com.android.tools.r8.graph.L4) k42.f37168a).a(65536);
        if (!AbstractC4439f.f37167b && !k42.f37168a.f()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.K4 k43 = (com.android.tools.r8.graph.K4) k42.a();
        k43.f37168a.y();
        n10.f58119i = (com.android.tools.r8.graph.L4) k43.f37168a;
        C5313Ib G12 = h22.G1();
        C5313Ib c5313Ib = f53988c;
        if (!G12.b(c5313Ib)) {
            G12 = c5313Ib;
        }
        n10.f58116f = G12;
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return C10404yI.this.a(h22, a22);
            }
        };
    }

    public final AbstractC4497i0 a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.A2 a22) {
        C8106kb c8106kb;
        if (this.f53990a.i()) {
            com.android.tools.r8.graph.M2 m22 = a22.f38297f;
            AbstractC7552hC a10 = AbstractC7552hC.a(new S9(h22.getType()), new C8106kb(C8106kb.a.Pop), new C6607bb());
            List list = Collections.EMPTY_LIST;
            return new com.android.tools.r8.graph.G(m22, 1, 0, a10, list, list);
        }
        C4460g1 b10 = b(h22);
        if (b10 == null) {
            b10 = a(h22);
            h22.a(b10);
        }
        boolean T02 = b10.getType().T0();
        com.android.tools.r8.graph.M2 m23 = a22.f38297f;
        int i10 = T02 ? 2 : 1;
        C9942vb c9942vb = new C9942vb(b10.getReference());
        if (T02) {
            c8106kb = new C8106kb(C8106kb.a.Pop2);
        } else {
            c8106kb = new C8106kb(C8106kb.a.Pop);
        }
        AbstractC7552hC a11 = AbstractC7552hC.a(c9942vb, c8106kb, new C6607bb());
        List list2 = Collections.EMPTY_LIST;
        return new com.android.tools.r8.graph.G(m23, i10, 0, a11, list2, list2);
    }

    public final Predicate a(final C4798y c4798y) {
        C4724u1 b10 = c4798y.b();
        final C8570nJ E10 = c4798y.E();
        final com.android.tools.r8.graph.L2 b11 = b10.b("$-CC;");
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10404yI.this.a(c4798y, b11, E10, (com.android.tools.r8.graph.M2) obj);
            }
        };
    }

    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.L2 l22, C8570nJ c8570nJ, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.L2 v02 = m22.v0();
        if (c4798y.E().x().b().a(m22)) {
            return true;
        }
        v02.getClass();
        return v02.a(l22.f36562f) || X2.a(this.f53990a).f53766c.b(m22) || c8570nJ.x().a().f53766c.a(m22) || c4798y.f38413f.a(m22);
    }

    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.M2 m22) {
        if (this.f53991b.test(m22)) {
            return;
        }
        C8570nJ E10 = this.f53990a.E();
        if (E10.f50671c2.add(m22)) {
            E10.f50691j.warning(new InterfaceDesugarMissingTypeDiagnostic(h22.f36244d, Position.UNKNOWN, Reference.classFromDescriptor(m22.V0()), Reference.classFromDescriptor(h22.getType().V0()), h22 == e02 ? null : Reference.classFromDescriptor(e02.getType().V0())));
        }
    }
}
