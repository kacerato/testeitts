package com.android.tools.r8.internal;

public final class C9830ut0 extends AbstractC9997vt0 {

    public final AbstractC9997vt0 f52981a;

    public C9830ut0(AbstractC9997vt0 abstractC9997vt0) {
        this.f52981a = abstractC9997vt0;
    }

    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        if (obj == null) {
            c9075qL.i();
        } else {
            this.f52981a.a(c9075qL, obj);
        }
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        return this.f52981a.a(c8240lL);
    }
}
