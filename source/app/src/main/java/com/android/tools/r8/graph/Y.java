package com.android.tools.r8.graph;

import java.util.function.Consumer;

public abstract class Y implements InterfaceC4364b0 {

    public final E0 f36973b;

    public final C4725u2 f36974c;

    public Y(E0 e02, C4725u2 c4725u2) {
        this.f36973b = e02;
        this.f36974c = c4725u2;
    }

    @Override
    public final boolean X() {
        return true;
    }

    @Override
    public final void a(Consumer consumer) {
        consumer.accept(this.f36973b);
        consumer.accept(this.f36974c);
    }

    @Override
    public final boolean n() {
        return true;
    }
}
