package com.android.tools.r8.internal;

import com.android.tools.r8.C10895l2;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4500i3;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4615o5;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.InterfaceC4651q3;
import com.android.tools.r8.graph.N4;
import com.android.tools.r8.origin.Origin;
import java.lang.constant.ConstantDescs;
import java.util.Collections;
import java.util.List;
import java.util.function.Function;

public abstract class IE {
    public static com.android.tools.r8.graph.H2 a(C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2 d10 = c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServer;");
        ProgramResource.Kind kind = ProgramResource.Kind.CF;
        Origin unknown = Origin.unknown();
        com.android.tools.r8.graph.Q e10 = com.android.tools.r8.graph.Q.e(1057);
        com.android.tools.r8.graph.M2 d11 = c4724u1.d("Ljava/lang/Object;");
        com.android.tools.r8.graph.O2 k02 = com.android.tools.r8.graph.O2.k0();
        com.android.tools.r8.graph.L2 b10 = c4724u1.b("InstrumentationServer.java");
        boolean z10 = C4615o5.f37545c;
        List list = Collections.EMPTY_LIST;
        boolean z11 = C4500i3.f37288c;
        H3.b f10 = H3.b.f();
        C4723u0 l02 = C4723u0.l0();
        InterfaceC4651q3 a10 = InterfaceC4651q3.a(new C4460g1[0], new C4460g1[0]);
        C4516j1[] b11 = b(c4724u1);
        C4516j1[] c4516j1Arr = C4516j1.f37310u;
        C4516j1.a a11 = new C4516j1.a(true).a(com.android.tools.r8.graph.L4.a(1025, false));
        int i10 = com.android.tools.r8.androidapi.f.f35602a;
        com.android.tools.r8.androidapi.h hVar = com.android.tools.r8.androidapi.h.f35609b;
        a11.f37341m = hVar;
        a11.f37340l = hVar;
        a11.f37339k = C5313Ib.f41138i;
        return new com.android.tools.r8.graph.H2(d10, kind, unknown, e10, d11, k02, b10, null, list, list, list, null, list, f10, l02, a10, N4.a.a(b11, new C4516j1[]{a11.a(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServer;"), c4724u1.a(c4724u1.d("V"), c4724u1.d("Ljava/io/File;")), c4724u1.b("writeToFile"))).a()}), c4724u1.f37846D6, new C10895l2(), EnumC5372Jb0.f41429b);
    }

    public static C4516j1[] b(final C4724u1 c4724u1) {
        C4516j1[] c4516j1Arr = C4516j1.f37310u;
        C4516j1.a a10 = new C4516j1.a(true).a(com.android.tools.r8.graph.L4.a(1, true));
        int i10 = com.android.tools.r8.androidapi.f.f35602a;
        com.android.tools.r8.androidapi.h hVar = com.android.tools.r8.androidapi.h.f35609b;
        a10.f37341m = hVar;
        a10.f37340l = hVar;
        C5313Ib c5313Ib = C5313Ib.f41138i;
        a10.f37339k = c5313Ib;
        C4516j1 a11 = a10.a(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServer;"), c4724u1.a(c4724u1.d("V"), new com.android.tools.r8.graph.M2[0]), c4724u1.b(ConstantDescs.INIT_NAME))).a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return IE.a(C4724u1.this, (com.android.tools.r8.graph.A2) obj);
            }
        }).a();
        C4516j1.a a12 = new C4516j1.a(true).a(com.android.tools.r8.graph.L4.a(9, false));
        a12.f37341m = hVar;
        a12.f37340l = hVar;
        a12.f37339k = c5313Ib;
        return new C4516j1[]{a11, a12.a(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServer;"), c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServer;"), new com.android.tools.r8.graph.M2[0]), c4724u1.b("getInstance"))).a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return IE.b(C4724u1.this, (com.android.tools.r8.graph.A2) obj);
            }
        }).a()};
    }

    public static AbstractC4497i0 b(C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        C8103ka c8103ka = new C8103ka();
        com.android.tools.r8.graph.M2 m22 = a22.f38297f;
        AbstractC7552hC a10 = AbstractC7552hC.a(c8103ka, new C7437ga(184, c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), new com.android.tools.r8.graph.M2[0]), c4724u1.b("getInstance")), false), new C6440ab(EnumC5477Kw0.f41824b));
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        return new com.android.tools.r8.graph.G(m22, 1, 0, a10, c6190Xe0, c6190Xe0);
    }

    public static AbstractC4497i0 a(C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        C8103ka c8103ka = new C8103ka();
        C8103ka c8103ka2 = new C8103ka();
        com.android.tools.r8.graph.M2 m22 = a22.f38297f;
        AbstractC7552hC a10 = AbstractC7552hC.a(c8103ka, new C8938pa(EnumC5477Kw0.f41824b, 0), new C7437ga(183, c4724u1.a(c4724u1.f38068i2, c4724u1.a(c4724u1.f37905M1, new com.android.tools.r8.graph.M2[0]), c4724u1.b(ConstantDescs.INIT_NAME)), false), new C6607bb(), c8103ka2);
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        return new com.android.tools.r8.graph.G(m22, 1, 1, a10, c6190Xe0, c6190Xe0);
    }
}
