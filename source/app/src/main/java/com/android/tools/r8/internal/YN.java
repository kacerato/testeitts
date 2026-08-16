package com.android.tools.r8.internal;

public final class YN extends R2 {

    public static final boolean f45979e = true;

    public final H50 f45980c;

    public final C8914pO f45981d;

    public YN(H50 h50, C8914pO c8914pO) {
        super(h50);
        this.f45980c = h50;
        this.f45981d = c8914pO;
    }

    @Override
    public final Q2 a(String str, String str2) {
        if (!f45979e && str != null) {
            throw new AssertionError();
        }
        if (!"Landroidx/annotation/keep/KeepBinding;".equals(str2) && !"Lcom/android/tools/r8/keepanno/annotations/KeepBinding;".equals(str2)) {
            super.a(str, str2);
            throw null;
        }
        H50 h50 = this.f45980c;
        h50.getClass();
        return new XN(new B50(h50, str2), this.f45981d);
    }
}
