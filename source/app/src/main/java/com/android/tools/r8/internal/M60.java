package com.android.tools.r8.internal;

import com.android.tools.r8.SourceFileProvider;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.O0;
import java.util.Iterator;

public abstract class M60 {
    public static boolean a(C8570nJ c8570nJ, C4516j1 c4516j1) {
        AbstractC4497i0 Q02 = c4516j1.Q0();
        if (Q02 == null) {
            return false;
        }
        if (!Q02.v0()) {
            if (Q02.t0()) {
                Iterator<W9> it = Q02.V().E0().iterator();
                while (it.hasNext()) {
                    if (it.next() instanceof C5541Ma) {
                        return true;
                    }
                }
            }
            return false;
        }
        com.android.tools.r8.graph.J0 C10 = Q02.C();
        SourceFileProvider sourceFileProvider = c8570nJ.f50667b2;
        if (sourceFileProvider == null || !sourceFileProvider.allowDiscardingSourceFile()) {
            return true;
        }
        com.android.tools.r8.graph.W0 E02 = C10.E0();
        if (E02 == null) {
            return false;
        }
        if (E02.r0()) {
            return true;
        }
        for (com.android.tools.r8.graph.O0 o02 : E02.l0().f36926g) {
            if (o02 instanceof O0.b) {
                return true;
            }
        }
        return false;
    }
}
