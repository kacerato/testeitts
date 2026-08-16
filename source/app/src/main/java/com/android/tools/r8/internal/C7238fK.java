package com.android.tools.r8.internal;

public final class C7238fK extends UJ {

    public static final boolean f47937g = true;

    @Override
    public final AbstractC9392sE a() {
        return this;
    }

    public final C7405gK c() {
        boolean z10 = f47937g;
        if (!z10 && this.f44719e == null) {
            throw new AssertionError();
        }
        if (!z10 && this.f44718d == null) {
            throw new AssertionError();
        }
        if (!z10 && this.f44718d.w0() != this.f44719e.size()) {
            throw new AssertionError();
        }
        if (!z10 && this.f52321a != null && this.f44718d.z0().S0()) {
            throw new AssertionError();
        }
        C7405gK c7405gK = new C7405gK(this.f44718d, this.f52321a, this.f44719e, false);
        B60 b60 = this.f52322b;
        if (b60 != null) {
            c7405gK.b(b60);
        }
        return c7405gK;
    }
}
