package com.android.tools.r8.naming;

import com.android.tools.r8.internal.AbstractC7500gv;
import com.android.tools.r8.internal.MW;

public final class G extends AbstractC7500gv {
    @Override
    public final boolean a(Object obj, Object obj2) {
        return MW.f42311b.b(((com.android.tools.r8.graph.H0) obj).getReference(), ((com.android.tools.r8.graph.H0) obj2).getReference());
    }

    @Override
    public final int a(Object obj) {
        MW mw = MW.f42311b;
        com.android.tools.r8.graph.A2 reference = ((com.android.tools.r8.graph.H0) obj).getReference();
        if (reference == null) {
            return 0;
        }
        return mw.a(reference);
    }
}
