package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;

public final class C8814oo0 {

    public final com.android.tools.r8.graph.M2 f51355a;

    public final com.android.tools.r8.graph.M2 f51356b;

    public final com.android.tools.r8.graph.A2 f51357c;

    public final com.android.tools.r8.graph.A2 f51358d;

    public C8814oo0(C4724u1 c4724u1) {
        this.f51355a = c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServer;");
        com.android.tools.r8.graph.M2 d10 = c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;");
        this.f51356b = d10;
        com.android.tools.r8.graph.M2 m22 = c4724u1.f37905M1;
        com.android.tools.r8.graph.M2 m23 = c4724u1.f38052g2;
        this.f51357c = c4724u1.a(d10, c4724u1.a(m22, m23, m23), "addCall");
        this.f51358d = c4724u1.a(d10, c4724u1.a(c4724u1.f37905M1, c4724u1.f38052g2), "addMethod");
    }
}
