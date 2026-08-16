package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;

public final class C9459sh extends AbstractC9617te {
    public C9459sh(C4798y c4798y) {
        super(c4798y);
    }

    @Override
    public final void a(C7215fB c7215fB, boolean z10, String str) {
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB) {
        C7549hB p10 = c7215fB.p();
        boolean z10 = false;
        while (p10.hasNext()) {
            AbstractC10561zE next = p10.next();
            if (next.w1()) {
                C9126qh J10 = next.J();
                C10340xw0 d10 = next.d();
                if (d10.C() && !d10.B()) {
                    AbstractC10561zE Z10 = d10.Z();
                    if (Z10.e() || Z10.a2() || (Z10.o1() && Z10.A().value() == d10)) {
                        p10.a(new C5731Pf0(J10.f54320e, J10.u2()), (C10696a) null);
                        z10 = true;
                    }
                }
            }
        }
        return z10 ? InterfaceC10118we.f53548b : InterfaceC10118we.f53547a;
    }

    @Override
    public final String a() {
        return "ConstResourceNumberRewriter";
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return this.f52646a.E().S() && c7215fB.j().d().f1() && C4932Bl.A(c7215fB.j().getHolder().getType().V0());
    }
}
