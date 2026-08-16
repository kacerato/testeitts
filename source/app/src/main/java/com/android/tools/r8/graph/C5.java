package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5513Ll0;
import java.util.Set;

public abstract class C5 {

    public final C4798y f36196a;

    public final Set f36197b = AbstractC5513Ll0.c();

    public C5(C4798y c4798y) {
        this.f36196a = c4798y;
    }

    public final void a(H2 h22) {
        if (this.f36197b.add(h22)) {
            if (h22.i1()) {
                H2 c10 = this.f36196a.e().c(h22.a1());
                if (c10 != null) {
                    a(c10);
                }
            }
            for (M2 m22 : h22.R0().f36675b) {
                H2 c11 = this.f36196a.e().c(m22);
                if (c11 != null) {
                    a(c11);
                }
            }
            com.android.tools.r8.dex.K k10 = (com.android.tools.r8.dex.K) this;
            if (k10.f35735c.contains(h22)) {
                h22.b(k10.f35736d.f35743f);
            }
        }
    }
}
