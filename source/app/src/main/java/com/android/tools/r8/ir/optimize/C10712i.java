package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.internal.AbstractC10330xt;
import com.android.tools.r8.internal.C7520h10;
import com.android.tools.r8.internal.C8854p10;

public final class C10712i {

    public static final boolean f54878c = true;

    public AbstractC10710h f54879a;

    public AbstractC10330xt f54880b = AbstractC10330xt.m();

    public C10712i(AbstractC10710h abstractC10710h) {
        this.f54879a = abstractC10710h;
    }

    public final void a(AbstractC10330xt abstractC10330xt) {
        boolean z10 = f54878c;
        if (!z10 && abstractC10330xt == null) {
            throw new AssertionError();
        }
        if (!z10 && (!this.f54880b.j() ? !this.f54880b.l() : !abstractC10330xt.d().d())) {
            throw new AssertionError();
        }
        this.f54880b = abstractC10330xt;
    }

    public final void b() {
        if (!this.f54880b.l()) {
            this.f54880b = this.f54880b.a(C8854p10.b());
        } else {
            boolean z10 = AbstractC10330xt.f53865a;
            this.f54880b = C7520h10.f48413b;
        }
    }

    public final boolean a() {
        return this.f54880b.d().d();
    }
}
