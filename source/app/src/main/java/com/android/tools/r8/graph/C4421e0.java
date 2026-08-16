package com.android.tools.r8.graph;

public final class C4421e0 extends H0 implements InterfaceC4383c0 {

    public static final boolean f37140f = true;

    public C4421e0(I0 i02, C4516j1 c4516j1) {
        super(i02, c4516j1);
    }

    @Override
    public final I0 getHolder() {
        E0 e02 = this.f36317b;
        if (!f37140f) {
            e02.getClass();
            if (!(e02 instanceof I0)) {
                throw new AssertionError();
            }
        }
        return e02.k();
    }

    @Override
    public final C4421e0 M() {
        return this;
    }
}
