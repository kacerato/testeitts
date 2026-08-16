package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class ZZ extends AbstractC10644zm0 {

    public static final boolean f46261d = true;

    public final com.android.tools.r8.shaking.L4 f46262b;

    public final com.android.tools.r8.synthesis.J f46263c;

    public ZZ(C4798y c4798y, com.android.tools.r8.shaking.L4 l42) {
        this.f46262b = l42;
        this.f46263c = c4798y.f38408a.g();
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        com.android.tools.r8.shaking.L4 l42 = this.f46262b;
        if (l42 != null) {
            return !(l42.f56698a.contains(h22.f36245e) || l42.f56699b.contains(h22.f36245e) || l42.f56700c.contains(h22.f36245e));
        }
        if (!f46261d) {
            com.android.tools.r8.synthesis.J j10 = this.f46263c;
            j10.getClass();
            if (!j10.g(h22.f36245e)) {
                throw new AssertionError((Object) ("Expected synthetic, got: " + h22.b1()));
            }
        }
        return true;
    }

    @Override
    public final String f() {
        return "NoDirectRuntimeTypeChecks";
    }
}
