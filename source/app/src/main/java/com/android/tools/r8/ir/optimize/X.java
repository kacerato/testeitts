package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.D3;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC5647Nv;
import com.android.tools.r8.shaking.C11245i;

public final class X {

    public static final boolean f54824b = true;

    public final C4798y f54825a;

    public X(C4798y c4798y) {
        this.f54825a = c4798y;
    }

    public final O a(C4554l1 c4554l1, H5 h52) {
        D3.a<?> l10 = ((C11245i) this.f54825a.f()).c(c4554l1).l();
        if (l10 == null) {
            return O.f54786c;
        }
        return a(l10.f36223b, h52, com.android.tools.r8.graph.F0.a(l10.f36224c, l10.f36225d));
    }

    public final O a(com.android.tools.r8.graph.E0 e02, H5 h52, com.android.tools.r8.graph.G0 g02) {
        if (AbstractC5647Nv.a(e02, h52, this.f54825a) && AbstractC5647Nv.a(g02, h52, this.f54825a)) {
            M2 p10 = g02.p();
            if (!f54824b && e02 == null) {
                throw new AssertionError();
            }
            return O.a(O.a(h52, e02.getType(), e02.getAccessFlags(), this.f54825a), O.a(h52, p10, g02.getAccessFlags(), this.f54825a), (C4798y<?>) this.f54825a);
        }
        return O.f54786c;
    }
}
