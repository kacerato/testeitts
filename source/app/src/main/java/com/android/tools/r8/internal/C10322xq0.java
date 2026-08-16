package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.io.UTFDataFormatException;
import java.util.Iterator;
import java.util.Set;

public final class C10322xq0 extends AbstractC9617te {

    public final com.android.tools.r8.naming.E f53853e;

    public final C6949de f53854f;

    public C10322xq0(C4798y c4798y, com.android.tools.r8.naming.E e10) {
        super(c4798y);
        this.f53853e = e10;
        this.f53854f = AbstractC8999pu0.a((C4798y<?>) c4798y, C8854p10.b());
    }

    @Override
    public final String a() {
        return "StringSwitchRemover";
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB, AbstractC6931dX abstractC6931dX, C5035Df c5035Df) {
        AbstractC10155wq0 c9821uq0;
        Z5 u10 = c7215fB.u();
        boolean z10 = false;
        while (u10.hasNext()) {
            W5 next = u10.next();
            Iterator it = next.o().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                C8319lq0 O02 = ((W5) it.next()).i().O0();
                if (O02 != null) {
                    if (c7215fB.f47895b.c()) {
                        if (!com.android.tools.r8.naming.F.b(this.f52647b, (C10340xw0) O02.f54321f.get(0))) {
                            continue;
                        }
                    }
                    if (next == O02.u2()) {
                        next.I().a(c7215fB, u10).I().a(c7215fB, u10);
                        z10 = true;
                        break;
                    }
                    z10 = true;
                }
            }
        }
        if (!z10) {
            return InterfaceC10118we.f53547a;
        }
        Set c10 = AbstractC5513Ll0.c();
        Z5 u11 = c7215fB.u();
        while (u11.hasNext()) {
            W5 next2 = u11.next();
            C8319lq0 O03 = next2.i().O0();
            if (O03 != null) {
                if (c7215fB.f47895b.c()) {
                    if (!com.android.tools.r8.naming.F.b(this.f52647b, (C10340xw0) O03.f54321f.get(0))) {
                        continue;
                    }
                }
                try {
                    if (O03.v2() >= this.f52646a.E().f50665b0) {
                        if (this.f52646a.E().R()) {
                            if (com.android.tools.r8.naming.F.b(this.f52646a.b(), (C10340xw0) O03.f54321f.get(0))) {
                            }
                        }
                        c9821uq0 = new C9988vq0(this, c7215fB, u11, next2, O03, c10);
                        c9821uq0.a();
                    }
                    c9821uq0 = new C9821uq0(this, c7215fB, u11, next2, O03, c10);
                    c9821uq0.a();
                } catch (UTFDataFormatException unused) {
                    throw new C5417Jv0();
                }
            }
        }
        if (this.f53853e != null && !c10.isEmpty()) {
            this.f53853e.a(c7215fB, c10);
        }
        c7215fB.x();
        return InterfaceC10118we.f53548b;
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return c7215fB.f47902i.a(62);
    }
}
