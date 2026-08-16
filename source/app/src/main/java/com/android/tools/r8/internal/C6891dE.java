package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.function.Function;

public final class C6891dE {

    public static final boolean f47323g = true;

    public final C4724u1 f47324a;

    public final com.android.tools.r8.graph.O2 f47325b;

    public final LinkedHashMap f47326c = new LinkedHashMap();

    public final LinkedHashMap f47327d = new LinkedHashMap();

    public com.android.tools.r8.graph.A2 f47328e;

    public ArrayList f47329f;

    public C6891dE(final C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        this.f47324a = c4724u1;
        com.android.tools.r8.graph.O2 x02 = a22.x0();
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                return C6891dE.a(C4724u1.this, (com.android.tools.r8.graph.M2) obj);
            }
        };
        if (x02.isEmpty()) {
            x02 = com.android.tools.r8.graph.O2.k0();
        } else {
            com.android.tools.r8.graph.M2[] m2Arr = (com.android.tools.r8.graph.M2[]) X3.a((Object[]) x02.f36675b, function, (Object[]) com.android.tools.r8.graph.M2.f36589h);
            if (m2Arr != x02.f36675b) {
                x02 = m2Arr.length == 0 ? com.android.tools.r8.graph.O2.k0() : new com.android.tools.r8.graph.O2(m2Arr);
            }
        }
        this.f47325b = x02;
    }

    public static com.android.tools.r8.graph.M2 a(C4724u1 c4724u1, com.android.tools.r8.graph.M2 m22) {
        return m22.P0() ? m22 : c4724u1.f38068i2;
    }
}
