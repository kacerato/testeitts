package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;

public final class C6816cp0 implements InterfaceC7982jp0 {

    public static final boolean f47180b = true;

    public final String f47181a;

    public C6816cp0(String str) {
        this.f47181a = str;
    }

    @Override
    public final void a(C4798y c4798y, C7215fB c7215fB, C7549hB c7549hB, AbstractC10561zE abstractC10561zE, C10696a c10696a, C5752Pp0 c5752Pp0) {
        com.android.tools.r8.graph.A2 a22;
        com.android.tools.r8.graph.A2 a23;
        WJ f02 = c7549hB.previous().f0();
        boolean z10 = f47180b;
        if (!z10 && f02 == null) {
            throw new AssertionError();
        }
        C10340xw0 a10 = InterfaceC7982jp0.a(c4798y, c7215fB, c7549hB, f02, this.f47181a);
        c7549hB.next();
        com.android.tools.r8.graph.A2 B22 = f02.B2();
        if (f02.a(c4798y.b())) {
            boolean z11 = QJ.f43538p;
            PJ pj2 = (PJ) new PJ().a(AbstractC7552hC.a(f02.C2(), a10));
            C4724u1 b10 = c4798y.b();
            if (B22.s0() == b10.f37864G2) {
                a23 = b10.f38182w4.f37665q;
            } else {
                if (!AbstractC6650bp0.f46872a && B22.s0() != b10.f37857F2) {
                    throw new AssertionError();
                }
                a23 = b10.f38174v4.f37665q;
            }
            pj2.f44718d = a23;
            pj2.f52321a = f02.d();
            c7549hB.a(pj2.c(), (C10696a) null);
            return;
        }
        C4724u1 b11 = c4798y.b();
        if (B22 == b11.f38182w4.f37660l || B22 == b11.f38174v4.f37660l) {
            f02.a(1, a10);
            return;
        }
        boolean z12 = C8405mK.f50258o;
        C8238lK c8238lK = (C8238lK) new C8238lK().a(AbstractC7552hC.a(f02.C2(), a10));
        C4724u1 b12 = c4798y.b();
        if (B22.s0() == b12.f37864G2) {
            a22 = b12.f38182w4.f37660l;
        } else {
            if (!z10 && B22.s0() != b12.f37857F2) {
                throw new AssertionError();
            }
            a22 = b12.f38174v4.f37660l;
        }
        c8238lK.f44718d = a22;
        c8238lK.f52321a = f02.d();
        c7549hB.a(c8238lK.c(), (C10696a) null);
    }

    @Override
    public final boolean b() {
        return true;
    }
}
