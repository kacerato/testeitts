package com.android.tools.r8.graph;

import com.android.tools.r8.dex.C4324y;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.C5283Hm0;
import com.android.tools.r8.internal.C5417Jv0;

public final class Z2 extends AbstractC4348a3 {

    public static final Z2 f37013d = new Z2();

    public static final boolean f37014e = true;

    @Override
    public final Object F0() {
        return null;
    }

    @Override
    public final V2 G0() {
        return V2.f36900s;
    }

    @Override
    public final M2 a(C4724u1 c4724u1) {
        throw new C5417Jv0();
    }

    @Override
    public final int b(R2 r22, AbstractC8953pf abstractC8953pf) {
        boolean z10 = f37014e;
        if (!z10 && this != f37013d) {
            throw new AssertionError();
        }
        if (z10 || r22 == f37013d) {
            return 0;
        }
        throw new AssertionError();
    }

    @Override
    public final void c(AbstractC9213rA abstractC9213rA) {
        if (!f37014e && this != f37013d) {
            throw new AssertionError();
        }
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj instanceof Z2;
    }

    @Override
    public final int hashCode() {
        return 42;
    }

    @Override
    public final Object k0() {
        return null;
    }

    @Override
    public final String toString() {
        return "Null";
    }

    @Override
    public final void a(C4324y c4324y, C4766w5 c4766w5) {
        R2.a(V2.f36900s, 0, c4324y);
    }

    @Override
    public final com.android.tools.r8.internal.F1 a(com.android.tools.r8.internal.G1 g12) {
        g12.getClass();
        return C5283Hm0.f40867c;
    }
}
