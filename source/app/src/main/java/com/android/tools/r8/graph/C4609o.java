package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.InterfaceC5351Ir0;
import com.android.tools.r8.internal.R00;

public final class C4609o implements InterfaceC5351Ir0 {

    public final C4798y f37525a;

    public final R00 f37526b;

    public final AbstractC5308Hz f37527c;

    public C4609o(C4798y c4798y, R00 r00, AbstractC5308Hz abstractC5308Hz) {
        this.f37525a = c4798y;
        this.f37526b = r00;
        this.f37527c = abstractC5308Hz;
    }

    @Override
    public final void a(C8659ns0 c8659ns0) {
        C4798y c4798y = this.f37525a;
        c4798y.f38391F = c4798y.f38391F.a(this.f37526b, this.f37527c);
    }

    @Override
    public final boolean b() {
        return this.f37525a.f38391F != null;
    }
}
