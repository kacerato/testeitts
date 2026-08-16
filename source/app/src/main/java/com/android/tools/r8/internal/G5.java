package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8106kb;
import com.android.tools.r8.synthesis.S;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;

public final class G5 extends C9866v5 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public G5(com.android.tools.r8.graph.A2 a22) {
        super(a22, null, 0);
        a22.f38298g.toString();
    }

    @Override
    public final S.b a(com.android.tools.r8.synthesis.S s10) {
        return s10.f58192s;
    }

    @Override
    public final Collection a(B60 b60, W9 w92, final C4798y c4798y, AbstractC7103ea abstractC7103ea, C5035Df c5035Df, QT qt) {
        C4724u1 b10 = c4798y.b();
        com.android.tools.r8.graph.H2 a10 = c4798y.f38408a.g().a(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58192s;
                return bVar;
            }
        }, c5035Df.a(), c4798y, new Consumer() {
            @Override
            public final void accept(Object obj) {
                G5.a(C4798y.this, (com.android.tools.r8.synthesis.W) obj);
            }
        });
        abstractC7103ea.c(a10, c5035Df.f39582c);
        qt.a(2);
        return AbstractC7552hC.a(new C10106wa(a10.f36245e), new C8106kb(C8106kb.a.DupX1), new C8106kb(C8106kb.a.Swap), new C7437ga(183, b10.a(a10.f36245e, b10.a(b10.f37905M1, b10.f38005a3), b10.f38067i1), false));
    }

    public static void a(C4798y c4798y, com.android.tools.r8.synthesis.W w10) {
        C4724u1 b10 = c4798y.b();
        com.android.tools.r8.graph.M2 m22 = w10.f58283b;
        C4554l1 a10 = b10.a(m22, b10.f38005a3, b10.b("initialValueSupplier"));
        com.android.tools.r8.graph.A2 a11 = b10.a(m22, b10.a(b10.f37905M1, b10.f38005a3), b10.f38067i1);
        com.android.tools.r8.graph.A2 a12 = b10.a(m22, b10.a(b10.f38068i2, new com.android.tools.r8.graph.M2[0]), b10.b("initialValue"));
        w10.f58290i = b10.f38077j3;
        C4460g1[] c4460g1Arr = C4460g1.f37200o;
        C4460g1.a a13 = new C4460g1.a(true).a(a10);
        a13.f37213c = C4537k3.g(4113);
        C4460g1 a14 = a13.c().a();
        int i10 = AbstractC7552hC.f48487c;
        C5920Sm0 c5920Sm0 = new C5920Sm0(a14);
        w10.f58295n.clear();
        w10.f58295n.addAll(c5920Sm0);
        ArrayList arrayList = new ArrayList();
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
        arrayList.add(new C8938pa(enumC5477Kw0, 0));
        arrayList.add(new C8106kb(C8106kb.a.Dup));
        arrayList.add(new C7437ga(183, b10.a(b10.f38077j3, b10.a(b10.f37905M1, new com.android.tools.r8.graph.M2[0]), b10.f38067i1), false));
        arrayList.add(new C8938pa(EnumC5477Kw0.a(b10.f38005a3), 1));
        arrayList.add(new U9(a10));
        arrayList.add(new C6607bb());
        C4516j1[] c4516j1Arr = C4516j1.f37310u;
        C4516j1.a a15 = AbstractC8294li.a(a11, true).a(com.android.tools.r8.graph.L4.b(4097, true));
        List list = Collections.EMPTY_LIST;
        w10.a((AbstractCollection) new C5920Sm0(a15.a(new com.android.tools.r8.graph.G(m22, 2, 2, arrayList, list, list)).b().a()));
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new C8938pa(enumC5477Kw0, 0));
        arrayList2.add(new T9(a10));
        arrayList2.add(new C7437ga(185, b10.f37894K4.f37723a, true));
        arrayList2.add(new C6440ab(enumC5477Kw0));
        w10.b(new C5920Sm0(new C4516j1.a(true).a(a12).a(com.android.tools.r8.graph.L4.b(4100, false)).a(new com.android.tools.r8.graph.G(m22, 1, 1, arrayList2, list, list)).b().a()));
    }
}
