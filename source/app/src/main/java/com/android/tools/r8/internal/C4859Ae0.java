package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;

public final class C4859Ae0 {

    public final com.android.tools.r8.graph.M2 f38670a;

    public final com.android.tools.r8.graph.A2 f38671b;

    public C4859Ae0(C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2 d10 = c4724u1.d(a("ReflectiveOracle"));
        this.f38670a = d10;
        this.f38671b = c4724u1.a(d10, c4724u1.a(c4724u1.d(a("ReflectiveOperationReceiver")), new com.android.tools.r8.graph.M2[0]), "getReceiver");
    }

    public static String a(String str) {
        return "Lcom/android/tools/r8/assistant/runtime/" + str + ";";
    }
}
