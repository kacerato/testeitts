package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiFunction;
import java.util.function.Consumer;

public final class C10476ym extends AbstractC10643zm {

    public static final boolean f54148d = true;

    public final C4724u1 f54149a;

    public final ConcurrentHashMap f54150b;

    public final Map f54151c;

    public C10476ym(C4724u1 c4724u1, C10261xU c10261xU) {
        this.f54149a = c4724u1;
        this.f54150b = new ConcurrentHashMap(c10261xU.j());
        this.f54151c = c10261xU.f53766c.m();
    }

    @Override
    public final boolean a() {
        return true;
    }

    @Override
    public final com.android.tools.r8.graph.M2 b(com.android.tools.r8.graph.M2 m22) {
        if (f54148d || !m22.E0()) {
            return this.f54150b.containsKey(m22) ? (com.android.tools.r8.graph.M2) this.f54150b.get(m22) : (com.android.tools.r8.graph.M2) this.f54151c.get(m22);
        }
        throw new AssertionError();
    }

    @Override
    public final com.android.tools.r8.graph.M2 c(com.android.tools.r8.graph.M2 m22) {
        if (!m22.E0()) {
            return (com.android.tools.r8.graph.M2) this.f54150b.get(m22);
        }
        com.android.tools.r8.graph.M2 c10 = c(m22.a(this.f54149a));
        if (c10 != null) {
            return m22.a(this.f54149a, c10);
        }
        return null;
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, final com.android.tools.r8.graph.M2 m23) {
        this.f54150b.compute(m22, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C10476ym.a(com.android.tools.r8.graph.M2.this, (com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.M2) obj2);
            }
        });
    }

    public static com.android.tools.r8.graph.M2 a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, com.android.tools.r8.graph.M2 m24) {
        if (f54148d || m24 == null || m24 == m22) {
            return m22;
        }
        throw new AssertionError();
    }

    @Override
    public final void a(Consumer consumer) {
        this.f54150b.o().forEach(consumer);
    }
}
