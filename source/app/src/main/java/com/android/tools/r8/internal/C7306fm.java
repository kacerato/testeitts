package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4669r3;
import com.android.tools.r8.graph.C4725u2;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4364b0;
import com.android.tools.r8.graph.InterfaceC4403d1;
import java.util.Map;
import java.util.function.BiConsumer;

public final class C7306fm {

    public final InterfaceC4403d1 f48089a;

    public final C5094Ef0 f48090b;

    public final com.android.tools.r8.androidapi.f f48091c;

    public C7306fm(InterfaceC4403d1 interfaceC4403d1, C5094Ef0 c5094Ef0, com.android.tools.r8.androidapi.f fVar) {
        this.f48089a = interfaceC4403d1;
        this.f48090b = c5094Ef0;
        this.f48091c = fVar;
    }

    public static void a(C4798y c4798y) {
        C10261xU a10 = X2.a(c4798y);
        Map<com.android.tools.r8.graph.A2, com.android.tools.r8.graph.L4> b10 = a10.f53766c.b();
        Map<C4554l1, C4537k3> a11 = a10.f53766c.a();
        C5094Ef0 c5094Ef0 = c4798y.E().f50691j;
        com.android.tools.r8.androidapi.f fVar = c4798y.f38405T;
        if (b10.isEmpty() && a11.isEmpty()) {
            return;
        }
        new C7306fm(c4798y, c5094Ef0, fVar).a(b10, a11);
    }

    public final void a(Map map, Map map2) {
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C7306fm.this.a((com.android.tools.r8.graph.A2) obj, (com.android.tools.r8.graph.L4) obj2);
            }
        });
        map2.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C7306fm.this.a((C4554l1) obj, (C4537k3) obj2);
            }
        });
    }

    public final void a(C4554l1 c4554l1, C4537k3 c4537k3) {
        C4725u2 a10 = a(c4554l1);
        if (a10 != null && a10.f36251k.f37700b.a(c4554l1) == null) {
            C4460g1[] c4460g1Arr = C4460g1.f37200o;
            C4460g1.a a11 = new C4460g1.a(true).a(c4554l1);
            a11.f37213c = c4537k3;
            a11.f37218h = this.f48091c;
            C4460g1 a12 = a11.a();
            if (c4537k3.n()) {
                a10.a(a12);
                return;
            }
            C4669r3 c4669r3 = a10.f36251k;
            boolean z10 = C4669r3.f37698c;
            if (!z10) {
                c4669r3.a(a12);
            }
            c4669r3.f37700b.a(a12);
            if (z10) {
                return;
            }
            c4669r3.f37700b.h();
        }
    }

    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.L4 l42) {
        C4725u2 a10 = a(a22);
        if (a10 != null && a10.b(a22) == null) {
            C4516j1[] c4516j1Arr = C4516j1.f37310u;
            C4516j1.a a11 = new C4516j1.a(true).a(a22).a(l42);
            a11.f37340l = this.f48091c;
            C4516j1 a12 = a11.a();
            com.android.tools.r8.graph.N4 b02 = a10.b0();
            b02.getClass();
            b02.f36639c = C4516j1.f37311v;
            b02.f36638b.b(a12);
        }
    }

    public final C4725u2 a(AbstractC4744v2 abstractC4744v2) {
        com.android.tools.r8.graph.E0 v10;
        com.android.tools.r8.graph.E0 a10 = this.f48089a.a(abstractC4744v2.f38297f);
        if (a10 != null && a10.f0()) {
            return a10.G();
        }
        InterfaceC4364b0 f10 = this.f48089a.f(abstractC4744v2.f38297f);
        if (f10.n() && (v10 = f10.v()) != null && v10.f0()) {
            return v10.G();
        }
        this.f48090b.c("Desugared library: Cannot amend library reference " + ((Object) abstractC4744v2) + " because the holder is not a library class" + (a10 == null ? "(null)." : "."));
        return null;
    }
}
