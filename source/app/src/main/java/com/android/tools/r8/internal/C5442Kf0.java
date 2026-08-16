package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4367b3;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4798y;

public final class C5442Kf0 implements AZ {

    public final C4798y f41731a;

    public C5442Kf0(C4798y c4798y) {
        this.f41731a = c4798y;
    }

    @Override
    public final void a(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.D5 d52) {
        C4460g1 d10 = f52.d();
        if (f52.getAccessFlags().n() && d10.L0()) {
            com.android.tools.r8.graph.R2 K02 = d10.K0();
            K02.getClass();
            if (K02 instanceof C4367b3) {
                this.f41731a.f38400O.a(d10.K0().B0().f37073d, f52.toString());
            }
        }
    }
}
