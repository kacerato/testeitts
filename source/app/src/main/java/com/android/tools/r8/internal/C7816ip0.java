package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;

public final class C7816ip0 implements InterfaceC7982jp0 {

    public static final boolean f49066d = true;

    public final C10340xw0 f49067a;

    public final C10340xw0 f49068b;

    public final String f49069c;

    public C7816ip0(C10340xw0 c10340xw0, C10340xw0 c10340xw02, String str) {
        boolean z10 = f49066d;
        if (!z10 && c10340xw0 == null && str == null) {
            throw new AssertionError();
        }
        if (!z10 && c10340xw02 == null && str == null) {
            throw new AssertionError();
        }
        this.f49067a = c10340xw0;
        this.f49068b = c10340xw02;
        this.f49069c = str;
    }

    @Override
    public final void a(C4798y c4798y, C7215fB c7215fB, C7549hB c7549hB, AbstractC10561zE abstractC10561zE, C10696a c10696a, C5752Pp0 c5752Pp0) {
        C10340xw0 c10340xw0;
        if (this.f49069c != null) {
            c10340xw0 = InterfaceC7982jp0.a(c4798y, c7215fB, c7549hB, c7549hB.previous(), this.f49069c);
            c7549hB.next();
        } else {
            c10340xw0 = null;
        }
        boolean z10 = f49066d;
        if (!z10 && this.f49067a == null && c10340xw0 == null) {
            throw new AssertionError();
        }
        if (!z10 && this.f49068b == null && c10340xw0 == null) {
            throw new AssertionError();
        }
        boolean z11 = C8405mK.f50258o;
        C8238lK c8238lK = new C8238lK();
        boolean z12 = AbstractC8999pu0.f51660a;
        c8238lK.f52321a = c7215fB.a(AbstractC8999pu0.a(c4798y.b().f38052g2, C8854p10.h(), (C4798y<?>) c4798y).b(), abstractC10561zE.q());
        c8238lK.f44718d = c4798y.b().f37887J4.f38242d;
        C10340xw0 c10340xw02 = this.f49067a;
        if (c10340xw02 == null) {
            c10340xw02 = c10340xw0;
        }
        C10340xw0 c10340xw03 = this.f49068b;
        if (c10340xw03 != null) {
            c10340xw0 = c10340xw03;
        }
        c7549hB.a(((C8238lK) c8238lK.a(AbstractC7552hC.a(c10340xw02, c10340xw0))).c(), (C10696a) null);
    }
}
