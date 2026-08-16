package com.android.tools.r8.internal;

import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class C7207f80 implements Iterable {

    public static final C7207f80 f47877c = new C7207f80(C6620bf0.f46817i);

    public static final boolean f47878d = true;

    public final Object f47879b;

    public C7207f80(Map map) {
        this.f47879b = map;
    }

    public static C7207f80 a() {
        return new C7207f80(new IdentityHashMap());
    }

    public static C7207f80 b() {
        return new C7207f80(new ConcurrentHashMap());
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, java.lang.Object] */
    @Override
    public final Iterator iterator() {
        return this.f47879b.values().iterator();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, java.lang.Object] */
    public final boolean a(com.android.tools.r8.graph.F5 f52) {
        com.android.tools.r8.graph.F5 f53 = (com.android.tools.r8.graph.F5) this.f47879b.put(f52.getReference(), f52);
        if (f47878d || f53 == null || (f53.d() == f52.d() && f53.getHolder() == f52.getHolder())) {
            return f53 == null;
        }
        throw new AssertionError();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, java.lang.Object] */
    public final void a(V60 v60) {
        this.f47879b.values().removeIf(v60);
    }
}
