package com.android.tools.r8.internal;

public final class C5992Tt0 implements InterfaceC10164wt0 {
    @Override
    public final AbstractC9997vt0 a(C5713Oz c5713Oz, C5009Cu0 c5009Cu0) {
        Class cls = c5009Cu0.f39378a;
        if (!Enum.class.isAssignableFrom(cls) || cls == Enum.class) {
            return null;
        }
        if (!cls.isEnum()) {
            cls = cls.getSuperclass();
        }
        return new C7997ju0(cls);
    }
}
