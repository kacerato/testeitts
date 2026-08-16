package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Collection;
import java.util.Set;
import java.util.function.Consumer;

public final class C6933dY extends AbstractC9617te {

    public static final boolean f47414e = true;

    public C6933dY(C4798y c4798y) {
        super(c4798y);
    }

    @Override
    public final String a() {
        return "MoveResultRewriter";
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB) {
        boolean z10;
        com.android.tools.r8.graph.H0 e10;
        int t10;
        boolean z11;
        Set c10 = AbstractC5513Ll0.c();
        Z5 u10 = c7215fB.u();
        C8331lu0 c8331lu0 = new C8331lu0(this.f52646a, c7215fB, false);
        boolean z12 = true;
        c8331lu0.f50139b = true;
        boolean z13 = false;
        boolean z14 = false;
        while (u10.hasNext()) {
            final W5 next = u10.next();
            if (!c10.contains(next)) {
                Y5 I10 = next.I();
                while (I10.hasNext()) {
                    VJ e02 = I10.next().e0();
                    if (e02 != null && e02.e1() && !e02.d().z() && (e10 = e02.e(this.f52646a, c7215fB.j())) != null) {
                        C4516j1 d10 = e10.d();
                        d10.L0();
                        TW tw = d10.f37320m;
                        if (tw.G() && (t10 = tw.t()) >= 0) {
                            AbstractC8999pu0 a10 = AbstractC8999pu0.a(e02.B2().f36127i.f36440e, C8854p10.h(), (C4798y<?>) this.f52646a);
                            AbstractC8999pu0 a11 = AbstractC8999pu0.a(e02.R1() ? e02.B2().f36127i.f36441f.f36675b[t10] : t10 == 0 ? e02.B2().f38297f : e02.B2().f36127i.f36441f.f36675b[t10 - 1], C8854p10.h(), (C4798y<?>) this.f52646a);
                            if (this.f52646a.m() ? a11.a(a10, this.f52646a) : a11.equals(a10)) {
                                C10340xw0 c10340xw0 = (C10340xw0) e02.f54321f.get(t10);
                                C10340xw0 d11 = e02.d();
                                if (!f47414e) {
                                    d11.a(c10340xw0.Y());
                                }
                                if (c10340xw0.u().a(d11.u(), this.f52646a)) {
                                    C10696a a12 = c10340xw0.u().equals(d11.u()) ? C10696a.f54828c : d11.a();
                                    z13 |= d11.V() > 0;
                                    d11.f(c10340xw0);
                                    e02.d((C10340xw0) null);
                                    if (a12.f54829b.isEmpty()) {
                                        z11 = true;
                                    } else {
                                        final U6 u62 = new U6();
                                        z11 = true;
                                        c8331lu0.f50139b = true;
                                        c8331lu0.a(a12, new Consumer() {
                                            @Override
                                            public final void accept(Object obj) {
                                                U6 u63 = U6.this;
                                                W5 w52 = next;
                                                u63.b(r2.b() == r1);
                                            }
                                        });
                                        if (u62.d()) {
                                            I10 = next.I();
                                        }
                                    }
                                    z12 = z11;
                                    z14 = z12;
                                }
                            }
                            z10 = true;
                            z12 = z10;
                        }
                    }
                    z10 = z12;
                    z12 = z10;
                }
            }
        }
        C10696a c10696a = new C10696a();
        if (!c10.isEmpty()) {
            c7215fB.b((Collection<W5>) c10);
            c7215fB.a((C6382aB) null, c10696a);
            if (!f47414e && !c7215fB.n().isEmpty()) {
                throw new AssertionError();
            }
        } else if (z13) {
            c7215fB.a((C6382aB) null, c10696a);
        }
        c8331lu0.a(c10696a, C6628bi.b());
        if (z14) {
            c7215fB.x();
        }
        return z14 ? InterfaceC10118we.f53548b : InterfaceC10118we.f53547a;
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return this.f52648c.P() && c7215fB.f47902i.c();
    }
}
