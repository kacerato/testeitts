package com.android.tools.r8.shaking;

public final class C11382q1 extends F1 {

    public static final C11382q1 f57708n;

    public static final C11382q1 f57709o;

    public static final boolean f57710p = true;

    public final boolean f57711l;

    public final boolean f57712m;

    static {
        C11348o1 c11348o1 = (C11348o1) new C11348o1().k();
        c11348o1.f57577l = false;
        c11348o1.f57578m = false;
        f57708n = (C11382q1) c11348o1.a();
        D1 d12 = (D1) new C11348o1().h();
        d12.f56392k = true;
        C11348o1 c11348o12 = (C11348o1) ((D1) d12.j());
        c11348o12.f57577l = true;
        c11348o12.f57578m = true;
        f57709o = (C11382q1) c11348o12.a();
    }

    public C11382q1(C11348o1 c11348o1) {
        super(c11348o1);
        this.f57711l = c11348o1.f57577l;
        this.f57712m = c11348o1.f57578m;
    }

    public static C11365p1 d() {
        return f57709o.c();
    }

    @Override
    public final boolean a(AbstractC11432t1 abstractC11432t1) {
        C11382q1 c11382q1 = (C11382q1) abstractC11432t1;
        return a((F1) c11382q1) && this.f57711l == c11382q1.f57711l && this.f57712m == c11382q1.f57712m;
    }

    @Override
    public final int b() {
        return AbstractC11432t1.a(11, this.f57712m) + AbstractC11432t1.a(10, this.f57711l) + super.b();
    }

    public final C11365p1 c() {
        if (f57710p || !equals(f57708n)) {
            return new C11365p1(this);
        }
        throw new AssertionError();
    }
}
