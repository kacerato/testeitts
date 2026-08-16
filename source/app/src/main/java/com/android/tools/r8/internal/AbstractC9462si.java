package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4725u2;
import com.android.tools.r8.graph.C4798y;
import java.util.function.Consumer;

public abstract class AbstractC9462si {
    public static void a(final C4798y c4798y) {
        AbstractC9129qi.a(c4798y.b(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC9462si.a(C4798y.this, (com.android.tools.r8.graph.A2) obj);
            }
        });
    }

    public static void a(C4798y c4798y, com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.E0 c10 = c4798y.f().c(a22.s0());
        boolean z10 = C4725u2.f38268u;
        C4725u2 G10 = c10 != null ? c10.G() : null;
        if (G10 != null && G10.b(a22) == null) {
            C4516j1.a a10 = C4516j1.K0().a(a22).a((com.android.tools.r8.graph.L4) ((com.android.tools.r8.graph.K4) new com.android.tools.r8.graph.K4().a(true)).f37168a);
            a10.f37340l = com.android.tools.r8.androidapi.g.f35607b;
            G10.f36252l.f36638b.c(a10.a());
        }
    }
}
