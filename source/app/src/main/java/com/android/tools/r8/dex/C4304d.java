package com.android.tools.r8.dex;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.internal.C7;
import com.android.tools.r8.naming.I0;

public final class C4304d extends AbstractC4309i {

    public final W f35828c;

    public final C7 f35829d;

    public final C4724u1 f35830e;

    public C4304d(W w10, C7 c72, C4724u1 c4724u1) {
        this.f35828c = w10;
        this.f35829d = c72;
        this.f35830e = c4724u1;
    }

    @Override
    public final L2 a() {
        W w10 = this.f35828c;
        String str = ((I0) this.f35829d.a()).f55651a;
        if (!W.f35796i && w10.f35797a.f48234b.containsKey("pg-map-id")) {
            throw new AssertionError();
        }
        w10.f35797a.a("pg-map-id", str);
        return this.f35830e.b(this.f35828c.toString());
    }
}
