package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C5145Fd {

    public static final C5145Fd f40259d;

    public final C5145Fd f40260a;

    public final AbstractC7552hC f40261b;

    public final C5203Gd f40262c;

    static {
        int i10 = AbstractC7552hC.f48487c;
        f40259d = new C5145Fd(null, C6190Xe0.f45779e, C5203Gd.f40533c);
    }

    public C5145Fd(C5145Fd c5145Fd, AbstractC7552hC abstractC7552hC, C5203Gd c5203Gd) {
        this.f40260a = c5145Fd;
        this.f40261b = abstractC7552hC;
        this.f40262c = c5203Gd;
    }

    public final boolean a(final com.android.tools.r8.graph.H0 h02) {
        if (C9073qK.a(this.f40261b, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((com.android.tools.r8.graph.H0) obj).d();
            }
        }, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C5145Fd.a(com.android.tools.r8.graph.H0.this, (C4516j1) obj);
            }
        })) {
            return true;
        }
        C5145Fd c5145Fd = this.f40260a;
        return c5145Fd != null && c5145Fd.a(h02);
    }

    public static boolean a(com.android.tools.r8.graph.H0 h02, C4516j1 c4516j1) {
        return c4516j1 == h02.d();
    }
}
