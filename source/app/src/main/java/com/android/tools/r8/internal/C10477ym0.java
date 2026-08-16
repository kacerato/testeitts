package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Stream;

public final class C10477ym0 {

    public static final com.android.tools.r8.graph.H5 f54152c = new com.android.tools.r8.graph.H5();

    public final C4798y f54153a;

    public final C7873j80 f54154b;

    public C10477ym0(C4798y c4798y, C7873j80 c7873j80) {
        this.f54153a = c4798y;
        this.f54154b = c7873j80;
    }

    public static void c(C7541h80 c7541h80, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        Function a10 = TU.a(new C6880dA0());
        c7541h80.getClass();
        ((AbstractC8374m80) c7541h80.a(a10, new C7333fv(C7374g80.f48192a, h53))).add((AbstractC8374m80) h52);
    }

    public static void d(C7541h80 c7541h80, final com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        c7541h80.a((com.android.tools.r8.graph.G0) h53, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C10477ym0.a(com.android.tools.r8.graph.H5.this, (com.android.tools.r8.graph.H5) obj, (com.android.tools.r8.graph.H5) obj2);
            }
        });
    }

    public final C7541h80 a(ExecutorService executorService) {
        final C8570nJ E10 = this.f54153a.E();
        C7541h80 b10 = b(executorService);
        b10.a(new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C10477ym0.this.a(E10, (com.android.tools.r8.graph.H5) obj, (com.android.tools.r8.graph.H5) obj2);
            }
        });
        return a(b10, executorService);
    }

    public final C7541h80 b(ExecutorService executorService) {
        final C7541h80 l10 = C7541h80.l();
        C5467Kr0.a(((C11245i) this.f54153a.f()).d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10477ym0.this.a(l10, (com.android.tools.r8.graph.H2) obj);
            }
        }, this.f54153a.E().G(), executorService);
        final C7541h80 l11 = C7541h80.l();
        l10.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10477ym0.b(C7541h80.this, (com.android.tools.r8.graph.H5) obj, (com.android.tools.r8.graph.H5) obj2);
            }
        });
        return l11;
    }

    public final boolean a(C8570nJ c8570nJ, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        if (h52.d().k1().c()) {
            return true;
        }
        com.android.tools.r8.shaking.I1 a10 = this.f54153a.a(h52);
        a10.getClass();
        return ((h52.A().H() || (a10.c(c8570nJ) && a10.e(c8570nJ) && a10.f56565x)) && G2.a(this.f54153a, h53, h52)) ? false : true;
    }

    public static void b(C7541h80 c7541h80, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        if (h52.d().b1() && U30.a(h53, f54152c) && !h52.a((com.android.tools.r8.graph.H0) h53)) {
            c7541h80.getClass();
            c7541h80.f43368b.put(new C7333fv(C7374g80.f48192a, h52), h53);
        }
    }

    public static void a(C7541h80 c7541h80, C7541h80 c7541h802, com.android.tools.r8.graph.H5 h52) {
        Map map = c7541h80.f43368b;
        C7374g80 c7374g80 = C7374g80.f48192a;
        if (!map.containsKey(new C7333fv(c7374g80, h52)) || ((Integer) c7541h80.f43368b.get(new C7333fv(c7374g80, h52))).intValue() > 1) {
            c7541h802.f43368b.remove(new C7333fv(c7374g80, h52));
        }
    }

    public final void a(final C7541h80 c7541h80, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.H5 r10;
        com.android.tools.r8.graph.H5 r11;
        com.android.tools.r8.graph.H5 r12;
        com.android.tools.r8.graph.H5 r13;
        com.android.tools.r8.graph.H5 r14;
        C7541h80 k10 = C7541h80.k();
        for (YS ys : h52.d().Q0().o0().f45405g) {
            if (ys instanceof com.android.tools.r8.graph.D0) {
                com.android.tools.r8.graph.D0 d02 = (com.android.tools.r8.graph.D0) ys;
                C4798y c4798y = this.f54153a;
                C8085kR b10 = C8085kR.b(d02, c4798y, (C4514j) c4798y.f(), h52);
                if (b10 != null) {
                    com.android.tools.r8.graph.C2 c22 = b10.f49628d;
                    if (c22.f36190e.d()) {
                        com.android.tools.r8.graph.A2 m02 = c22.m0();
                        if (!m02.s0().E0() && (r14 = ((C11245i) this.f54153a.f()).e(m02).r()) != null) {
                            d(k10, h52, r14);
                        }
                    }
                } else {
                    com.android.tools.r8.graph.C2 c23 = d02.f36214g;
                    if (c23.f36190e.d()) {
                        com.android.tools.r8.graph.A2 m03 = c23.m0();
                        if (!m03.s0().E0() && (r13 = ((C11245i) this.f54153a.f()).e(m03).r()) != null) {
                            d(k10, h52, r13);
                        }
                    }
                    for (com.android.tools.r8.graph.R2 r22 : d02.f36215h) {
                        r22.getClass();
                        if (r22 instanceof com.android.tools.r8.graph.X2) {
                            com.android.tools.r8.graph.C2 c24 = (com.android.tools.r8.graph.C2) r22.z0().W0();
                            if (c24.f36190e.d()) {
                                com.android.tools.r8.graph.A2 m04 = c24.m0();
                                if (!m04.s0().E0() && (r12 = ((C11245i) this.f54153a.f()).e(m04).r()) != null) {
                                    d(k10, h52, r12);
                                }
                            }
                        }
                    }
                }
            } else if (ys instanceof com.android.tools.r8.graph.C2) {
                com.android.tools.r8.graph.C2 c25 = (com.android.tools.r8.graph.C2) ys;
                if (c25.f36190e.d()) {
                    com.android.tools.r8.graph.A2 m05 = c25.m0();
                    if (!m05.s0().E0() && (r11 = ((C11245i) this.f54153a.f()).e(m05).r()) != null) {
                        d(k10, h52, r11);
                    }
                }
            } else if (ys instanceof com.android.tools.r8.graph.A2) {
                com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) ys;
                if (!a22.s0().E0() && (r10 = ((C11245i) this.f54153a.f()).e(a22).r()) != null) {
                    d(k10, h52, r10);
                }
            }
        }
        k10.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10477ym0.this.a(c7541h80, (com.android.tools.r8.graph.H5) obj, (com.android.tools.r8.graph.H5) obj2);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.H2 h22, final C7541h80 c7541h80) {
        h22.h(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10477ym0.this.a(c7541h80, (com.android.tools.r8.graph.H5) obj);
            }
        }, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10477ym0.a((C4516j1) obj);
            }
        });
    }

    public static boolean a(C4516j1 c4516j1) {
        return c4516j1.b1() && c4516j1.Q0().A0();
    }

    public final void a(C7541h80 c7541h80, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        com.android.tools.r8.graph.H5 h54 = f54152c;
        if (h53 == h54) {
            c7541h80.getClass();
            c7541h80.f43368b.put(new C7333fv(C7374g80.f48192a, h52), h54);
            return;
        }
        d(c7541h80, h53, h52);
    }

    public static com.android.tools.r8.graph.H5 a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53, com.android.tools.r8.graph.H5 h54) {
        return h54 != null ? f54152c : h52;
    }

    public final C7541h80 a(final C7541h80 c7541h80, ExecutorService executorService) {
        final C7541h80 k10 = C7541h80.k();
        c7541h80.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10477ym0.c(C7541h80.this, (com.android.tools.r8.graph.H5) obj, (com.android.tools.r8.graph.H5) obj2);
            }
        });
        Stream j10 = k10.j();
        Objects.requireNonNull(j10);
        C5467Kr0.a(new Xt1(j10), new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C10477ym0.this.b(k10, c7541h80, (com.android.tools.r8.graph.H5) obj);
            }
        }, this.f54153a.E().G(), executorService);
        return c7541h80;
    }

    public final void b(C7541h80 c7541h80, final C7541h80 c7541h802, com.android.tools.r8.graph.H5 h52) {
        AbstractC8374m80 abstractC8374m80 = (AbstractC8374m80) c7541h80.f43368b.get(new C7333fv(C7374g80.f48192a, h52));
        WS o02 = h52.d().Q0().o0();
        final C7541h80 k10 = C7541h80.k();
        C7089eT it = o02.iterator();
        while (it.hasNext()) {
            InterfaceC6923dT next = it.next();
            int a10 = next.a();
            if (AbstractC7423gT.b(a10)) {
                com.android.tools.r8.graph.H5 r10 = ((C11245i) this.f54153a.f()).a((com.android.tools.r8.graph.A2) o02.f45405g[next.o()], AbstractC7423gT.a(a10)).r();
                if (r10 != null && abstractC8374m80.f45165b.containsKey(r10.getReference()) && (r10.getAccessFlags().D() || this.f54154b.f45165b.containsKey(r10.getReference()))) {
                    Integer valueOf = Integer.valueOf(((Integer) k10.a((com.android.tools.r8.graph.G0) r10, (Object) 0)).intValue() + 1);
                    k10.f43368b.put(new C7333fv(C7374g80.f48192a, r10), valueOf);
                }
            }
        }
        abstractC8374m80.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10477ym0.a(C7541h80.this, c7541h802, (com.android.tools.r8.graph.H5) obj);
            }
        });
    }
}
