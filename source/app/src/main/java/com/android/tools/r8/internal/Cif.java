package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Set;

public final class Cif extends AbstractC5055Do0 {

    public final C4724u1 f49005a;

    public final com.android.tools.r8.graph.X1 f49006b;

    public Cif(C4798y c4798y) {
        C4724u1 b10 = c4798y.b();
        this.f49005a = b10;
        this.f49006b = b10.f38095l5;
    }

    @Override
    public final EE a(C7215fB c7215fB, Z5 z52, EE ee2, VJ vj2, com.android.tools.r8.graph.H0 h02, C10696a c10696a, Set set) {
        com.android.tools.r8.graph.A2 reference = h02.getReference();
        C4554l1 c4554l1 = reference.a(this.f49006b.f36952d) ? this.f49006b.f36949a : reference.a(this.f49006b.f36953e) ? this.f49006b.f36950b : reference.a(this.f49006b.f36954f) ? this.f49006b.f36951c : null;
        if (c4554l1 != null) {
            AbstractC8999pu0 a10 = ee2.n().a();
            if (a10 == null) {
                ee2.i();
                return ee2;
            }
            ee2.b(new C5576Mo0(c4554l1, c7215fB.a(a10, (C4515j0) null)));
        }
        return ee2;
    }

    @Override
    public final com.android.tools.r8.graph.M2 getType() {
        return this.f49005a.f38140r2;
    }
}
