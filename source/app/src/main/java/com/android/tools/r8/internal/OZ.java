package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import java.util.function.Predicate;

public final class OZ extends AbstractC7674hx0 {

    public static final boolean f42916c = true;

    public final C4798y f42917b;

    public OZ(C4798y c4798y) {
        this.f42917b = c4798y;
    }

    @Override
    public final IdentityHashMap a(LinkedList linkedList) {
        IdentityHashMap identityHashMap = new IdentityHashMap();
        Iterator<E> it = linkedList.iterator();
        while (it.hasNext()) {
            C8340lx0 c8340lx0 = (C8340lx0) it.next();
            if (c8340lx0.f50154b.c1()) {
                ((Set) identityHashMap.computeIfAbsent(c8340lx0.f50155c, TU.a(new C8887pC0()))).add(c8340lx0.f50154b);
            }
        }
        return identityHashMap;
    }

    @Override
    public final String f() {
        return "NoClassInitializationChangesPolicy";
    }

    @Override
    public final boolean a(C8340lx0 c8340lx0, Map map) {
        final com.android.tools.r8.graph.H2 h22 = c8340lx0.f50154b;
        com.android.tools.r8.graph.E0 e02 = c8340lx0.f50155c;
        if (h22.c1() && (e02.c1() || ((Set) map.get(e02)).size() > 1)) {
            boolean remove = ((Set) map.get(e02)).remove(h22);
            if (f42916c || remove) {
                return false;
            }
            throw new AssertionError();
        }
        if (!f42916c && h22.c1() && e02.c1()) {
            throw new AssertionError();
        }
        C4798y c4798y = this.f42917b;
        Predicate predicate = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean a10;
                a10 = ((com.android.tools.r8.graph.M2) obj).a(com.android.tools.r8.graph.H2.this.getType());
                return a10;
            }
        };
        e02.getClass();
        return (e02.a(c4798y, e02, predicate, AbstractC5513Ll0.c()) || (h22.isInterface() && h22.a(this.f42917b))) ? false : true;
    }
}
