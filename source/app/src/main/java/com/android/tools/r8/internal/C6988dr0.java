package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8106kb;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;

public final class C6988dr0 {
    public C6988dr0(com.android.tools.r8.synthesis.W w10, C4798y c4798y, Consumer consumer) {
        C4724u1 b10 = c4798y.b();
        com.android.tools.r8.graph.M2 m22 = w10.f58283b;
        C4554l1 a10 = b10.a(m22, b10.f38092l2, b10.b("switchCases"));
        com.android.tools.r8.graph.A2 a11 = b10.a(m22, b10.a(b10.f38092l2, new com.android.tools.r8.graph.M2[0]), b10.b("getSwitchCases"));
        C4460g1[] c4460g1Arr = C4460g1.f37200o;
        C4460g1.a a12 = new C4460g1.a(true).a(a10);
        a12.f37213c = C4537k3.g(4105);
        C4460g1 a13 = a12.c().a();
        int i10 = AbstractC7552hC.f48487c;
        C5920Sm0 c5920Sm0 = new C5920Sm0(a13);
        w10.f58294m.clear();
        w10.f58294m.addAll(c5920Sm0);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C9942vb(a10));
        C8103ka c8103ka = new C8103ka();
        NB nb2 = NB.f42527b;
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
        arrayList.add(new O9(nb2, enumC5477Kw0, c8103ka));
        arrayList.add(new C9942vb(a10));
        arrayList.add(new C6440ab(enumC5477Kw0));
        arrayList.add(c8103ka);
        arrayList.add(new G9(AbstractC8230lG.f49915a, G9.f40402e));
        consumer.accept(arrayList);
        arrayList.add(new C8106kb(C8106kb.a.Dup));
        arrayList.add(new C10109wb(a10));
        arrayList.add(new C6440ab(enumC5477Kw0));
        C4516j1[] c4516j1Arr = C4516j1.f37310u;
        C4516j1.a a14 = AbstractC8294li.a(a11, true).a(com.android.tools.r8.graph.L4.b(4105, false));
        List list = Collections.EMPTY_LIST;
        w10.a((AbstractCollection) new C5920Sm0(a14.a(new com.android.tools.r8.graph.G(m22, 7, 3, arrayList, list, list)).b().a()));
    }
}
