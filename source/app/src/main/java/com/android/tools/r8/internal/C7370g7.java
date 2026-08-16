package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Set;

public final class C7370g7 extends A70 {
    public C7370g7(C4798y c4798y) {
        super(c4798y);
    }

    @Override
    public final boolean a(F1 f12) {
        f12.getClass();
        return f12 instanceof C7140em0;
    }

    @Override
    public final com.android.tools.r8.graph.A2 b() {
        return this.f38538b.f38190x4.f38220f;
    }

    @Override
    public final com.android.tools.r8.graph.A2 c() {
        return this.f38538b.f38190x4.f38218d;
    }

    @Override
    public final com.android.tools.r8.graph.M2 getType() {
        return this.f38538b.f37968V1;
    }

    public final void b(C7215fB c7215fB, EE ee2, VJ vj2) {
        C10340xw0 i10 = vj2.b(0).i();
        if (i10.d(new C6869d61())) {
            C9960vh K10 = i10.r().K();
            C4798y c4798y = this.f38537a;
            com.android.tools.r8.graph.H5 j10 = c7215fB.j();
            K10.getClass();
            M1.a(c4798y, j10);
            if (K10.v2()) {
                return;
            }
            String f10 = C10656zq0.f(K10.u2().toString());
            if (f10.equals("true")) {
                ee2.a(c7215fB, 1);
            } else if (f10.equals("false")) {
                ee2.a(c7215fB, 0);
            }
        }
    }

    @Override
    public final EE a(C7215fB c7215fB, Z5 z52, EE ee2, VJ vj2, com.android.tools.r8.graph.H0 h02, C10696a c10696a, Set set) {
        if (h02.getReference().a(this.f38538b.f38190x4.f38219e)) {
            b(c7215fB, ee2, vj2);
            return ee2;
        }
        if (h02.getReference().a(c())) {
            a(c7215fB, ee2, vj2);
            return ee2;
        }
        if (h02.getReference().a(b())) {
            a(c7215fB, ee2, vj2, c10696a);
        }
        return ee2;
    }

    @Override
    public final void a(C7215fB c7215fB, EE ee2, VJ vj2, C10696a c10696a) {
        C4554l1 c4554l1;
        F1 a10 = vj2.W0().a(this.f38537a, c7215fB.j(), M1.f42128a);
        a10.getClass();
        if (a10 instanceof C5341Im0) {
            C4798y<?> c4798y = this.f38537a;
            if (a10.m().j0()) {
                c4554l1 = this.f38538b.f38190x4.f38216b;
            } else {
                c4554l1 = this.f38538b.f38190x4.f38215a;
            }
            ee2.a(c4798y, c7215fB, c4554l1, c10696a);
            return;
        }
        super.a(c7215fB, ee2, vj2, c10696a);
    }
}
