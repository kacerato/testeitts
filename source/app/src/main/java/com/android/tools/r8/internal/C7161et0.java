package com.android.tools.r8.internal;

public final class C7161et0 extends AbstractC10140wl0 {

    public final InterfaceC6740cL f47795a;

    public final C5713Oz f47796b;

    public final C5009Cu0 f47797c;

    public final C6994dt0 f47798d;

    public final C6828ct0 f47799e = new C6828ct0(this);

    public final boolean f47800f;

    public volatile AbstractC9997vt0 f47801g;

    public C7161et0(InterfaceC6740cL interfaceC6740cL, C5713Oz c5713Oz, C5009Cu0 c5009Cu0, C6994dt0 c6994dt0, boolean z10) {
        this.f47795a = interfaceC6740cL;
        this.f47796b = c5713Oz;
        this.f47797c = c5009Cu0;
        this.f47798d = c6994dt0;
        this.f47800f = z10;
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        if (this.f47795a == null) {
            AbstractC9997vt0 abstractC9997vt0 = this.f47801g;
            if (abstractC9997vt0 == null) {
                abstractC9997vt0 = this.f47796b.a(this.f47798d, this.f47797c);
                this.f47801g = abstractC9997vt0;
            }
            return abstractC9997vt0.a(c8240lL);
        }
        AbstractC6907dL a10 = AbstractC6325Zo0.a(c8240lL);
        if (this.f47800f) {
            a10.getClass();
            if (a10 instanceof C7240fL) {
                return null;
            }
        }
        return this.f47795a.a(a10, this.f47797c.f39379b, this.f47799e);
    }

    @Override
    public final AbstractC9997vt0 a() {
        AbstractC9997vt0 abstractC9997vt0 = this.f47801g;
        if (abstractC9997vt0 != null) {
            return abstractC9997vt0;
        }
        AbstractC9997vt0 a10 = this.f47796b.a(this.f47798d, this.f47797c);
        this.f47801g = a10;
        return a10;
    }

    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        AbstractC9997vt0 abstractC9997vt0 = this.f47801g;
        if (abstractC9997vt0 == null) {
            abstractC9997vt0 = this.f47796b.a(this.f47798d, this.f47797c);
            this.f47801g = abstractC9997vt0;
        }
        abstractC9997vt0.a(c9075qL, obj);
    }
}
