package com.android.tools.r8.internal;

public final class C5209Gf extends AbstractC4919Bf {

    public final AbstractC5151Ff f40550a;

    public final com.android.tools.r8.graph.H2 f40551b;

    public final int f40552c;

    public C5209Gf(AbstractC5151Ff abstractC5151Ff, com.android.tools.r8.graph.H2 h22, int i10) {
        this.f40550a = abstractC5151Ff;
        this.f40551b = h22;
        this.f40552c = i10;
    }

    @Override
    public final StringBuilder a(StringBuilder sb2) {
        StringBuilder a10 = this.f40550a.a(sb2);
        a10.append('$');
        a10.append(this.f40552c);
        return a10;
    }

    @Override
    public final StringBuilder b(StringBuilder sb2) {
        StringBuilder b10 = this.f40550a.b(sb2);
        b10.append('$');
        b10.append(this.f40552c);
        return b10;
    }

    public final String a() {
        return b(new StringBuilder()).toString();
    }
}
