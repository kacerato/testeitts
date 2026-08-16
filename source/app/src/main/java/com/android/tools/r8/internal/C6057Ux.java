package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C6057Ux extends AbstractC6114Vx {

    public final Iterable[] f44911b;

    public C6057Ux(Iterable[] iterableArr) {
        this.f44911b = iterableArr;
    }

    @Override
    public final Iterator iterator() {
        return new GK(new C5999Tx(this, this.f44911b.length));
    }
}
