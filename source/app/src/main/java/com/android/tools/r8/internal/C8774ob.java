package com.android.tools.r8.internal;

public final class C8774ob {

    public static final boolean f51279e = true;

    public final int f51280a;

    public final EnumC5477Kw0 f51281b;

    public final com.android.tools.r8.graph.M2 f51282c;

    public final AbstractC9274rb f51283d;

    public C8774ob(int i10, AbstractC9274rb abstractC9274rb) {
        this.f51280a = i10;
        this.f51283d = abstractC9274rb;
        this.f51281b = abstractC9274rb.a();
        this.f51282c = abstractC9274rb.b();
    }

    public static int a(int i10) {
        boolean z10 = f51279e;
        if (!z10 && i10 < 100000) {
            throw new AssertionError();
        }
        if (z10 || i10 >= 100000) {
            return i10 - 100000;
        }
        throw new AssertionError();
    }

    public final String toString() {
        int i10 = this.f51280a;
        if (i10 < 100000) {
            return i10 + "=" + ((Object) this.f51283d);
        }
        return "s" + (i10 - 100000) + "=" + ((Object) this.f51283d);
    }
}
