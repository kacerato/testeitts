package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C4898Ax implements InterfaceC8638nl0 {

    public final InterfaceC8638nl0 f38745a;

    public final InterfaceC8676ny f38746b;

    public final InterfaceC8676ny f38747c;

    public C4898Ax(InterfaceC8638nl0 interfaceC8638nl0, InterfaceC8676ny interfaceC8676ny, InterfaceC8676ny interfaceC8676ny2) {
        GJ.c(interfaceC8638nl0, "sequence");
        GJ.c(interfaceC8676ny, "transformer");
        GJ.c(interfaceC8676ny2, "iterator");
        this.f38745a = interfaceC8638nl0;
        this.f38746b = interfaceC8676ny;
        this.f38747c = interfaceC8676ny2;
    }

    @Override
    public final Iterator iterator() {
        return new C10676zx(this);
    }
}
