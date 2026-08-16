package com.android.tools.r8.naming;

import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.R5;
import com.android.tools.r8.graph.Y5;
import com.android.tools.r8.internal.AbstractC4895Av0;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.C10404yI;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5313Ib;
import com.android.tools.r8.internal.C6379aA;
import com.android.tools.r8.internal.C7045eA;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.InterfaceC6160Wr0;
import com.android.tools.r8.naming.V;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;

public final class D0 {

    public static final boolean f55592j = true;

    public final C4798y f55593a;

    public final C4724u1 f55594b;

    public final S0 f55595c;

    public final C7045eA f55596d = new C7045eA(16);

    public final Set f55597e = AbstractC5513Ll0.c();

    public final IdentityHashMap f55598f = new IdentityHashMap();

    public final IdentityHashMap f55599g = new IdentityHashMap();

    public final IdentityHashMap f55600h = new IdentityHashMap();

    public final IdentityHashMap f55601i = new IdentityHashMap();

    public D0(C4798y c4798y) {
        this.f55593a = c4798y;
        this.f55594b = c4798y.b();
        S0 s02 = c4798y.f38399N;
        this.f55595c = s02;
        if (!f55592j && s02 == null) {
            throw new AssertionError();
        }
    }

    /* JADX WARN: Type inference failed for: r13v1, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v8, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v9, types: [java.util.Map, java.lang.Object] */
    public final C0 a(ExecutorService executorService, C8659ns0 c8659ns0) {
        com.android.tools.r8.graph.E0 c10;
        com.android.tools.r8.graph.E0 g10;
        com.android.tools.r8.graph.A2 a10;
        final ArrayDeque arrayDeque = new ArrayDeque();
        final HashSet hashSet = new HashSet();
        final Y5 a11 = AbstractC10978o0.a(this.f55593a);
        c8659ns0.b("MappingInterfaces");
        List a12 = a11.a();
        ((ArrayList) a12).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                D0.this.a(arrayDeque, hashSet, a11, (com.android.tools.r8.graph.E0) obj);
            }
        });
        c8659ns0.d();
        c8659ns0.b("MappingClasses");
        this.f55597e.addAll(((C11245i) this.f55593a.f()).d());
        a11.a(this.f55594b.f38068i2).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                D0.this.a(arrayDeque, hashSet, a11, (com.android.tools.r8.graph.M2) obj);
            }
        });
        if (!f55592j && !arrayDeque.isEmpty()) {
            throw new AssertionError();
        }
        c8659ns0.d();
        c8659ns0.b("MappingDefaultInterfaceMethods");
        for (String str : this.f55595c.f55747a.keySet()) {
            C10952j c10952j = (C10952j) this.f55595c.f55747a.get(str);
            C4724u1 c4724u1 = this.f55594b;
            com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) c4724u1.f38025d.get(c4724u1.b(str));
            if (m22 != null && ((c10 = ((C11245i) this.f55593a.f()).c(m22)) == null || (c10 instanceof com.android.tools.r8.graph.I0))) {
                IdentityHashMap identityHashMap = this.f55599g;
                C5313Ib c5313Ib = C10404yI.f53988c;
                if (m22.f36592f.toString().endsWith("$-CC;") && (g10 = this.f55593a.g(C10404yI.b(this.f55594b, m22))) != null && (g10 instanceof com.android.tools.r8.graph.I0)) {
                    AbstractC4895Av0 it = c10952j.f55938d.values().iterator();
                    while (it.hasNext()) {
                        List list = (List) it.next();
                        if (list.size() == 1) {
                            V v10 = (V) list.get(0);
                            V.b bVar = (V.b) v10.a();
                            if (bVar.f55777a.startsWith(g10.f36245e.j0())) {
                                com.android.tools.r8.graph.A2 a13 = bVar.i().a(this.f55594b, g10.f36245e);
                                C4516j1 b10 = g10.b(a13);
                                if (b10 == null) {
                                    if (!f55592j) {
                                        throw new AssertionError();
                                    }
                                } else {
                                    if (b10.w0()) {
                                        C4724u1 c4724u12 = this.f55594b;
                                        a10 = a13.a(C10404yI.a(c4724u12, a13.s0()), c4724u12);
                                    } else {
                                        b10.L0();
                                        if (b10.r1() && !b10.f37314g.H()) {
                                            a10 = C10404yI.a(a13, "$default$", this.f55594b);
                                        }
                                    }
                                    if (!f55592j && !m22.a(a10.f38297f)) {
                                        throw new AssertionError();
                                    }
                                    identityHashMap.put(a10, this.f55594b.b(v10.c()));
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                }
            }
        }
        c8659ns0.d();
        this.f55593a.E().f50691j.a();
        c8659ns0.b("MinifyClasses");
        C10922d a14 = new C10932f(this.f55593a, new A0(this.f55593a, this.f55596d, this.f55595c.f55748b), AbstractC4780x0.a(new ArrayList(this.f55597e))).a(c8659ns0);
        c8659ns0.d();
        B0 b02 = new B0(this.f55593a, this.f55598f);
        c8659ns0.b("MinifyMethods");
        Z z10 = new Z(this.f55593a, b02);
        c8659ns0.b("Phase 1");
        z10.e();
        c8659ns0.d();
        c8659ns0.b("Phase 2");
        K k10 = new K(z10.f55802a, z10.f55805d, a11);
        c8659ns0.d();
        c8659ns0.b("Phase 3");
        k10.a(c8659ns0, a12);
        c8659ns0.d();
        c8659ns0.b("Phase 4");
        z10.a();
        z10.d();
        c8659ns0.d();
        IdentityHashMap identityHashMap2 = z10.f55804c;
        X x10 = new X(identityHashMap2);
        identityHashMap2.putAll(this.f55599g);
        identityHashMap2.putAll(this.f55600h);
        c8659ns0.d();
        c8659ns0.b("MinifyFields");
        C11021x a15 = new C11031z(this.f55593a, a11, b02).a(c8659ns0, a12);
        a15.f56100a.putAll(this.f55601i);
        c8659ns0.d();
        c8659ns0.b("non-rebound-references");
        C4798y c4798y = this.f55593a;
        boolean z11 = C10973n0.f56015b;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap((Map) a15.f56100a);
        a15.f56100a.clear();
        ConcurrentHashMap concurrentHashMap2 = new ConcurrentHashMap(identityHashMap2);
        identityHashMap2.clear();
        new R5(c4798y, new C10938g0(concurrentHashMap, c4798y, concurrentHashMap2)).a(executorService);
        a15.f56100a.putAll(concurrentHashMap);
        identityHashMap2.putAll(concurrentHashMap2);
        c8659ns0.d();
        this.f55593a.E().f50691j.a();
        C0 c02 = new C0(this.f55593a, a14, x10, a15, hashSet);
        this.f55593a.getClass();
        return c02;
    }

    public final void b(com.android.tools.r8.graph.M2 m22, Map map, V v10) {
        a(m22, v10, map, false);
    }

    public final void a(ArrayDeque arrayDeque, Set set, Y5 y52, com.android.tools.r8.graph.E0 e02) {
        c((Deque) arrayDeque, set, y52, e02.getType());
    }

    public final void a(ArrayDeque arrayDeque, Set set, Y5 y52, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.E0 g10 = this.f55593a.g(m22);
        if (g10 == null || g10.isInterface()) {
            return;
        }
        c((Deque) arrayDeque, set, y52, m22);
    }

    public final void c(final Deque deque, final Set set, final Y5 y52, final com.android.tools.r8.graph.M2 m22) {
        C10952j c10952j = (C10952j) this.f55595c.f55747a.get(m22.f36592f.toString());
        com.android.tools.r8.graph.E0 g10 = this.f55593a.g(m22);
        if (g10 != null && (g10 instanceof com.android.tools.r8.graph.I0) && c10952j != null) {
            this.f55597e.add(g10.k());
        }
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        if (c10952j != null && (g10 == null || !g10.f0())) {
            com.android.tools.r8.graph.L2 b10 = this.f55594b.b(c10952j.f55936b);
            E0 e02 = c10952j.f55937c;
            if (((C6379aA) this.f55596d.f()).f46435b.containsValue(b10) && ((C6379aA) this.f55596d.f()).get(b10) != m22) {
                C5094Ef0 c5094Ef0 = this.f55593a.E().f50691j;
                String m23 = m22.toString();
                String l22 = b10.toString();
                c5094Ef0.error(new C10907a("'" + m23 + "' cannot be mapped to '" + l22 + "' because it is in conflict with an existing class with the same name. This usually happens when compiling a test application against a source application and there are used classes in the test that was not given a -keep rule when compiling the app. Try either renaming '" + l22 + "' such that it will not collide or add a keep rule to keep '" + m23 + "'.", e02));
            } else {
                this.f55596d.a(m22, b10, false);
            }
            InterfaceC6160Wr0 interfaceC6160Wr0 = new InterfaceC6160Wr0() {
                @Override
                public final void accept(Object obj) {
                    D0.this.b(m22, identityHashMap, (V) obj);
                }
            };
            AbstractC4895Av0 it = c10952j.f55940f.values().iterator();
            while (it.hasNext()) {
                interfaceC6160Wr0.accept((V) it.next());
            }
            AbstractC4895Av0 it2 = c10952j.f55939e.values().iterator();
            while (it2.hasNext()) {
                interfaceC6160Wr0.accept((V) it2.next());
            }
        } else {
            com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(g10);
            if (a10 == null || !this.f55593a.r().a(a10).b(this.f55593a.E())) {
                set.add(m22);
            }
        }
        Iterator it3 = deque.iterator();
        while (it3.hasNext()) {
            Map map = (Map) it3.next();
            for (com.android.tools.r8.graph.J2 j22 : map.o()) {
                if (j22.r0()) {
                    com.android.tools.r8.graph.A2 n02 = j22.n0();
                    com.android.tools.r8.graph.A2 a11 = this.f55594b.a(m22, n02.f36127i, n02.f38298g);
                    if (!this.f55598f.containsKey(a11)) {
                        a(a11, (V) map.get(j22), this.f55600h);
                    } else if (g10 != null) {
                        C4516j1 b11 = g10.b(a11);
                        if (!f55592j && b11 != null && !b11.w0() && !((V) this.f55598f.get(a11)).c().equals(((V) map.get(j22)).c())) {
                            throw new AssertionError();
                        }
                    } else {
                        continue;
                    }
                } else {
                    C4554l1 l02 = j22.l0();
                    AbstractC4744v2 a12 = this.f55594b.a(m22, l02.f37449i, l02.f38298g);
                    if (!this.f55598f.containsKey(a12)) {
                        a(a12, (V) map.get(j22), this.f55601i);
                    }
                }
            }
        }
        if (g10 != null && (g10.e0() || g10.l1())) {
            a(m22, identityHashMap, g10.f36248h.f36675b);
        }
        if (identityHashMap.size() > 0) {
            deque.addLast(identityHashMap);
            y52.a(m22, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    D0.this.b(deque, set, y52, (com.android.tools.r8.graph.M2) obj);
                }
            });
            deque.removeLast();
            return;
        }
        y52.a(m22, new Consumer() {
            @Override
            public final void accept(Object obj) {
                D0.this.c(deque, set, y52, (com.android.tools.r8.graph.M2) obj);
            }
        });
    }

    public final void a(final com.android.tools.r8.graph.M2 m22, final IdentityHashMap identityHashMap, com.android.tools.r8.graph.M2[] m2Arr) {
        for (com.android.tools.r8.graph.M2 m23 : m2Arr) {
            C10952j c10952j = (C10952j) this.f55595c.f55747a.get(m23.f36592f.toString());
            if (c10952j != null) {
                InterfaceC6160Wr0 interfaceC6160Wr0 = new InterfaceC6160Wr0() {
                    @Override
                    public final void accept(Object obj) {
                        D0.this.a(m22, identityHashMap, (V) obj);
                    }
                };
                AbstractC4895Av0 it = c10952j.f55940f.values().iterator();
                while (it.hasNext()) {
                    interfaceC6160Wr0.accept((V) it.next());
                }
                AbstractC4895Av0 it2 = c10952j.f55939e.values().iterator();
                while (it2.hasNext()) {
                    interfaceC6160Wr0.accept((V) it2.next());
                }
            }
            com.android.tools.r8.graph.E0 g10 = this.f55593a.g(m23);
            if (g10 != null) {
                a(m22, identityHashMap, g10.f36248h.f36675b);
            }
        }
    }

    public final void a(com.android.tools.r8.graph.M2 m22, Map map, V v10) {
        a(m22, v10, map, true);
    }

    public final void a(com.android.tools.r8.graph.M2 m22, V v10, Map map, boolean z10) {
        V.c a10 = v10.a();
        if (!f55592j && a10.d()) {
            throw new AssertionError();
        }
        if (a10 instanceof V.b) {
            com.android.tools.r8.graph.A2 a11 = ((V.b) a10).a(this.f55594b, m22);
            a(a11, v10, z10 ? this.f55600h : null);
            C4798y c4798y = this.f55593a;
            c4798y.getClass();
            C4516j1 b10 = a11.b(c4798y.g(a11.f38297f));
            if (b10 == null || !b10.f37314g.h()) {
                map.put(a11, v10);
                return;
            }
            return;
        }
        C4554l1 a12 = ((V.a) a10).a(this.f55594b, m22);
        a(a12, v10, z10 ? this.f55601i : null);
        C4798y c4798y2 = this.f55593a;
        c4798y2.getClass();
        C4460g1 b11 = a12.b(c4798y2.g(a12.f38297f));
        if (b11 == null || !b11.G0()) {
            map.put(a12, v10);
        }
    }

    public final void a(AbstractC4744v2 abstractC4744v2, V v10, IdentityHashMap identityHashMap) {
        if (!f55592j && this.f55598f.containsKey(abstractC4744v2) && !((V) this.f55598f.get(abstractC4744v2)).c().equals(v10.c())) {
            throw new AssertionError();
        }
        this.f55598f.put(abstractC4744v2, v10);
        if (identityHashMap != null) {
            identityHashMap.put(abstractC4744v2, this.f55594b.b(v10.c()));
        }
    }
}
