package com.android.tools.r8.graph;

import java.util.TreeMap;
import java.util.function.Function;

public final class W5 extends L5 {

    public static final boolean f36935c = true;

    public W5() {
        super(new TreeMap());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(H2 h22) {
        K5 k52 = (K5) this.f36565b.computeIfAbsent(h22.getType().z0(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return new V5((String) obj);
            }
        });
        if (!K5.f36535d) {
            k52.getClass();
            if (!h22.getType().z0().equals(k52.f36536b)) {
                throw new AssertionError();
            }
        }
        k52.f36537c.add(h22);
    }
}
