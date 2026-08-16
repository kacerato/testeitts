package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import com.android.tools.r8.shaking.C11245i;
import java.util.Set;

public final class C10166wu extends AbstractC5055Do0 {

    public final C4798y f53638a;

    public C10166wu(C4798y c4798y) {
        this.f53638a = c4798y;
    }

    @Override
    public final EE a(C7215fB c7215fB, Z5 z52, EE ee2, VJ vj2, com.android.tools.r8.graph.H0 h02, C10696a c10696a, Set set) {
        com.android.tools.r8.graph.M2 m22;
        com.android.tools.r8.graph.H2 b10;
        C10340xw0 d10;
        if (this.f53638a.f().i() && h02.getReference() == this.f53638a.b().f37943R4.f36484c && ((C10340xw0) vj2.f54321f.get(0)).I()) {
            C4798y<C11245i> M10 = this.f53638a.M();
            if (!vj2.b().z() && (b10 = M10.b((m22 = ((C10340xw0) vj2.f54321f.get(0)).n().F().f49303l))) != null && b10.o1() && b10.f36247g == M10.b().f38108n2 && (d10 = vj2.d()) != null) {
                C10340xw0 a10 = c7215fB.a(d10.u().d().D(), d10.s());
                d10.a(a10, c10696a);
                C8854p10 b11 = C8854p10.b();
                m22.getClass();
                C4 a11 = C4.a(AbstractC10330xt.a(M10, AbstractC8999pu0.a(m22, b11, M10)), a10, d10, vj2, M10, c7215fB.j());
                a11.b(M10.E().f50690i1 ? vj2.getPosition() : B60.s());
                ee2.add(a11);
            }
        }
        return ee2;
    }

    @Override
    public final com.android.tools.r8.graph.M2 getType() {
        return this.f53638a.b().f38108n2;
    }
}
