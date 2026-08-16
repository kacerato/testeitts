package com.android.tools.r8.graph;

import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.InterfaceC5351Ir0;
import com.android.tools.r8.internal.R00;

public final class C4571m implements InterfaceC5351Ir0 {

    public final C4798y f37473a;

    public final R00 f37474b;

    public C4571m(C4798y c4798y, R00 r00) {
        this.f37473a = c4798y;
        this.f37474b = r00;
    }

    @Override
    public final void a(C8659ns0 c8659ns0) {
        C4798y c4798y = this.f37473a;
        c4798y.f38424q = c4798y.f38424q.a(this.f37474b, c8659ns0);
    }

    @Override
    public final boolean b() {
        return !this.f37473a.f38424q.c();
    }
}
