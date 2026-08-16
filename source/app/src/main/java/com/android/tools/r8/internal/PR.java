package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Collections;
import java.util.Set;
import java.util.function.BiFunction;

public final class PR {

    public static final boolean f43206f = true;

    public final C7215fB f43207a;

    public final AbstractC10561zE f43208b;

    public final EE f43209c;

    public final Set f43210d;

    public final QR f43211e;

    public PR(QR qr, C7215fB c7215fB, AbstractC10561zE abstractC10561zE, EE ee2, Set set) {
        this.f43211e = qr;
        this.f43207a = c7215fB;
        this.f43208b = abstractC10561zE;
        this.f43209c = ee2;
        this.f43210d = set;
    }

    public final AbstractC10561zE a(com.android.tools.r8.graph.M2 m22, BiFunction biFunction, R00 r00, AbstractC5308Hz abstractC5308Hz) {
        com.android.tools.r8.graph.M2 c10 = r00.c(abstractC5308Hz, m22);
        C10340xw0 c10340xw0 = null;
        if (c10 == m22) {
            return null;
        }
        QR qr = this.f43211e;
        AbstractC10561zE abstractC10561zE = this.f43208b;
        C7215fB c7215fB = this.f43207a;
        qr.getClass();
        if (abstractC10561zE.e1()) {
            AbstractC8999pu0 a10 = abstractC10561zE.a();
            C4798y c4798y = qr.f43579a;
            a10.getClass();
            c10340xw0 = c7215fB.a(a10.a(c4798y, r00, abstractC5308Hz, Collections.EMPTY_SET), abstractC10561zE.q());
        }
        AbstractC10561zE abstractC10561zE2 = (AbstractC10561zE) biFunction.apply(c10, c10340xw0);
        this.f43209c.b(abstractC10561zE2);
        if (c10340xw0 != null) {
            if (!c10340xw0.u().equals(this.f43208b.a())) {
                this.f43210d.addAll(c10340xw0.a0());
                return abstractC10561zE2;
            }
            boolean z10 = f43206f;
            if (!z10 && !this.f43208b.d1()) {
                throw new AssertionError();
            }
            if (!z10) {
                AbstractC10561zE abstractC10561zE3 = this.f43208b;
                if (!(abstractC10561zE3 instanceof C7957jh) && !abstractC10561zE3.I1()) {
                    AbstractC10561zE abstractC10561zE4 = this.f43208b;
                    if (!(abstractC10561zE4 instanceof C8391mE) && (!abstractC10561zE4.T1() || !this.f43208b.k0().B2().f38297f.E0())) {
                        throw new AssertionError();
                    }
                }
            }
        }
        return abstractC10561zE2;
    }
}
