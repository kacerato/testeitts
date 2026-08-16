package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC5746Pm0;
import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.C5051Dm0;
import com.android.tools.r8.internal.C5283Hm0;
import com.android.tools.r8.internal.C5341Im0;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C8854p10;
import com.android.tools.r8.internal.X3;
import com.android.tools.r8.internal.Y5;

public final class r0 implements p0 {

    public static final boolean f54923c = true;

    public final AbstractC5746Pm0 f54924a;

    public final s0 f54925b;

    public r0(s0 s0Var, AbstractC5746Pm0 abstractC5746Pm0) {
        this.f54925b = s0Var;
        if (!f54923c) {
            t0 t0Var = s0Var.f54939i;
            int i10 = t0.f54941e;
            if (!abstractC5746Pm0.b(t0Var.f52646a.M(), s0Var.f54931a)) {
                throw new AssertionError();
            }
        }
        this.f54924a = abstractC5746Pm0;
    }

    @Override
    public final void a(Y5 y52, AbstractC10561zE abstractC10561zE) {
        AbstractC5746Pm0 abstractC5746Pm0 = this.f54924a;
        t0 t0Var = this.f54925b.f54939i;
        int i10 = t0.f54941e;
        C4798y L10 = t0Var.f52646a.L();
        C7215fB c7215fB = this.f54925b.f54932b;
        abstractC5746Pm0.getClass();
        AbstractC10561zE[] a10 = abstractC5746Pm0.a(L10, c7215fB.j(), c7215fB, abstractC10561zE);
        if (!f54923c && a10.length != 1) {
            throw new AssertionError();
        }
        boolean z10 = X3.f45604a;
        y52.a(a10[0], this.f54925b.f54934d);
        this.f54925b.f54938h = true;
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y, AbstractC8999pu0 abstractC8999pu0) {
        C4724u1 b10 = c4798y.b();
        if (!this.f54924a.g0()) {
            AbstractC5746Pm0 abstractC5746Pm0 = this.f54924a;
            abstractC5746Pm0.getClass();
            if (!(abstractC5746Pm0 instanceof C5051Dm0)) {
                if (this.f54924a.f0()) {
                    return AbstractC8999pu0.a(this.f54924a.N().f40306c.getType(), C8854p10.h(), (C4798y<?>) c4798y);
                }
                boolean z10 = f54923c;
                if (!z10) {
                    AbstractC5746Pm0 abstractC5746Pm02 = this.f54924a;
                    abstractC5746Pm02.getClass();
                    if (!(abstractC5746Pm02 instanceof C5341Im0)) {
                        throw new AssertionError();
                    }
                }
                if (abstractC8999pu0.y()) {
                    if (!z10) {
                        AbstractC5746Pm0 abstractC5746Pm03 = this.f54924a;
                        abstractC5746Pm03.getClass();
                        if (!(abstractC5746Pm03 instanceof C5283Hm0)) {
                            throw new AssertionError();
                        }
                    }
                    return AbstractC8999pu0.m();
                }
                if (z10 || abstractC8999pu0.x()) {
                    return abstractC8999pu0;
                }
                throw new AssertionError();
            }
        }
        M2 m22 = b10.f38052g2;
        t0 t0Var = this.f54925b.f54939i;
        int i10 = t0.f54941e;
        C4798y c4798y2 = t0Var.f52646a;
        C8854p10 b11 = C8854p10.b();
        m22.getClass();
        return AbstractC8999pu0.a(m22, b11, (C4798y<?>) c4798y2);
    }
}
