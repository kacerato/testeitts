package com.google.android.gms.internal.measurement;

public final class M5 implements U5 {

    public final U5[] f62058a;

    public M5(U5... u5Arr) {
        this.f62058a = u5Arr;
    }

    @Override
    public final boolean a(Class cls) {
        for (int i10 = 0; i10 < 2; i10++) {
            if (this.f62058a[i10].a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final T5 b(Class cls) {
        for (int i10 = 0; i10 < 2; i10++) {
            U5 u52 = this.f62058a[i10];
            if (u52.a(cls)) {
                return u52.b(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }
}
