package com.android.tools.r8.internal;

public final class C6335Zt0 extends AbstractC9997vt0 {

    public final Class f46365a;

    public final C6498au0 f46366b;

    public C6335Zt0(C6498au0 c6498au0, Class cls) {
        this.f46366b = c6498au0;
        this.f46365a = cls;
    }

    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        this.f46366b.f46645c.a(c9075qL, obj);
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        Object a10 = this.f46366b.f46645c.a(c8240lL);
        if (a10 == null || this.f46365a.isInstance(a10)) {
            return a10;
        }
        throw new C8407mL("Expected a " + this.f46365a.getName() + " but was " + a10.getClass().getName() + "; at path " + c8240lL.j());
    }
}
