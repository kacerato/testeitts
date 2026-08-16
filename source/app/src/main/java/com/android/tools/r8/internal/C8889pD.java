package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C8889pD implements Iterable {

    public final InterfaceC8342ly f51476b;

    public C8889pD(InterfaceC8342ly interfaceC8342ly) {
        GJ.c(interfaceC8342ly, "iteratorFactory");
        this.f51476b = interfaceC8342ly;
    }

    @Override
    public final Iterator iterator() {
        return new C9056qD((Iterator) this.f51476b.a());
    }
}
