package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;

public final class C8139km {

    public final C4798y f49757a;

    public C8139km(C4798y c4798y) {
        this.f49757a = c4798y;
    }

    public final C4554l1 a(com.android.tools.r8.graph.D5 d52, C4554l1 c4554l1) {
        if (this.f49757a.E().x().b().a(c4554l1.s0())) {
            this.f49757a.E().f50691j.a("Cannot prevent the desugaring of " + ((Object) c4554l1) + " in " + ((Object) d52));
            return null;
        }
        com.android.tools.r8.graph.M2 type = c4554l1.getType();
        if (this.f49757a.E().x().b().a(type)) {
            type = C7139em.a(this.f49757a, type);
        }
        if (type == c4554l1.getType()) {
            return null;
        }
        a(this.f49757a.g().c(c4554l1), c4554l1, d52);
        return this.f49757a.b().a(c4554l1.f38297f, type, c4554l1.f38298g);
    }

    public final void a(com.android.tools.r8.graph.J4 j42, AbstractC4744v2 abstractC4744v2, com.android.tools.r8.graph.D5 d52) {
        if (j42 != null && j42.j()) {
            com.android.tools.r8.graph.Z5 g10 = j42.g();
            if (g10.d().f0()) {
                return;
            }
            if (this.f49757a.b().f38117o3.contains(g10.d().getType()) && g10.b().G0()) {
                return;
            }
        }
        this.f49757a.E().f50691j.c("Preventing the desugaring of " + ((Object) abstractC4744v2) + " in " + ((Object) d52) + " which could be an invalid escape into the program. ");
    }
}
