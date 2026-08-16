package com.android.tools.r8.internal;

import com.android.tools.r8.internal.AbstractC9148qo0;
import java.util.Comparator;
import java.util.function.Function;

public final class C9314ro0 extends L70 {
    public C9314ro0(AbstractC9148qo0 abstractC9148qo0) {
        super(abstractC9148qo0);
    }

    @Override
    public final InterfaceC8853p1 a(com.android.tools.r8.graph.A2 a22) {
        C9815uo0 c9815uo0 = new C9815uo0();
        c9815uo0.f52954b = a22;
        return c9815uo0;
    }

    @Override
    public final InterfaceC8519n1 b(com.android.tools.r8.graph.M2 m22) {
        C9481so0 c9481so0 = new C9481so0();
        c9481so0.f52459b = m22;
        return c9481so0;
    }

    @Override
    public final InterfaceC8185l1 c() {
        return new AbstractC9148qo0.a();
    }

    @Override
    public final Comparator d() {
        return Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((InterfaceC9186r1) obj).b();
            }
        });
    }

    @Override
    public final L70 f() {
        return this;
    }

    @Override
    public final L70 a() {
        return new C9314ro0((AbstractC9148qo0) this.f41869a);
    }
}
