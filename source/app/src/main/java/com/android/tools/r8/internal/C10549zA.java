package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4798y;
import java.util.Iterator;
import java.util.Set;

public final class C10549zA extends AbstractC9447sd {

    public static final boolean f54303n = true;

    public C10549zA(C4798y c4798y, C9114qd c9114qd, C4387c4 c4387c4, CA ca2, C10048wA c10048wA) {
        super(c4798y, c9114qd, c4387c4, c10048wA, ca2);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22, Set set, C4942Bq c4942Bq) {
        boolean z10 = f54303n;
        if (!z10 && !set.add(h22)) {
            throw new AssertionError();
        }
        if (((CA) this.f52414i).c(h22.getType())) {
            if (!z10 && h22.f1()) {
                throw new AssertionError();
            }
            return;
        }
        C4942Bq a10 = a(h22, c4942Bq);
        Iterator it = this.f52412g.a(h22).iterator();
        while (it.hasNext()) {
            a((com.android.tools.r8.graph.H2) it.next(), set, a10);
        }
        Iterator<com.android.tools.r8.graph.M2> it2 = ((CA) this.f52414i).d(h22.getType()).iterator();
        while (it2.hasNext()) {
            Iterator it3 = this.f52412g.a(this.f46881a.g(it2.next()).d0()).iterator();
            while (it3.hasNext()) {
                a((com.android.tools.r8.graph.H2) it3.next(), set, a10);
            }
        }
    }
}
