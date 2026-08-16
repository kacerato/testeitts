package com.android.tools.r8.internal;

public final class C8705o70 extends AbstractC8037k70 {

    public final C9205r70 f51172c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8705o70(C9205r70 c9205r70) {
        super(c9205r70);
        this.f51172c = c9205r70;
    }

    @Override
    public final void a(C5058Dq c5058Dq, com.android.tools.r8.graph.E0 e02) {
        com.android.tools.r8.graph.E0 g10;
        c5058Dq.a(e02.z1());
        if (e02.a1() == null || (g10 = this.f51172c.f51972b.g(e02.a1())) == null) {
            return;
        }
        c5058Dq.f39661b.addAll(a(g10).f39661b);
    }
}
