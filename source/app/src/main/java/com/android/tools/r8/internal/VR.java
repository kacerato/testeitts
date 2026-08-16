package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4798y;
import java.util.Iterator;
import java.util.function.Consumer;

public final class VR {

    public final com.android.tools.r8.graph.L2 f45053a;

    public final C4798y f45054b;

    public boolean f45055c = false;

    public VR(C4798y c4798y, com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.H2 h22) {
        this.f45053a = l22;
        this.f45054b = c4798y;
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        com.android.tools.r8.graph.M2 m22 = h22.f36247g;
        if (m22 != null) {
            a(m22);
        }
        for (com.android.tools.r8.graph.M2 m23 : h22.f36248h.f36675b) {
            a(m23);
        }
        if (this.f45055c) {
            return;
        }
        Iterator<C4516j1> it = h22.z1().iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H5 h52 = new com.android.tools.r8.graph.H5(h22, it.next());
            com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) h52.getReference();
            Iterator<com.android.tools.r8.graph.M2> it2 = a22.x0().iterator();
            while (it2.hasNext()) {
                a(it2.next());
            }
            a(a22.z0());
            for (C4666r0 c4666r0 : ((C4516j1) h52.d()).k0().f37806d) {
                if (c4666r0.f37693c.f37142b == this.f45054b.b().f37923O5) {
                    for (com.android.tools.r8.graph.R2 r22 : c4666r0.f37693c.f37143c[0].f37739c.n0().W0()) {
                        a((com.android.tools.r8.graph.M2) r22.E0().f36759d);
                    }
                }
            }
            if (!this.f45055c) {
                UR ur = new UR(this, this.f45054b, h52);
                h52.a(ur);
                this.f45055c = ur.f37241e.booleanValue();
            }
            if (this.f45055c) {
                return;
            }
        }
        h22.c(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VR.this.a((C4460g1) obj);
            }
        }, EnumC6871d70.f47286b);
    }

    public final void a(com.android.tools.r8.graph.M2 m22) {
        boolean z10;
        if (!this.f45055c) {
            com.android.tools.r8.graph.L2 l22 = m22.f36592f;
            com.android.tools.r8.graph.L2 l23 = this.f45053a;
            l22.getClass();
            if (!l22.b(l23.f36562f)) {
                z10 = false;
                this.f45055c = z10;
            }
        }
        z10 = true;
        this.f45055c = z10;
    }

    public final void a(C4460g1 c4460g1) {
        C4554l1 reference = c4460g1.getReference();
        a(reference.s0());
        a(reference.getType());
    }
}
