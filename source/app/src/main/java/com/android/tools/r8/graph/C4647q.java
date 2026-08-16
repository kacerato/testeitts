package com.android.tools.r8.graph;

import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.InterfaceC5351Ir0;
import com.android.tools.r8.internal.R00;

public final class C4647q implements InterfaceC5351Ir0 {

    public final C4798y f37642a;

    public final R00 f37643b;

    public C4647q(C4798y c4798y, R00 r00) {
        this.f37642a = c4798y;
        this.f37643b = r00;
    }

    @Override
    public final void a(C8659ns0 c8659ns0) {
        C4798y c4798y = this.f37642a;
        c4798y.a(c4798y.f38410c.a(this.f37643b, c8659ns0));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.Map, java.lang.Object] */
    @Override
    public final boolean b() {
        return !this.f37642a.f38410c.f37442c.isEmpty();
    }
}
