package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C9632tj extends AbstractC5730Pf {
    public C9632tj(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C5939Sw c5939Sw, C6598bX c6598bX) {
        super(c4798y, h52, c5939Sw, c6598bX);
    }

    @Override
    public final InterfaceC6078Vf a(AbstractC10561zE abstractC10561zE) {
        int r22 = abstractC10561zE.r2();
        if (r22 != 4) {
            if (r22 == 5) {
                C8024k3 v10 = abstractC10561zE.v();
                AbstractC8999pu0 a10 = v10.a();
                a10.getClass();
                if (a10 instanceof C9736uI) {
                    return this.f43303d.a(this.f43301b, v10.b(true));
                }
            } else if (r22 == 15) {
                C9126qh J10 = abstractC10561zE.J();
                AbstractC8999pu0 a11 = J10.a();
                a11.getClass();
                if (a11 instanceof C9736uI) {
                    G1 g12 = this.f43300a.f38427t;
                    if (J10.f54320e.z()) {
                        int i10 = F1.f40064a;
                        return C10504yv0.f54195b;
                    }
                    if (J10.a().y()) {
                        AbstractC8999pu0 a12 = J10.a();
                        g12.getClass();
                        if (G1.f40367f || a12.y()) {
                            return C5283Hm0.f40867c;
                        }
                        throw new AssertionError();
                    }
                    return g12.a(J10.f51851l, J10.a());
                }
            } else if (r22 == 25) {
                EB V10 = abstractC10561zE.V();
                if (V10.x2()) {
                    InterfaceC6078Vf a13 = a((C10340xw0) V10.f54321f.get(0));
                    NB nb2 = V10.f39789l;
                    int i11 = C6135Wf.f45499d;
                    if (a13.isUnknown()) {
                        return C10504yv0.f54195b;
                    }
                    return new C6135Wf(a13, nb2);
                }
            }
            int i12 = F1.f40064a;
            return C10504yv0.f54195b;
        }
        C9523t2 u10 = abstractC10561zE.u();
        InterfaceC6078Vf a14 = a((C10340xw0) u10.f54321f.get(0));
        InterfaceC6078Vf a15 = a(u10.y2());
        boolean z10 = C5788Qf.f43663d;
        if (a14.isUnknown() && a15.isUnknown()) {
            return C10504yv0.f54195b;
        }
        return new C5788Qf(a14, a15);
    }

    @Override
    public final InterfaceC6078Vf a(C7201f60 c7201f60) {
        int i10 = F1.f40064a;
        return C10504yv0.f54195b;
    }
}
