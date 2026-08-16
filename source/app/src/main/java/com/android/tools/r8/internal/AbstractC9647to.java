package com.android.tools.r8.internal;

import com.android.tools.r8.graph.O0;
import com.android.tools.r8.graph.W0;

public abstract class AbstractC9647to {

    public static final boolean f52697a = true;

    public static boolean a(com.android.tools.r8.graph.O0... o0Arr) {
        for (int length = o0Arr.length - 1; length >= 0; length--) {
            com.android.tools.r8.graph.O0 o02 = o0Arr[length];
            o02.getClass();
            if (o02 instanceof O0.b) {
                return true;
            }
            if (!f52697a) {
                com.android.tools.r8.graph.O0 o03 = o0Arr[length];
                o03.getClass();
                if (o03 instanceof com.android.tools.r8.graph.S0) {
                    throw new AssertionError();
                }
            }
        }
        return true;
    }

    public static C9480so a(com.android.tools.r8.graph.A2 a22, boolean z10, W0.a aVar) {
        int i10 = -1;
        B60 b60 = null;
        if (aVar == null) {
            return new C9480so(-1, null);
        }
        C7 c72 = new C7();
        C9313ro c9313ro = new C9313ro(aVar.f36924e, a22, z10, c72);
        com.android.tools.r8.graph.O0[] o0Arr = aVar.f36926g;
        for (com.android.tools.r8.graph.O0 o02 : o0Arr) {
            o02.a(c9313ro);
            if (c9313ro.b() > 0) {
                break;
            }
            if (o02 instanceof O0.b) {
                i10 = c9313ro.a();
                b60 = (B60) c72.a();
            }
        }
        return new C9480so(i10, b60);
    }
}
