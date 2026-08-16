package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import java.util.function.Function;

public final class C7835iw extends IV {

    public final com.android.tools.r8.graph.M2 f49118c;

    public final com.android.tools.r8.graph.M2 f49119d;

    public C7835iw(C4554l1 c4554l1, C4554l1 c4554l12, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        super(c4554l1, c4554l12);
        this.f49118c = m22;
        this.f49119d = m23;
    }

    public final com.android.tools.r8.graph.M2 a(Function function) {
        if (b()) {
            return (com.android.tools.r8.graph.M2) function.apply(this.f49118c);
        }
        return null;
    }

    public final boolean b() {
        return this.f49118c != null;
    }

    public final com.android.tools.r8.graph.M2 b(Function function) {
        com.android.tools.r8.graph.M2 m22 = this.f49119d;
        if (m22 != null) {
            return (com.android.tools.r8.graph.M2) function.apply(m22);
        }
        return null;
    }
}
