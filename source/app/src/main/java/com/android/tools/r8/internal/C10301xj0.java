package com.android.tools.r8.internal;

import java.util.List;
import java.util.function.Consumer;

public final class C10301xj0 extends ZQ implements InterfaceC8676ny {

    public final Consumer f53827b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10301xj0(Consumer consumer) {
        super(1);
        this.f53827b = consumer;
    }

    @Override
    public final Object a(Object obj) {
        List list = (List) obj;
        GJ.c(list, "it");
        this.f53827b.accept(list);
        return C7833iv0.f49115a;
    }
}
