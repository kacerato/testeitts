package com.android.tools.r8.graph;

import com.android.tools.r8.internal.C9115qd0;

public final class C4747v5 {

    public final C4477h f38305a;

    public final C9115qd0 f38306b;

    public C4747v5(C4477h c4477h) {
        C9115qd0 c9115qd0 = new C9115qd0();
        this.f38306b = c9115qd0;
        this.f38305a = c4477h;
        c9115qd0.f53665b = -1;
    }

    public final int a(H2 h22) {
        int a10;
        int b10 = this.f38306b.b(h22);
        if (b10 != -1) {
            return b10;
        }
        M2 m22 = h22.f36247g;
        if (m22 == null) {
            a10 = 0;
        } else {
            C4477h c4477h = this.f38305a;
            c4477h.getClass();
            H2 a11 = H2.a(m22 == h22.f36245e ? h22 : c4477h.a(m22));
            a10 = a11 != null ? a(a11) : 1;
        }
        M2[] m2Arr = h22.f36248h.f36675b;
        int length = m2Arr.length;
        for (int i10 = 0; i10 < length; i10++) {
            M2 m23 = m2Arr[i10];
            C4477h c4477h2 = this.f38305a;
            c4477h2.getClass();
            H2 a12 = H2.a(m23 == h22.f36245e ? h22 : c4477h2.a(m23));
            a10 = Math.max(a10, a12 == null ? 1 : a(a12));
        }
        int i11 = a10 + 1;
        this.f38306b.b(i11, h22);
        return i11;
    }
}
