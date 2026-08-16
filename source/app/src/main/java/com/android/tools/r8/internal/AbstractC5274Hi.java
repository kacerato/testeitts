package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4500i3;
import com.android.tools.r8.graph.C4798y;
import java.util.IdentityHashMap;

public abstract class AbstractC5274Hi {
    public static void a(C4798y c4798y, IdentityHashMap identityHashMap, C8659ns0 c8659ns0) {
        com.android.tools.r8.graph.A2 a22;
        if (identityHashMap.isEmpty()) {
            return;
        }
        C8659ns0 b10 = c8659ns0.b("Rewrite enclosing lambda method attributes");
        try {
            for (com.android.tools.r8.graph.H2 h22 : c4798y.f().d()) {
                if (h22.d1() && (a22 = (com.android.tools.r8.graph.A2) identityHashMap.get(h22.O0().a())) != null) {
                    h22.f36253m = new C4500i3(a22);
                }
            }
            b10.d();
        } catch (Throwable th2) {
            try {
                b10.d();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }
}
