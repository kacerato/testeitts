package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import java.util.IdentityHashMap;

public final class C10224xD implements InterfaceC7339fx, InterfaceC10271xZ {

    public final C4798y f53718a;

    public final IdentityHashMap f53719b = new IdentityHashMap();

    public C10224xD(C4798y c4798y) {
        this.f53718a = c4798y;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.M2 m22 = h22.f36245e;
        com.android.tools.r8.graph.M2 m23 = this.f53718a.b().f38068i2;
        if (h52 == null) {
            this.f53719b.put(m22, m23);
            return;
        }
        C4514j c4514j = (C4514j) this.f53718a.f();
        com.android.tools.r8.graph.M2 p10 = h52.p();
        this.f53719b.put(m22, C6949de.a(c4514j, p10, (com.android.tools.r8.graph.M2) this.f53719b.getOrDefault(m22, p10)));
    }

    @Override
    public final void a(com.android.tools.r8.shaking.N n10) {
        C4798y c4798y = this.f53718a;
        c4798y.f38391F = new C10057wD(c4798y, this.f53719b);
    }
}
