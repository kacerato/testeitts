package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C10620ze0 {

    public static final boolean f54432f = true;

    public final C4798y f54433a;

    public final C9539t70 f54434b;

    public final C4724u1 f54435c;

    public final C8659ns0 f54436d;

    public final C4859Ae0 f54437e;

    public C10620ze0(C4798y c4798y, C9539t70 c9539t70, C8659ns0 c8659ns0) {
        this.f54433a = c4798y;
        C4724u1 b10 = c4798y.b();
        this.f54435c = b10;
        this.f54437e = new C4859Ae0(b10);
        this.f54434b = c9539t70;
        this.f54436d = c8659ns0;
    }

    public final void a(String str) {
        C7215fB a10 = this.f54433a.b(this.f54437e.f38671b).H().a(this.f54433a);
        if (!f54432f && a10.A().count() != 3) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.M2 d10 = this.f54435c.d(str);
        C7549hB p10 = a10.p();
        p10.next();
        boolean z10 = C9603tZ.f52626m;
        C9436sZ c9436sZ = new C9436sZ();
        c9436sZ.f52377d = d10;
        C4798y c4798y = this.f54433a;
        d10.getClass();
        c9436sZ.f52321a = a10.a(AbstractC8999pu0.a(d10, C8854p10.b(), (C4798y<?>) c4798y), (C4515j0) null);
        C9603tZ c9603tZ = new C9603tZ(c9436sZ.f52377d, c9436sZ.f52321a);
        B60 b60 = c9436sZ.f52322b;
        if (b60 != null) {
            c9603tZ.b(b60);
        }
        C10340xw0 d11 = c9603tZ.d();
        p10.a(c9603tZ, (C10696a) null);
        p10.next();
        C4724u1 c4724u1 = this.f54435c;
        com.android.tools.r8.graph.A2 a11 = c4724u1.a(d10, c4724u1.a(c4724u1.f37905M1, new com.android.tools.r8.graph.M2[0]), c4724u1.f38067i1);
        boolean z11 = QJ.f43538p;
        PJ pj2 = new PJ();
        pj2.f44718d = a11;
        p10.a(((PJ) pj2.a(Arrays.asList(d11))).c(), (C10696a) null);
        p10.next();
        boolean z12 = C10471yk0.f54132l;
        C10304xk0 c10304xk0 = new C10304xk0();
        c10304xk0.f53830d = d11;
        C10471yk0 c10471yk0 = d11 == null ? new C10471yk0() : new C10471yk0(c10304xk0.f53830d);
        B60 b602 = c10304xk0.f52322b;
        if (b602 != null) {
            c10471yk0.b(b602);
        }
        p10.a(c10471yk0, (C10696a) null);
        C9539t70 c9539t70 = this.f54434b;
        boolean z13 = AbstractC8028k40.f49478a;
        c9539t70.a(a10, AbstractC8529n40.f50496b, this.f54436d);
    }

    public static boolean a(C4516j1 c4516j1) {
        return c4516j1.b1() && c4516j1.Q0().v0();
    }

    public final void a(AbstractC8552nC abstractC8552nC, com.android.tools.r8.graph.H5 h52) {
        C7215fB a10 = h52.a(this.f54433a);
        Z5 u10 = a10.u();
        boolean z10 = false;
        while (u10.f46159b.hasNext()) {
            W5 w52 = (W5) u10.f46159b.next();
            u10.f46160c = w52;
            Y5 I10 = w52.I();
            while (I10.hasNext()) {
                AbstractC10561zE next = I10.next();
                if (next.T1() || next.R1()) {
                    VJ e02 = next.e0();
                    com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) abstractC8552nC.get(e02.B2());
                    if (a22 != null) {
                        boolean z11 = C7405gK.f48231o;
                        C7238fK c7238fK = new C7238fK();
                        c7238fK.f44718d = a22;
                        C7238fK c7238fK2 = (C7238fK) c7238fK.a(e02.f54321f);
                        c7238fK2.f52322b = e02.getPosition();
                        C7405gK c10 = c7238fK2.c();
                        I10.previous();
                        int i10 = AbstractC7552hC.f48487c;
                        I10.a(a10, u10, new C5920Sm0(c10), this.f54433a.E());
                        if (I10.hasNext()) {
                            I10.next();
                        }
                        z10 = true;
                    }
                }
            }
        }
        if (z10) {
            C9539t70 c9539t70 = this.f54434b;
            boolean z12 = AbstractC8028k40.f49478a;
            c9539t70.a(a10, AbstractC8529n40.f50496b, this.f54436d);
        }
    }

    public final void a() {
        C4724u1 c4724u1 = this.f54435c;
        com.android.tools.r8.graph.A2 a22 = c4724u1.f37922O4.f36332n;
        com.android.tools.r8.graph.A2 a10 = c4724u1.a(this.f54437e.f38670a, c4724u1.a(c4724u1.f37905M1, c4724u1.f38180w2), "onClassNewInstance");
        C4724u1 c4724u12 = this.f54435c;
        com.android.tools.r8.graph.A2 a23 = c4724u12.f37922O4.f36330l;
        com.android.tools.r8.graph.A2 a11 = c4724u12.a(this.f54437e.f38670a, c4724u12.a(c4724u12.f37905M1, c4724u12.f38180w2, c4724u12.f38052g2, c4724u12.f38100m2), "onClassGetDeclaredMethod");
        C4724u1 c4724u13 = this.f54435c;
        final AbstractC8552nC a12 = C6620bf0.a(3, new Map.Entry[]{new C9053qC(a22, a10), new C9053qC(a23, a11), new C9053qC(c4724u13.f37922O4.f36320b, c4724u13.a(this.f54437e.f38670a, c4724u13.a(c4724u13.f37905M1, c4724u13.f38052g2), "onClassForName"))});
        Iterator<com.android.tools.r8.graph.H2> it = this.f54433a.f().d().iterator();
        while (it.hasNext()) {
            it.next().h(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10620ze0.this.a(a12, (com.android.tools.r8.graph.H5) obj);
                }
            }, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C10620ze0.a((C4516j1) obj);
                }
            });
        }
    }
}
