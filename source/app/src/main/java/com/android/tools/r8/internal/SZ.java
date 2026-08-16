package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.kotlin.C10824n0;

public final class SZ extends AbstractC10644zm0 {
    @Override
    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        if (!h22.c1()) {
            return true;
        }
        C4516j1 L02 = h22.L0();
        L02.L0();
        if (!L02.f37320m.f()) {
            if (!h22.f36369x.l()) {
                return false;
            }
            C10824n0 g10 = h22.f36369x.g();
            if (g10.f55385b == null || g10.f55387d == 3) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final String f() {
        return "NoClassInitializerWithObservableSideEffects";
    }
}
