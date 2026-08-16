package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import com.android.tools.r8.shaking.C11130b3;

public final class C6688c2 extends AbstractC9617te {

    public final C11130b3 f46938e;

    public C6688c2(C4798y c4798y) {
        super(c4798y);
        this.f46938e = c4798y.E().B().a();
    }

    @Override
    public final String a() {
        return "AdaptClassStringsRewriter";
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB) {
        C7549hB p10 = c7215fB.p();
        boolean z10 = false;
        while (p10.hasNext()) {
            C9960vh K10 = p10.next().K();
            if (K10 != null) {
                com.android.tools.r8.graph.L2 a10 = com.android.tools.r8.naming.D.a(this.f52646a, K10.u2());
                if (!a10.g(K10.u2())) {
                    p10.a(this.f52646a, c7215fB, a10, (C10696a) null);
                    z10 = true;
                }
            }
        }
        return z10 ? InterfaceC10118we.f53548b : InterfaceC10118we.f53547a;
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return this.f46938e.f57189a.size() != 0 && this.f46938e.a(c7215fB.j().p()) && c7215fB.f47902i.a(16);
    }
}
