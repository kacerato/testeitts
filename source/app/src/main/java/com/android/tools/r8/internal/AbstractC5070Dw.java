package com.android.tools.r8.internal;

import java.util.IdentityHashMap;
import java.util.Set;

public abstract class AbstractC5070Dw {

    public static final boolean f39685f = true;

    public final C9603tZ f39686a;

    public AbstractC10561zE f39687b = null;

    public final Set f39688c = AbstractC5513Ll0.c();

    public final Set f39689d = AbstractC5513Ll0.c();

    public final C7207f80 f39690e = new C7207f80(new IdentityHashMap());

    public AbstractC5070Dw(C9603tZ c9603tZ) {
        this.f39686a = c9603tZ;
    }

    public final boolean a() {
        return this.f39687b != null;
    }

    public final boolean a(C10340xw0 c10340xw0) {
        return this.f39688c.contains(c10340xw0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Map, java.lang.Object] */
    public final boolean a(com.android.tools.r8.graph.F5 f52) {
        return this.f39690e.f47879b.containsKey(f52.getReference());
    }
}
