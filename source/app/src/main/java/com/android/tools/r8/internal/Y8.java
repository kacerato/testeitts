package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;

public abstract class Y8 extends W9 {

    public static final boolean f45935d = true;

    public final YV f45936c;

    public Y8(YV yv) {
        if (!f45935d && !yv.a()) {
            throw new AssertionError();
        }
        this.f45936c = yv;
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
    }

    @Override
    public final int y() {
        return 1;
    }

    @Override
    public final boolean z() {
        return true;
    }

    public final com.android.tools.r8.graph.M2 a(C4724u1 c4724u1) {
        switch (this.f45936c) {
            case f45995b:
                return c4724u1.f38092l2;
            case f45996c:
                return c4724u1.f37947S1;
            case f45997d:
                return c4724u1.f37926P1;
            case f45998e:
                return c4724u1.f37961U1;
            case f45999f:
                return c4724u1.f37947S1;
            case f46000g:
                return c4724u1.f37940R1;
            case f46001h:
                return c4724u1.f37954T1;
            case f46002i:
                return c4724u1.f37933Q1;
            default:
                throw new C5417Jv0("Unexpected type: " + ((Object) this.f45936c));
        }
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        com.android.tools.r8.graph.O.a(this, w92);
        return 0;
    }
}
