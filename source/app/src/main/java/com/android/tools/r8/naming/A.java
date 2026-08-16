package com.android.tools.r8.naming;

public final class A implements L, Cloneable {

    public static final boolean f55563e = true;

    public int f55564b;

    public int f55565c;

    public final B f55566d;

    public A(B b10) {
        this.f55566d = b10;
        this.f55564b = 0;
        this.f55565c = 1;
    }

    @Override
    public final int a() {
        return this.f55564b;
    }

    @Override
    public final int b() {
        int i10 = this.f55564b;
        this.f55564b = i10 + 1;
        return i10;
    }

    @Override
    public final int c() {
        int i10 = this.f55565c;
        this.f55565c = i10 + 1;
        return i10;
    }

    public final Object clone() {
        return new A(this.f55566d, this.f55565c, this.f55564b);
    }

    public A(B b10, int i10, int i11) {
        this.f55566d = b10;
        this.f55564b = i11;
        this.f55565c = i10;
    }
}
