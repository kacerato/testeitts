package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC8374m80;
import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C7123eg1;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C9222rD;
import com.android.tools.r8.internal.C9389sD;
import com.android.tools.r8.internal.TU;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Map;

public final class U {

    public final C4798y f57009a;

    public final com.android.tools.r8.ir.optimize.F f57010b;

    public U(C4798y c4798y) {
        this.f57009a = c4798y;
        this.f57010b = new com.android.tools.r8.ir.optimize.F(c4798y);
    }

    public final void a(C7215fB c7215fB, com.android.tools.r8.internal.Y5 y52, com.android.tools.r8.graph.H5 h52, Map map, com.android.tools.r8.graph.F5 f52) {
        if (!f52.getHolder().a(this.f57009a, h52)) {
            y52.i();
            return;
        }
        boolean z10 = C9389sD.f52316l;
        C9222rD c9222rD = new C9222rD();
        c9222rD.f52321a = c7215fB.a(AbstractC8999pu0.k(), (C4515j0) null);
        C9222rD c9222rD2 = (C9222rD) c9222rD.a();
        c9222rD2.f52009d = f52.p();
        C9389sD c9389sD = new C9389sD(c9222rD2.f52009d, c9222rD2.f52321a);
        B60 b60 = c9222rD2.f52322b;
        if (b60 != null) {
            c9389sD.b(b60);
        }
        y52.a(c9389sD, (C10696a) null);
        ((AbstractC8374m80) map.computeIfAbsent(f52.getHolder(), TU.a(new C7123eg1()))).add((AbstractC8374m80) h52);
    }
}
