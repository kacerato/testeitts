package com.android.tools.r8.internal;

public final class C6498au0 implements InterfaceC10164wt0 {

    public final Class f46644b;

    public final AbstractC9997vt0 f46645c;

    public C6498au0(Class cls, AbstractC9997vt0 abstractC9997vt0) {
        this.f46644b = cls;
        this.f46645c = abstractC9997vt0;
    }

    @Override
    public final AbstractC9997vt0 a(C5713Oz c5713Oz, C5009Cu0 c5009Cu0) {
        Class<?> cls = c5009Cu0.f39378a;
        if (this.f46644b.isAssignableFrom(cls)) {
            return new C6335Zt0(this, cls);
        }
        return null;
    }

    public final String toString() {
        return "Factory[typeHierarchy=" + this.f46644b.getName() + ",adapter=" + ((Object) this.f46645c) + "]";
    }
}
