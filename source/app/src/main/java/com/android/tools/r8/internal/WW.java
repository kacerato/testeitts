package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Set;

public final class WW extends AbstractC5055Do0 {

    public static final boolean f45433d = true;

    public final C8570nJ f45434a;

    public final C4724u1 f45435b;

    public final com.android.tools.r8.graph.A2 f45436c;

    public WW(C4798y c4798y) {
        C4724u1 b10 = c4798y.b();
        this.f45434a = c4798y.E();
        this.f45435b = b10;
        this.f45436c = b10.f37936Q4.f37224a;
    }

    @Override
    public final EE a(C7215fB c7215fB, Z5 z52, EE ee2, VJ vj2, com.android.tools.r8.graph.H0 h02, C10696a c10696a, Set set) {
        if (h02.getReference().a(this.f45436c)) {
            AbstractC6497au.a(vj2, 2, c7215fB, ee2, this.f45434a);
            if (!f45433d && ee2.n() != vj2) {
                throw new AssertionError();
            }
        }
        return ee2;
    }

    @Override
    public final com.android.tools.r8.graph.M2 getType() {
        return this.f45435b.f37826B2;
    }
}
