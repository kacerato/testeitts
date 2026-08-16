package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.D5;
import com.android.tools.r8.graph.InterfaceC4364b0;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.C5417Jv0;
import java.util.Set;

public final class U implements InterfaceC4403d1 {

    public final D5 f55183a;

    public final com.android.tools.r8.shaking.I f55184b;

    public final Set f55185c;

    public final V f55186d;

    public U(V v10, D5 d52, com.android.tools.r8.shaking.I i10, Set set) {
        this.f55186d = v10;
        this.f55183a = d52;
        this.f55184b = i10;
        this.f55185c = set;
    }

    @Override
    public final C4724u1 b() {
        return this.f55186d.f55195a.b();
    }

    @Override
    public final InterfaceC4364b0 f(com.android.tools.r8.graph.M2 m22) {
        throw new C5417Jv0("Not yet used");
    }

    @Override
    public final com.android.tools.r8.graph.E0 g(com.android.tools.r8.graph.M2 m22) {
        Set set = this.f55185c;
        if (set == null || !set.contains(m22)) {
            return this.f55184b.a(m22, this.f55183a);
        }
        return null;
    }
}
