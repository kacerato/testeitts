package com.android.tools.r8.internal;

import java.util.IdentityHashMap;
import java.util.Set;

public final class C10614zc0 {

    public static final boolean f54411c = true;

    public final Set f54412a = AbstractC5513Ll0.c();

    public final IdentityHashMap f54413b = new IdentityHashMap();

    public final synchronized void a(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H5 h52) {
        try {
            if (!f54411c && !a22.s0().a(e02.getType())) {
                throw new AssertionError();
            }
            this.f54413b.put(h52.getReference(), a22);
            if (e02.isInterface()) {
                this.f54412a.add(e02.getType());
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
