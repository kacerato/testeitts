package com.google.android.gms.internal.auth;

public final class U1 implements InterfaceC11917b2 {

    public final InterfaceC11917b2[] f61670a;

    public U1(InterfaceC11917b2... interfaceC11917b2Arr) {
        this.f61670a = interfaceC11917b2Arr;
    }

    @Override
    public final InterfaceC11913a2 a(Class cls) {
        InterfaceC11917b2[] interfaceC11917b2Arr = this.f61670a;
        for (int i10 = 0; i10 < 2; i10++) {
            InterfaceC11917b2 interfaceC11917b2 = interfaceC11917b2Arr[i10];
            if (interfaceC11917b2.b(cls)) {
                return interfaceC11917b2.a(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override
    public final boolean b(Class cls) {
        InterfaceC11917b2[] interfaceC11917b2Arr = this.f61670a;
        for (int i10 = 0; i10 < 2; i10++) {
            if (interfaceC11917b2Arr[i10].b(cls)) {
                return true;
            }
        }
        return false;
    }
}
