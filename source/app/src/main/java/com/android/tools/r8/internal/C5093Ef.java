package com.android.tools.r8.internal;

public final class C5093Ef extends AbstractC4919Bf {

    public static final boolean f39964c = true;

    public final C5267Hf f39965a;

    public final int f39966b;

    public C5093Ef(C5267Hf c5267Hf, int i10) {
        this.f39965a = c5267Hf;
        this.f39966b = i10;
    }

    public final void a(AbstractC4919Bf abstractC4919Bf) {
        if (f39964c) {
            return;
        }
        this.f39965a.a(abstractC4919Bf);
    }

    @Override
    public final StringBuilder b(StringBuilder sb2) {
        sb2.append('$');
        sb2.append(this.f39966b);
        return sb2;
    }

    public final C5035Df a(com.android.tools.r8.graph.H5 h52) {
        C5035Df c5035Df = new C5035Df(this, h52);
        if (!f39964c) {
            a(c5035Df);
        }
        return c5035Df;
    }

    @Override
    public final StringBuilder a(StringBuilder sb2) {
        sb2.append('$');
        sb2.append(this.f39966b);
        return sb2;
    }
}
