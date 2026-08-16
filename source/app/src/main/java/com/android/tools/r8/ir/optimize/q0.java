package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.Y5;

public final class q0 implements p0 {

    public final C10340xw0 f54917a;

    public final s0 f54918b;

    public q0(s0 s0Var, C10340xw0 c10340xw0) {
        this.f54918b = s0Var;
        this.f54917a = c10340xw0;
    }

    @Override
    public final void a(Y5 y52, AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.d().a(this.f54917a, this.f54918b.f54934d);
        y52.i();
        this.f54918b.f54938h = true;
    }

    public final String toString() {
        return "ExistingValue(v" + this.f54917a.t() + ")";
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y, AbstractC8999pu0 abstractC8999pu0) {
        return this.f54917a.u();
    }
}
