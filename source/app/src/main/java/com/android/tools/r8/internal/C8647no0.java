package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.J0;
import com.android.tools.r8.internal.B60;
import java.util.Arrays;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;

public final class C8647no0 {

    public static final boolean f51077g = true;

    public final C4798y f51078a;

    public final C8048kB f51079b;

    public final C4724u1 f51080c;

    public final C8570nJ f51081d;

    public final C8814oo0 f51082e;

    public final HE f51083f;

    public C8647no0(C4798y c4798y) {
        this.f51078a = c4798y;
        this.f51079b = new C8048kB(c4798y);
        C4724u1 b10 = c4798y.b();
        this.f51080c = b10;
        C8570nJ E10 = c4798y.E();
        this.f51081d = E10;
        this.f51082e = new C8814oo0(b10);
        this.f51083f = E10.v();
    }

    public final void a(ExecutorService executorService) {
        com.android.tools.r8.J.a(this.f51078a, this.f51078a.f().d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8647no0.this.a((com.android.tools.r8.graph.H2) obj);
            }
        }, executorService);
    }

    public final void b(boolean z10, com.android.tools.r8.graph.H5 h52) {
        a(h52.d().f1() && z10, h52);
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        final boolean z10 = true;
        if (h22.getType().a(this.f51082e.f51355a) || h22.getType().a(this.f51082e.f51356b)) {
            return;
        }
        if (h22.c1() || !this.f51083f.f40717b) {
            z10 = false;
        } else {
            com.android.tools.r8.androidapi.f a10 = this.f51078a.f38404S.a(this.f51081d);
            C5639Nr c5639Nr = new C5639Nr();
            c5639Nr.e(0);
            C4516j1[] c4516j1Arr = C4516j1.f37310u;
            C4516j1.a a11 = new C4516j1.a(true).a(com.android.tools.r8.graph.L4.b(4104, true));
            a11.f37341m = a10;
            a11.f37340l = a10;
            a11.f37339k = C5313Ib.f41136g;
            h22.a(a11.a(new com.android.tools.r8.graph.J0(0, 0, 0, new AbstractC5635Np[]{c5639Nr}, J0.a.f36468f, J0.b.f36474d, null)).a(this.f51080c.b(h22.getType())).a());
        }
        h22.h(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8647no0.this.b(z10, (com.android.tools.r8.graph.H5) obj);
            }
        }, new u.P0());
    }

    public final void a(boolean z10, com.android.tools.r8.graph.H5 h52) {
        C7215fB a10 = h52.a(this.f51078a, EW.a(this.f51078a));
        Z5 u10 = a10.u();
        W5 w52 = (W5) u10.f46159b.next();
        u10.f46160c = w52;
        EE I10 = w52.I();
        I10.a(X60.a(new NN0()));
        if (this.f51083f.f40717b && h52.d().f1()) {
            C10340xw0 a11 = I10.a(this.f51078a, a10, this.f51080c.b(h52.p().i0()));
            boolean z11 = C7405gK.f48231o;
            C7238fK c7238fK = new C7238fK();
            c7238fK.f44718d = this.f51082e.f51358d;
            C7238fK c7238fK2 = (C7238fK) c7238fK.a(a11);
            boolean z12 = B60.f38806g;
            c7238fK2.f52322b = B60.c.f38822h;
            I10.add(c7238fK2.c());
        }
        if (!z10) {
            C10340xw0 a12 = I10.a(this.f51078a, a10, this.f51080c.b(h52.getReference().i0()));
            if (this.f51083f.f40717b) {
                boolean z13 = C7405gK.f48231o;
                C7238fK c7238fK3 = new C7238fK();
                c7238fK3.f44718d = this.f51082e.f51358d;
                C7238fK c7238fK4 = (C7238fK) c7238fK3.a(a12);
                boolean z14 = B60.f38806g;
                c7238fK4.f52322b = B60.c.f38822h;
                I10.add(c7238fK4.c());
            }
            Set set = this.f51083f.f40716a;
            if (!set.isEmpty()) {
                while (true) {
                    if (I10.hasNext()) {
                        AbstractC10561zE abstractC10561zE = (AbstractC10561zE) I10.next();
                        if (abstractC10561zE.P1()) {
                            com.android.tools.r8.graph.A2 B22 = abstractC10561zE.e0().B2();
                            if (set.contains(B22)) {
                                I10.previous();
                                boolean z15 = C9960vh.f53189m;
                                C9793uh c9793uh = new C9793uh();
                                com.android.tools.r8.graph.M2 m22 = this.f51080c.f38052g2;
                                C4798y c4798y = this.f51078a;
                                C8854p10 b10 = C8854p10.b();
                                m22.getClass();
                                c9793uh.f52321a = a10.a(AbstractC8999pu0.a(m22, b10, (C4798y<?>) c4798y), (C4515j0) null);
                                c9793uh.f52322b = abstractC10561zE.getPosition();
                                c9793uh.f52917d = this.f51080c.b(B22.i0());
                                C9960vh c9960vh = new C9960vh(c9793uh.f52321a, c9793uh.f52917d);
                                B60 b60 = c9793uh.f52322b;
                                if (b60 != null) {
                                    c9960vh.b(b60);
                                }
                                boolean z16 = C7405gK.f48231o;
                                C7238fK c7238fK5 = new C7238fK();
                                c7238fK5.f44718d = this.f51082e.f51357c;
                                C7238fK c7238fK6 = (C7238fK) c7238fK5.a(Arrays.asList(a12, c9960vh.d()));
                                c7238fK6.f52322b = abstractC10561zE.getPosition();
                                I10 = I10.a(a10, u10, AbstractC7552hC.a(c9960vh, c7238fK6.c()), this.f51081d);
                                AbstractC10561zE abstractC10561zE2 = (AbstractC10561zE) I10.next();
                                if (!f51077g && abstractC10561zE2 != abstractC10561zE) {
                                    throw new AssertionError();
                                }
                            } else {
                                continue;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        if (u10.f46159b.hasNext()) {
                            W5 w53 = (W5) u10.f46159b.next();
                            u10.f46160c = w53;
                            I10 = w53.I();
                        }
                        if (!I10.hasNext()) {
                            break;
                        }
                    }
                }
            }
        }
        a10.x();
        this.f51079b.f49545x.a(a10, C8659ns0.c());
        h52.a((com.android.tools.r8.graph.J0) new C9550tB(this.f51078a, this.f51079b.f49545x).a(a10, C9875v8.b(), C8659ns0.c()), this.f51078a);
    }
}
