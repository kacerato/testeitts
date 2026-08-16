package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Set;

public final class KQ extends AbstractC9617te {

    public static final boolean f41666e = true;

    public KQ(C4798y c4798y) {
        super(c4798y);
    }

    @Override
    public final String a() {
        return "KnownArrayLengthRewriter";
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB) {
        C7549hB p10 = c7215fB.p();
        boolean z10 = false;
        while (p10.hasNext()) {
            AbstractC10561zE next = p10.next();
            next.getClass();
            if (next instanceof P3) {
                P3 z11 = next.z();
                if (!z11.e1() || !z11.d().z()) {
                    C10340xw0 i10 = ((C10340xw0) z11.f54321f.get(0)).i();
                    if (!i10.j() && ((C10340xw0) z11.f54321f.get(0)).O() && !i10.z()) {
                        F1 a10 = i10.a(this.f52646a, c7215fB.j(), M1.f42128a);
                        if (a10.W() || i10.O()) {
                            AbstractC10561zE r10 = i10.r();
                            if (!f41666e && r10 == null) {
                                throw new AssertionError();
                            }
                            Set a02 = z11.d().a0();
                            r10.getClass();
                            if (r10 instanceof C8769oZ) {
                                z11.d().f((C10340xw0) r10.t0().f54321f.get(0));
                                p10.i();
                            } else if (r10.b2()) {
                                long j10 = r10.v0().f52063l;
                                if (j10 <= 2147483647L) {
                                    p10.a(c7215fB, (int) j10);
                                }
                            } else if (a10.W()) {
                                p10.a(c7215fB, a10.T());
                            }
                            a02.forEach(new C9574tK0());
                            z10 = true;
                        }
                    }
                }
            }
        }
        if (z10) {
            c7215fB.x();
        }
        return z10 ? InterfaceC10118we.f53548b : InterfaceC10118we.f53547a;
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return c7215fB.f47902i.a(7);
    }
}
