package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Iterator;
import java.util.function.IntConsumer;

public final class C5822Qv0 implements X9 {

    public final AbstractC7552hC f43763b;

    public C5822Qv0(C4798y c4798y) {
        int i10 = AbstractC7552hC.f48487c;
        C7051eC c7051eC = new C7051eC();
        C8570nJ E10 = c4798y.E();
        E10.getClass();
        C2 c22 = C2.O;
        if (!E10.c(c22)) {
            c7051eC.a(new C5706Ov0(c4798y));
        }
        C8570nJ E11 = c4798y.E();
        E11.getClass();
        if (!E11.c(c22)) {
            c7051eC.a(new C5764Pv0(c4798y));
        }
        C8570nJ E12 = c4798y.E();
        E12.getClass();
        C2 c23 = C2.P;
        if (!E12.c(c23)) {
            c7051eC.a(new C5532Lv0(c4798y));
        }
        C8570nJ E13 = c4798y.E();
        E13.getClass();
        if (!E13.c(c23)) {
            c7051eC.a(new C5590Mv0(c4798y));
        }
        if (!c4798y.E().c((C2) null)) {
            c7051eC.a(new C5475Kv0(c4798y));
        }
        this.f43763b = c7051eC.a();
    }

    @Override
    public final void a(IntConsumer intConsumer) {
        AbstractC4962Ca.b(intConsumer);
        intConsumer.accept(186);
    }

    @Override
    public final void b(IntConsumer intConsumer) {
        intConsumer.accept(206);
        intConsumer.accept(205);
        intConsumer.accept(204);
    }

    @Override
    public final C6473am a(com.android.tools.r8.graph.H5 h52, W9 w92) {
        Iterator it = this.f43763b.iterator();
        while (it.hasNext()) {
            C6204Xl a10 = ((AbstractC5648Nv0) it.next()).a(w92);
            if (a10 != null) {
                return a10;
            }
        }
        return C6473am.f46625a;
    }
}
