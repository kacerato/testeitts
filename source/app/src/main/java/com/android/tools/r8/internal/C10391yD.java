package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.Set;
import java.util.function.Consumer;

public final class C10391yD extends AbstractC5102Ej {

    public static final boolean f53972d = true;

    public final C4798y f53973a;

    public final com.android.tools.r8.graph.H5 f53974b;

    public final Set f53975c = AbstractC5513Ll0.c();

    public C10391yD(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        this.f53973a = c4798y;
        this.f53974b = h52;
    }

    public final void a(Set set) {
        set.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10391yD.this.a((com.android.tools.r8.graph.M2) obj);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.E0 g10;
        if (m22 != this.f53974b.p() && (g10 = this.f53973a.g(m22)) != null && g10.e0() && g10.a(this.f53973a)) {
            ArrayList arrayList = null;
            for (com.android.tools.r8.graph.M2 m23 : this.f53975c) {
                if (this.f53973a.a(m23, m22).d()) {
                    return;
                }
                if (this.f53973a.a(m22, m23).d()) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(m23);
                }
            }
            this.f53975c.add(m22);
            if (arrayList != null) {
                this.f53975c.removeAll(arrayList);
            }
        }
    }

    public final void a(AbstractC7670hw abstractC7670hw) {
        C4460g1 q10 = ((C11245i) this.f53973a.f()).c(abstractC7670hw.getField()).q();
        if (q10 != null) {
            if (q10.B0().I0()) {
                a(q10.B0());
            } else if (!f53972d) {
                throw new AssertionError((Object) "Expected holder of field type to be a class type");
            }
        }
    }

    public final void a(NJ nj2) {
        if (nj2.P1()) {
            VJ e02 = nj2.e0();
            com.android.tools.r8.graph.A2 B22 = e02.B2();
            if (B22.f38297f.I0()) {
                com.android.tools.r8.graph.H0 e10 = e02.e(this.f53973a, this.f53974b);
                if (e10 != null) {
                    a(e10.p());
                    C4516j1 d10 = e10.d();
                    d10.L0();
                    a(d10.f37320m.p());
                    return;
                }
                a(B22.s0());
            }
        }
    }
}
