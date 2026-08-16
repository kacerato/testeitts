package com.android.tools.r8.internal;

public class C6043Uq extends AbstractC7315fp {

    public static final boolean f44882j = true;

    public C6043Uq(int i10, C5693Op c5693Op) {
        super(i10, c5693Op);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.g(T10.f44372h, this.f48099f, this.f48100g, this.f48101h);
    }

    @Override
    public final String t() {
        return "MulDouble";
    }

    @Override
    public final int v() {
        return 173;
    }

    @Override
    public final String z() {
        return "mul-double";
    }

    public C6043Uq(int i10, int i11, int i12) {
        super(i10, i11, i12);
        if (!f44882j && i10 == i12 && i10 != i11) {
            throw new AssertionError();
        }
    }
}
