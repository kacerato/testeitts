package com.android.tools.r8.graph;

import com.android.tools.r8.graph.H3;

public abstract class Z3 {

    public static final boolean f37015a = true;

    public static boolean a(H3.d dVar, C4723u0 c4723u0) {
        if (!f37015a && dVar == null) {
            throw new AssertionError();
        }
        if (!dVar.a() && c4723u0 != null) {
            for (C4666r0 c4666r0 : c4723u0.f37806d) {
                if (!f37015a && c4666r0.l0().f36592f.toString().equals("Ldalvik/annotation/Signature;")) {
                    throw new AssertionError();
                }
            }
        }
        return true;
    }
}
