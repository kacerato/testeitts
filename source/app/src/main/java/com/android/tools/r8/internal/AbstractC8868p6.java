package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.function.Function;

public abstract class AbstractC8868p6 implements InterfaceC7866j6 {

    public final IdentityHashMap f51440b;

    public final IdentityHashMap f51441c;

    public AbstractC8868p6() {
        IdentityHashMap identityHashMap = new IdentityHashMap();
        IdentityHashMap identityHashMap2 = new IdentityHashMap();
        this.f51440b = identityHashMap;
        this.f51441c = identityHashMap2;
    }

    public static Set f(Object obj) {
        return new LinkedHashSet();
    }

    public final Object a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        return this.f51441c.getOrDefault(a22, a23);
    }

    public final void b(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        C9035q6 c9035q6 = (C9035q6) this;
        Object remove = c9035q6.f51441c.remove(a23);
        if (remove != null) {
            Set set = (Set) c9035q6.f51440b.get(remove);
            set.remove(a23);
            if (set.isEmpty()) {
                c9035q6.f51440b.remove(remove);
            }
        }
        if (c9035q6.e(remove).size() <= 1 || c9035q6.b(remove) == a23) {
            c9035q6.f51717d.remove(remove);
        }
        ((Set) this.f51440b.computeIfAbsent(a22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC8868p6.f(obj);
            }
        })).add(a23);
        this.f51441c.put(a23, a22);
    }

    @Override
    public final boolean containsKey(Object obj) {
        return this.f51440b.containsKey(obj);
    }

    @Override
    public final boolean containsValue(Object obj) {
        return this.f51441c.containsKey(obj);
    }

    public final Set e(Object obj) {
        return (Set) this.f51440b.getOrDefault(obj, Collections.EMPTY_SET);
    }

    @Override
    public final boolean isEmpty() {
        return this.f51440b.isEmpty();
    }
}
