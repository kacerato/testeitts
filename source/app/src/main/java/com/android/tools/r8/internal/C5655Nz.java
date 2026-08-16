package com.android.tools.r8.internal;

public final class C5655Nz extends AbstractC10140wl0 {

    public AbstractC9997vt0 f42750a = null;

    @Override
    public final AbstractC9997vt0 a() {
        AbstractC9997vt0 abstractC9997vt0 = this.f42750a;
        if (abstractC9997vt0 != null) {
            return abstractC9997vt0;
        }
        throw new IllegalStateException("Adapter for type with cyclic dependency has been used before dependency has been resolved");
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        AbstractC9997vt0 abstractC9997vt0 = this.f42750a;
        if (abstractC9997vt0 != null) {
            return abstractC9997vt0.a(c8240lL);
        }
        throw new IllegalStateException("Adapter for type with cyclic dependency has been used before dependency has been resolved");
    }

    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        AbstractC9997vt0 abstractC9997vt0 = this.f42750a;
        if (abstractC9997vt0 != null) {
            abstractC9997vt0.a(c9075qL, obj);
            return;
        }
        throw new IllegalStateException("Adapter for type with cyclic dependency has been used before dependency has been resolved");
    }
}
