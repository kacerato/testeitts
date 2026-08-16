package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.startup.StartupMethodBuilder;

public final class C9815uo0 implements InterfaceC8853p1, StartupMethodBuilder {

    public static final boolean f52952c = true;

    public final C4724u1 f52953a;

    public com.android.tools.r8.graph.A2 f52954b;

    public C9815uo0() {
        this.f52953a = null;
    }

    @Override
    public final InterfaceC8853p1 a() {
        return this;
    }

    @Override
    public final InterfaceC9020q1 build() {
        return new C9982vo0(this.f52954b);
    }

    @Override
    public final StartupMethodBuilder setMethodReference(MethodReference methodReference) {
        if (!f52952c && this.f52953a == null) {
            throw new AssertionError();
        }
        this.f52954b = C7598hX.a(methodReference, this.f52953a);
        return this;
    }

    @Override
    public final InterfaceC8853p1 a(InterfaceC8853p1 interfaceC8853p1) {
        return this;
    }

    public C9815uo0(C4724u1 c4724u1) {
        this.f52953a = c4724u1;
    }

    @Override
    public final InterfaceC8853p1 a(InterfaceC8853p1 interfaceC8853p1, Runnable runnable) {
        return this;
    }

    @Override
    public final InterfaceC8853p1 a(InterfaceC9020q1 interfaceC9020q1) {
        return this;
    }

    @Override
    public final InterfaceC8853p1 a(com.android.tools.r8.graph.A2 a22) {
        this.f52954b = a22;
        return this;
    }
}
