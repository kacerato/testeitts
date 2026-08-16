package com.android.tools.r8.graph;

import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.InterfaceC5351Ir0;
import com.android.tools.r8.internal.R00;

public final class C4760w implements InterfaceC5351Ir0 {

    public final C4798y f38313a;

    public final R00 f38314b;

    public C4760w(C4798y c4798y, R00 r00) {
        this.f38313a = c4798y;
        this.f38314b = r00;
    }

    @Override
    public final void a(C8659ns0 c8659ns0) {
        C4798y c4798y = this.f38313a;
        c4798y.a(c4798y.f38395J.a(this.f38314b, c8659ns0));
    }

    @Override
    public final boolean b() {
        return !this.f38313a.f38395J.a();
    }
}
