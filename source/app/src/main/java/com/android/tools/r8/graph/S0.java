package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C9380sA;
import com.android.tools.r8.internal.C9547tA;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import java.util.Objects;
import java.util.function.Function;

public final class S0 extends O0 {

    public final B60 f36791d;

    public S0(B60 b60) {
        this.f36791d = b60;
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    @Override
    public final int a(InterfaceC5580Mq0 interfaceC5580Mq0, AbstractC8953pf abstractC8953pf) {
        return a((O0) interfaceC5580Mq0, abstractC8953pf);
    }

    @Override
    public final int b(O0 o02, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (S0) o02, new Na());
    }

    @Override
    public final void c(AbstractC9213rA abstractC9213rA) {
        new Na().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    public final int hashCode() {
        return Objects.hashCode(this.f36791d) * 31;
    }

    @Override
    public final S0 m0() {
        return this;
    }

    @Override
    public final int n0() {
        return 256;
    }

    public final String toString() {
        return String.format("SET_POSITION_FRAME %s", this.f36791d);
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.j(new Function() {
            @Override
            public final Object apply(Object obj) {
                B60 b60;
                b60 = ((S0) obj).f36791d;
                return b60;
            }
        });
    }

    @Override
    public final void a(V0 v02) {
        v02.a(this);
    }
}
