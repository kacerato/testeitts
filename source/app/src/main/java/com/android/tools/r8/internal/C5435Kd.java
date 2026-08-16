package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4798y;
import java.util.function.BiConsumer;

public class C5435Kd {

    public final com.android.tools.r8.graph.E0 f41717a;

    public final com.android.tools.r8.graph.H2 f41718b;

    public final BiConsumer f41719c;

    public C5435Kd(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.H2 h22, BiConsumer biConsumer) {
        this.f41717a = e02;
        this.f41718b = h22;
        this.f41719c = biConsumer;
    }

    public C5435Kd a(com.android.tools.r8.graph.E0 e02) {
        com.android.tools.r8.graph.H2 h22;
        if (e02.e0()) {
            h22 = e02.d0();
        } else {
            h22 = this.f41718b;
        }
        return new C5435Kd(e02, h22, this.f41719c);
    }

    public com.android.tools.r8.graph.E0 a(C4798y c4798y, com.android.tools.r8.graph.M2 m22) {
        C4477h f10 = c4798y.f();
        com.android.tools.r8.graph.E0 e02 = this.f41717a;
        f10.getClass();
        if (e02.f36245e == m22) {
            return e02;
        }
        com.android.tools.r8.graph.E0 g10 = f10.g(m22);
        if (g10 != null && !g10.f0() && !e02.f0()) {
            f10.a(e02, g10);
        }
        return g10;
    }

    public void a(com.android.tools.r8.graph.M2 m22) {
        this.f41719c.accept(this.f41718b, m22);
    }
}
