package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public abstract class AbstractC6421aS {

    public static final boolean f46538a = true;

    public static AbstractC8849p a(C4798y c4798y, VJ vj2) {
        com.android.tools.r8.graph.A2 B22 = vj2.B2();
        C6588bS c6588bS = c4798y.f38433z;
        c6588bS.getClass();
        if (c6588bS.a(vj2.B2(), vj2.f54321f)) {
            return C5701Ot.f43063a;
        }
        if (B22 == c4798y.b().f38007a5.f55310c.f55273d || B22 == c4798y.b().f38007a5.f55310c.f55272c) {
            return C5701Ot.f43063a;
        }
        if (f46538a || !c4798y.b().f37922O4.f36334p.contains(B22)) {
            return C8835ov0.f51388a;
        }
        throw new AssertionError();
    }
}
