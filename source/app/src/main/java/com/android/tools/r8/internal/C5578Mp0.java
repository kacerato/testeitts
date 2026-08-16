package com.android.tools.r8.internal;

import java.util.IdentityHashMap;
import java.util.Set;
import java.util.function.Supplier;

public final class C5578Mp0 {

    public final IdentityHashMap f42409a;

    public final C5752Pp0 f42410b;

    public final Set f42411c;

    public final Set f42412d;

    public final Set f42413e;

    public final IdentityHashMap f42414f;

    public final IdentityHashMap f42415g;

    public final IdentityHashMap f42416h = new IdentityHashMap();

    public final Supplier f42417i;

    public C5578Mp0(IdentityHashMap identityHashMap, Set set, Set set2, Set set3, IdentityHashMap identityHashMap2, IdentityHashMap identityHashMap3, C5752Pp0 c5752Pp0, Supplier supplier) {
        this.f42409a = identityHashMap;
        this.f42411c = set;
        this.f42412d = set2;
        this.f42413e = set3;
        this.f42414f = identityHashMap2;
        this.f42415g = identityHashMap3;
        this.f42410b = c5752Pp0;
        this.f42417i = supplier;
    }

    public final C10340xw0 a() {
        return (C10340xw0) this.f42417i.get();
    }
}
