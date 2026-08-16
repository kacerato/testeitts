package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class P50 implements E1 {

    public final C9632tj f43118a;

    public P50(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C5939Sw c5939Sw, C6598bX c6598bX) {
        this.f43118a = new C9632tj(c4798y, h52, c5939Sw, c6598bX);
    }

    @Override
    public final InterfaceC5700Os0 a(I i10, D1 d12) {
        return (O50) d12;
    }

    @Override
    public final D1 a(Object obj, Object obj2, D1 d12) {
        EB V10;
        W5 w52 = (W5) obj;
        W5 w53 = (W5) obj2;
        O50 o50 = (O50) d12;
        o50.getClass();
        if (!(o50 instanceof C10337xv0) && (V10 = w53.i().V()) != null) {
            InterfaceC6078Vf a10 = this.f43118a.a((GE) V10);
            if (!a10.isUnknown()) {
                return o50.a(a10, w52 != V10.v2());
            }
        }
        return o50;
    }

    @Override
    public final D1 a(Object obj, I i10, D1 d12, Object obj2, com.android.tools.r8.graph.M2 m22) {
        return C10337xv0.f53875b;
    }

    @Override
    public final D1 a(Object obj, D1 d12) {
        return new C9289rg();
    }
}
