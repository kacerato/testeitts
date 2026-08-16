package com.android.tools.r8.internal;

import java.util.Objects;
import java.util.function.Function;

public final class C8872p70 extends AbstractC9039q70 {

    public final C9205r70 f51445b;

    public C8872p70(C9205r70 c9205r70) {
        this.f51445b = c9205r70;
    }

    @Override
    public final void a(C5058Dq c5058Dq, com.android.tools.r8.graph.H2 h22) {
        com.android.tools.r8.graph.O2 R02 = h22.R0();
        C8371m70 c8371m70 = this.f51445b.f51974d;
        Objects.requireNonNull(c8371m70);
        c5058Dq.a(R02, new Tj1(c8371m70));
        c5058Dq.a(this.f51445b.f51973c.a(h22), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C8872p70.this.a((com.android.tools.r8.graph.H2) obj);
            }
        });
        c5058Dq.b(h22.z1());
    }
}
