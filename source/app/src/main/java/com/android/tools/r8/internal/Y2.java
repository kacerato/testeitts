package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4351a6;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4725u2;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4784x4;
import com.android.tools.r8.graph.J0;
import com.android.tools.r8.synthesis.S;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public final class Y2 {

    public static final boolean f45904f = true;

    public final C4798y f45905a;

    public final ConcurrentHashMap f45906b = new ConcurrentHashMap();

    public final Set f45907c = C4875Al0.a();

    public final com.android.tools.r8.androidapi.a f45908d;

    public final InterfaceC6358a3 f45909e;

    public Y2(C4798y c4798y) {
        this.f45905a = c4798y;
        this.f45908d = c4798y.f38404S;
        InterfaceC6358a3 interfaceC6358a3 = Z2.f46148a;
        if (c4798y.E().q().f52267b) {
            M70 b10 = M70.b(c4798y);
            b10.getClass();
            if (!(b10 instanceof C6520b10)) {
                interfaceC6358a3 = new N70(b10.a());
            }
        }
        this.f45909e = interfaceC6358a3;
    }

    public static AbstractC4497i0 a(C4351a6 c4351a6, com.android.tools.r8.graph.A2 a22) {
        return c4351a6;
    }

    public final void a(ExecutorService executorService) {
        if (this.f45905a.E().a().g()) {
            List a10 = AT.a(this.f45905a.f().d(), new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return ((com.android.tools.r8.graph.H2) obj).J1();
                }
            });
            if (a10.size() > 2) {
                C5467Kr0.a(a10, new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        Y2.this.b((com.android.tools.r8.graph.H2) obj);
                    }
                }, this.f45905a.E().G(), executorService);
            } else {
                a10.forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        Y2.this.b((com.android.tools.r8.graph.H2) obj);
                    }
                });
            }
        }
        if (!this.f45907c.isEmpty()) {
            this.f45907c.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Y2.this.a((C4725u2) obj);
                }
            });
            C4798y c4798y = this.f45905a;
            c4798y.b(c4798y.e());
        }
        this.f45909e.a(this.f45905a);
    }

    public final void b(final com.android.tools.r8.graph.H2 h22) {
        if (!f45904f && !h22.J1()) {
            throw new AssertionError();
        }
        if (a(h22)) {
            return;
        }
        if (this.f45905a.E().z().c(C2.L)) {
            h22.z0().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Y2.this.b(h22, (com.android.tools.r8.graph.M2) obj);
                }
            });
        }
        h22.h(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Y2.this.a(h22, (com.android.tools.r8.graph.H5) obj);
            }
        }, new u.P0());
    }

    public final void a(final com.android.tools.r8.graph.H2 h22, Integer num, N8 n82) {
        n82.f42510b.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Y2.this.c(h22, (com.android.tools.r8.graph.M2) obj);
            }
        });
    }

    public final void a(C4725u2 c4725u2) {
        C4798y c4798y = this.f45905a;
        final ConcurrentHashMap concurrentHashMap = this.f45906b;
        Objects.requireNonNull(concurrentHashMap);
        a(c4798y, new Function() {
            @Override
            public final Object apply(Object obj) {
                return (Set) Map.this.get((InterfaceC4784x4) obj);
            }
        }, c4725u2, new C4351a6(this.f45905a.b().f37835C3), this.f45909e);
    }

    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        com.android.tools.r8.synthesis.J g10 = this.f45905a.f38408a.g();
        return g10.a(h22.getType(), new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58168U;
                return bVar;
            }
        }) || g10.a(h22.getType(), new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58169V;
                return bVar;
            }
        });
    }

    public final void a(final com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H5 h52) {
        VS vs;
        if (this.f45905a.m()) {
            WS o02 = h52.d().Q0().o0();
            if (o02 == null || (vs = o02.f45410l) == null) {
                return;
            }
            vs.f45060b.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    Y2.this.a(h22, (Integer) obj, (N8) obj2);
                }
            });
            return;
        }
        com.android.tools.r8.graph.J0 C10 = h52.d().Q0().C();
        if (C10 != null) {
            for (J0.b bVar : C10.f36462i) {
                for (J0.b.a aVar : bVar.f36476b) {
                    c(h22, aVar.getType());
                }
            }
        }
    }

    public final void c(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.E0 g10;
        if (!m22.I0() || a(this.f45905a.b(), m22) || (g10 = this.f45905a.g(m22)) == null || !g10.f0()) {
            return;
        }
        C4725u2 G10 = g10.G();
        com.android.tools.r8.androidapi.a aVar = this.f45908d;
        com.android.tools.r8.graph.M2 m23 = G10.f36245e;
        int i10 = com.android.tools.r8.androidapi.f.f35602a;
        com.android.tools.r8.androidapi.f a10 = aVar.a(m23, com.android.tools.r8.androidapi.h.f35609b);
        if (a10.b(this.f45905a.f38405T) && a10.q()) {
            this.f45907c.add(G10);
            ((Set) this.f45906b.computeIfAbsent(G10, TU.a(new C7738iJ0()))).add(h22);
        }
        Iterator it = G10.z0().iterator();
        while (it.hasNext()) {
            c(h22, (com.android.tools.r8.graph.M2) it.next());
        }
    }

    public static boolean a(C4724u1 c4724u1, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.L2 v02 = m22.v0();
        if (m22.a(c4724u1.f38068i2)) {
            return true;
        }
        com.android.tools.r8.graph.L2 l22 = c4724u1.f37861G;
        v02.getClass();
        return v02.b(l22.f36562f) || v02.b(c4724u1.f37868H.f36562f) || v02.b(c4724u1.f37875I.f36562f) || v02.b(c4724u1.f37882J.f36562f) || v02.b(c4724u1.f37889K.f36562f);
    }

    public static void a(C4798y c4798y, Function function, final C4725u2 c4725u2, final C4351a6 c4351a6, final InterfaceC6358a3 interfaceC6358a3) {
        final C4724u1 b10 = c4798y.b();
        if (a(b10, c4725u2.getType()) || X2.a(c4798y).b(c4725u2.getType())) {
            return;
        }
        final Set set = (Set) function.apply(c4725u2);
        if (set != null) {
            c4798y.f().g().a(new Supplier() {
                @Override
                public final Object get() {
                    return Y2.a();
                }
            }, new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    S.b bVar;
                    bVar = s10.f58175b;
                    return bVar;
                }
            }, c4725u2.getType(), set, c4798y, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Y2.a(C4725u2.this, b10, c4351a6, (com.android.tools.r8.synthesis.W) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    InterfaceC6358a3.this.a((com.android.tools.r8.graph.H2) obj, c4725u2);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Y2.a(InterfaceC6358a3.this, set, c4725u2, (com.android.tools.r8.graph.H2) obj);
                }
            });
            return;
        }
        throw new C5417Jv0("Attempt to create a global synthetic with no contexts");
    }

    public static GX a() {
        return new GX("API stubbing");
    }

    public static void a(C4725u2 c4725u2, final C4724u1 c4724u1, final C4351a6 c4351a6, com.android.tools.r8.synthesis.W w10) {
        w10.f58290i = c4725u2.a1();
        ((com.android.tools.r8.synthesis.W) w10.a(Arrays.asList(c4725u2.R0().f36675b))).a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Y2.a(C4724u1.this, c4351a6, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        if (c4725u2.isInterface()) {
            w10.f58286e = true;
            w10.f58287f = false;
            w10.f58288g = true;
        }
        if (c4725u2.p1()) {
            return;
        }
        w10.f58287f = false;
    }

    public static void a(C4724u1 c4724u1, final C4351a6 c4351a6, com.android.tools.r8.synthesis.N n10) {
        com.android.tools.r8.synthesis.N a10 = n10.a(c4724u1.f38075j1);
        a10.f58115e = c4724u1.a(c4724u1.f37905M1, new com.android.tools.r8.graph.M2[0]);
        a10.f58119i = com.android.tools.r8.graph.L4.b(4104, true);
        a10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return Y2.a(C4351a6.this, a22);
            }
        };
    }

    public static void a(InterfaceC6358a3 interfaceC6358a3, Set set, C4725u2 c4725u2, com.android.tools.r8.graph.H2 h22) {
        if (interfaceC6358a3.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            interfaceC6358a3.a(h22, c4725u2, (com.android.tools.r8.graph.H2) it.next());
        }
    }
}
