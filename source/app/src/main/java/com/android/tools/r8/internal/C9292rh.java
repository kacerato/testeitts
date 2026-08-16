package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;

public final class C9292rh extends AbstractC9617te {
    public C9292rh(C4798y c4798y) {
        super(c4798y);
    }

    @Override
    public final String a() {
        return "ConstResourceNumberRemover";
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB) {
        C7549hB p10 = c7215fB.p();
        boolean z10 = false;
        while (p10.hasNext()) {
            AbstractC10561zE next = p10.next();
            next.getClass();
            if (next instanceof C5731Pf0) {
                p10.a(new C9126qh(next.F0().f54320e, r0.f43306l), (C10696a) null);
                z10 = true;
            }
        }
        return z10 ? InterfaceC10118we.f53548b : InterfaceC10118we.f53547a;
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return c7215fB.f47902i.a(71);
    }
}
