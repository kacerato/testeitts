package com.android.tools.r8.graph;

import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.InterfaceC5351Ir0;
import com.android.tools.r8.internal.R00;

public final class C4703t implements InterfaceC5351Ir0 {

    public final C4798y f37734a;

    public final R00 f37735b;

    public C4703t(C4798y c4798y, R00 r00) {
        this.f37734a = c4798y;
        this.f37735b = r00;
    }

    @Override
    public final void a(C8659ns0 c8659ns0) {
        C4798y c4798y = this.f37734a;
        c4798y.f38417j = c4798y.f38417j.a(this.f37735b, c8659ns0);
    }

    @Override
    public final boolean b() {
        return this.f37734a.f38417j != null;
    }
}
