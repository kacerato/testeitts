package com.android.tools.r8.internal;

public final class QQ extends NQ {

    public final com.android.tools.r8.kotlin.S f43574b;

    public ML f43575c;

    public final int f43576d;

    public QQ(com.android.tools.r8.kotlin.S s10) {
        super(0);
        this.f43574b = s10;
        this.f43575c = new ML(s10.f55164b);
        this.f43576d = s10.f55167e;
    }

    @Override
    public final ML a() {
        return this.f43575c;
    }

    @Override
    public final KL b() {
        OQ.a(this.f43575c);
        Integer valueOf = Integer.valueOf(this.f43574b.f55163a);
        ML ml2 = this.f43575c;
        int[] iArr = {ml2.f42275b, ml2.f42276c, ml2.f42277d};
        com.android.tools.r8.kotlin.S s10 = this.f43574b;
        return LL.a(valueOf, iArr, s10.f55165c, s10.f55166d, s10.f55168f, s10.f55169g, Integer.valueOf(this.f43576d));
    }

    @Override
    public final void a(ML ml2) {
        GJ.c(ml2, "<set-?>");
        this.f43575c = ml2;
    }
}
