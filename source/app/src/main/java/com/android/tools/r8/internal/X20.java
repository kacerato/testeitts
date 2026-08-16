package com.android.tools.r8.internal;

import java.util.Iterator;

public final class X20 extends Z0 {

    public final C6692c30 f45601c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public X20(C6692c30 c6692c30) {
        super(c6692c30);
        this.f45601c = c6692c30;
    }

    @Override
    public final InterfaceC9861v30 iterator() {
        return new C6359a30(this.f45601c);
    }

    @Override
    public final A30 iterator() {
        return new C6359a30(this.f45601c);
    }

    @Override
    public final Iterator iterator() {
        return new C6359a30(this.f45601c);
    }
}
