package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import java.util.Iterator;

public class C6338Zv {
    public static boolean a(AbstractC10561zE abstractC10561zE, C4460g1 c4460g1) {
        if (!abstractC10561zE.W1()) {
            return abstractC10561zE.F1() && abstractC10561zE.S().getField() == c4460g1.getReference();
        }
        C10340xw0 d10 = abstractC10561zE.n0().d();
        if (d10.V() > 0) {
            return false;
        }
        Iterator<AbstractC10561zE> it = d10.b0().iterator();
        while (it.hasNext()) {
            if (!a(it.next(), c4460g1)) {
                return false;
            }
        }
        return true;
    }
}
