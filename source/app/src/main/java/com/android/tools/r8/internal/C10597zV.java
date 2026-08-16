package com.android.tools.r8.internal;

import com.android.tools.r8.shaking.C11416s2;
import java.util.List;

public final class C10597zV {

    public static final boolean f54392c = true;

    public final List f54393a;

    public final C11416s2 f54394b;

    public C10597zV(C11416s2 c11416s2, List list) {
        if (!f54392c && list.isEmpty()) {
            throw new AssertionError();
        }
        this.f54393a = list;
        this.f54394b = c11416s2;
    }

    public final W50 a() {
        return new W50(this.f54394b, this.f54393a);
    }
}
