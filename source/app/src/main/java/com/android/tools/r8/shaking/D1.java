package com.android.tools.r8.shaking;

public abstract class D1 extends AbstractC11398r1 {

    public boolean f56392k;

    public D1() {
    }

    public final boolean a(F1 f12) {
        return super.a((AbstractC11432t1) f12) && this.f56392k == f12.f56450k;
    }

    public final D1 k() {
        D1 d12 = (D1) super.i();
        d12.f56392k = false;
        return (D1) d12.j();
    }

    public D1(F1 f12) {
        super(f12);
        this.f56392k = f12.f56450k;
    }
}
