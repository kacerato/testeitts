package com.android.tools.r8.internal;

import java.util.function.Consumer;

public final class G70 implements K70 {

    public final InterfaceC9020q1 f40395a;

    public final L70 f40396b;

    public G70(L70 l70, InterfaceC9020q1 interfaceC9020q1) {
        this.f40396b = l70;
        this.f40395a = interfaceC9020q1;
    }

    @Override
    public final K70 a(com.android.tools.r8.graph.M2 m22) {
        this.f40396b.a(m22);
        return this;
    }

    @Override
    public final K70 a(com.android.tools.r8.graph.A2 a22) {
        L70 l70 = this.f40396b;
        final InterfaceC9020q1 interfaceC9020q1 = this.f40395a;
        l70.a(a22, new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((InterfaceC8853p1) obj).a(InterfaceC9020q1.this);
            }
        });
        return this;
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.A2 a22) {
        this.f40396b.a(h52, a22);
    }
}
