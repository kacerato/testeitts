package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C6839cx implements InterfaceC8638nl0 {

    public final InterfaceC8638nl0 f47211a;

    public final boolean f47212b;

    public final InterfaceC8676ny f47213c;

    public C6839cx(InterfaceC8638nl0 interfaceC8638nl0, boolean z10, InterfaceC8676ny interfaceC8676ny) {
        GJ.c(interfaceC8676ny, "predicate");
        this.f47211a = interfaceC8638nl0;
        this.f47212b = z10;
        this.f47213c = interfaceC8676ny;
    }

    @Override
    public final Iterator iterator() {
        return new C6673bx(this);
    }
}
