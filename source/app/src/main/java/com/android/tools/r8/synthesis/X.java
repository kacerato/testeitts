package com.android.tools.r8.synthesis;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.C8379mA;
import com.android.tools.r8.internal.InterfaceC5152Ff0;
import com.android.tools.r8.synthesis.S;
import java.util.function.Consumer;

public final class X extends AbstractC11585n implements Z {
    public X(S.b bVar, C11579l c11579l, H2 h22) {
        super(bVar, c11579l, h22);
    }

    @Override
    public final int a(AbstractC11602t abstractC11602t, InterfaceC5152Ff0 interfaceC5152Ff0, InterfaceC5152Ff0 interfaceC5152Ff02) {
        return ((H2) this.f58305d).a((H2) ((X) abstractC11602t).f58305d, (InterfaceC5152Ff0<M2>) interfaceC5152Ff0, (InterfaceC5152Ff0<A2>) interfaceC5152Ff02);
    }

    @Override
    public final Z c() {
        return this;
    }

    @Override
    public final boolean e() {
        return true;
    }

    @Override
    public final boolean f() {
        if (((H2) this.f58305d).w1() && ((H2) this.f58305d).f36246f.o()) {
            return ((H2) this.f58305d).p1() || ((H2) this.f58305d).l1();
        }
        return false;
    }

    @Override
    public final AbstractC11547a0 g() {
        return new Y(this.f58331a, this.f58332b, ((H2) this.f58305d).getType());
    }

    @Override
    public final H2 getHolder() {
        return (H2) this.f58305d;
    }

    public final String toString() {
        return "SyntheticProgramClass{ clazz = " + ((H2) this.f58305d).f36245e.j0() + ", kind = " + ((Object) this.f58331a) + ", context = " + ((Object) this.f58332b) + " }";
    }

    @Override
    public final void a(Consumer consumer, Consumer consumer2) {
        consumer2.accept(this);
    }

    @Override
    public final void a(C8379mA c8379mA, InterfaceC5152Ff0 interfaceC5152Ff0) {
        ((H2) this.f58305d).a(c8379mA, interfaceC5152Ff0);
    }
}
