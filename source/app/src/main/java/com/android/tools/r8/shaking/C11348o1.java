package com.android.tools.r8.shaking;

public final class C11348o1 extends D1 {

    public boolean f57577l;

    public boolean f57578m;

    public C11348o1() {
    }

    @Override
    public final boolean a(AbstractC11432t1 abstractC11432t1) {
        C11382q1 c11382q1 = (C11382q1) abstractC11432t1;
        return a((F1) c11382q1) && this.f57577l == c11382q1.f57711l && this.f57578m == c11382q1.f57712m;
    }

    @Override
    public final boolean b(AbstractC11432t1 abstractC11432t1) {
        C11382q1 c11382q1 = (C11382q1) abstractC11432t1;
        return a((F1) c11382q1) && this.f57577l == c11382q1.f57711l && this.f57578m == c11382q1.f57712m;
    }

    @Override
    public final AbstractC11432t1 c() {
        return C11382q1.f57709o;
    }

    @Override
    public final AbstractC11432t1 d() {
        return C11382q1.f57708n;
    }

    @Override
    public final AbstractC11398r1 i() {
        C11348o1 c11348o1 = (C11348o1) k();
        c11348o1.f57577l = false;
        c11348o1.f57578m = false;
        return c11348o1;
    }

    @Override
    public final AbstractC11398r1 j() {
        return this;
    }

    public C11348o1(C11382q1 c11382q1) {
        super(c11382q1);
        this.f57577l = c11382q1.f57711l;
        this.f57578m = c11382q1.f57712m;
    }

    @Override
    public final AbstractC11432t1 b() {
        return new C11382q1(this);
    }
}
