package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4690s5;
import com.android.tools.r8.graph.InterfaceC4403d1;

public final class C11296l0 extends AbstractC11279k0 {

    public final com.android.tools.r8.graph.H2 f57489a;

    public C11296l0(com.android.tools.r8.graph.H2 h22) {
        this.f57489a = h22;
    }

    @Override
    public final void a(N n10) {
        com.android.tools.r8.graph.H2 h22 = this.f57489a;
        R0 r02 = R0.f56919a;
        boolean z10 = N.f56757p0;
        if (!z10) {
            n10.getClass();
            if (!h22.f36246f.H()) {
                throw new AssertionError();
            }
        }
        C4690s5 c4690s5 = n10.f56812o;
        C4514j c4514j = n10.f56792e;
        c4690s5.getClass();
        boolean z11 = C4690s5.f37724i;
        if (!z11 && !h22.isInterface()) {
            throw new AssertionError();
        }
        if (!z11 && !h22.f36246f.H()) {
            throw new AssertionError();
        }
        if (c4690s5.f37784c.add(h22)) {
            c4690s5.a((InterfaceC4403d1) c4514j, (com.android.tools.r8.graph.E0) h22);
            n10.d(h22, r02);
            if (!z10 && !h22.isInterface()) {
                throw new AssertionError();
            }
            n10.q(h22);
        }
    }
}
