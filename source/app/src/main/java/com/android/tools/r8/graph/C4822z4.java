package com.android.tools.r8.graph;

import com.android.tools.r8.internal.XR;

public final class C4822z4 extends F0 implements InterfaceC4803y4 {

    public static final boolean f38464f = true;

    public C4822z4(C4725u2 c4725u2, C4460g1 c4460g1) {
        super(c4725u2, c4460g1);
    }

    @Override
    public final boolean b(C4798y c4798y) {
        XR xr = c4798y.f38387B;
        xr.getClass();
        return getAccessFlags().e() && !p().a(xr.f45704a.b().f37899L2);
    }

    @Override
    public final C4822z4 j() {
        return this;
    }

    @Override
    public final C4725u2 getHolder() {
        E0 e02 = this.f36317b;
        if (f38464f || e02.f0()) {
            return e02.G();
        }
        throw new AssertionError();
    }
}
