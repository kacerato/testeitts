package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C10610zb extends C6876d9 {

    public final boolean f54408d;

    public C10610zb(C4798y c4798y) {
        super(c4798y);
        this.f54408d = true;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        com.android.tools.r8.graph.E0 g10;
        if (m22 == m23 || m23 == this.f47301b.f38068i2 || m22.b(this.f47300a).a(m23.b(this.f47300a), this.f47300a)) {
            return true;
        }
        return this.f54408d && (g10 = this.f47300a.g(m23)) != null && g10.isInterface();
    }

    public C10610zb(C4798y c4798y, int i10) {
        super(c4798y);
        this.f54408d = false;
    }
}
