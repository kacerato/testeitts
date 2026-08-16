package com.android.tools.r8.graph;

import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.InterfaceC5351Ir0;
import com.android.tools.r8.internal.R00;
import com.android.tools.r8.shaking.C11333n3;

public final class C4722u implements InterfaceC5351Ir0 {

    public final C4798y f37801a;

    public final R00 f37802b;

    public C4722u(C4798y c4798y, R00 r00) {
        this.f37801a = c4798y;
        this.f37802b = r00;
    }

    @Override
    public final void a(C8659ns0 c8659ns0) {
        C4798y c4798y = this.f37801a;
        C11333n3 a10 = c4798y.f38420m.a(this.f37802b, c8659ns0);
        if (!C4798y.f38385W && !c4798y.E().f50674d1) {
            throw new AssertionError();
        }
        c4798y.f38420m = a10;
    }

    @Override
    public final boolean b() {
        C11333n3 c11333n3 = this.f37801a.f38420m;
        return (c11333n3 == null || c11333n3.f57555a.isEmpty()) ? false : true;
    }
}
