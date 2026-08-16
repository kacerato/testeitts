package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

public abstract class A8 {

    public final C4798y f38540a;

    public final ConcurrentHashMap f38541b = new ConcurrentHashMap();

    public final ConcurrentHashMap f38542c = new ConcurrentHashMap();

    public A8(C4798y c4798y) {
        this.f38540a = c4798y;
    }

    public abstract E00 a(com.android.tools.r8.graph.H5 h52);

    public final E00 a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.A2 a22) {
        return a(h52);
    }

    public final E00 b(final com.android.tools.r8.graph.H5 h52) {
        return (E00) this.f38541b.computeIfAbsent(h52.getReference(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return A8.this.a(h52, (com.android.tools.r8.graph.A2) obj);
            }
        });
    }
}
