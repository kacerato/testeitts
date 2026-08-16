package com.android.tools.r8.dex;

import com.android.tools.r8.graph.C4441f1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4685s0;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4823z5;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.O2;
import com.android.tools.r8.graph.R2;
import com.android.tools.r8.graph.Z0;
import com.android.tools.r8.naming.AbstractC10992r0;

public final class C4310j extends X {

    public final AbstractC10992r0 f35869a;

    public C4310j(AbstractC10992r0 abstractC10992r0) {
        this.f35869a = abstractC10992r0;
    }

    @Override
    public final void a(H2 h22, C4685s0 c4685s0) {
    }

    @Override
    public final boolean a(H2 h22) {
        return true;
    }

    @Override
    public final boolean a(O2 o22) {
        return true;
    }

    @Override
    public final boolean a(Z0 z02) {
        return true;
    }

    @Override
    public final boolean a(C4516j1 c4516j1) {
        return true;
    }

    @Override
    public final boolean a(C4823z5 c4823z5) {
        return true;
    }

    @Override
    public final boolean a(C4723u0 c4723u0) {
        c4723u0.a(this.f35869a);
        return true;
    }

    @Override
    public final boolean a(C4666r0 c4666r0) {
        c4666r0.f37693c.l0();
        return true;
    }

    @Override
    public final boolean a(C4441f1 c4441f1) {
        for (R2 r22 : c4441f1.f37169b) {
            r22.V0();
        }
        return true;
    }
}
