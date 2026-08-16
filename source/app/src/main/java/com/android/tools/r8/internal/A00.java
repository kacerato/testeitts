package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4552l;
import com.android.tools.r8.graph.C4798y;
import java.util.Set;

public final class A00 extends AbstractC10644zm0 {

    public final C4798y f38499b;

    public final Set f38500c;

    public A00(C4798y c4798y) {
        this.f38499b = c4798y;
        this.f38500c = c4798y.f38410c.a();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.Map, java.lang.Object] */
    @Override
    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        C4552l c4552l = this.f38499b.f38410c;
        if (!C4552l.f37439d) {
            c4552l.b();
        }
        return (c4552l.f37442c.o().contains(h22.getType()) || this.f38500c.contains(h22.getType())) ? false : true;
    }

    @Override
    public final String f() {
        return "NoServiceLoaders";
    }
}
