package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Collections;

public final class C7130ej extends C6433aY {

    public static final boolean f47759l = true;

    public C7130ej(C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        super(c10340xw0, c10340xw02);
        if (!f47759l && !c10340xw0.z()) {
            throw new AssertionError();
        }
    }

    @Override
    public final C7130ej L() {
        return this;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return abstractC10561zE instanceof C7130ej;
    }

    @Override
    public final boolean e2() {
        return false;
    }

    @Override
    public final boolean i1() {
        return true;
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4798y c4798y, C5473Ku0 c5473Ku0) {
        return c5473Ku0.a(v2());
    }

    @Override
    public final void a(NT nt) {
        nt.a(this);
        if (!f47759l && o()) {
            throw new AssertionError();
        }
        if (b().z()) {
            nt.f42608f.a(nt.f42604b, nt.f42607e);
            Z5 z52 = nt.f42607e;
            z52.f46160c = (W5) z52.f46159b.previous();
        }
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        EnumC5477Kw0 s22 = s2();
        C10340xw0 d10 = d();
        c7543h9.f48462g.getClass();
        c7543h9.a(new C10443yb(s22, C6234Ya.a(d10)), this);
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C6113Vw0 c6113Vw0) {
        super.a(c4798y, h52, c6113Vw0);
        if (!f47759l && !c6113Vw0.a(v2().u(), a())) {
            throw new AssertionError();
        }
    }

    @Override
    public final void a(PS ps) {
        C10340xw0 v22 = v2();
        ps.getClass();
        ps.a(213, Collections.EMPTY_LIST, Collections.singletonList(v22));
    }
}
