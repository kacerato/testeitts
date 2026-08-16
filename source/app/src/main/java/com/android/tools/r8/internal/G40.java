package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class G40 extends AbstractC9617te {
    public G40(C4798y c4798y) {
        super(c4798y);
    }

    @Override
    public final String a() {
        return "OriginalFieldWitnessRemover";
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB) {
        C7549hB p10 = c7215fB.p();
        boolean z10 = false;
        while (p10.hasNext()) {
            AbstractC10561zE next = p10.next();
            next.getClass();
            if (next instanceof F40) {
                F40 B02 = next.B0();
                B02.d().f(B02.v2());
                p10.i();
                z10 = true;
            }
        }
        return z10 ? InterfaceC10118we.f53548b : InterfaceC10118we.f53547a;
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return c7215fB.f47902i.a(72);
    }
}
