package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.Z4;
import java.util.Set;

public final class UV implements com.android.tools.r8.graph.Q5 {

    public final Set f44766a;

    public final SV f44767b;

    public UV(Set set, SV sv) {
        this.f44766a = set;
        this.f44767b = sv;
    }

    @Override
    public final void a(C4554l1 c4554l1) {
        if (this.f44766a.add(c4554l1)) {
            SV sv = this.f44767b;
            C4460g1 q10 = ((C4514j) sv.f44222a.f()).c(c4554l1).q();
            if (q10 == null || q10.getReference().a(c4554l1)) {
                return;
            }
            C4554l1 reference = q10.getReference();
            if (!SV.f44221e && c4554l1.a(reference)) {
                throw new AssertionError();
            }
            sv.f44224c.put(c4554l1, reference);
        }
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.E0 c10;
        Z4.c<?> o10;
        if (this.f44766a.add(a22)) {
            SV sv = this.f44767b;
            if (a22.s0().E0() || (c10 = ((C4514j) sv.f44222a.f()).c(a22.s0())) == null || (o10 = ((C4514j) sv.f44222a.f()).h(c10, a22).o()) == null || o10.d() == c10) {
                return;
            }
            com.android.tools.r8.graph.A2 reference = o10.q().getReference();
            if (!SV.f44221e && a22.a(reference)) {
                throw new AssertionError();
            }
            sv.f44225d.put(a22, reference);
        }
    }
}
