package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.C8106kb;
import java.util.Collections;
import java.util.List;

public abstract class AbstractC5959Te {
    public static com.android.tools.r8.graph.G a(C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22, int i10, com.android.tools.r8.graph.M2 m22) {
        int i11 = AbstractC7552hC.f48487c;
        C7051eC c7051eC = new C7051eC();
        W9[] w9Arr = {new C10546z9(i10, EnumC5477Kw0.f41825c), new C10273xa(c4724u1.f38092l2)};
        AbstractC9694u30.a(2, w9Arr);
        c7051eC.a(2, w9Arr);
        for (int i12 = 0; i12 < i10; i12++) {
            W9[] w9Arr2 = {new C8106kb(C8106kb.a.Dup), new C10546z9(i12, EnumC5477Kw0.f41825c), new C8938pa(EnumC5477Kw0.f41824b, i12), new Z8(YV.f45995b)};
            AbstractC9694u30.a(4, w9Arr2);
            c7051eC.a(4, w9Arr2);
        }
        W9[] w9Arr3 = {new C7437ga(184, c4724u1.a(m22, c4724u1.a(m22, c4724u1.f38092l2), c4724u1.f37931Q), false), new C6440ab(EnumC5477Kw0.f41824b)};
        AbstractC9694u30.a(2, w9Arr3);
        c7051eC.a(2, w9Arr3);
        com.android.tools.r8.graph.M2 m23 = a22.f38297f;
        AbstractC7552hC a10 = c7051eC.a();
        List list = Collections.EMPTY_LIST;
        return new com.android.tools.r8.graph.G(m23, 4, i10, a10, list, list);
    }
}
