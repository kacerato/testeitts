package com.android.tools.r8.internal;

import java.util.function.Consumer;

public final class H70 implements K70 {

    public final com.android.tools.r8.graph.A2 f40684a;

    public final L70 f40685b;

    public H70(L70 l70, com.android.tools.r8.graph.A2 a22) {
        this.f40685b = l70;
        this.f40684a = a22;
    }

    @Override
    public final K70 a(com.android.tools.r8.graph.M2 m22) {
        this.f40685b.a(m22);
        return this;
    }

    @Override
    public final K70 a(com.android.tools.r8.graph.A2 a22) {
        final InterfaceC8853p1 interfaceC8853p1 = (InterfaceC8853p1) this.f40685b.f41871c.get(this.f40684a);
        this.f40685b.a(a22, new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((InterfaceC8853p1) obj).a(InterfaceC8853p1.this);
            }
        });
        this.f40685b.f41873e.a(a22, this.f40684a);
        return this;
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.A2 a22) {
        this.f40685b.a(h52, a22);
    }
}
