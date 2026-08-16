package com.android.tools.r8.graph;

import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.InterfaceC5351Ir0;
import com.android.tools.r8.internal.R00;

public final class C4741v implements InterfaceC5351Ir0 {

    public final C4798y f38290a;

    public final R00 f38291b;

    public C4741v(C4798y c4798y, R00 r00) {
        this.f38290a = c4798y;
        this.f38291b = r00;
    }

    @Override
    public final void a(C8659ns0 c8659ns0) {
        C4798y c4798y = this.f38290a;
        c4798y.f38423p = c4798y.f38423p.a(this.f38291b, c8659ns0);
    }

    @Override
    public final boolean b() {
        return this.f38290a.f38423p != null;
    }
}
