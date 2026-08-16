package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4804y5;
import java.util.Collections;

public final class F40 extends C6433aY {

    public final C4804y5 f40090l;

    public F40(C4804y5 c4804y5, C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        super(c10340xw0, c10340xw02);
        this.f40090l = c4804y5;
    }

    @Override
    public final F40 B0() {
        return this;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        if (this == abstractC10561zE) {
            return true;
        }
        abstractC10561zE.getClass();
        if (!(abstractC10561zE instanceof F40)) {
            return false;
        }
        return this.f40090l.isEqualTo(abstractC10561zE.B0().f40090l);
    }

    @Override
    public final int r2() {
        return 72;
    }

    @Override
    public final void a(PS ps) {
        C4804y5 c4804y5 = this.f40090l;
        C10340xw0 v22 = v2();
        ps.getClass();
        ps.a(229, Collections.singletonList(c4804y5), Collections.singletonList(v22));
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        throw new C5417Jv0("We never write out witness instructions");
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        throw new C5417Jv0("We never write out witness instructions");
    }
}
