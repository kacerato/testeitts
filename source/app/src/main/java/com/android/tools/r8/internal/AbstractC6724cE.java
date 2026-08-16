package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public abstract class AbstractC6724cE {
    public static SD a(C4798y c4798y, C10340xw0 c10340xw0) {
        C10340xw0 i10 = c10340xw0.i();
        if (i10.j()) {
            return null;
        }
        AbstractC10561zE r10 = i10.r();
        if (r10.k1()) {
            return c4798y.f38431x.a(i10.r().v().b(true));
        }
        if (!r10.w1()) {
            if (r10.x1()) {
                return c4798y.f38427t.a(r10.K().u2());
            }
            return null;
        }
        G1 g12 = c4798y.f38427t;
        if (!r10.a().y()) {
            return g12.a(r10.J().w2(), r10.a());
        }
        AbstractC8999pu0 a10 = r10.a();
        g12.getClass();
        if (G1.f40367f || a10.y()) {
            return C5283Hm0.f40867c;
        }
        throw new AssertionError();
    }
}
