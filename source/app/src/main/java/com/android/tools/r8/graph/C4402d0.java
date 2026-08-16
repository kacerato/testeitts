package com.android.tools.r8.graph;

public final class C4402d0 extends F0 implements InterfaceC4383c0 {

    public static final boolean f37113f = true;

    public C4402d0(I0 i02, C4460g1 c4460g1) {
        super(i02, c4460g1);
    }

    @Override
    public final E0 getHolder() {
        E0 e02 = this.f36317b;
        if (!f37113f) {
            e02.getClass();
            if (!(e02 instanceof I0)) {
                throw new AssertionError();
            }
        }
        return e02.k();
    }
}
