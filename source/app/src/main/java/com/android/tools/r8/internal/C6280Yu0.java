package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public final class C6280Yu0 {

    public final C4798y f46108a;

    public final C9114qd f46109b;

    public final C4387c4 f46110c;

    public C6280Yu0(C4798y c4798y, C9114qd c9114qd, C4387c4 c4387c4) {
        this.f46108a = c4798y.m() ? c4798y.L() : null;
        this.f46109b = c9114qd;
        this.f46110c = c4387c4;
    }

    public final void a(LinkedList linkedList, ExecutorService executorService) {
        Map map = (Map) linkedList.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C6280Yu0.a((AA) obj);
            }
        }).flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((AA) obj).stream();
            }
        }).collect(Collectors.toMap(new com.android.tools.r8.errors.q(), Function.identity()));
        if (map.isEmpty()) {
            return;
        }
        a(map);
        ArrayList a10 = new C6541b80(this.f46108a, this.f46110c).a();
        IdentityHashMap identityHashMap = new IdentityHashMap();
        int size = a10.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = a10.get(i10);
            i10++;
            C6223Xu0 c6223Xu0 = new C6223Xu0(this);
            Iterator it = ((Set) obj).iterator();
            while (it.hasNext()) {
                identityHashMap.put((com.android.tools.r8.graph.H2) it.next(), c6223Xu0);
            }
        }
        new C6166Wu0(this.f46108a, map, identityHashMap).a(executorService);
        this.f46108a.b().b();
    }

    public final void a(final Map map) {
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        for (final com.android.tools.r8.graph.H2 h22 : map.values()) {
            List a10 = this.f46110c.a(h22);
            C6286Yx0 c6286Yx0 = new C6286Yx0(2);
            c6286Yx0.b((Iterable) a10);
            c6286Yx0.a(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C6280Yu0.this.a(map, identityHashMap, h22, (com.android.tools.r8.graph.H2) obj, (C6286Yx0) obj2);
                }
            });
        }
        map.putAll(identityHashMap);
    }

    public final void a(Map map, Map map2, com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H2 h23, C6286Yx0 c6286Yx0) {
        if (map.containsKey(h23.getType())) {
            return;
        }
        map2.put(h23.getType(), h22);
        c6286Yx0.b((Iterable) this.f46110c.a(h23));
    }

    public static boolean a(AA aa2) {
        return !aa2.j() && aa2.d();
    }
}
