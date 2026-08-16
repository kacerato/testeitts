package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;

public final class V1 extends X1 {

    public static final boolean f44936c = true;

    public boolean f44937a;

    public final C5000Cq f44938b = new C5000Cq(new HashMap());

    static {
        Map map = Collections.EMPTY_MAP;
    }

    public V1(boolean z10) {
        this.f44937a = z10;
    }

    @Override
    public final V1 a() {
        return this;
    }

    public final boolean b(com.android.tools.r8.graph.H5 h52) {
        if (!f44936c && !h52.getAccessFlags().f()) {
            throw new AssertionError();
        }
        final String z02 = h52.p().z0();
        return AbstractC9907vK.b((Iterable) this.f44938b.getOrDefault(h52.x(), Collections.EMPTY_SET), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return V1.a(String.this, (String) obj);
            }
        });
    }

    public final void a(V1 v12) {
        this.f44937a |= v12.f44937a;
        v12.f44938b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                V1.this.a((com.android.tools.r8.graph.F2) obj, (Set) obj2);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.F2 f22, Set set) {
        ((Set) this.f44938b.a(f22, TU.a(new C10604zY0()))).addAll(set);
    }

    public final void a(com.android.tools.r8.graph.H5 h52) {
        if (!f44936c && !h52.d().J0()) {
            throw new AssertionError();
        }
        ((Set) this.f44938b.a((com.android.tools.r8.graph.F2) h52.x(), TU.a(new C8887pC0()))).add(h52.p().z0());
    }

    public static boolean a(String str, String str2) {
        return !str2.equals(str);
    }
}
