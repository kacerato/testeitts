package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C6949de;
import com.android.tools.r8.internal.C7957jh;
import com.android.tools.r8.internal.C8704o7;
import com.android.tools.r8.internal.InterfaceC5121Es0;
import com.android.tools.r8.internal.InterfaceC8739oK;
import com.android.tools.r8.internal.VJ;

public abstract class W implements InterfaceC5121Es0, InterfaceC8739oK {

    public final C4798y f57082a;

    public final N f57083b;

    public W(C4798y c4798y, N n10) {
        this.f57082a = c4798y;
        this.f57083b = n10;
    }

    public final com.android.tools.r8.graph.H2 a(com.android.tools.r8.graph.M2 m22, boolean z10) {
        if (m22.E0()) {
            m22 = m22.a(this.f57082a.b());
            if (!m22.I0()) {
                return null;
            }
        }
        com.android.tools.r8.graph.E0 g10 = this.f57082a.g(m22);
        if (g10 != null && g10.e0() && g10.i1()) {
            com.android.tools.r8.graph.M2 a12 = g10.a1();
            if (a12.a(this.f57082a.b().f38108n2)) {
                return g10.d0();
            }
            if (z10) {
                return a(a12, false);
            }
        }
        return null;
    }

    public final void a(com.android.tools.r8.graph.H5 h52, VJ vj2, int i10) {
        com.android.tools.r8.graph.M2 E10;
        C10340xw0 b10 = vj2.b(C8704o7.a(!vj2.R1()) + i10);
        if (b10.j()) {
            return;
        }
        if (vj2.B2().k(i10).a(this.f57082a.b().f38180w2)) {
            C7957jh F10 = b10.f53886c.F();
            if (F10 == null) {
                return;
            } else {
                E10 = F10.f49303l;
            }
        } else {
            C6949de b11 = b10.u().b();
            if (b11 == null) {
                return;
            } else {
                E10 = b11.E();
            }
        }
        com.android.tools.r8.graph.H2 a10 = a(E10, true);
        if (a10 != null) {
            this.f57083b.c(a10, new M1(h52.getHolder(), h52.d()));
        }
    }
}
