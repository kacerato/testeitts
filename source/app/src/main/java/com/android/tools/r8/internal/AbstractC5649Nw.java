package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4669r3;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4440f0;
import java.util.function.Consumer;

public abstract class AbstractC5649Nw {
    public static void a(final C4798y c4798y) {
        C4724u1 b10 = c4798y.b();
        com.android.tools.r8.graph.E0 g10 = c4798y.g(b10.f38108n2);
        final InterfaceC4440f0 z10 = g10 != null ? g10.z() : null;
        if (z10 != null) {
            b10.f37943R4.b(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    AbstractC5649Nw.a(InterfaceC4440f0.this, c4798y, (C4554l1) obj);
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(InterfaceC4440f0 interfaceC4440f0, C4798y c4798y, C4554l1 c4554l1) {
        com.android.tools.r8.graph.E0 e02 = (com.android.tools.r8.graph.E0) interfaceC4440f0;
        if (e02.f36251k.f37700b.a(c4554l1) == null) {
            C4460g1[] c4460g1Arr = C4460g1.f37200o;
            C4460g1.a a10 = new C4460g1.a(true).a(c4554l1);
            a10.f37213c = C4537k3.e(18);
            a10.f37218h = c4798y.f38405T;
            C4460g1 a11 = a10.c().a();
            C4669r3 c4669r3 = e02.f36251k;
            boolean z10 = C4669r3.f37698c;
            if (!z10) {
                c4669r3.a(a11);
            }
            c4669r3.f37700b.a(a11);
            if (z10) {
                return;
            }
            c4669r3.f37700b.h();
        }
    }
}
