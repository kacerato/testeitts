package com.android.tools.r8.graph;

import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.InterfaceC5351Ir0;
import com.android.tools.r8.internal.R00;

public final class C4779x implements InterfaceC5351Ir0 {

    public final C4798y f38360a;

    public final R00 f38361b;

    public C4779x(C4798y c4798y, R00 r00) {
        this.f38360a = c4798y;
        this.f38361b = r00;
    }

    @Override
    public final void a(C8659ns0 c8659ns0) {
        C4798y c4798y = this.f38360a;
        c4798y.a(c4798y.G().a(this.f38361b, c8659ns0));
    }

    @Override
    public final boolean b() {
        return this.f38360a.f38421n != null;
    }
}
