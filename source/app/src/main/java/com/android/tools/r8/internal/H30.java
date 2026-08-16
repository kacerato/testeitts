package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Set;

public final class H30 extends AbstractC5055Do0 {

    public final C4724u1 f40672a;

    public H30(C4798y c4798y) {
        this.f40672a = c4798y.b();
    }

    @Override
    public final EE a(C7215fB c7215fB, Z5 z52, EE ee2, VJ vj2, com.android.tools.r8.graph.H0 h02, C10696a c10696a, Set set) {
        if (h02.getReference() == this.f40672a.f37859F4.f38226d && ((!vj2.e1() || !vj2.d().w()) && ((C10340xw0) vj2.f54321f.get(0)).O())) {
            ee2.i();
        }
        return ee2;
    }

    @Override
    public final com.android.tools.r8.graph.M2 getType() {
        return this.f40672a.f38068i2;
    }
}
