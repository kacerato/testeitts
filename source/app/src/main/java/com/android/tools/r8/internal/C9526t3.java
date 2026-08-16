package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.IdentityHashMap;

public final class C9526t3 {

    public static final boolean f52507e = true;

    public final C4798y f52508a;

    public final C9201r6 f52509b = new C9201r6();

    public final C9201r6 f52510c = new C9201r6();

    public final IdentityHashMap f52511d = new IdentityHashMap();

    public C9526t3(C4798y c4798y) {
        this.f52508a = c4798y;
    }

    public final C9526t3 a(C9526t3 c9526t3) {
        this.f52509b.a(c9526t3.f52509b);
        this.f52510c.a(c9526t3.f52510c);
        this.f52511d.putAll(c9526t3.f52511d);
        return this;
    }
}
