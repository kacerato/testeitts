package com.android.tools.r8.graph;

import com.android.tools.r8.dex.C4320u;
import com.android.tools.r8.graph.W0;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC9647to;
import com.android.tools.r8.internal.BR;

public final class Y0 extends W0.a implements Z0 {

    public static final boolean f36975i = true;

    public Y0(int i10, L2[] l2Arr, O0[] o0Arr) {
        super(i10, l2Arr, o0Arr);
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10) {
        for (L2 l22 : this.f36925f) {
            if (l22 != null) {
                m10.a(l22);
            }
        }
        for (O0 o02 : this.f36926g) {
            o02.a(c4798y, abstractC5308Hz, m10);
        }
    }

    @Override
    public final int h0() {
        return (this.f36925f.length * 4) + BR.d(this.f36925f.length) + BR.d(this.f36924e) + this.f36926g.length + 1;
    }

    @Override
    public final void a(com.android.tools.r8.dex.X x10) {
        if (!f36975i && !r0() && !AbstractC9647to.a(l0().f36926g)) {
            throw new AssertionError();
        }
        x10.a(this);
    }

    @Override
    public final void a(C4320u c4320u, C4766w5 c4766w5, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        c4320u.c(this.f36924e);
        c4320u.c(this.f36925f.length);
        for (L2 l22 : this.f36925f) {
            if (l22 == null) {
                c4320u.c(0);
            } else {
                c4320u.c(C4766w5.a(l22, c4320u.f35965a.f38343j) + 1);
            }
        }
        for (O0 o02 : this.f36926g) {
            if (!O0.f36661c && !o02.o0()) {
                throw new AssertionError();
            }
            o02.a(c4320u, abstractC5308Hz, abstractC5308Hz2);
        }
        c4320u.b(0);
    }
}
