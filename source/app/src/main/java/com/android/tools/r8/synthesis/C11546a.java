package com.android.tools.r8.synthesis;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.AbstractC4591n0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.internal.AbstractC9907vK;
import com.android.tools.r8.internal.V60;
import com.android.tools.r8.synthesis.S;

public final class C11546a extends AbstractC4591n0 {
    public C11546a(C4798y c4798y, H5 h52) {
        super(c4798y, h52, Boolean.FALSE);
    }

    public static boolean a(S.b bVar) {
        bVar.getClass();
        return (bVar instanceof V) && bVar.a().f58213d;
    }

    @Override
    public final void d(A2 a22) {
        if (this.f37176a.f38408a.g().g(a22.s0()) && h(a22)) {
            this.f37241e = Boolean.TRUE;
            a();
        }
    }

    public final boolean h(A2 a22) {
        return AbstractC9907vK.a(this.f37176a.f38408a.g().e(a22.s0()), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return C11546a.a((S.b) obj);
            }
        });
    }
}
