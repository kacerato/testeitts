package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C8659ns0;

public final class C11397r0 extends AbstractC11279k0 {

    public final com.android.tools.r8.graph.H5 f57750a;

    public final com.android.tools.r8.graph.D5 f57751b;

    public C11397r0(com.android.tools.r8.graph.D5 d52, com.android.tools.r8.graph.H5 h52) {
        this.f57750a = h52;
        this.f57751b = d52;
    }

    @Override
    public final void a(N n10, C8659ns0 c8659ns0) {
        c8659ns0.b(C11397r0.class.getName());
        n10.a(this.f57750a, this.f57751b, c8659ns0);
        c8659ns0.d();
    }

    @Override
    public final void a(N n10) {
        throw new C5417Jv0();
    }
}
