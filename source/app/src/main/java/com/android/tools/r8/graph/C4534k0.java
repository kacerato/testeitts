package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC9657tr0;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C6382aB;
import com.android.tools.r8.internal.PJ;
import com.android.tools.r8.internal.QJ;
import java.util.function.Consumer;

public final class C4534k0 extends AbstractC9657tr0 {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C4534k0(A2 a22, boolean z10, B60 b60) {
        super(r0, b60 != null ? AbstractC4497i0.a(b60, r4, z10) : r4);
        AbstractC7552hC h10 = h();
        B60.c.a a10 = B60.c.t().a(0).a(a22);
        a10.f38816e = z10;
        B60 a11 = a10.a();
    }

    public static void c(C6382aB c6382aB) {
        boolean z10 = QJ.f43538p;
        PJ pj2 = new PJ();
        pj2.f44718d = C4553l0.a((H0) c6382aB.f46455n, c6382aB.f46457p.b());
        c6382aB.a(((PJ) pj2.a(c6382aB.f46460s)).c());
    }

    public static AbstractC7552hC h() {
        return AbstractC7552hC.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4534k0.c((C6382aB) obj);
            }
        }, new C4813ye());
    }
}
