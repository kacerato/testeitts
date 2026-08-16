package com.android.tools.r8.internal;

public class C6157Wq extends AbstractC7315fp {

    public static final boolean f45552j = true;

    public C6157Wq(int i10, C5693Op c5693Op) {
        super(i10, c5693Op);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.g(T10.f44371g, this.f48099f, this.f48100g, this.f48101h);
    }

    @Override
    public final String t() {
        return "MulFloat";
    }

    @Override
    public final int v() {
        return 168;
    }

    @Override
    public final String z() {
        return "mul-float";
    }

    public C6157Wq(int i10, int i11, int i12) {
        super(i10, i11, i12);
        if (!f45552j && i10 == i12 && i10 != i11) {
            throw new AssertionError();
        }
    }
}
