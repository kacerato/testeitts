package com.android.tools.r8.internal;

import java.util.HashMap;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BiPredicate;

public final class N00 extends AbstractC9700u50 {

    public static final boolean f42475b = true;

    public final Object f42476a;

    public N00(Map map) {
        if (!f42475b && map.isEmpty()) {
            throw new AssertionError();
        }
        this.f42476a = map;
    }

    @Override
    public final N00 a() {
        return this;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, java.lang.Object] */
    @Override
    public final AbstractC9700u50 b() {
        boolean z10 = true;
        boolean z11 = true;
        for (AbstractC9533t50 abstractC9533t50 : this.f42476a.values()) {
            abstractC9533t50.getClass();
            if (!(abstractC9533t50 instanceof C9538t7)) {
                z10 = false;
            }
            if (!(abstractC9533t50 instanceof C9836uv0)) {
                z11 = false;
            }
        }
        if (z10) {
            return C9705u7.f52783a;
        }
        if (z11) {
            return C10003vv0.f53375a;
        }
        AbstractC9700u50 a10 = a(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return N00.a((C9298rj) obj, (AbstractC9533t50) obj2);
            }
        });
        boolean z12 = f42475b;
        if (!z12 && (a10 instanceof C9705u7)) {
            throw new AssertionError();
        }
        if (z12 || !(a10 instanceof C10003vv0)) {
            return a10;
        }
        throw new AssertionError();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.Map, java.lang.Object] */
    @Override
    public final AbstractC9533t50 c() {
        return (AbstractC9533t50) this.f42476a.getOrDefault(C9298rj.f52115a, C9836uv0.f52985a);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Map, java.lang.Object] */
    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != N00.class) {
            return false;
        }
        return this.f42476a.equals(((N00) obj).f42476a);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, java.lang.Object] */
    public final int hashCode() {
        return this.f42476a.hashCode();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.Map, java.lang.Object] */
    public final AbstractC9700u50 a(N00 n00) {
        n00.getClass();
        final HashMap hashMap = new HashMap((Map) this.f42476a);
        n00.f42476a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                N00.a(Map.this, (C9298rj) obj, (AbstractC9533t50) obj2);
            }
        });
        return hashMap.isEmpty() ? C9705u7.f52783a : new N00(hashMap);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, java.lang.Object] */
    public final boolean a(BiPredicate biPredicate) {
        for (Map.Entry entry : this.f42476a.entrySet()) {
            if (!biPredicate.test((C9298rj) entry.getKey(), (AbstractC9533t50) entry.getValue())) {
                return false;
            }
        }
        return true;
    }

    public static void a(Map map, C9298rj c9298rj, AbstractC9533t50 abstractC9533t50) {
        AbstractC9533t50 abstractC9533t502 = abstractC9533t50;
        AbstractC9533t50 abstractC9533t503 = (AbstractC9533t50) map.getOrDefault(c9298rj, C9538t7.f52536a);
        abstractC9533t50.getClass();
        if (abstractC9533t502 instanceof C9538t7) {
            abstractC9533t502 = abstractC9533t503;
        } else {
            abstractC9533t503.getClass();
            if (!(abstractC9533t503 instanceof C9538t7)) {
                if (!(abstractC9533t502 instanceof C9836uv0) && !(abstractC9533t503 instanceof C9836uv0)) {
                    C8236lJ a10 = abstractC9533t50.a();
                    C8236lJ a11 = abstractC9533t503.a();
                    a10.getClass();
                    int i10 = QC.f43505c;
                    IC ic2 = new IC();
                    ic2.a((Iterable) a10.f49930a);
                    IC ic3 = new IC();
                    ic3.a((Iterable) a10.f49931b);
                    IC ic4 = new IC();
                    ic4.a((Iterable) a10.f49932c);
                    boolean z10 = a10.f49933d;
                    boolean z11 = a10.f49934e;
                    boolean z12 = a10.f49935f;
                    ic2.a((Iterable) a11.f49930a);
                    ic3.a((Iterable) a11.f49931b);
                    ic4.a((Iterable) a11.f49932c);
                    abstractC9533t502 = new C8236lJ(ic2.a(), ic3.a(), ic4.a(), z10 | a11.f49933d, z11 | a11.f49934e, z12 | a11.f49935f);
                } else {
                    abstractC9533t502 = C9836uv0.f52985a;
                }
            }
        }
        map.put(c9298rj, abstractC9533t502);
    }

    public static AbstractC9533t50 a(C9298rj c9298rj, AbstractC9533t50 abstractC9533t50) {
        abstractC9533t50.getClass();
        if (abstractC9533t50 instanceof C9836uv0) {
            return null;
        }
        return abstractC9533t50.c();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.util.Map, java.lang.Object] */
    @Override
    public final AbstractC9700u50 a(BiFunction biFunction) {
        C8051kC c8051kC = null;
        for (Map.Entry entry : this.f42476a.entrySet()) {
            C9298rj c9298rj = (C9298rj) entry.getKey();
            AbstractC9533t50 abstractC9533t50 = (AbstractC9533t50) entry.getValue();
            AbstractC9533t50 abstractC9533t502 = (AbstractC9533t50) biFunction.apply(c9298rj, abstractC9533t50);
            if (abstractC9533t502 != null) {
                if (abstractC9533t502 != abstractC9533t50) {
                    if (c8051kC == null) {
                        c8051kC = new C8051kC(4);
                        for (Map.Entry entry2 : this.f42476a.entrySet()) {
                            C9298rj c9298rj2 = (C9298rj) entry2.getKey();
                            if (c9298rj2 == c9298rj) {
                                break;
                            }
                            c8051kC.a(c9298rj2, (AbstractC9533t50) entry2.getValue());
                        }
                    }
                    c8051kC.a(c9298rj, abstractC9533t502);
                } else if (c8051kC != null) {
                    c8051kC.a(c9298rj, abstractC9533t502);
                }
            }
        }
        if (c8051kC == null) {
            return this;
        }
        AbstractC8552nC a10 = c8051kC.a();
        return a10.isEmpty() ? C9705u7.f52783a : new N00(a10);
    }
}
