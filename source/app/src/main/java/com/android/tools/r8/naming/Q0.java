package com.android.tools.r8.naming;

import com.android.tools.r8.graph.C4798y;
import java.util.IdentityHashMap;
import java.util.Map;

public final class Q0 extends C {

    public static final boolean f55732e = true;

    public Q0 f55733d;

    public Q0(C4798y c4798y) {
        super(c4798y, new IdentityHashMap());
        this.f55733d = null;
    }

    public final void a(Q0 q02) {
        Q0 q03;
        for (Map.Entry entry : q02.f55582c.entrySet()) {
            ((P0) b()).f55728a.putAll(((P0) entry.getValue()).f55728a);
        }
        Q0 q04 = q02.f55733d;
        if (q04 != null) {
            if (!f55732e && (q03 = this.f55733d) != null && q03 != q04) {
                throw new AssertionError();
            }
            this.f55733d = q04;
        }
    }

    @Override
    public final Object a() {
        return new P0();
    }
}
