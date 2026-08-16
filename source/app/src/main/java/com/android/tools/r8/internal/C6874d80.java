package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.synthesis.S;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.LinkedHashMap;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C6874d80 implements InterfaceC7875j9 {

    public static final boolean f47293d = true;

    public final C4798y f47294b;

    public final C10404yI f47295c;

    public C6874d80(C4798y c4798y) {
        this.f47294b = c4798y;
        this.f47295c = new C10404yI(c4798y);
    }

    public static boolean a(C7163eu c7163eu, C4516j1 c4516j1) {
        return c7163eu.f47805b.containsKey(c4516j1.getReference());
    }

    public final void a(com.android.tools.r8.graph.H2 h22, final C7163eu c7163eu, final InterfaceC7497gu interfaceC7497gu, final com.android.tools.r8.synthesis.W w10) {
        h22.j(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6874d80.this.a(w10, c7163eu, interfaceC7497gu, (com.android.tools.r8.graph.H5) obj);
            }
        }, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C6874d80.a(C7163eu.this, (C4516j1) obj);
            }
        });
    }

    @Override
    public final String b() {
        return "$emulatedInterface";
    }

    public final void a(com.android.tools.r8.graph.H5 h52, C7163eu c7163eu, com.android.tools.r8.synthesis.W w10, InterfaceC7497gu interfaceC7497gu, com.android.tools.r8.synthesis.N n10) {
        a(h52, (C6830cu) c7163eu.f47805b.get(h52.getReference()), w10.f58283b, n10, interfaceC7497gu);
    }

    public final void a(final com.android.tools.r8.graph.H2 h22, final C7163eu c7163eu, final AbstractC8710o9 abstractC8710o9) {
        com.android.tools.r8.synthesis.J g10 = this.f47294b.f38408a.g();
        com.android.tools.r8.synthesis.I i10 = new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58184k;
                return bVar;
            }
        };
        C4798y c4798y = this.f47294b;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6874d80.this.a(h22, c7163eu, abstractC8710o9, (com.android.tools.r8.synthesis.W) obj);
            }
        };
        Objects.requireNonNull(abstractC8710o9);
        g10.a(i10, h22, c4798y, consumer, new Consumer() {
            @Override
            public final void accept(Object obj) {
                InterfaceC7497gu.this.e((com.android.tools.r8.graph.H2) obj);
            }
        });
    }

    public final void a(final com.android.tools.r8.synthesis.W w10, final C7163eu c7163eu, final InterfaceC7497gu interfaceC7497gu, final com.android.tools.r8.graph.H5 h52) {
        w10.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6874d80.this.a(h52, c7163eu, w10, interfaceC7497gu, (com.android.tools.r8.synthesis.N) obj);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.H5 h52, C6830cu c6830cu, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.synthesis.N n10, InterfaceC7497gu interfaceC7497gu) {
        if (!f47293d && h52.d().w0()) {
            throw new AssertionError();
        }
        final com.android.tools.r8.graph.A2 a10 = this.f47295c.a(m22, c6830cu.f47198b);
        C10404yI c10404yI = this.f47295c;
        C6257Yj c6257Yj = c6830cu.f47197a;
        if (!C10404yI.f53989d) {
            if (c6257Yj.a(c10404yI.f53990a) != null) {
                throw new AssertionError();
            }
        } else {
            c10404yI.getClass();
        }
        final com.android.tools.r8.graph.A2 a22 = c6257Yj.f46071a;
        final com.android.tools.r8.graph.A2 a11 = this.f47295c.a(c6830cu.f47199c, BI.f38875c);
        final LinkedHashMap a12 = a(c6830cu, interfaceC7497gu);
        com.android.tools.r8.synthesis.N a13 = n10.a(a10.t0());
        a13.f58115e = a10.y0();
        a13.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        a13.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a23) {
                return C6874d80.this.a(a10, a11, a22, a12, a23);
            }
        };
    }

    public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, com.android.tools.r8.graph.A2 a24, LinkedHashMap linkedHashMap, com.android.tools.r8.graph.A2 a25) {
        return new C6664bu(a22.s0(), a23, a24, linkedHashMap, 1, this.f47294b).b();
    }

    public final LinkedHashMap a(C6830cu c6830cu, final InterfaceC7497gu interfaceC7497gu) {
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        c6830cu.f47200d.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6874d80.this.a(linkedHashMap, interfaceC7497gu, (com.android.tools.r8.graph.M2) obj, (C6257Yj) obj2);
            }
        });
        return linkedHashMap;
    }

    public final void a(LinkedHashMap linkedHashMap, InterfaceC7497gu interfaceC7497gu, com.android.tools.r8.graph.M2 m22, C6257Yj c6257Yj) {
        linkedHashMap.put(m22, this.f47295c.a(c6257Yj, BI.f38875c));
    }

    @Override
    public final void a(C4861Af c4861Af, final AbstractC8710o9 abstractC8710o9) {
        if (!f47293d && !this.f47294b.E().x().f45396a.f53764a) {
            throw new AssertionError();
        }
        X2.a(this.f47294b).f53766c.g().forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6874d80.this.a(abstractC8710o9, (com.android.tools.r8.graph.M2) obj, (C7163eu) obj2);
            }
        });
    }

    public final void a(AbstractC8710o9 abstractC8710o9, com.android.tools.r8.graph.M2 m22, C7163eu c7163eu) {
        com.android.tools.r8.graph.E0 g10 = this.f47294b.g(m22);
        if (g10 != null && g10.e0()) {
            com.android.tools.r8.graph.H2 d02 = g10.d0();
            if (!f47293d && d02 == null) {
                throw new AssertionError();
            }
            if (this.f47294b.a(d02) || c7163eu.f47805b.isEmpty()) {
                return;
            }
            a(d02, c7163eu, abstractC8710o9);
            return;
        }
        a(m22);
    }

    public final void a(com.android.tools.r8.graph.M2 m22) {
        this.f47294b.E().f50691j.warning(new StringDiagnostic("Cannot emulate interface " + m22.x0() + " because the interface is missing."));
    }
}
