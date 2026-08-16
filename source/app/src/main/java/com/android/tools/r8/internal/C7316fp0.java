package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;

public final class C7316fp0 implements InterfaceC7982jp0 {

    public static final boolean f48102f = true;

    public final C10340xw0 f48103a;

    public final C10340xw0 f48104b;

    public final String f48105c;

    public final C10340xw0 f48106d;

    public boolean f48107e;

    public C7316fp0(C10340xw0 c10340xw0, C10340xw0 c10340xw02, String str, C10340xw0 c10340xw03) {
        boolean z10 = f48102f;
        if (!z10 && c10340xw0 == null && str == null) {
            throw new AssertionError();
        }
        if (!z10 && c10340xw02 == null && str == null) {
            throw new AssertionError();
        }
        this.f48103a = c10340xw0;
        this.f48104b = c10340xw02;
        this.f48105c = str;
        this.f48106d = c10340xw03;
    }

    @Override
    public final boolean a() {
        return true;
    }

    @Override
    public final C7316fp0 c() {
        return this;
    }

    @Override
    public final void a(C4798y c4798y, C7215fB c7215fB, C7549hB c7549hB, AbstractC10561zE abstractC10561zE, C10696a c10696a, C5752Pp0 c5752Pp0) {
        boolean z10 = f48102f;
        if (!z10 && !abstractC10561zE.P1()) {
            throw new AssertionError();
        }
        if (!z10 && abstractC10561zE.f54321f.size() != 2) {
            throw new AssertionError();
        }
        AbstractC10561zE previous = c7549hB.previous();
        if (!z10 && previous != abstractC10561zE) {
            throw new AssertionError();
        }
        String str = this.f48105c;
        C10340xw0 a10 = str != null ? InterfaceC7982jp0.a(c4798y, c7215fB, c7549hB, previous, str) : null;
        if (!z10 && this.f48103a == null && a10 == null) {
            throw new AssertionError();
        }
        if (!z10 && this.f48104b == null && a10 == null) {
            throw new AssertionError();
        }
        boolean z11 = C8405mK.f50258o;
        C8238lK c8238lK = new C8238lK();
        c8238lK.f44718d = c4798y.b().f37887J4.f38242d;
        c8238lK.f52321a = this.f48106d;
        C10340xw0 c10340xw0 = this.f48103a;
        if (c10340xw0 == null) {
            c10340xw0 = a10;
        }
        C10340xw0 c10340xw02 = this.f48104b;
        if (c10340xw02 != null) {
            a10 = c10340xw02;
        }
        C8238lK c8238lK2 = (C8238lK) c8238lK.a(AbstractC7552hC.a(c10340xw0, a10));
        c8238lK2.f52322b = abstractC10561zE.getPosition();
        c7549hB.add(c8238lK2.c());
        AbstractC10561zE next = c7549hB.next();
        if (!z10 && next != abstractC10561zE) {
            throw new AssertionError();
        }
        if (this.f48107e) {
            InterfaceC7982jp0.a(c7549hB, abstractC10561zE, c10696a, c5752Pp0);
        } else {
            abstractC10561zE.a(1, this.f48106d);
        }
    }
}
