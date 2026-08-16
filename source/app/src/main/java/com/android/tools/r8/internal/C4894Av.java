package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;

public final class C4894Av extends AbstractC4952Bv {

    public static final boolean f38734b = true;

    public final long f38735a;

    public C4894Av(long j10) {
        this.f38735a = j10;
    }

    @Override
    public final boolean a() {
        return false;
    }

    public final boolean equals(Object obj) {
        return obj != null && C4894Av.class == obj.getClass() && this.f38735a == ((C4894Av) obj).f38735a;
    }

    public final int hashCode() {
        return Long.hashCode(this.f38735a);
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4724u1 c4724u1) {
        return c4724u1.f37884J1;
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y, com.android.tools.r8.graph.M2 m22) {
        if (f38734b || m22 == c4798y.b().f37884J1) {
            return AbstractC8999pu0.k();
        }
        throw new AssertionError();
    }

    @Override
    public final AbstractC4935Bm0 a(C4798y c4798y) {
        return c4798y.f38427t.a(this.f38735a, AbstractC8999pu0.k());
    }
}
