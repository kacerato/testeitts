package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import java.util.Iterator;

public final class C7849j00 extends AbstractC10644zm0 {
    @Override
    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        Iterator<C4460g1> it = h22.k1().iterator();
        while (it.hasNext()) {
            if (it.next().q0()) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final String f() {
        return "NoInstanceFieldAnnotations";
    }
}
