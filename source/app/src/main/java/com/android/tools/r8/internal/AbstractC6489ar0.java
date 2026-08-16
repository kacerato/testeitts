package com.android.tools.r8.internal;

public abstract class AbstractC6489ar0 extends AbstractC9408sL {

    public static final boolean f46638n = true;

    public final int[] f46639l;

    public int f46640m;

    public AbstractC6489ar0(C10340xw0 c10340xw0, int[] iArr, int i10) {
        super(c10340xw0);
        this.f46639l = iArr;
        this.f46640m = i10;
    }

    @Override
    public final AbstractC6489ar0 Q0() {
        return this;
    }

    @Override
    public final void a(W5 w52) {
        b().n().set(this.f46640m, w52);
    }

    public final W5 b(int i10) {
        return b().v().get(this.f46639l[i10]);
    }

    @Override
    public final boolean l2() {
        return true;
    }

    @Override
    public final W5 u2() {
        return b().v().get(this.f46640m);
    }

    public int v2() {
        return this.f46639l.length;
    }
}
