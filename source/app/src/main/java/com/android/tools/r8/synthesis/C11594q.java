package com.android.tools.r8.synthesis;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.C8379mA;
import com.android.tools.r8.internal.InterfaceC5152Ff0;
import com.android.tools.r8.synthesis.S;

public final class C11594q extends AbstractC11585n implements InterfaceC11599s {
    public C11594q(S.b bVar, C11579l c11579l, com.android.tools.r8.graph.I0 i02) {
        super(bVar, c11579l, i02);
    }

    @Override
    public final InterfaceC11599s a() {
        return this;
    }

    @Override
    public final boolean f() {
        return ((com.android.tools.r8.graph.I0) this.f58305d).w1() && ((com.android.tools.r8.graph.I0) this.f58305d).p1() && ((com.android.tools.r8.graph.I0) this.f58305d).f36246f.o();
    }

    @Override
    public final AbstractC11547a0 g() {
        return new r(this.f58331a, this.f58332b, ((com.android.tools.r8.graph.I0) this.f58305d).getType());
    }

    public final String toString() {
        return "SyntheticClasspathClass{ clazz = " + ((com.android.tools.r8.graph.I0) this.f58305d).f36245e.j0() + ", kind = " + ((Object) this.f58331a) + ", context = " + ((Object) this.f58332b) + " }";
    }

    @Override
    public final int a(AbstractC11602t abstractC11602t, InterfaceC5152Ff0 interfaceC5152Ff0, InterfaceC5152Ff0 interfaceC5152Ff02) {
        return ((com.android.tools.r8.graph.I0) this.f58305d).a((com.android.tools.r8.graph.I0) ((C11594q) abstractC11602t).f58305d, (InterfaceC5152Ff0<M2>) interfaceC5152Ff0, (InterfaceC5152Ff0<A2>) interfaceC5152Ff02);
    }

    @Override
    public final void a(C8379mA c8379mA, InterfaceC5152Ff0 interfaceC5152Ff0) {
        ((com.android.tools.r8.graph.I0) this.f58305d).a(c8379mA, interfaceC5152Ff0);
    }
}
