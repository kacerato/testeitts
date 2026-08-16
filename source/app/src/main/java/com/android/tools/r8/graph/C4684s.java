package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.InterfaceC5351Ir0;
import com.android.tools.r8.internal.R00;

public final class C4684s implements InterfaceC5351Ir0 {

    public final C4798y f37713a;

    public final R00 f37714b;

    public final AbstractC5308Hz f37715c;

    public C4684s(C4798y c4798y, R00 r00, AbstractC5308Hz abstractC5308Hz) {
        this.f37713a = c4798y;
        this.f37714b = r00;
        this.f37715c = abstractC5308Hz;
    }

    @Override
    public final void a(C8659ns0 c8659ns0) {
        C4798y c4798y = this.f37713a;
        c4798y.f38412e = c4798y.f38412e.a(c4798y, this.f37714b, this.f37715c, c8659ns0);
    }

    @Override
    public final boolean b() {
        return !this.f37713a.f38412e.f57488a.isEmpty();
    }
}
