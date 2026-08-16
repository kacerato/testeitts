package com.android.tools.r8.graph;

import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.InterfaceC5351Ir0;
import com.android.tools.r8.internal.R00;

public final class r implements InterfaceC5351Ir0 {

    public final C4798y f37688a;

    public final R00 f37689b;

    public r(C4798y c4798y, R00 r00) {
        this.f37688a = c4798y;
        this.f37689b = r00;
    }

    @Override
    public final void a(C8659ns0 c8659ns0) {
        C4798y c4798y = this.f37688a;
        c4798y.f38411d = c4798y.f38411d.a(c4798y, this.f37689b, c8659ns0);
    }

    @Override
    public final boolean b() {
        return !this.f37688a.f38411d.isEmpty();
    }
}
