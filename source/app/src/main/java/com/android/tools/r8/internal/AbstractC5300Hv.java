package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class AbstractC5300Hv extends AbstractC4952Bv {

    public static final boolean f40915a = true;

    @Override
    public final boolean a() {
        return true;
    }

    public final boolean equals(Object obj) {
        return obj != null && getClass() == obj.getClass();
    }

    public final int hashCode() {
        return getClass().hashCode();
    }

    public static List a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        AbstractC4952Bv c5242Gv;
        if (!f40915a && a23.w0() < a22.w0()) {
            throw new AssertionError();
        }
        int w02 = a23.w0() - a22.w0();
        if (w02 == 0) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(w02);
        for (int w03 = a22.w0(); w03 < a23.x0().size(); w03++) {
            com.android.tools.r8.graph.M2 k10 = a23.k(w03);
            if (k10.P0()) {
                char charAt = k10.V0().charAt(0);
                if (charAt == 'B') {
                    c5242Gv = new C5068Dv();
                } else if (charAt == 'C') {
                    c5242Gv = new C5126Ev();
                } else if (charAt == 'I') {
                    c5242Gv = new C5184Fv();
                } else if (charAt == 'S') {
                    c5242Gv = new C5416Jv();
                } else if (charAt == 'Z') {
                    c5242Gv = new C5010Cv();
                } else {
                    throw new C5417Jv0();
                }
            } else {
                if (!f40915a && !k10.Q0()) {
                    throw new AssertionError();
                }
                c5242Gv = new C5242Gv(k10);
            }
            arrayList.add(c5242Gv);
        }
        return arrayList;
    }
}
