package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class LA {

    public static final boolean f41915d = true;

    public final C4514j f41916a;

    public final IdentityHashMap f41917b = new IdentityHashMap();

    public final Set f41918c = AbstractC5513Ll0.c();

    public LA(C4514j c4514j) {
        this.f41916a = c4514j;
    }

    public final void a(final IA ia2, final C4514j c4514j, BU bu, BiConsumer biConsumer) {
        Map<com.android.tools.r8.graph.M2, JA> e10 = ia2.e();
        a(c4514j, e10.o());
        for (com.android.tools.r8.graph.M2 m22 : e10.o()) {
            com.android.tools.r8.graph.E0 a10 = c4514j.a(m22);
            if (a10 == null) {
                this.f41918c.add(m22);
            } else {
                final IdentityHashMap identityHashMap = new IdentityHashMap();
                final JA ja2 = e10.get(m22);
                a10.b(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        LA.this.a(identityHashMap, ia2, c4514j, (com.android.tools.r8.graph.H0) obj);
                    }
                }, new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return LA.a(JA.this, c4514j, (C4516j1) obj);
                    }
                });
                bu.f38919k.a(m22, new C7163eu(ja2.f41338a, identityHashMap));
            }
        }
        biConsumer.accept("Missing emulated interfaces: ", this.f41918c);
    }

    public static boolean a(JA ja2, C4514j c4514j, C4516j1 c4516j1) {
        if (c4516j1.g1()) {
            return ja2.a(c4514j.b(), c4516j1.getReference());
        }
        return false;
    }

    public final void a(Map map, IA ia2, C4514j c4514j, com.android.tools.r8.graph.H0 h02) {
        com.android.tools.r8.graph.E0 g10;
        com.android.tools.r8.graph.A2 reference = h02.getReference();
        com.android.tools.r8.graph.A2 reference2 = h02.getReference();
        C6257Yj c6257Yj = new C6257Yj(3, reference2);
        C6257Yj c6257Yj2 = new C6257Yj(c4514j.b().a(ia2.e().get(reference2.s0()).f41338a, reference2.y0(), reference2.t0()));
        C6257Yj c6257Yj3 = new C6257Yj(4, reference2);
        List list = (List) this.f41917b.get(reference2.s0());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        AbstractC8552nC abstractC8552nC = ia2.f40998i;
        for (com.android.tools.r8.graph.A2 a22 : abstractC8552nC.o()) {
            if (a22.c(reference2) && (g10 = this.f41916a.g(a22.s0())) != null) {
                com.android.tools.r8.graph.M2 s02 = reference2.s0();
                List asList = Arrays.asList(g10.f36248h.f36675b);
                C6286Yx0 c6286Yx0 = new C6286Yx0(2);
                c6286Yx0.b((Iterable) asList);
                while (true) {
                    if (!c6286Yx0.b()) {
                        break;
                    }
                    com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) c6286Yx0.c();
                    if (s02 == m22) {
                        C4724u1 b10 = this.f41916a.b();
                        b10.getClass();
                        linkedHashMap.put(a22.s0(), new C6257Yj(this.f41916a.b().a((com.android.tools.r8.graph.M2) abstractC8552nC.get(a22), a22.y0().b(b10, a22.s0()), a22.t0())));
                        break;
                    } else {
                        com.android.tools.r8.graph.E0 g11 = this.f41916a.g(m22);
                        if (g11 != null) {
                            c6286Yx0.a((Object[]) g11.f36248h.f36675b);
                        }
                    }
                }
            }
        }
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                com.android.tools.r8.graph.E0 g12 = this.f41916a.g((com.android.tools.r8.graph.M2) list.get(size));
                boolean z10 = f41915d;
                if (!z10 && g12 == null) {
                    throw new AssertionError();
                }
                C4516j1 c10 = g12.c(reference2);
                if (c10 != null && !c10.d1()) {
                    if (!z10 && !c10.g1()) {
                        throw new AssertionError();
                    }
                    linkedHashMap.put(g12.f36245e, new C6257Yj(3, c10.getReference()));
                }
            }
        } else if (!f41915d && linkedHashMap.size() > 1) {
            throw new AssertionError();
        }
        map.put(reference, new C6830cu(c6257Yj2, c6257Yj3, c6257Yj, linkedHashMap));
    }

    public final void a(C4514j c4514j, Set set) {
        Set c10 = AbstractC5513Ll0.c();
        ArrayList arrayList = new ArrayList(set);
        arrayList.sort(new u.K0());
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            a(c4514j, set, (com.android.tools.r8.graph.M2) obj, c10);
        }
    }

    public final void a(C4514j c4514j, Set set, com.android.tools.r8.graph.M2 m22, Set set2) {
        if (set2.contains(m22)) {
            return;
        }
        this.f41917b.put(m22, new ArrayList());
        set2.add(m22);
        com.android.tools.r8.graph.E0 g10 = c4514j.g(m22);
        if (g10 == null) {
            return;
        }
        List asList = Arrays.asList(g10.f36248h.f36675b);
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((Iterable) asList);
        while (c6286Yx0.b()) {
            com.android.tools.r8.graph.M2 m23 = (com.android.tools.r8.graph.M2) c6286Yx0.c();
            if (set.contains(m23)) {
                a(c4514j, set, m23, set2);
                ((List) this.f41917b.get(m23)).add(m22);
                com.android.tools.r8.graph.E0 g11 = c4514j.g(m23);
                if (g11 != null) {
                    c6286Yx0.a((Object[]) g11.f36248h.f36675b);
                }
            }
        }
    }
}
