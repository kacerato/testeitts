package com.android.tools.r8.internal;

public class C6271Yq extends AbstractC7315fp {

    public static final boolean f46093j = true;

    public C6271Yq(int i10, C5693Op c5693Op) {
        super(i10, c5693Op);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.g(T10.f44369e, this.f48099f, this.f48100g, this.f48101h);
    }

    @Override
    public final String t() {
        return "MulInt";
    }

    @Override
    public final int v() {
        return 146;
    }

    @Override
    public final String z() {
        return "mul-int";
    }

    public C6271Yq(int i10, int i11, int i12) {
        super(i10, i11, i12);
        if (!f46093j && i10 == i12 && i10 != i11) {
            throw new AssertionError();
        }
    }
}
