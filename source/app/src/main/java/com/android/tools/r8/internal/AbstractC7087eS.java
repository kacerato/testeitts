package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4780x0;

public abstract class AbstractC7087eS {
    public static void a(AbstractC4780x0 abstractC4780x0, boolean z10, C2 c22) {
        com.android.tools.r8.graph.M2 d10;
        if (z10) {
            return;
        }
        if (c22.isEqualTo(C2.O)) {
            d10 = abstractC4780x0.f38367e.d("Ljava/time/LocalTime;");
        } else if (c22.isEqualTo(C2.R)) {
            d10 = abstractC4780x0.f38367e.d("Ljava/util/concurrent/Flow;");
        } else if (c22.isEqualTo(C2.N)) {
            d10 = abstractC4780x0.f38367e.d("Ljava/util/StringJoiner;");
        } else {
            if (!c22.isEqualTo(C2.T)) {
                abstractC4780x0.f38366d.f50691j.c("Unsupported requiredCompilationAPILevel: " + ((Object) c22));
                return;
            }
            d10 = abstractC4780x0.f38367e.d("Ljava/lang/invoke/VarHandle;");
        }
        if (abstractC4780x0.g(d10) == null) {
            abstractC4780x0.f38366d.f50691j.c("Desugared library requires to be compiled with a library file of API greater or equal to " + ((Object) c22) + ", but it seems the library file passed is of a lower API.");
        }
    }
}
