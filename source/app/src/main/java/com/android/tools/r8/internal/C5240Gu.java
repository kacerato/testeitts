package com.android.tools.r8.internal;

import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;

public final class C5240Gu {

    public static final boolean f40613d = true;

    public final ConcurrentHashMap f40614a = new ConcurrentHashMap();

    public final IdentityHashMap f40615b = new IdentityHashMap();

    public final Set f40616c = C4875Al0.a();

    public final boolean a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        boolean z10 = f40613d;
        if (!z10 && m23 == null) {
            throw new AssertionError();
        }
        if (z10 || m22 != null) {
            return m23 == m22 || m23 == this.f40615b.get(m22);
        }
        throw new AssertionError();
    }

    public final Set b(com.android.tools.r8.graph.M2 m22) {
        C5182Fu c5182Fu = (C5182Fu) this.f40614a.get(m22);
        if (C5182Fu.f40337e || c5182Fu.f40341d != null) {
            return C4875Al0.a(c5182Fu.f40341d, new com.android.tools.r8.errors.q());
        }
        throw new AssertionError();
    }

    public final boolean c(com.android.tools.r8.graph.M2 m22) {
        return this.f40614a.containsKey(this.f40615b.getOrDefault(m22, m22));
    }

    public final void d(com.android.tools.r8.graph.M2 m22) {
        this.f40614a.remove(this.f40615b.getOrDefault(m22, m22));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final com.android.tools.r8.graph.H2 a(com.android.tools.r8.graph.M2 m22) {
        C5182Fu c5182Fu = (C5182Fu) this.f40614a.get((com.android.tools.r8.graph.M2) this.f40615b.getOrDefault(m22, m22));
        if (c5182Fu == null) {
            return null;
        }
        return c5182Fu.f40338a;
    }

    public final void a(Consumer consumer) {
        this.f40614a.values().forEach(consumer);
    }
}
