package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.function.BiConsumer;

public final class K00 extends Q30 {

    public static final boolean f41548b = true;

    public final IdentityHashMap f41549a;

    public K00(IdentityHashMap identityHashMap) {
        boolean z10 = f41548b;
        if (!z10 && identityHashMap.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !identityHashMap.values().stream().noneMatch(new C8573nK0())) {
            throw new AssertionError();
        }
        this.f41549a = identityHashMap;
    }

    @Override
    public final void a(BiConsumer biConsumer) {
        this.f41549a.forEach(biConsumer);
    }

    @Override
    public final boolean e() {
        return false;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == null || K00.class != obj.getClass()) {
            return false;
        }
        K00 k00 = (K00) obj;
        if (this.f41549a.size() != k00.f41549a.size()) {
            return false;
        }
        for (C4554l1 c4554l1 : this.f41549a.o()) {
            if (!((F1) this.f41549a.get(c4554l1)).equals((F1) k00.f41549a.get(c4554l1))) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final int hashCode() {
        return this.f41549a.hashCode();
    }

    public final String toString() {
        ArrayList a10 = AT.a(this.f41549a.o(), new C8239lK0());
        ArrayList arrayList = new ArrayList();
        int size = a10.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = a10.get(i10);
            i10++;
            C4554l1 c4554l1 = (C4554l1) obj;
            F1 f12 = (F1) this.f41549a.get(c4554l1);
            arrayList.add(c4554l1.j0() + " -> " + ((Object) f12));
        }
        return "ObjectState(" + C10656zq0.a(", ", (Iterable) arrayList) + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final F1 a(C4554l1 c4554l1) {
        return (F1) this.f41549a.getOrDefault(c4554l1, C10504yv0.f54195b);
    }

    @Override
    public final Q30 a(final C4798y c4798y, final AbstractC5308Hz abstractC5308Hz, final AbstractC5308Hz abstractC5308Hz2) {
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        this.f41549a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                K00.a(AbstractC5308Hz.this, abstractC5308Hz2, identityHashMap, c4798y, (C4554l1) obj, (F1) obj2);
            }
        });
        return new K00(identityHashMap);
    }

    public static void a(AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, Map map, C4798y c4798y, C4554l1 c4554l1, F1 f12) {
        C4554l1 e10 = abstractC5308Hz.e(abstractC5308Hz2, c4554l1);
        map.put(e10, f12.b(c4798y, e10.getType(), abstractC5308Hz, abstractC5308Hz2));
    }
}
