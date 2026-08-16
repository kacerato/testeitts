package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Set;

public final class C5658Oa0 {

    public static final boolean f42921j = true;

    public final C5256Hb0 f42922a;

    public final C9106qa0 f42923b;

    public final C5711Oy f42924c;

    public final C6845cz f42925d;

    public final C6678bz f42926e;

    public final C9999vu f42927f;

    public final C8438ma0 f42928g;

    public final C5485La0 f42929h;

    public Set f42930i = AbstractC5513Ll0.c();

    public C5658Oa0(C4798y c4798y, C5485La0 c5485La0) {
        C9106qa0 c9106qa0 = new C9106qa0();
        C5256Hb0 c5256Hb0 = new C5256Hb0(c9106qa0, c5485La0);
        this.f42922a = c5256Hb0;
        this.f42923b = c9106qa0;
        this.f42924c = c4798y.E().a0().f50797a ? new C5711Oy(c4798y, c5485La0) : null;
        this.f42925d = c4798y.E().a0().f50798b ? new C6845cz(c4798y, c5256Hb0, c5485La0) : null;
        this.f42926e = c4798y.E().a0().f50799c ? new C6678bz(c4798y, c5485La0) : null;
        this.f42927f = c4798y.E().a0().f50801e ? new C9999vu(c4798y, c5485La0) : null;
        this.f42928g = c4798y.E().a0().a() ? new C8438ma0(c5485La0) : null;
        this.f42929h = c5485La0;
    }

    public final boolean a(com.android.tools.r8.dex.t0 t0Var) {
        for (com.android.tools.r8.graph.M2 m22 : this.f42930i) {
            boolean z10 = f42921j;
            if (!z10) {
                if (t0Var.f35956b.f35942h.contains(m22.f36592f)) {
                    throw new AssertionError();
                }
            }
            if (!z10 && t0Var.f35956b.f35939e.contains(m22)) {
                throw new AssertionError();
            }
        }
        return true;
    }
}
