package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.shaking.C11245i;
import java.util.Set;

public final class C4986Cj implements KD {

    public final C4798y f39330a;

    public final E8 f39331b;

    public final C8570nJ.h f39332c;

    public C4986Cj(C4798y c4798y, E8 e82) {
        this.f39330a = c4798y;
        this.f39331b = e82;
        this.f39332c = c4798y.E().L();
    }

    @Override
    public final com.android.tools.r8.ir.optimize.U a(VJ vj2, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53, com.android.tools.r8.ir.optimize.H h10, JD jd2, AbstractC6931dX abstractC6931dX, AbstractC5015Cx0 abstractC5015Cx0) {
        com.android.tools.r8.ir.optimize.U u10;
        C4516j1 d10 = h52.d();
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        ((C11245i) this.f39330a.f()).i();
        if (this.f39330a.M().f().f57409x.contains(reference)) {
            u10 = com.android.tools.r8.ir.optimize.U.f54808b;
        } else if (this.f39332c.f50778l && d10.k1().d()) {
            u10 = com.android.tools.r8.ir.optimize.U.f54811e;
        } else if (this.f39331b.a(h52, h53)) {
            u10 = com.android.tools.r8.ir.optimize.U.f54809c;
        } else {
            u10 = abstractC6931dX.f() ? this.f39331b.b(h52) : abstractC6931dX instanceof P60 ? h52.A().A() : false ? abstractC6931dX.f() ? com.android.tools.r8.ir.optimize.U.f54810d : com.android.tools.r8.ir.optimize.U.f54808b : com.android.tools.r8.ir.optimize.U.f54811e;
        }
        Set set = this.f39330a.H().f50903r0;
        if (set == null || set.contains(u10)) {
            return u10;
        }
        com.android.tools.r8.ir.optimize.U u11 = com.android.tools.r8.ir.optimize.U.f54812f;
        abstractC5015Cx0.a(set);
        return u11;
    }
}
