package com.android.tools.r8.graph;

import com.android.tools.r8.dex.C4324y;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.C9547tA;
import java.util.Objects;

public final class C4367b3 extends AbstractC4348a3 {

    public final int f37073d;

    public C4367b3(int i10) {
        this.f37073d = i10;
    }

    @Override
    public final C4367b3 B0() {
        return this;
    }

    @Override
    public final Object F0() {
        return Integer.valueOf(this.f37073d);
    }

    @Override
    public final V2 G0() {
        return V2.f36903v;
    }

    @Override
    public final com.android.tools.r8.internal.F1 a(com.android.tools.r8.internal.G1 g12) {
        return g12.b(this.f37073d);
    }

    @Override
    public final int b(R2 r22, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this.f37073d, r22.B0().f37073d);
    }

    @Override
    public final void c(AbstractC9213rA abstractC9213rA) {
        ((C9547tA) abstractC9213rA).f52553a.a(this.f37073d);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof C4367b3) && this.f37073d == ((C4367b3) obj).f37073d;
    }

    @Override
    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f37073d), V2.f36903v);
    }

    @Override
    public final Object k0() {
        return Integer.valueOf(this.f37073d);
    }

    @Override
    public final String toString() {
        return "ResourceNumber " + this.f37073d;
    }

    @Override
    public final void a(C4324y c4324y, C4766w5 c4766w5) {
        AbstractC4348a3.a(V2.f36887f, this.f37073d, 4, c4324y);
    }

    @Override
    public final M2 a(C4724u1 c4724u1) {
        return c4724u1.f37884J1;
    }
}
