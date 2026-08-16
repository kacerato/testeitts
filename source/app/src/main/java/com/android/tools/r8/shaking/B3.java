package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C5920Sm0;
import com.android.tools.r8.internal.C8091kU;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.shaking.C11384q3;
import com.android.tools.r8.shaking.K3;
import com.android.tools.r8.shaking.M3;
import com.android.tools.r8.shaking.R3;
import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.function.Consumer;

public abstract class B3 {
    public static ArrayList a(C4798y c4798y) {
        ArrayList arrayList = new ArrayList();
        C4724u1 b10 = c4798y.b();
        C8570nJ E10 = c4798y.E();
        if (E10.P()) {
            Iterator<AbstractC11468v3> it = E10.B().p().iterator();
            loop0: while (true) {
                if (it.hasNext()) {
                    AbstractC11468v3 next = it.next();
                    if ((next instanceof Y2) || (next instanceof W2)) {
                        if (next.d() == EnumC11299l3.f57506c && next.b().isEmpty() && next.f57286j.isEmpty() && (!next.k() || next.e().b(b10.f38068i2))) {
                            if (!next.c().d().iterator().hasNext() && next.c().a(b10.f38038e4)) {
                                for (R3 r32 : next.g()) {
                                    if (r32.h() == U3.f57021d || r32.h() == U3.f57020c || (r32.h() == U3.f57019b && r32.c().isEmpty() && !r32.b().h() && !r32.b().a(2) && !r32.b().a(1024) && !r32.b().a(128) && !r32.b().a(64) && !r32.f().i() && !r32.f().a(8) && !r32.f().e() && r32.i().b(b10.f37884J1) && r32.e().a("SDK_INT"))) {
                                        break loop0;
                                    }
                                }
                            }
                        }
                    }
                } else {
                    com.android.tools.r8.internal.C2 z10 = E10.z();
                    A3 a32 = new A3(Origin.root(), z10);
                    S2 s22 = new S2();
                    s22.f56965a = 25;
                    int i10 = W2.f57085r;
                    V2 v22 = new V2();
                    v22.f57291a = a32;
                    V2 v23 = (V2) ((V2) v22.a(EnumC11299l3.f57506c)).a(AbstractC11147c3.a(AbstractC11250i4.a(b10.f38038e4)));
                    R3.a a10 = R3.a();
                    a10.f56930b = s22;
                    R3.a a11 = a10.a(U3.f57019b);
                    a11.f56933e = AbstractC11250i4.a(b10.f37884J1);
                    a11.f56934f = Y3.a(C11384q3.a.a("SDK_INT"));
                    a11.f56936h = new T3(new C8091kU(z10.d(), Integer.MAX_VALUE));
                    arrayList.add(((V2) v23.a(new C5920Sm0(a11.a()))).a());
                    break;
                }
            }
        }
        com.android.tools.r8.graph.E0 c10 = c4798y.f().c(b10.f38014b4);
        if (c10 != null) {
            arrayList.add(a(b10, c10));
        }
        com.android.tools.r8.graph.E0 c11 = c4798y.f().c(b10.f38022c4);
        if (c11 != null) {
            arrayList.add(a(b10, c11));
        }
        return arrayList;
    }

    public static void a(M3.a aVar) {
        aVar.f56731a = true;
        aVar.f56732b = true;
        aVar.f56733c = false;
        aVar.f56737g = true;
        aVar.f56736f = true;
        aVar.f56734d = true;
        aVar.f56735e = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static K3 a(C4724u1 c4724u1, com.android.tools.r8.graph.E0 e02) {
        K3.a E10 = K3.E();
        boolean z10 = AbstractC11250i4.f57412a;
        K3.a aVar = (K3.a) ((K3.a) E10.a(AbstractC11147c3.a(C11317m4.f57533d))).a(EnumC11299l3.f57506c);
        aVar.f57302l = AbstractC11250i4.a(e02.getType());
        aVar.f57303m = !e02.isInterface();
        R3.a a10 = R3.a().a(U3.f57024g);
        C11384q3.a a11 = C11384q3.a.a(ConstantDescs.INIT_NAME);
        a10.getClass();
        a10.f56934f = Y3.a(a11);
        a10.f56935g = Collections.EMPTY_LIST;
        a10.f56933e = AbstractC11250i4.a(c4724u1.f37905M1);
        K3.a aVar2 = (K3.a) aVar.a(Collections.singletonList(a10.a()));
        S2 s22 = new S2();
        s22.f56965a = 1024;
        aVar2.f57297g = s22;
        aVar2.f57291a = e02.f36244d;
        return ((K3.a) aVar2.a(O3.f56854c).a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                B3.a((M3.a) obj);
            }
        })).a();
    }
}
