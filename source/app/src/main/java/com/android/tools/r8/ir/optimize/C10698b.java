package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.I2;
import com.android.tools.r8.graph.L4;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC10330xt;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC6931dX;
import com.android.tools.r8.internal.AbstractC8028k40;
import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C2;
import com.android.tools.r8.internal.C5035Df;
import com.android.tools.r8.internal.C6949de;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C7238fK;
import com.android.tools.r8.internal.C7405gK;
import com.android.tools.r8.internal.C8166kv;
import com.android.tools.r8.internal.C8331lu0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8696o40;
import com.android.tools.r8.internal.C8854p10;
import com.android.tools.r8.internal.C9603tZ;
import com.android.tools.r8.internal.I5;
import com.android.tools.r8.internal.P60;
import com.android.tools.r8.internal.QJ;
import com.android.tools.r8.internal.Y5;
import com.android.tools.r8.internal.Z5;
import com.android.tools.r8.ir.optimize.C10698b;
import com.android.tools.r8.synthesis.S;
import java.util.ArrayList;
import java.util.function.Consumer;

public final class C10698b {

    public static final boolean f54836d = true;

    public final C4798y f54837a;

    public final C4724u1 f54838b;

    public final C8570nJ f54839c;

    public C10698b(C4798y c4798y) {
        this.f54837a = c4798y;
        this.f54839c = c4798y.E();
        this.f54838b = c4798y.b();
    }

    public final void a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX, C5035Df c5035Df) {
        if (!f54836d) {
            abstractC6931dX.getClass();
            if (abstractC6931dX instanceof P60) {
                throw new AssertionError();
            }
        }
        C8570nJ c8570nJ = this.f54839c;
        c8570nJ.getClass();
        if (c8570nJ.c(C2.K)) {
            return;
        }
        C10696a c10696a = new C10696a();
        Z5 u10 = c7215fB.u();
        while (u10.hasNext()) {
            Y5 I10 = u10.next().I();
            ArrayList arrayList = new ArrayList();
            while (I10.hasNext()) {
                QJ c02 = I10.next().c0();
                if (c02 != null && c02.B2().a(this.f54838b.f37915N4.f38457a)) {
                    if (!f54836d && c02.f54321f.size() != 3) {
                        throw new AssertionError();
                    }
                    C10340xw0 C22 = c02.C2();
                    AbstractC10561zE r10 = C22.r();
                    if (r10.c2()) {
                        boolean z10 = C7405gK.f48231o;
                        C7238fK c7238fK = new C7238fK();
                        c7238fK.f44718d = a(abstractC6931dX, c5035Df).getReference();
                        c7238fK.f52321a = c7215fB.a(this.f54838b.f38165u3.b(this.f54837a), (C4515j0) null);
                        c7238fK.f52322b = c02.getPosition();
                        C7405gK c10 = ((C7238fK) c7238fK.a(c02.f54321f.subList(1, 3))).c();
                        I10.a(c10, (C10696a) null);
                        C22.a(c10.d(), c10696a);
                        arrayList.add(r10.w0());
                    }
                }
            }
            arrayList.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10698b.a((C9603tZ) obj);
                }
            });
        }
        C4798y c4798y = this.f54837a;
        if (!c10696a.f54829b.isEmpty()) {
            new C8331lu0(c4798y, c7215fB, false).a(c10696a, 2);
        }
        if (!f54836d && !c7215fB.b(this.f54837a)) {
            throw new AssertionError();
        }
    }

    public final H5 a(AbstractC6931dX abstractC6931dX, C5035Df c5035Df) {
        final C4724u1 b10 = this.f54837a.b();
        final I2 a10 = b10.a(b10.f38165u3, b10.f38052g2, b10.f38173v3);
        H5 b11 = this.f54837a.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58150C;
                return bVar;
            }
        }, c5035Df.a(), this.f54837a, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10698b.this.a(a10, b10, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        C8696o40 a11 = AbstractC8028k40.a();
        C4798y c4798y = this.f54837a;
        M2 m22 = this.f54838b.f38165u3;
        C8854p10 b12 = C8854p10.b();
        m22.getClass();
        C6949de b13 = AbstractC8999pu0.a(m22, b12, (C4798y<?>) c4798y).b();
        boolean z10 = AbstractC10330xt.f53865a;
        C8166kv c8166kv = new C8166kv(b13);
        a11.getClass();
        C4516j1 d10 = b11.d();
        d10.T0().a(c4798y, d10, c8166kv);
        abstractC6931dX.b(b11);
        abstractC6931dX.d().e(b11, c5035Df.f39582c);
        return b11;
    }

    public final void a(I2 i22, final C4724u1 c4724u1, com.android.tools.r8.synthesis.N n10) {
        n10.f58124n = this.f54837a.f38405T;
        n10.f58115e = i22;
        n10.f58119i = L4.b(4105, false);
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(A2 a22) {
                AbstractC4497i0 d10;
                d10 = I5.d(C4724u1.this, a22);
                return d10;
            }
        };
    }

    public static void a(C9603tZ c9603tZ) {
        c9603tZ.f54317b.l().c(c9603tZ);
    }
}
