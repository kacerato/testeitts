package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public abstract class AbstractC8348m {
    public static F1 a(C4798y c4798y, F1 f12, int i10) {
        int i11 = i10 & 31;
        if (i11 == 0) {
            return f12;
        }
        f12.getClass();
        if (f12 instanceof C5341Im0) {
            return c4798y.f38427t.a(((int) f12.m().f41207c) << i11);
        }
        if (f12.V()) {
            return c4798y.f38427t.a(f12.R() << i11, (f12.S() << i11) | ((1 << i11) - 1));
        }
        int i12 = F1.f40064a;
        return C10504yv0.f54195b;
    }

    public static F1 b(C4798y c4798y, F1 f12, F1 f13) {
        if (f12.Z()) {
            return f13;
        }
        if (f13.Z()) {
            return f12;
        }
        if ((f12 instanceof C5341Im0) && (f13 instanceof C5341Im0)) {
            return c4798y.f38427t.a(((int) f12.m().f41207c) | ((int) f13.m().f41207c));
        }
        if (f12.V() && f13.V()) {
            return c4798y.f38427t.a(f12.R() | f13.R(), f12.S() & f13.S());
        }
        if (f12.V()) {
            return c4798y.f38427t.a(f12.R(), 0);
        }
        if (f13.V()) {
            return c4798y.f38427t.a(f13.R(), 0);
        }
        int i10 = F1.f40064a;
        return C10504yv0.f54195b;
    }

    public static F1 a(C4798y c4798y, F1 f12, F1 f13) {
        G1 g12 = c4798y.f38427t;
        if (f12.Z()) {
            return f12;
        }
        if (f13.Z()) {
            return f13;
        }
        if ((f12 instanceof C5341Im0) && (f13 instanceof C5341Im0)) {
            return g12.a(((int) f12.m().f41207c) & ((int) f13.m().f41207c));
        }
        if (f12.V() && f13.V()) {
            return g12.a(f12.R() & f13.R(), f12.S() | f13.S());
        }
        if (f12.V()) {
            return g12.a(0, f12.S());
        }
        if (f13.V()) {
            return g12.a(0, f13.S());
        }
        int i10 = F1.f40064a;
        return C10504yv0.f54195b;
    }

    public static F1 b(C4798y c4798y, F1 f12, int i10) {
        int i11 = i10 & 31;
        if (i11 == 0) {
            return f12;
        }
        f12.getClass();
        if (f12 instanceof C5341Im0) {
            return c4798y.f38427t.a(((int) f12.m().f41207c) >> i11);
        }
        if (f12.V()) {
            return c4798y.f38427t.a(f12.R() >> i11, f12.S() >> i11);
        }
        int i12 = F1.f40064a;
        return C10504yv0.f54195b;
    }
}
