package com.android.tools.r8.internal;

public final class C6164Wt0 implements InterfaceC10164wt0 {

    public final Class f45566b;

    public final AbstractC9997vt0 f45567c;

    public C6164Wt0(Class cls, AbstractC9997vt0 abstractC9997vt0) {
        this.f45566b = cls;
        this.f45567c = abstractC9997vt0;
    }

    @Override
    public final AbstractC9997vt0 a(C5713Oz c5713Oz, C5009Cu0 c5009Cu0) {
        if (c5009Cu0.f39378a == this.f45566b) {
            return this.f45567c;
        }
        return null;
    }

    public final String toString() {
        return "Factory[type=" + this.f45566b.getName() + ",adapter=" + ((Object) this.f45567c) + "]";
    }
}
