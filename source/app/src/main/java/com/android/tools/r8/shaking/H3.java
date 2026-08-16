package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.AbstractC6037Un;
import com.android.tools.r8.internal.C5921Sn;
import com.android.tools.r8.internal.C5979Tn;
import java.util.function.Predicate;

public final class H3 {

    public static final boolean f56522d = true;

    public final G3 f56523a;

    public final com.android.tools.r8.graph.E0 f56524b;

    public final AbstractC6037Un f56525c;

    public H3(G3 g32, com.android.tools.r8.graph.E0 e02, C5979Tn c5979Tn) {
        this.f56523a = g32;
        this.f56524b = e02;
        this.f56525c = c5979Tn;
    }

    public final void a(A4 a42) {
        if (this.f56524b.e0()) {
            for (com.android.tools.r8.graph.H0 h02 : this.f56525c.f45165b.values()) {
                if (!f56522d) {
                    h02.getClass();
                    if (!(h02 instanceof com.android.tools.r8.graph.H5)) {
                        throw new AssertionError();
                    }
                }
                A a10 = a42.f56599g;
                a10.a(C11144c0.f57206a).a(h02.getReference()).d().r().u();
            }
            return;
        }
        if (!f56522d && !this.f56525c.stream().noneMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((com.android.tools.r8.graph.H0) obj).N();
            }
        })) {
            throw new AssertionError();
        }
    }

    public H3(G3 g32, com.android.tools.r8.graph.E0 e02) {
        C5921Sn c5921Sn = AbstractC6037Un.f44869d;
        this.f56523a = g32;
        this.f56524b = e02;
        this.f56525c = c5921Sn;
    }

    public final void a(N n10, A4 a42) {
        if (n10.f56786b.b() && !this.f56523a.x() && this.f56524b.e0()) {
            A a10 = a42.f56599g;
            a10.a(C11144c0.f57206a).a(this.f56524b.getType()).a().p().q().v();
            a(a42);
        }
    }
}
