package com.android.tools.r8.internal;

public final class IU implements InterfaceC7763iW {

    public final InterfaceC7763iW[] f41109a;

    public IU(InterfaceC7763iW... interfaceC7763iWArr) {
        this.f41109a = interfaceC7763iWArr;
    }

    @Override
    public final void a(Class cls) {
        InterfaceC7763iW[] interfaceC7763iWArr = this.f41109a;
        for (int i10 = 0; i10 < 2; i10++) {
            InterfaceC7763iW interfaceC7763iW = interfaceC7763iWArr[i10];
            if (interfaceC7763iW.b(cls)) {
                interfaceC7763iW.a(cls);
                return;
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override
    public final boolean b(Class cls) {
        InterfaceC7763iW[] interfaceC7763iWArr = this.f41109a;
        for (int i10 = 0; i10 < 2; i10++) {
            if (interfaceC7763iWArr[i10].b(cls)) {
                return true;
            }
        }
        return false;
    }
}
