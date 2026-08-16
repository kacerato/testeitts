package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;

public final class J60 implements K60 {

    public static final boolean f41290b = true;

    public final ArrayList f41291a = new ArrayList();

    @Override
    public final int a(int i10) {
        if (f41290b || i10 >= 0) {
            return i10 + 1;
        }
        throw new AssertionError();
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, int i10) {
        boolean z10 = f41290b;
        if (!z10 && !h52.d().Q0().v0()) {
            throw new AssertionError();
        }
        int size = h52.C().size();
        com.android.tools.r8.graph.J0 C10 = h52.d().Q0().C();
        if (!z10) {
            C8798oj.a(C10, i10);
        }
        this.f41291a.add(new I60(C10, size, i10));
    }

    @Override
    public final void a() {
        final HashMap hashMap = new HashMap();
        this.f41291a.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                J60.a(Map.this, (I60) obj);
            }
        });
    }

    public static void a(Map map, I60 i60) {
        boolean z10 = f41290b;
        if (!z10) {
            C8798oj.a(i60.f40975a, i60.f40977c);
        }
        com.android.tools.r8.graph.W0 w02 = (com.android.tools.r8.graph.W0) map.computeIfAbsent(i60, new Function() {
            @Override
            public final Object apply(Object obj) {
                return J60.a((I60) obj);
            }
        });
        if (!z10 && w02.m0().f36948f != i60.f40977c) {
            throw new AssertionError();
        }
        i60.f40975a.a(w02);
    }

    public static com.android.tools.r8.graph.W0 a(I60 i60) {
        return new com.android.tools.r8.graph.X0(i60.f40976b, i60.f40977c);
    }
}
