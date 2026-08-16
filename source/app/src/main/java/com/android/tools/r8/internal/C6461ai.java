package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Set;

public final class C6461ai extends AbstractC5055Do0 {

    public static final boolean f46586d = true;

    public final C8570nJ f46587a;

    public final C4724u1 f46588b;

    public final com.android.tools.r8.graph.A2 f46589c;

    public C6461ai(C4798y c4798y) {
        C4724u1 b10 = c4798y.b();
        this.f46587a = c4798y.E();
        this.f46588b = b10;
        this.f46589c = b10.f37929P4.f36362a;
    }

    @Override
    public final EE a(C7215fB c7215fB, Z5 z52, EE ee2, VJ vj2, com.android.tools.r8.graph.H0 h02, C10696a c10696a, Set set) {
        if (h02.getReference().a(this.f46589c)) {
            AbstractC6497au.a(vj2, 1, c7215fB, ee2, this.f46587a);
            if (!f46586d && ee2.n() != vj2) {
                throw new AssertionError();
            }
        }
        return ee2;
    }

    @Override
    public final com.android.tools.r8.graph.M2 getType() {
        return this.f46588b.f38204z2;
    }
}
