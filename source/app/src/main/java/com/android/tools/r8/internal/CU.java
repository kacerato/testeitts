package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;

public class CU {

    public static final boolean f39231s = true;

    public final Object f39232a;

    public final QC f39233b;

    public final Object f39234c;

    public final AbstractC8552nC f39235d;

    public final AbstractC8552nC f39236e;

    public final AbstractC8552nC f39237f;

    public final AbstractC8552nC f39238g;

    public final AbstractC8552nC f39239h;

    public final AbstractC8552nC f39240i;

    public final AbstractC8552nC f39241j;

    public final AbstractC8552nC f39242k;

    public final LinkedHashMap f39243l;

    public final AbstractC8552nC f39244m;

    public final QC f39245n;

    public final AbstractC8552nC f39246o;

    public final QC f39247p;

    public final AbstractC8552nC f39248q;

    public final AbstractC8552nC f39249r;

    public CU(Map map, QC qc2, Map map2, AbstractC8552nC abstractC8552nC, AbstractC8552nC abstractC8552nC2, AbstractC8552nC abstractC8552nC3, AbstractC8552nC abstractC8552nC4, AbstractC8552nC abstractC8552nC5, AbstractC8552nC abstractC8552nC6, AbstractC8552nC abstractC8552nC7, AbstractC8552nC abstractC8552nC8, LinkedHashMap linkedHashMap, AbstractC8552nC abstractC8552nC9, QC qc3, AbstractC8552nC abstractC8552nC10, QC qc4, AbstractC8552nC abstractC8552nC11, AbstractC8552nC abstractC8552nC12) {
        this.f39232a = map;
        this.f39233b = qc2;
        this.f39234c = map2;
        this.f39235d = abstractC8552nC;
        this.f39236e = abstractC8552nC2;
        this.f39237f = abstractC8552nC3;
        this.f39238g = abstractC8552nC4;
        this.f39239h = abstractC8552nC5;
        this.f39240i = abstractC8552nC6;
        this.f39241j = abstractC8552nC7;
        this.f39242k = abstractC8552nC8;
        this.f39243l = linkedHashMap;
        this.f39244m = abstractC8552nC9;
        this.f39245n = qc3;
        this.f39246o = abstractC8552nC10;
        this.f39247p = qc4;
        this.f39248q = abstractC8552nC11;
        this.f39249r = abstractC8552nC12;
    }

    public static boolean a(com.android.tools.r8.graph.M2 m22, C9796ui c9796ui) {
        return c9796ui.f52925b.s0() == m22 || c9796ui.f52924a.s0() == m22;
    }

    public Map<com.android.tools.r8.graph.A2, com.android.tools.r8.graph.L4> b() {
        return this.f39248q;
    }

    public Map<com.android.tools.r8.graph.A2, com.android.tools.r8.graph.A2[]> c() {
        return this.f39241j;
    }

    public Map<com.android.tools.r8.graph.A2, com.android.tools.r8.graph.A2> d() {
        return this.f39236e;
    }

    public Map<com.android.tools.r8.graph.M2, C9796ui> e() {
        return this.f39246o;
    }

    public Set<com.android.tools.r8.graph.M2> f() {
        return this.f39245n;
    }

    public Map<com.android.tools.r8.graph.M2, C7163eu> g() {
        return this.f39242k;
    }

    public Map<com.android.tools.r8.graph.A2, C6830cu> h() {
        return this.f39239h;
    }

    public Map<com.android.tools.r8.graph.A2, com.android.tools.r8.graph.A2> i() {
        return this.f39240i;
    }

    public Map<com.android.tools.r8.graph.M2, com.android.tools.r8.graph.M2> j() {
        return this.f39244m;
    }

    public Set<com.android.tools.r8.graph.M2> k() {
        return this.f39233b;
    }

    public Map<com.android.tools.r8.graph.A2, com.android.tools.r8.graph.A2> l() {
        return this.f39238g;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map<com.android.tools.r8.graph.M2, com.android.tools.r8.graph.M2>, java.lang.Object] */
    public Map<com.android.tools.r8.graph.M2, com.android.tools.r8.graph.M2> m() {
        return this.f39234c;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map<com.android.tools.r8.graph.M2, com.android.tools.r8.graph.M2>, java.lang.Object] */
    public Map<com.android.tools.r8.graph.M2, com.android.tools.r8.graph.M2> n() {
        return this.f39232a;
    }

    public Map<C4554l1, C4554l1> o() {
        return this.f39235d;
    }

    public Map<com.android.tools.r8.graph.A2, com.android.tools.r8.graph.A2> p() {
        return this.f39237f;
    }

    public LinkedHashMap<com.android.tools.r8.graph.M2, C6510ay0> q() {
        return this.f39243l;
    }

    public final boolean r() {
        return (this.f39236e.isEmpty() && this.f39237f.isEmpty() && this.f39238g.isEmpty() && this.f39239h.isEmpty() && this.f39235d.isEmpty()) ? false : true;
    }

    public final boolean b(final com.android.tools.r8.graph.M2 m22) {
        return AbstractC9907vK.b(this.f39242k.values(), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return CU.a(com.android.tools.r8.graph.M2.this, (C7163eu) obj);
            }
        });
    }

    public static C7163eu a(final C7163eu c7163eu, final C4724u1 c4724u1, String str, String str2) {
        final com.android.tools.r8.graph.M2 d10 = c4724u1.d(c7163eu.f47804a.V0().replace(str, str2));
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        c7163eu.f47805b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                CU.a(C7163eu.this, identityHashMap, d10, c4724u1, (com.android.tools.r8.graph.A2) obj, (C6830cu) obj2);
            }
        });
        return new C7163eu(d10, identityHashMap);
    }

    public final AbstractC8552nC b(final String str, final C4724u1 c4724u1, final String str2) {
        final C8051kC c8051kC = new C8051kC(4);
        this.f39242k.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                CU.this.a(c8051kC, c4724u1, str, str2, (com.android.tools.r8.graph.M2) obj, (C7163eu) obj2);
            }
        });
        return c8051kC.b();
    }

    public static boolean a(com.android.tools.r8.graph.M2 m22, C7163eu c7163eu) {
        return c7163eu.f47804a == m22;
    }

    public final boolean a(final com.android.tools.r8.graph.M2 m22) {
        return AbstractC9907vK.b(this.f39246o.values(), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return CU.a(com.android.tools.r8.graph.M2.this, (C9796ui) obj);
            }
        });
    }

    public Map<C4554l1, C4537k3> a() {
        return this.f39249r;
    }

    public final void a(C8051kC c8051kC, C4724u1 c4724u1, String str, String str2, com.android.tools.r8.graph.M2 m22, C9796ui c9796ui) {
        c8051kC.a(m22, new C9796ui(a(c9796ui.f52924a, c4724u1, str, str2), a(c9796ui.f52925b, c4724u1, str, str2)));
    }

    public final void a(C8051kC c8051kC, C4724u1 c4724u1, String str, String str2, com.android.tools.r8.graph.M2 m22, C7163eu c7163eu) {
        c8051kC.a(m22, a(c7163eu, c4724u1, str, str2));
    }

    public static void a(C7163eu c7163eu, Map map, com.android.tools.r8.graph.M2 m22, C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22, C6830cu c6830cu) {
        if (!f39231s && c6830cu.f47197a.f46071a.s0() != c7163eu.f47804a) {
            throw new AssertionError();
        }
        map.put(a22, new C6830cu(new C6257Yj(c6830cu.f47197a.f46072b, c6830cu.f47197a.f46071a.a(m22, c4724u1)), c6830cu.f47198b, c6830cu.f47199c, c6830cu.f47200d));
    }

    public static com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.A2 a22, C4724u1 c4724u1, String str, String str2) {
        com.android.tools.r8.graph.M2 s02 = a22.s0();
        com.android.tools.r8.graph.I2 y02 = a22.y0();
        com.android.tools.r8.graph.M2[] m2Arr = y02.n0().f36675b;
        int length = m2Arr.length;
        com.android.tools.r8.graph.M2[] m2Arr2 = new com.android.tools.r8.graph.M2[length];
        for (int i10 = 0; i10 < m2Arr.length; i10++) {
            m2Arr2[i10] = c4724u1.d(m2Arr[i10].V0().replace(str, str2));
        }
        return c4724u1.a(s02, c4724u1.a(c4724u1.d(y02.o0().V0().replace(str, str2)), length == 0 ? com.android.tools.r8.graph.O2.k0() : new com.android.tools.r8.graph.O2(m2Arr2)), a22.t0());
    }

    public final void a(C8051kC c8051kC, C4724u1 c4724u1, String str, String str2, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        c8051kC.a(m22, c4724u1.d(m23.V0().replace(str, str2)));
    }

    public final AbstractC8552nC a(final String str, final C4724u1 c4724u1, final String str2) {
        final C8051kC c8051kC = new C8051kC(4);
        this.f39246o.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                CU.this.a(c8051kC, c4724u1, str, str2, (com.android.tools.r8.graph.M2) obj, (C9796ui) obj2);
            }
        });
        return c8051kC.b();
    }

    public final AbstractC8552nC a(Map map, final C4724u1 c4724u1, final String str, final String str2) {
        final C8051kC c8051kC = new C8051kC(4);
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                CU.this.a(c8051kC, c4724u1, str, str2, (com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.M2) obj2);
            }
        });
        return c8051kC.b();
    }
}
