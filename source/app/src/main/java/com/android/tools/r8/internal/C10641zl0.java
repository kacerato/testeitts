package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Set;

public final class C10641zl0 extends AbstractC5055Do0 {

    public final C4724u1 f54532a;

    public final com.android.tools.r8.graph.X1 f54533b;

    public final com.android.tools.r8.graph.A2 f54534c;

    public C10641zl0(C4798y c4798y) {
        C4724u1 b10 = c4798y.b();
        this.f54532a = b10;
        this.f54533b = b10.f38095l5;
        this.f54534c = b10.f38119o5.f37114a;
    }

    @Override
    public final EE a(C7215fB c7215fB, Z5 z52, EE ee2, VJ vj2, com.android.tools.r8.graph.H0 h02, C10696a c10696a, Set set) {
        if (h02.getReference().a(this.f54534c)) {
            AbstractC8999pu0 a10 = ee2.n().a();
            if (a10 == null) {
                ee2.i();
                return ee2;
            }
            ee2.b(new C5576Mo0(this.f54533b.f36951c, c7215fB.a(a10, (C4515j0) null)));
        }
        return ee2;
    }

    @Override
    public final com.android.tools.r8.graph.M2 getType() {
        return this.f54532a.f37956T3;
    }
}
