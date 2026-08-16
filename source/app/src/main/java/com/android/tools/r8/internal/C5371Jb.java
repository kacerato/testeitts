package com.android.tools.r8.internal;

import java.util.function.Consumer;

public final class C5371Jb implements InterfaceC5429Kb {

    public final Consumer f41428a;

    public C5371Jb(Consumer consumer) {
        this.f41428a = consumer;
    }

    @Override
    public final InterfaceC5429Kb a(String str) {
        this.f41428a.accept(str);
        return this;
    }
}
