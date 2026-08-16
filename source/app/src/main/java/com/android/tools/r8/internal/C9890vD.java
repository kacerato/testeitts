package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;

public final class C9890vD extends AbstractC9617te {
    public C9890vD(C4798y c4798y) {
        super(c4798y);
    }

    @Override
    public final String a() {
        return "InitClassRemover";
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB) {
        C7549hB p10 = c7215fB.p();
        boolean z10 = false;
        while (p10.hasNext()) {
            C9389sD W10 = p10.next().W();
            if (W10 != null) {
                C4554l1 a10 = this.f52646a.f38417j.a(W10.f52317k);
                boolean z11 = C5576Mo0.f42407m;
                C5519Lo0 c5519Lo0 = new C5519Lo0();
                c5519Lo0.f42081d = a10;
                c5519Lo0.f52321a = c7215fB.a(a10.getType().b(this.f52646a), (C4515j0) null);
                C5576Mo0 c5576Mo0 = new C5576Mo0(c5519Lo0.f42081d, c5519Lo0.f52321a);
                B60 b60 = c5519Lo0.f52322b;
                if (b60 != null) {
                    c5576Mo0.b(b60);
                }
                p10.a(c5576Mo0, (C10696a) null);
                z10 = true;
            }
        }
        return z10 ? InterfaceC10118we.f53548b : InterfaceC10118we.f53547a;
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return c7215fB.f47902i.a(27);
    }
}
