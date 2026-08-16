package com.android.tools.r8.internal;

import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

public final class C10331xt0 extends AbstractC9997vt0 {

    public final C5713Oz f53866a;

    public final AbstractC9997vt0 f53867b;

    public final Type f53868c;

    public C10331xt0(C5713Oz c5713Oz, AbstractC9997vt0 abstractC9997vt0, Type type) {
        this.f53866a = c5713Oz;
        this.f53867b = abstractC9997vt0;
        this.f53868c = type;
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        return this.f53867b.a(c8240lL);
    }

    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        AbstractC9997vt0 a10;
        AbstractC9997vt0 abstractC9997vt0 = this.f53867b;
        Type type = this.f53868c;
        if (obj != null && ((type instanceof Class) || (type instanceof TypeVariable))) {
            type = obj.getClass();
        }
        if (type != this.f53868c) {
            abstractC9997vt0 = this.f53866a.a(new C5009Cu0(type));
            if (abstractC9997vt0 instanceof AbstractC5033De0) {
                AbstractC9997vt0 abstractC9997vt02 = this.f53867b;
                while ((abstractC9997vt02 instanceof AbstractC10140wl0) && (a10 = ((AbstractC10140wl0) abstractC9997vt02).a()) != abstractC9997vt02) {
                    abstractC9997vt02 = a10;
                }
                if (!(abstractC9997vt02 instanceof AbstractC5033De0)) {
                    abstractC9997vt0 = this.f53867b;
                }
            }
        }
        abstractC9997vt0.a(c9075qL, obj);
    }
}
