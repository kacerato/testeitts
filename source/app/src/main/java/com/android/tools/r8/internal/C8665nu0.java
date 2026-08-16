package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;

public final class C8665nu0 {

    public static final boolean f51110c = true;

    public final C4798y f51111a;

    public final C6113Vw0 f51112b;

    public C8665nu0(C4798y c4798y, C6113Vw0 c6113Vw0) {
        this.f51111a = c4798y;
        this.f51112b = c6113Vw0;
    }

    public final boolean a(C7215fB c7215fB) {
        com.android.tools.r8.graph.E0 g10;
        for (AbstractC10561zE abstractC10561zE : c7215fB.q()) {
            if (abstractC10561zE.i()) {
                if (!a(abstractC10561zE.m())) {
                    return false;
                }
            } else if (abstractC10561zE.g2()) {
                C10471yk0 G02 = abstractC10561zE.G0();
                C4516j1 v10 = c7215fB.v();
                if (G02.v2()) {
                    continue;
                } else {
                    AbstractC8999pu0 u10 = G02.w2().u();
                    AbstractC8999pu0 a10 = AbstractC8999pu0.a(v10.getReference().f36127i.f36440e, C8854p10.h(), (C4798y<?>) this.f51111a);
                    if (!this.f51112b.a(u10, a10) && (!a10.s() || !u10.y() || (g10 = this.f51111a.g(v10.getReference().f36127i.f36440e)) == null || !g10.isInterface())) {
                        return false;
                    }
                }
            } else if (abstractC10561zE.e()) {
                if (!a(abstractC10561zE.L0())) {
                    return false;
                }
            } else if (abstractC10561zE.m2()) {
                AbstractC8999pu0 u11 = ((C10340xw0) abstractC10561zE.R0().f54321f.get(0)).u();
                if (!this.f51112b.a(u11, AbstractC8999pu0.a(this.f51111a.b().f38173v3, u11.B(), (C4798y<?>) this.f51111a))) {
                    return false;
                }
            } else {
                continue;
            }
        }
        return true;
    }

    public final boolean a(AbstractC7670hw abstractC7670hw) {
        com.android.tools.r8.graph.E0 g10;
        if (!f51110c && !abstractC7670hw.F1()) {
            throw new AssertionError();
        }
        AbstractC8999pu0 u10 = abstractC7670hw.value().u();
        AbstractC8999pu0 a10 = AbstractC8999pu0.a(abstractC7670hw.getField().f37449i, u10.B(), (C4798y<?>) this.f51111a);
        if (this.f51112b.a(u10, a10)) {
            return true;
        }
        return a10.s() && u10.y() && (g10 = this.f51111a.g(abstractC7670hw.getField().f37449i)) != null && g10.isInterface();
    }
}
