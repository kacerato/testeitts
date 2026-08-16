package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4592n1;
import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4421e0;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.synthesis.C11579l;
import com.android.tools.r8.synthesis.C11591p;
import com.android.tools.r8.synthesis.S;
import java.util.Collection;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntConsumer;
import java.util.function.Supplier;

public class C7769iZ implements X9 {

    public static final boolean f48968e = true;

    public final C4798y f48969b;

    public final C4724u1 f48970c;

    public final ConcurrentHashMap f48971d = new ConcurrentHashMap();

    public C7769iZ(C4798y c4798y) {
        this.f48969b = c4798y;
        this.f48970c = c4798y.b();
    }

    public static void a(com.android.tools.r8.graph.I0 i02) {
    }

    public static void b(com.android.tools.r8.graph.I0 i02) {
    }

    public static void a(com.android.tools.r8.synthesis.W w10) {
    }

    public static void b(com.android.tools.r8.synthesis.W w10) {
    }

    public final com.android.tools.r8.graph.L2 c(com.android.tools.r8.graph.H0 h02) {
        String str;
        if (h02.getAccessFlags().n()) {
            str = "-$$Nest$sm";
        } else {
            str = "-$$Nest$m";
        }
        return this.f48970c.b(str + h02.getReference().t0().toString());
    }

    public final com.android.tools.r8.graph.A2 d(com.android.tools.r8.graph.H0 h02) {
        com.android.tools.r8.graph.I2 b10;
        if (!f48968e && h02.d().j1()) {
            throw new AssertionError();
        }
        if (h02.getAccessFlags().n()) {
            b10 = h02.getReference().y0();
        } else {
            C4724u1 c4724u1 = this.f48970c;
            com.android.tools.r8.graph.A2 reference = h02.getReference();
            c4724u1.getClass();
            b10 = reference.y0().b(c4724u1, reference.s0());
        }
        return this.f48970c.a(h02.p(), b10, c(h02));
    }

    public static void a(C11591p c11591p) {
    }

    public static void b(C11591p c11591p) {
    }

    public final void a(Consumer consumer, Consumer consumer2) {
        C7435gZ a10;
        Set c10 = AbstractC5513Ll0.c();
        for (com.android.tools.r8.graph.H2 h22 : this.f48969b.f().d()) {
            if (h22.q1() && c10.add(h22.T0()) && (a10 = C7435gZ.a(this.f48969b, h22, consumer2)) != null) {
                consumer.accept(a10);
            }
        }
    }

    public final com.android.tools.r8.graph.A2 b(com.android.tools.r8.graph.F0 f02, boolean z10) {
        com.android.tools.r8.graph.M2 m22;
        int a10 = C8704o7.a(!z10) + C8704o7.a(!f02.getAccessFlags().n());
        com.android.tools.r8.graph.M2[] m2Arr = new com.android.tools.r8.graph.M2[a10];
        if (!z10) {
            m2Arr[a10 - 1] = f02.getReference().getType();
        }
        if (!f02.getAccessFlags().n()) {
            m2Arr[0] = f02.p();
        }
        if (z10) {
            m22 = f02.getReference().getType();
        } else {
            m22 = this.f48970c.f37905M1;
        }
        return this.f48970c.a(f02.p(), this.f48970c.a(m22, m2Arr), a(f02, z10));
    }

    public static void a(Consumer consumer, Consumer consumer2, C4798y c4798y) {
        C7435gZ a10;
        Set c10 = AbstractC5513Ll0.c();
        for (com.android.tools.r8.graph.H2 h22 : c4798y.f().d()) {
            if (h22.q1() && c10.add(h22.T0()) && (a10 = C7435gZ.a(c4798y, h22, consumer2)) != null) {
                consumer.accept(a10);
            }
        }
    }

    public static com.android.tools.r8.graph.H5 a(C7602hZ c7602hZ, com.android.tools.r8.graph.F5 f52, boolean z10) {
        return O1.a(c7602hZ.f48579a, f52, z10);
    }

    @Override
    public final void a(IntConsumer intConsumer) {
        AbstractC4962Ca.a(intConsumer);
        AbstractC4962Ca.b(intConsumer);
    }

    public final com.android.tools.r8.graph.E0 b(com.android.tools.r8.graph.H0 h02) {
        if (!this.f48969b.E().f50722t0) {
            return (com.android.tools.r8.graph.E0) this.f48971d.get(h02.getHolder().T0());
        }
        return (com.android.tools.r8.graph.E0) this.f48971d.get(h02.p());
    }

    @Override
    public final void a(final AbstractC7103ea abstractC7103ea, final Z70 z70, final com.android.tools.r8.graph.H5 h52) {
        h52.d().Q0().V().E0().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7769iZ.this.a(h52, abstractC7103ea, z70, (W9) obj);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.H5 h52, AbstractC7103ea abstractC7103ea, Z70 z70, W9 w92) {
        if (w92.I()) {
            C4554l1 field = w92.f().getField();
            if (a(field, h52)) {
                a(field, w92.f().H(), h52, abstractC7103ea, z70);
                return;
            }
            return;
        }
        if (w92.L()) {
            com.android.tools.r8.graph.A2 V10 = w92.j().V();
            if (a(V10, h52)) {
                a(V10, h52, abstractC7103ea, z70);
                return;
            }
            return;
        }
        if (w92 instanceof C7604ha) {
            com.android.tools.r8.graph.D0 V11 = w92.k().V();
            C4798y c4798y = this.f48969b;
            C8085kR b10 = C8085kR.b(V11, c4798y, c4798y.g(), h52);
            if (b10 != null) {
                AbstractC4744v2<? extends AbstractC4592n1, ? extends AbstractC4744v2<?, ?>> abstractC4744v2 = b10.f49628d.f36191f;
                if (a(abstractC4744v2, h52)) {
                    if (!f48968e && !abstractC4744v2.r0()) {
                        throw new AssertionError();
                    }
                    a(abstractC4744v2.n0(), h52, abstractC7103ea, z70);
                }
            }
        }
    }

    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H5 h52, AbstractC7103ea abstractC7103ea, Z70 z70) {
        final C7602hZ a10 = a(a22, h52, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C7769iZ.this.a((com.android.tools.r8.graph.H0) obj);
            }
        });
        if (a10 == null || !a10.f48580b.a0()) {
            return;
        }
        com.android.tools.r8.graph.E0 holder = a10.f48580b.getHolder();
        if (holder.f36252l.f36638b.a(a10.f48579a) == null) {
            final com.android.tools.r8.graph.H5 H10 = ((com.android.tools.r8.graph.H0) a10.f48580b).H();
            com.android.tools.r8.graph.H5 a11 = z70.a(new Supplier() {
                @Override
                public final Object get() {
                    return C7769iZ.this.a(H10, a10);
                }
            }, a10.f48579a);
            if (H10.d().j1()) {
                abstractC7103ea.a(H10, a11, b(H10), h52);
            } else {
                abstractC7103ea.a(H10, a11, h52);
            }
        }
    }

    public final com.android.tools.r8.graph.H5 a(com.android.tools.r8.graph.H5 h52, C7602hZ c7602hZ) {
        if (h52.d().j1()) {
            return O1.a(c7602hZ.f48579a, h52, this.f48970c);
        }
        return O1.b(c7602hZ.f48579a, h52, this.f48970c);
    }

    public final C7602hZ a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H5 h52, Function function) {
        com.android.tools.r8.graph.A2 d10;
        if (!a22.s0().I0()) {
            return null;
        }
        C4798y c4798y = this.f48969b;
        c4798y.getClass();
        com.android.tools.r8.graph.M2 m22 = a22.f38297f;
        com.android.tools.r8.graph.E0 holder = h52.getHolder();
        if (m22 != holder.f36245e) {
            holder = c4798y.a(m22);
        }
        com.android.tools.r8.graph.H0 a10 = holder != null ? holder.a(a22) : null;
        if (a10 == null || !a(a10, h52)) {
            return null;
        }
        if (a10.d().j1()) {
            com.android.tools.r8.graph.E0 e02 = (com.android.tools.r8.graph.E0) function.apply(a10);
            if (!f48968e && !a10.d().j1()) {
                throw new AssertionError();
            }
            C4724u1 c4724u1 = this.f48970c;
            com.android.tools.r8.graph.I2 y02 = a10.getReference().y0();
            com.android.tools.r8.graph.M2 type = e02.getType();
            c4724u1.getClass();
            int size = y02.f36441f.size();
            com.android.tools.r8.graph.M2[] m2Arr = new com.android.tools.r8.graph.M2[size + 1];
            com.android.tools.r8.graph.O2 o22 = y02.f36441f;
            System.arraycopy(o22.f36675b, 0, m2Arr, 0, o22.size());
            m2Arr[size] = type;
            com.android.tools.r8.graph.I2 a11 = c4724u1.a(y02.f36440e, m2Arr);
            com.android.tools.r8.graph.A2 reference = a10.getReference();
            d10 = this.f48970c.a(reference.f38297f, a11, reference.f38298g);
        } else {
            d10 = d(a10);
        }
        return new C7602hZ(d10, a10);
    }

    public final void a(C4554l1 c4554l1, final boolean z10, com.android.tools.r8.graph.H5 h52, AbstractC7103ea abstractC7103ea, Z70 z70) {
        C4798y c4798y = this.f48969b;
        c4798y.getClass();
        com.android.tools.r8.graph.M2 m22 = c4554l1.f38297f;
        com.android.tools.r8.graph.E0 holder = h52.getHolder();
        if (m22 != holder.f36245e) {
            holder = c4798y.a(m22);
        }
        final C7602hZ c7602hZ = null;
        com.android.tools.r8.graph.F0 a10 = holder != null ? holder.a(c4554l1) : null;
        if (a10 != null && a(a10, h52)) {
            c7602hZ = new C7602hZ(b(a10, z10), a10);
        }
        if (c7602hZ == null || !c7602hZ.f48580b.a0()) {
            return;
        }
        if (c7602hZ.f48580b.getHolder().f36252l.f36638b.a(c7602hZ.f48579a) == null) {
            final com.android.tools.r8.graph.F5 W10 = ((com.android.tools.r8.graph.F0) c7602hZ.f48580b).W();
            com.android.tools.r8.graph.H5 a11 = z70.a(new Supplier() {
                @Override
                public final Object get() {
                    return C7769iZ.a(C7602hZ.this, W10, z10);
                }
            }, c7602hZ.f48579a);
            if (z10) {
                abstractC7103ea.b(W10, a11, h52);
            } else {
                abstractC7103ea.a(W10, a11, h52);
            }
        }
    }

    public final boolean a(AbstractC4744v2 abstractC4744v2, com.android.tools.r8.graph.H5 h52) {
        if (h52.getHolder().q1() && abstractC4744v2.s0().I0()) {
            C4798y c4798y = this.f48969b;
            c4798y.getClass();
            com.android.tools.r8.graph.M2 m22 = abstractC4744v2.f38297f;
            com.android.tools.r8.graph.E0 holder = h52.getHolder();
            if (m22 != holder.f36245e) {
                holder = c4798y.a(m22);
            }
            com.android.tools.r8.graph.G0 a10 = abstractC4744v2.a(holder);
            if (a10 != null && a(a10, h52)) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(com.android.tools.r8.graph.G0 g02, com.android.tools.r8.graph.H0 h02) {
        return g02.getAccessFlags().h() && g02.p() != h02.p() && g02.getHolder().q1() && g02.getHolder().T0() == h02.getHolder().T0();
    }

    @Override
    public final C6473am a(com.android.tools.r8.graph.H5 h52, W9 w92) {
        if (w92.I()) {
            if (a(w92.f().getField(), h52)) {
                return a(w92.f());
            }
            return C6473am.f46625a;
        }
        if (w92.L()) {
            if (a(w92.j().V(), h52)) {
                return a(w92.j());
            }
            return C6473am.f46625a;
        }
        return C6473am.f46625a;
    }

    public final C6204Xl a(final F9 f92) {
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                return C7769iZ.this.a(f92, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, y92, c4724u1);
            }
        }));
    }

    public final Collection a(F9 f92, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        C4554l1 field = f92.getField();
        boolean H10 = f92.H();
        C4798y c4798y = this.f48969b;
        c4798y.getClass();
        com.android.tools.r8.graph.M2 m22 = field.f38297f;
        com.android.tools.r8.graph.E0 holder = h52.getHolder();
        if (m22 != holder.f36245e) {
            holder = c4798y.a(m22);
        }
        C7602hZ c7602hZ = null;
        com.android.tools.r8.graph.F0 a10 = holder != null ? holder.a(field) : null;
        if (a10 != null && a(a10, h52)) {
            c7602hZ = new C7602hZ(b(a10, H10), a10);
        }
        boolean z10 = f48968e;
        if (!z10 && c7602hZ == null) {
            throw new AssertionError();
        }
        if (!z10) {
            com.android.tools.r8.graph.F0 f02 = (com.android.tools.r8.graph.F0) c7602hZ.f48580b;
            if (f02 instanceof com.android.tools.r8.graph.F5) {
                if (f02.getHolder().f36252l.f36638b.a(c7602hZ.f48579a) == null) {
                    throw new AssertionError();
                }
            }
        }
        C7437ga c7437ga = new C7437ga(184, c7602hZ.f48579a, ((com.android.tools.r8.graph.F0) c7602hZ.f48580b).getHolder().isInterface());
        int i10 = AbstractC7552hC.f48487c;
        return new C5920Sm0(c7437ga);
    }

    public final C6204Xl a(final C7437ga c7437ga) {
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                return C7769iZ.this.a(c7437ga, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, y92, c4724u1);
            }
        }));
    }

    public final Collection a(C7437ga c7437ga, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        C7602hZ a10 = a(c7437ga.V(), h52, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C7769iZ.this.b((com.android.tools.r8.graph.H0) obj);
            }
        });
        boolean z10 = f48968e;
        if (!z10 && a10 == null) {
            throw new AssertionError();
        }
        if (!z10) {
            com.android.tools.r8.graph.H0 h02 = (com.android.tools.r8.graph.H0) a10.f48580b;
            h02.getClass();
            if (h02 instanceof com.android.tools.r8.graph.H5) {
                com.android.tools.r8.graph.E0 holder = ((com.android.tools.r8.graph.H0) a10.f48580b).getHolder();
                if (holder.f36252l.f36638b.a(a10.f48579a) == null) {
                    throw new AssertionError();
                }
            }
        }
        if (((com.android.tools.r8.graph.H0) a10.f48580b).d().j1()) {
            if (!z10 && c7437ga.X()) {
                throw new AssertionError();
            }
            qt.a(1);
            return AbstractC7552hC.a(new C10212x9(), new C7437ga(183, a10.f48579a, false));
        }
        return new C5920Sm0(new C7437ga(184, a10.f48579a, c7437ga.X()));
    }

    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.F0 f02, boolean z10) {
        String str;
        if (z10 && !f02.getAccessFlags().n()) {
            str = "-$$Nest$fget";
        } else if (z10) {
            str = "-$$Nest$sfget";
        } else if (!f02.getAccessFlags().n()) {
            str = "-$$Nest$fput";
        } else {
            str = "-$$Nest$sfput";
        }
        return this.f48970c.b(str + f02.getReference().t0().toString());
    }

    public final com.android.tools.r8.graph.E0 a(final com.android.tools.r8.graph.H0 h02) {
        com.android.tools.r8.graph.M2 T02;
        boolean z10 = f48968e;
        if (!z10 && !h02.d().j1()) {
            throw new AssertionError();
        }
        if (!z10) {
            h02.getClass();
            if (!(h02 instanceof com.android.tools.r8.graph.H5) && !(h02 instanceof C4421e0)) {
                throw new AssertionError();
            }
        }
        if (!this.f48969b.E().f50722t0) {
            h02.getClass();
            if (h02 instanceof com.android.tools.r8.graph.H5) {
                T02 = h02.H().getHolder().T0();
            } else {
                T02 = h02.M().getHolder().T0();
            }
            final com.android.tools.r8.graph.E0 g10 = this.f48969b.g(T02);
            return (com.android.tools.r8.graph.E0) this.f48971d.computeIfAbsent(T02, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C7769iZ.this.a(g10, (com.android.tools.r8.graph.M2) obj);
                }
            });
        }
        return (com.android.tools.r8.graph.E0) this.f48971d.computeIfAbsent(h02.p(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C7769iZ.this.a(h02, (com.android.tools.r8.graph.M2) obj);
            }
        });
    }

    public final com.android.tools.r8.graph.E0 a(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.M2 m22) {
        if (e02.e0()) {
            return this.f48969b.f38408a.g().a(new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    S.b bVar;
                    bVar = s10.f58189p;
                    return bVar;
                }
            }, e02.d0(), this.f48969b, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C7769iZ.b((com.android.tools.r8.synthesis.W) obj);
                }
            });
        }
        if (!f48968e && !(e02 instanceof com.android.tools.r8.graph.I0)) {
            throw new AssertionError();
        }
        com.android.tools.r8.synthesis.J g10 = this.f48969b.f38408a.g();
        com.android.tools.r8.synthesis.I i10 = new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58189p;
                return bVar;
            }
        };
        com.android.tools.r8.graph.I0 k10 = e02.k();
        C4798y c4798y = this.f48969b;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7769iZ.b((C11591p) obj);
            }
        };
        Consumer consumer2 = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7769iZ.a((com.android.tools.r8.graph.I0) obj);
            }
        };
        g10.getClass();
        return g10.a(i10.a(g10.f58085b), consumer, consumer2, C11579l.a(k10), c4798y);
    }

    public final com.android.tools.r8.graph.E0 a(com.android.tools.r8.graph.H0 h02, com.android.tools.r8.graph.M2 m22) {
        h02.getClass();
        if (h02 instanceof com.android.tools.r8.graph.H5) {
            return this.f48969b.f38408a.g().a(new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    S.b bVar;
                    bVar = s10.f58189p;
                    return bVar;
                }
            }, h02.H().getHolder(), this.f48969b, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C7769iZ.a((com.android.tools.r8.synthesis.W) obj);
                }
            });
        }
        if (!f48968e && !(h02 instanceof C4421e0)) {
            throw new AssertionError();
        }
        com.android.tools.r8.synthesis.J g10 = this.f48969b.f38408a.g();
        com.android.tools.r8.synthesis.I i10 = new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58189p;
                return bVar;
            }
        };
        com.android.tools.r8.graph.I0 holder = h02.M().getHolder();
        C4798y c4798y = this.f48969b;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7769iZ.a((C11591p) obj);
            }
        };
        Consumer consumer2 = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7769iZ.b((com.android.tools.r8.graph.I0) obj);
            }
        };
        g10.getClass();
        return g10.a(i10.a(g10.f58085b), consumer, consumer2, C11579l.a(holder), c4798y);
    }
}
