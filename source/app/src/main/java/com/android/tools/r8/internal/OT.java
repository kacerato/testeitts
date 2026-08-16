package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.synthesis.S;
import java.util.function.Consumer;

public final class OT {

    public static final boolean f42887c = true;

    public final C4798y f42888a;

    public final com.android.tools.r8.graph.H2 f42889b;

    public OT(C4798y c4798y, com.android.tools.r8.graph.H2 h22, C8497mu c8497mu) {
        this.f42888a = c4798y;
        this.f42889b = h22;
        com.android.tools.r8.graph.M2 a10 = C5935Su.a(c4798y.b(), h22);
        if (!f42887c && ((C11245i) c4798y.f()).c(a10) != null) {
            throw new AssertionError();
        }
    }

    public static void a(com.android.tools.r8.synthesis.W w10) {
        w10.f58293l = true;
    }

    public final com.android.tools.r8.graph.H2 a() {
        com.android.tools.r8.graph.H2 a10 = this.f42888a.f38408a.g().a(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58181h;
                return bVar;
            }
        }, this.f42889b, this.f42888a, new Consumer() {
            @Override
            public final void accept(Object obj) {
                OT.a((com.android.tools.r8.synthesis.W) obj);
            }
        });
        if (f42887c || a10.getAccessFlags().equals(new com.android.tools.r8.graph.Q(4113))) {
            return a10;
        }
        throw new AssertionError();
    }
}
