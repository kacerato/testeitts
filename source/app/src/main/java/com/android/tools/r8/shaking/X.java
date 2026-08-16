package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC8374m80;
import com.android.tools.r8.internal.VJ;

public final class X extends W {

    public final com.android.tools.r8.graph.L2 f57104c;

    public final com.android.tools.r8.graph.L2 f57105d;

    public final com.android.tools.r8.graph.L2 f57106e;

    public final com.android.tools.r8.graph.L2 f57107f;

    public final com.android.tools.r8.graph.M2 f57108g;

    public final com.android.tools.r8.graph.A2 f57109h;

    public final com.android.tools.r8.graph.A2 f57110i;

    public X(C4798y c4798y, N n10) {
        super(c4798y, n10);
        C4724u1 b10 = c4798y.b();
        this.f57104c = b10.b("allOf");
        this.f57105d = b10.b("noneOf");
        this.f57106e = b10.b("range");
        this.f57107f = b10.f37931Q;
        com.android.tools.r8.graph.M2 d10 = b10.d("Ljava/util/EnumMap;");
        this.f57108g = b10.d("Ljava/util/EnumSet;");
        this.f57109h = b10.f37943R4.f36484c;
        this.f57110i = b10.a(d10, b10.a(b10.f37905M1, b10.f38180w2), b10.f38067i1);
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.Z4 z42, com.android.tools.r8.graph.H5 h52) {
        if (a22.a(this.f57110i)) {
            this.f57083b.f56778U.add((AbstractC8374m80) h52);
        }
    }

    @Override
    public final void c(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.Z4 z42, com.android.tools.r8.graph.H5 h52) {
        if (!a22.a(this.f57109h)) {
            if (!a22.s0().a(this.f57108g)) {
                return;
            }
            com.android.tools.r8.graph.L2 t02 = a22.t0();
            if (!t02.g(this.f57104c) && !t02.g(this.f57105d) && !t02.g(this.f57107f) && !t02.g(this.f57106e)) {
                return;
            }
        }
        this.f57083b.f56778U.add((AbstractC8374m80) h52);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
    
        if (r0.g(r4.f57106e) == false) goto L18;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(com.android.tools.r8.graph.H5 h52, VJ vj2) {
        com.android.tools.r8.graph.A2 B22 = vj2.B2();
        if (!B22.a(this.f57109h) && !B22.a(this.f57110i)) {
            if (B22.s0().a(this.f57108g)) {
                com.android.tools.r8.graph.L2 t02 = B22.t0();
                if (!t02.g(this.f57104c)) {
                    if (!t02.g(this.f57105d)) {
                        if (!t02.g(this.f57107f)) {
                        }
                    }
                }
            }
            return false;
        }
        a(h52, vj2, 0);
        return true;
    }
}
