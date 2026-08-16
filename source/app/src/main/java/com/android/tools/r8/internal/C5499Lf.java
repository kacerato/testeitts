package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import java.util.Set;

public final class C5499Lf extends AbstractC5730Pf {

    public final S50 f42029f;

    public final Set f42030g;

    public C5499Lf(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C5939Sw c5939Sw, C6598bX c6598bX, S50 s50) {
        super(c4798y, h52, c5939Sw, c6598bX);
        this.f42030g = AbstractC5513Ll0.c();
        this.f42029f = s50;
    }

    @Override
    public final InterfaceC6078Vf a(AbstractC10561zE abstractC10561zE) {
        com.android.tools.r8.graph.F5 o10;
        Z4.c<?> o11;
        com.android.tools.r8.graph.H0 b10;
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
            } else if (r22 == 28) {
                C6558bE c10 = abstractC10561zE.c();
                C4554l1 field = c10.getField();
                if (c10.n().f53893j && field.getType().L0() && (o10 = c10.c(this.f43300a, this.f43301b).o()) != null) {
                    return this.f43302c.a(o10);
                }
            } else if (r22 == 38) {
                C7405gK i02 = abstractC10561zE.i0();
                com.android.tools.r8.graph.A2 B22 = i02.B2();
                if (B22.w0() == 1 && B22.k(0).L0() && B22.z0().L0() && (o11 = i02.f(this.f43300a, this.f43301b).o()) != null && (b10 = o11.a(this.f43300a, (VJ) i02, this.f43301b).b()) != null && b10.A().h().j()) {
                    InterfaceC6078Vf a14 = a(i02.b(0));
                    boolean z10 = C6249Yf.f46053c;
                    if (a14.isUnknown()) {
                        return C10504yv0.f54195b;
                    }
                    return new C6249Yf(a14);
                }
            } else if (r22 == 53) {
                A40 A02 = abstractC10561zE.A0();
                InterfaceC6078Vf a15 = a((C10340xw0) A02.f54321f.get(0));
                InterfaceC6078Vf a16 = a(A02.y2());
                boolean z11 = C5962Tf.f44523d;
                if (a15.isUnknown() && a16.isUnknown()) {
                    return C10504yv0.f54195b;
                }
                return new C5962Tf(a15, a16);
            }
            int i12 = F1.f40064a;
            return C10504yv0.f54195b;
        }
        C9523t2 u10 = abstractC10561zE.u();
        InterfaceC6078Vf a17 = a((C10340xw0) u10.f54321f.get(0));
        InterfaceC6078Vf a18 = a(u10.y2());
        boolean z12 = C5788Qf.f43663d;
        if (a17.isUnknown() && a18.isUnknown()) {
            return C10504yv0.f54195b;
        }
        return new C5788Qf(a17, a18);
    }

    @Override
    public final InterfaceC6078Vf a(C7201f60 c7201f60) {
        InterfaceC6078Vf a10;
        if (this.f42030g.add(c7201f60) && c7201f60.c0().size() == 2) {
            AbstractC8999pu0 u10 = c7201f60.u();
            u10.getClass();
            if (u10 instanceof C9736uI) {
                InterfaceC6078Vf a11 = a((C10340xw0) c7201f60.f47863q.get(0));
                InterfaceC6078Vf a12 = a((C10340xw0) c7201f60.f47863q.get(1));
                if (a11.isUnknown() && a12.isUnknown()) {
                    int i10 = F1.f40064a;
                    return C10504yv0.f54195b;
                }
                W5 w52 = c7201f60.f47862p;
                S50 s50 = this.f42029f;
                W5 w53 = w52.u().get(0);
                W5 w54 = w52.u().get(1);
                C9289rg d10 = s50.a(w53).d();
                if (d10 == null) {
                    int i11 = F1.f40064a;
                    a10 = C10504yv0.f54195b;
                } else {
                    C9289rg d11 = s50.a(w54).d();
                    if (d11 == null) {
                        int i12 = F1.f40064a;
                        a10 = C10504yv0.f54195b;
                    } else {
                        a10 = d10.a(d11);
                    }
                }
                int i13 = C5846Rf.f43950e;
                if (a11.isUnknown() && a12.isUnknown()) {
                    return C10504yv0.f54195b;
                }
                return new C5846Rf(a10, a11, a12);
            }
        }
        int i14 = F1.f40064a;
        return C10504yv0.f54195b;
    }
}
