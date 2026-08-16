package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.B60;
import java.util.ArrayList;
import java.util.List;

public final class C5374Jc implements L60 {

    public final C4798y f41433a;

    public C5374Jc(C4798y c4798y) {
        this.f41433a = c4798y;
    }

    @Override
    public final void a() {
    }

    @Override
    public final ArrayList a(com.android.tools.r8.graph.H5 h52, D60 d60, boolean z10, boolean z11, int i10) {
        ArrayList arrayList;
        if (this.f41433a.E().F().f50888k) {
            ArrayList arrayList2 = new ArrayList();
            com.android.tools.r8.graph.G V10 = h52.d().Q0().V();
            List<W9> E02 = V10.E0();
            ArrayList arrayList3 = new ArrayList(E02.size() * 3);
            B60 b60 = null;
            for (W9 w92 : E02) {
                w92.getClass();
                if (w92 instanceof C5541Ma) {
                    b60 = w92.q().V();
                } else {
                    if (b60 != null) {
                        C8699o50 a10 = d60.a(b60);
                        B60 b602 = (B60) a10.a();
                        B60 b603 = (B60) a10.b();
                        arrayList2.add(new UU(b603.f(), b602));
                        C8103ka c8103ka = new C8103ka();
                        arrayList3.add(new C5541Ma(c8103ka, b603));
                        arrayList3.add(c8103ka);
                    }
                    arrayList3.add(w92);
                }
            }
            h52.a(new com.android.tools.r8.graph.G(h52.p(), V10.f36304g, V10.G0(), arrayList3, V10.I0(), V10.F0()), this.f41433a);
            return arrayList2;
        }
        ArrayList arrayList4 = new ArrayList();
        com.android.tools.r8.graph.G V11 = h52.d().Q0().V();
        List<W9> E03 = V11.E0();
        ArrayList arrayList5 = new ArrayList(E03.size());
        boolean z12 = false;
        for (W9 w93 : E03) {
            w93.getClass();
            if (w93 instanceof C5541Ma) {
                C5541Ma q10 = w93.q();
                C8103ka c8103ka2 = q10.f42320c;
                C8699o50 a11 = d60.a(q10.V());
                B60 b604 = (B60) a11.a();
                B60 b605 = (B60) a11.b();
                arrayList4.add(new UU(b605.f(), b604));
                w93 = new C5541Ma(c8103ka2, b605);
                z12 = true;
            }
            arrayList5.add(w93);
        }
        if (z12 || !z10) {
            arrayList = arrayList5;
        } else {
            com.android.tools.r8.graph.A2 reference = h52.getReference();
            C8103ka c8103ka3 = new C8103ka();
            B60.c.a a12 = B60.c.t().a(reference).a(0);
            a12.f38816e = h52.d().F0();
            C8699o50 a13 = d60.a(a12.a());
            B60 b606 = (B60) a13.a();
            B60 b607 = (B60) a13.b();
            arrayList4.add(new UU(b607.f(), b606));
            C5541Ma c5541Ma = new C5541Ma(c8103ka3, b607);
            ArrayList arrayList6 = new ArrayList(E03.size() + 2);
            arrayList6.add(c8103ka3);
            arrayList6.add(c5541Ma);
            arrayList6.addAll(arrayList5);
            arrayList = arrayList6;
        }
        h52.a(new com.android.tools.r8.graph.G(h52.p(), V11.f36304g, V11.G0(), arrayList, V11.I0(), V11.F0()), this.f41433a);
        return arrayList4;
    }
}
