package com.android.tools.r8.synthesis;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.C8379mA;
import com.android.tools.r8.internal.InterfaceC5152Ff0;
import com.android.tools.r8.synthesis.S;
import java.util.function.Consumer;
import org.apache.commons.math3.geometry.VectorFormat;

public final class O extends AbstractC11602t implements Z {

    public static final boolean f58130e = true;

    public final H5 f58131d;

    public O(S.b bVar, C11579l c11579l, H5 h52) {
        super(bVar, c11579l);
        if (!f58130e && !bVar.g()) {
            throw new AssertionError();
        }
        this.f58131d = h52;
    }

    @Override
    public final int a(AbstractC11602t abstractC11602t, InterfaceC5152Ff0 interfaceC5152Ff0, InterfaceC5152Ff0 interfaceC5152Ff02) {
        return this.f58131d.d().a(((O) abstractC11602t).f58131d.d(), (InterfaceC5152Ff0<M2>) interfaceC5152Ff0, (InterfaceC5152Ff0<A2>) interfaceC5152Ff02);
    }

    @Override
    public final O b() {
        return this;
    }

    @Override
    public final Z c() {
        return this;
    }

    @Override
    public final com.android.tools.r8.graph.E0 d() {
        return this.f58131d.getHolder();
    }

    @Override
    public final boolean f() {
        C4516j1 d10 = this.f58131d.d();
        S.b bVar = this.f58331a;
        if (N.f58110r || bVar.g()) {
            return d10.w0() && d10.m1() && d10.H0() && d10.k0().isEmpty() && d10.U0().isEmpty();
        }
        throw new AssertionError();
    }

    @Override
    public final AbstractC11547a0 g() {
        return new P(this.f58331a, this.f58332b, this.f58131d.getReference());
    }

    @Override
    public final H2 getHolder() {
        return this.f58131d.getHolder();
    }

    public final String toString() {
        return "SyntheticMethodDefinition{" + ((Object) this.f58131d) + VectorFormat.DEFAULT_SUFFIX;
    }

    @Override
    public final void a(Consumer consumer, Consumer consumer2) {
        consumer.accept(this);
    }

    @Override
    public final void a(C8379mA c8379mA, InterfaceC5152Ff0 interfaceC5152Ff0) {
        this.f58131d.d().a(c8379mA, interfaceC5152Ff0);
    }
}
