package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.AbstractC4591n0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.I2;

public final class G extends AbstractC4591n0 {
    public G(C4798y c4798y, H5 h52) {
        super(c4798y, h52, Boolean.FALSE);
    }

    @Override
    public final void g(A2 a22) {
        C4724u1 b10 = this.f37176a.b();
        b10.getClass();
        if (a22.s0().E0()) {
            I2 y02 = a22.y0();
            if (b10.f38050g0.g(a22.t0()) && y02.n0().isEmpty() && b10.f38068i2.a(y02.o0())) {
                this.f37241e = Boolean.TRUE;
                a();
            }
        }
    }
}
