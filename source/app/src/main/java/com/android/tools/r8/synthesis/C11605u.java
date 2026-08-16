package com.android.tools.r8.synthesis;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC6662bt0;

public final class C11605u extends AbstractC6662bt0 {

    public final C11608v f58338f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11605u(C4798y c4798y, C11608v c11608v) {
        super(c4798y);
        this.f58338f = c11608v;
    }

    @Override
    public final void a(C4554l1 c4554l1, C4554l1 c4554l12) {
        C4554l1 c4554l13 = (C4554l1) this.f58338f.f58342a.a(c4554l1, c4554l12);
        if (!C11608v.f58341d && c4554l13 != null && c4554l13 != c4554l12) {
            throw new AssertionError();
        }
    }

    @Override
    public final M2 b(M2 m22) {
        return (M2) this.f58338f.f58344c.getOrDefault(m22, m22);
    }

    @Override
    public final void a(A2 a22, A2 a23) {
        this.f58338f.f58343b.a(a22, a23);
    }

    @Override
    public final void a(M2 m22, M2 m23) {
        M2 m24 = (M2) this.f58338f.f58344c.a(m22, m23);
        if (!C11608v.f58341d && m24 != null && m24 != m23) {
            throw new AssertionError();
        }
    }
}
