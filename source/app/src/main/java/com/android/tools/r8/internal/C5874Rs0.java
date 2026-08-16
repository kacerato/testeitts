package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C5874Rs0 implements InterfaceC8638nl0 {

    public final InterfaceC8638nl0 f44012a;

    public final InterfaceC8676ny f44013b;

    public C5874Rs0(InterfaceC8638nl0 interfaceC8638nl0, InterfaceC8676ny interfaceC8676ny) {
        GJ.c(interfaceC8676ny, "transformer");
        this.f44012a = interfaceC8638nl0;
        this.f44013b = interfaceC8676ny;
    }

    @Override
    public final Iterator iterator() {
        return new C5816Qs0(this);
    }
}
