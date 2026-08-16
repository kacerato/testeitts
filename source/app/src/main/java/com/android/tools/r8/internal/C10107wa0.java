package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;

public final class C10107wa0 {

    public final HashMap f53525a;

    public final C5058Dq f53526b;

    public C10107wa0(ConcurrentHashMap concurrentHashMap, C5058Dq c5058Dq) {
        this.f53525a = a(concurrentHashMap);
        this.f53526b = c5058Dq;
    }

    public final com.android.tools.r8.graph.O2 a(com.android.tools.r8.graph.D2 d22) {
        com.android.tools.r8.graph.O2 n02 = d22.f36220c.y0().n0();
        com.android.tools.r8.graph.M2[] m2Arr = n02.f36675b;
        if (m2Arr.length > 1) {
            com.android.tools.r8.graph.M2[] m2Arr2 = (com.android.tools.r8.graph.M2[]) m2Arr.clone();
            Arrays.sort(m2Arr2);
            n02 = new com.android.tools.r8.graph.O2(m2Arr2);
        }
        return (com.android.tools.r8.graph.O2) this.f53525a.getOrDefault(n02, n02);
    }

    public static HashMap a(ConcurrentHashMap concurrentHashMap) {
        final HashMap hashMap = new HashMap();
        concurrentHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10107wa0.a(Map.this, (com.android.tools.r8.graph.O2) obj, (Set) obj2);
            }
        });
        return hashMap;
    }

    public static void a(Map map, com.android.tools.r8.graph.O2 o22, Set set) {
        Iterator it = set.iterator();
        com.android.tools.r8.graph.O2 o23 = (com.android.tools.r8.graph.O2) it.next();
        while (it.hasNext()) {
            com.android.tools.r8.graph.O2 o24 = (com.android.tools.r8.graph.O2) it.next();
            if (o24.compareTo(o23) < 0) {
                o23 = o24;
            }
        }
        map.put(o22, o23);
    }
}
