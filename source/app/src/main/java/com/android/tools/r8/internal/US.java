package com.android.tools.r8.internal;

public final class US implements InterfaceC5407Jq0 {
    @Override
    public final int a(Object obj, Object obj2, AbstractC8953pf abstractC8953pf) {
        N8 n82 = (N8) obj;
        N8 n83 = (N8) obj2;
        int a10 = abstractC8953pf.a(n82.f42510b, n83.f42510b);
        return a10 != 0 ? a10 : AbstractC8619nf.a(n82.f42511c, n83.f42511c);
    }

    @Override
    public final void a(Object obj, AbstractC9213rA abstractC9213rA) {
        N8 n82 = (N8) obj;
        AbstractC7552hC abstractC7552hC = n82.f42511c;
        for (int i10 = 0; i10 < abstractC7552hC.size(); i10++) {
            abstractC9213rA.a((com.android.tools.r8.graph.M2) n82.f42510b.get(i10));
            ((C9547tA) abstractC9213rA).f52553a.a(((Integer) abstractC7552hC.get(i10)).intValue());
        }
    }
}
