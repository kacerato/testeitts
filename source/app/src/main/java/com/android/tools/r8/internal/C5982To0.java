package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;

public final class C5982To0 extends AbstractC9617te {
    public C5982To0(C4798y c4798y) {
        super(c4798y);
    }

    @Override
    public final String a() {
        return "StoreStoreFenceToInvokeRewriter";
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB) {
        C7549hB p10 = c7215fB.p();
        boolean z10 = false;
        while (p10.hasNext()) {
            AbstractC10561zE next = p10.next();
            next.getClass();
            if (next instanceof C5924So0) {
                C5924So0 N02 = next.N0();
                C10340xw0 W02 = N02.W0();
                W02.f53887d.remove(N02);
                W02.f53888e = null;
                boolean z11 = C7405gK.f48231o;
                C7238fK c7238fK = new C7238fK();
                c7238fK.f44718d = this.f52646a.b().f37964U4.f36736a;
                c7238fK.f52322b = N02.getPosition();
                p10.a(c7238fK.c(), (C10696a) null);
                z10 = true;
            }
        }
        return z10 ? InterfaceC10118we.f53548b : InterfaceC10118we.f53547a;
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return c7215fB.f47902i.a(73);
    }
}
