package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Iterator;
import java.util.Set;
import java.util.function.IntFunction;

public final class C8592nU extends AbstractC8759oU {

    public static final boolean f50965f = true;

    public C8592nU(AbstractC5308Hz abstractC5308Hz, IntFunction intFunction, IntFunction intFunction2) {
        super(abstractC5308Hz, intFunction, intFunction2);
    }

    public static C8592nU a(AbstractC5308Hz abstractC5308Hz) {
        return new C8592nU(abstractC5308Hz, new EZ0(), new Tm1());
    }

    public final Set a(C4798y c4798y) {
        Set set = (Set) this.f51258a.apply(((Set) this.f51261d).size());
        Iterator it = ((Set) this.f51261d).iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.M2 c10 = c4798y.v().c(this.f51260c, (com.android.tools.r8.graph.M2) it.next());
            com.android.tools.r8.graph.E0 g10 = c4798y.g(c10);
            if (g10 != null) {
                set.add(g10);
            } else if (!f50965f) {
                throw new AssertionError((Object) ("Unable to find definition for: " + c10.D0()));
            }
        }
        return set;
    }
}
