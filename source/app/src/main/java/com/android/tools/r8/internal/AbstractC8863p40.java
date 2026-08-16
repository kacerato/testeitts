package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;

public abstract class AbstractC8863p40 {
    public static void a(C4798y c4798y, ExecutorService executorService) {
        com.android.tools.r8.J.a(c4798y, ((C4514j) c4798y.f()).d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC8863p40.a((com.android.tools.r8.graph.H2) obj);
            }
        }, executorService);
    }

    public static void a(com.android.tools.r8.graph.H2 h22) {
        Iterator<C4460g1> it = h22.I0().iterator();
        while (it.hasNext()) {
            VY b10 = it.next().f37207l.b();
            if (b10 != null) {
                int i10 = F1.f40064a;
                b10.f45079a = C10504yv0.f54195b;
                b10.f45082d = AbstractC10330xt.m();
            }
        }
        for (C4516j1 c4516j1 : h22.z1()) {
            c4516j1.L0();
            WY c10 = c4516j1.f37320m.c();
            if (c10 != null) {
                C10504yv0 c10504yv0 = C10504yv0.f54195b;
                c10.f45451f = c10504yv0;
                C9994vs0 c9994vs0 = C9994vs0.f53360a;
                c10.f45447b = c9994vs0;
                c10.a(AbstractC10330xt.m());
                c10.f45448c = C5160Fj.f40294c;
                c10.f45458m = C5875Rt.f44015a;
                C8602nZ c8602nZ = C8602nZ.f50980b;
                c10.f45461p = c8602nZ;
                c10.f45462q = c8602nZ;
                if (c10.f45447b == c9994vs0 && c10.f45449d == -1) {
                    InterfaceC6078Vf interfaceC6078Vf = c10.f45450e;
                    int i11 = F1.f40064a;
                    if (interfaceC6078Vf == c10504yv0 && c10.f45451f == c10504yv0 && c10.f45452g == C7355g2.f48169a && !c10.f45453h && c10.f45454i == C8000jv0.f49417a && c10.f45455j == AbstractC10330xt.m() && c10.f45467v == 3 && c10.f45456k == AbstractC9530t40.f52519c && c10.f45457l == null && c10.f45458m.c() && c10.f45459n == null && c10.f45460o == null && c10.f45461p == c8602nZ && c10.f45462q == c8602nZ && c10.f45463r == 0 && c10.f45464s == null && c10.f45465t == null && c10.f45466u == WY.f45445w) {
                        c4516j1.L0();
                        c4516j1.f37320m = C5160Fj.f40293b;
                    }
                }
            }
        }
    }
}
