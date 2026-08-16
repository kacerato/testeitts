package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.function.BiFunction;
import java.util.function.Consumer;

public final class C5953Tc {

    public static final boolean f44508b = true;

    public final AbstractC7552hC f44509a;

    public C5953Tc(AbstractC7552hC abstractC7552hC) {
        this.f44509a = abstractC7552hC;
    }

    public static C5953Tc a(AA aa2) {
        final C5837Rc c5837Rc = new C5837Rc();
        aa2.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5953Tc.a(C5837Rc.this, (com.android.tools.r8.graph.H2) obj);
            }
        });
        return new C5953Tc(c5837Rc.f43942a.a());
    }

    public static void a(C5837Rc c5837Rc, com.android.tools.r8.graph.H2 h22) {
        if (h22.c1()) {
            com.android.tools.r8.graph.H5 h10 = h22.h(h22.L0());
            c5837Rc.getClass();
            boolean z10 = C5837Rc.f43941b;
            if (!z10 && !h10.d().f1()) {
                throw new AssertionError();
            }
            if (!z10 && !h10.d().b1()) {
                throw new AssertionError();
            }
            c5837Rc.f43942a.a(h10);
        }
    }

    public final com.android.tools.r8.androidapi.f a(C4798y c4798y) {
        if (!f44508b && this.f44509a.isEmpty()) {
            throw new AssertionError();
        }
        return (com.android.tools.r8.androidapi.f) AT.a(c4798y.f38405T, this.f44509a, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                com.android.tools.r8.androidapi.f a10;
                a10 = ((com.android.tools.r8.androidapi.f) obj).a(((com.android.tools.r8.graph.H5) obj2).d().z0());
                return a10;
            }
        });
    }
}
