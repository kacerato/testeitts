package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Iterator;

public final class RQ extends AbstractC9617te {

    public final com.android.tools.r8.graph.M2 f43893e;

    public final com.android.tools.r8.graph.M2 f43894f;

    public RQ(C4798y c4798y) {
        super(c4798y);
        this.f43893e = c4798y.b().d("Lkotlin/jvm/internal/InlineMarker;");
        this.f43894f = c4798y.b().f37858F3;
    }

    @Override
    public final String a() {
        return "KotlinInlineMarkerRewriter";
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB) {
        Iterator<W5> it = c7215fB.f47897d.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            Y5 I10 = it.next().I();
            while (I10.hasNext()) {
                C7405gK i02 = I10.next().i0();
                if (i02 != null && i02.B2().s0().a(this.f43893e)) {
                    I10.i();
                    z10 = true;
                }
            }
        }
        return z10 ? InterfaceC10118we.f53548b : InterfaceC10118we.f53547a;
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return this.f52648c.P() && c7215fB.j().getHolder().k0().c(this.f43894f);
    }
}
