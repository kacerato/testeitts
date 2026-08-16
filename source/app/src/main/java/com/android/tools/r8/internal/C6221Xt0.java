package com.android.tools.r8.internal;

public final class C6221Xt0 implements InterfaceC10164wt0 {

    public final Class f45847b;

    public final Class f45848c;

    public final AbstractC9997vt0 f45849d;

    public C6221Xt0(Class cls, Class cls2, AbstractC9997vt0 abstractC9997vt0) {
        this.f45847b = cls;
        this.f45848c = cls2;
        this.f45849d = abstractC9997vt0;
    }

    @Override
    public final AbstractC9997vt0 a(C5713Oz c5713Oz, C5009Cu0 c5009Cu0) {
        Class cls = c5009Cu0.f39378a;
        if (cls == this.f45847b || cls == this.f45848c) {
            return this.f45849d;
        }
        return null;
    }

    public final String toString() {
        return "Factory[type=" + this.f45848c.getName() + "+" + this.f45847b.getName() + ",adapter=" + ((Object) this.f45849d) + "]";
    }
}
