package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;

public final class C10154wq extends AbstractC9617te {
    public C10154wq(C4798y c4798y) {
        super(c4798y);
    }

    @Override
    public final String a() {
        return "DexItemBasedConstStringRemover";
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB) {
        C7549hB p10 = c7215fB.p();
        boolean z10 = false;
        while (p10.hasNext()) {
            C9820uq O10 = p10.next().O();
            if (O10 != null) {
                p10.a(this.f52646a, c7215fB, O10.f52962m.a(O10.f52961l, this.f52646a), (C10696a) null);
                z10 = true;
            }
        }
        return z10 ? InterfaceC10118we.f53548b : InterfaceC10118we.f53547a;
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return c7215fB.f47902i.a(20);
    }
}
