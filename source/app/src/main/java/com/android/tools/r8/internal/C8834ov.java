package com.android.tools.r8.internal;

public final class C8834ov extends AbstractC9997vt0 {

    public AbstractC9997vt0 f51382a;

    public final boolean f51383b;

    public final boolean f51384c;

    public final C5713Oz f51385d;

    public final C5009Cu0 f51386e;

    public final C9001pv f51387f;

    public C8834ov(C9001pv c9001pv, boolean z10, boolean z11, C5713Oz c5713Oz, C5009Cu0 c5009Cu0) {
        this.f51387f = c9001pv;
        this.f51383b = z10;
        this.f51384c = z11;
        this.f51385d = c5713Oz;
        this.f51386e = c5009Cu0;
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        if (this.f51383b) {
            c8240lL.y();
            return null;
        }
        AbstractC9997vt0 abstractC9997vt0 = this.f51382a;
        if (abstractC9997vt0 == null) {
            abstractC9997vt0 = this.f51385d.a(this.f51387f, this.f51386e);
            this.f51382a = abstractC9997vt0;
        }
        return abstractC9997vt0.a(c8240lL);
    }

    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        if (this.f51384c) {
            c9075qL.i();
            return;
        }
        AbstractC9997vt0 abstractC9997vt0 = this.f51382a;
        if (abstractC9997vt0 == null) {
            abstractC9997vt0 = this.f51385d.a(this.f51387f, this.f51386e);
            this.f51382a = abstractC9997vt0;
        }
        abstractC9997vt0.a(c9075qL, obj);
    }
}
