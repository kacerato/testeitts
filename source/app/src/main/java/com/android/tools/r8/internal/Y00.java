package com.android.tools.r8.internal;

public final class Y00 extends AbstractC7224fE {

    public static final boolean f45890e = true;

    public final int f45891a;

    public final UD f45892b;

    public final AbstractC8849p f45893c;

    public final com.android.tools.r8.graph.A2 f45894d;

    public Y00(int i10, UD ud2, AbstractC8849p abstractC8849p, com.android.tools.r8.graph.A2 a22) {
        boolean z10 = f45890e;
        if (!z10 && !z10 && (i10 & (-8)) != 0) {
            throw new AssertionError();
        }
        this.f45891a = i10;
        this.f45892b = ud2;
        this.f45893c = abstractC8849p;
        this.f45894d = a22;
    }

    @Override
    public final Y00 a() {
        return this;
    }

    @Override
    public final UD b() {
        return this.f45892b;
    }

    @Override
    public final com.android.tools.r8.graph.A2 c() {
        return this.f45894d;
    }

    @Override
    public final boolean d() {
        return (this.f45891a & 1) == 0;
    }

    @Override
    public final boolean e() {
        return (this.f45891a & 2) == 0;
    }

    @Override
    public final AbstractC8849p f() {
        return this.f45893c;
    }

    @Override
    public final boolean g() {
        return (this.f45891a & 4) != 0;
    }

    public final String toString() {
        return "NonTrivialInstanceInitializerInfo(" + ((Object) this.f45892b) + ")";
    }
}
