package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.W0;
import java.util.ArrayList;

public final class G60 implements L60 {

    public final C10324xr f40390a;

    public final C10658zr f40391b;

    public final K60 f40392c;

    public G60(C4798y c4798y) {
        K60 h60 = c4798y.E().h() ? new H60() : new J60();
        this.f40392c = h60;
        this.f40390a = new C10324xr(c4798y);
        this.f40391b = new C10658zr(c4798y, h60);
    }

    @Override
    public final ArrayList a(com.android.tools.r8.graph.H5 h52, D60 d60, boolean z10, boolean z11, int i10) {
        W0.a aVar;
        W0.a aVar2;
        int i11;
        if (z11) {
            C10658zr c10658zr = this.f40391b;
            c10658zr.getClass();
            ArrayList arrayList = new ArrayList();
            com.android.tools.r8.graph.J0 C10 = h52.d().Q0().C();
            C4516j1 d10 = h52.d();
            C4798y c4798y = c10658zr.f54556a;
            if (C10.E0() == null) {
                C4724u1 b10 = c4798y.b();
                boolean z12 = com.android.tools.r8.graph.W0.f36922d;
                aVar2 = new W0.a(0, new com.android.tools.r8.graph.L2[d10.V0().size()], new com.android.tools.r8.graph.O0[]{b10.f38137r});
            } else {
                boolean z13 = C10658zr.f54555c;
                if (!z13 && d10.V0().size() != C10.E0().o0()) {
                    throw new AssertionError();
                }
                W0.a a10 = com.android.tools.r8.graph.W0.a(C10, c4798y.b());
                if (!z13 && a10 == null) {
                    throw new AssertionError();
                }
                aVar2 = a10;
            }
            IH ih2 = new IH(-1);
            C8699o50 c8699o50 = new C8699o50(null, null);
            C10491yr c10491yr = new C10491yr(c10658zr, aVar2.f36924e, h52.getReference(), h52.d().F0(), ih2, c8699o50, d60, arrayList);
            for (com.android.tools.r8.graph.O0 o02 : aVar2.f36926g) {
                o02.a(c10491yr);
            }
            int u10 = C8798oj.a(C10.f36463j).u();
            if (c8699o50.b() != null) {
                K60 k60 = c10658zr.f54557b;
                int i12 = u10 + 1;
                B60 b60 = (B60) d60.a((B60) c8699o50.b()).a();
                for (int intValue = ((Integer) c8699o50.a()).intValue(); intValue < i12; intValue++) {
                    arrayList.add(new UU(k60.a(intValue), b60));
                }
                i11 = 1;
            } else {
                i11 = 1;
            }
            if (!C10658zr.f54555c && arrayList.isEmpty()) {
                AbstractC5635Np[] abstractC5635NpArr = C10.f36463j;
                if (abstractC5635NpArr.length != i11) {
                    int length = abstractC5635NpArr.length;
                    for (int i13 = 0; i13 < length; i13 += i11) {
                        if (abstractC5635NpArr[i13].l()) {
                            throw new AssertionError();
                        }
                    }
                }
            }
            c10658zr.f54557b.a(h52, i10);
            return arrayList;
        }
        C10324xr c10324xr = this.f40390a;
        c10324xr.getClass();
        ArrayList arrayList2 = new ArrayList();
        AbstractC4780x0 a11 = c10324xr.f53857a.f().a();
        com.android.tools.r8.graph.J0 C11 = h52.d().Q0().C();
        C4516j1 d11 = h52.d();
        C4798y c4798y2 = c10324xr.f53857a;
        if (C11.E0() == null) {
            C4724u1 b11 = c4798y2.b();
            boolean z14 = com.android.tools.r8.graph.W0.f36922d;
            aVar = new W0.a(0, new com.android.tools.r8.graph.L2[d11.V0().size()], new com.android.tools.r8.graph.O0[]{b11.f38137r});
        } else {
            boolean z15 = C10324xr.f53856c;
            if (!z15 && d11.V0().size() != C11.E0().o0()) {
                throw new AssertionError();
            }
            W0.a a12 = com.android.tools.r8.graph.W0.a(C11, c4798y2.b());
            if (!z15 && a12 == null) {
                throw new AssertionError();
            }
            aVar = a12;
        }
        ArrayList arrayList3 = new ArrayList();
        C10157wr c10157wr = new C10157wr(a11.f38367e, h52.getReference(), arrayList3);
        c10324xr.f53857a.b();
        C9990vr c9990vr = new C9990vr(c10157wr, arrayList2, d60, arrayList3, aVar.f36924e, h52.getReference(), h52.d().F0());
        for (com.android.tools.r8.graph.O0 o03 : aVar.f36926g) {
            o03.a(c9990vr);
        }
        int i14 = c10157wr.f53621b;
        if (i14 == -1) {
            i14 = 0;
        } else if (!C10157wr.f53619g && i14 < 0) {
            throw new AssertionError();
        }
        W0.a aVar3 = new W0.a(i14, aVar.f36925f, (com.android.tools.r8.graph.O0[]) arrayList3.toArray(com.android.tools.r8.graph.O0.f36660b));
        if (!C10324xr.f53856c && c10324xr.f53858b && !c9990vr.f53355l) {
            if (h52.d().F0()) {
                for (com.android.tools.r8.graph.O0 o04 : aVar.f36926g) {
                    o04.getClass();
                    if (o04 instanceof com.android.tools.r8.graph.S0) {
                        B60 b602 = o04.m0().f36791d;
                        if (h52.getReference().a(b602.f38808c)) {
                            if (b602.f38811f) {
                                if (!b602.k()) {
                                    if (!b602.p()) {
                                        if (b602.f38810e) {
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            boolean z16 = C10324xr.f53856c;
            if (!z16 && aVar3.f36924e != aVar.f36924e) {
                throw new AssertionError();
            }
            if (!z16 && aVar3.f36926g.length != aVar.f36926g.length) {
                throw new AssertionError();
            }
            int i15 = 0;
            while (true) {
                com.android.tools.r8.graph.O0[] o0Arr = aVar.f36926g;
                if (i15 >= o0Arr.length) {
                    break;
                }
                if (!C10324xr.f53856c && !aVar3.f36926g[i15].equals(o0Arr[i15])) {
                    throw new AssertionError();
                }
                i15++;
            }
        }
        C11.a((com.android.tools.r8.graph.W0) aVar3);
        return arrayList2;
    }

    @Override
    public final void a() {
        this.f40392c.a();
    }
}
