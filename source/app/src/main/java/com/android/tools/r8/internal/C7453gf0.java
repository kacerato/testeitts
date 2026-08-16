package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4425e4;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.naming.AbstractC10988q0;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

public final class C7453gf0 extends AbstractC10988q0 {

    public final ConcurrentHashMap f48326d;

    public final HashMap f48327e;

    public C7453gf0(ConcurrentHashMap concurrentHashMap, HashMap hashMap, C4724u1 c4724u1) {
        super(c4724u1);
        this.f48326d = concurrentHashMap;
        this.f48327e = hashMap;
    }

    @Override
    public final String a(String str) {
        return (String) this.f48327e.getOrDefault(str, str);
    }

    @Override
    public final AbstractC10992r0 c() {
        return this;
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.M2 m22) {
        return (com.android.tools.r8.graph.L2) this.f48326d.getOrDefault(m22, m22.f36592f);
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(C4425e4 c4425e4, C8570nJ c8570nJ) {
        return c4425e4.c();
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.A2 a22) {
        return a22.f38298g;
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(C4554l1 c4554l1) {
        return c4554l1.f38298g;
    }
}
