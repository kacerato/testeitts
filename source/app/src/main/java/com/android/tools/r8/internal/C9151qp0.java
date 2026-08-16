package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.function.Consumer;

public final class C9151qp0 implements E1 {

    public static final boolean f51895b = true;

    public final C5752Pp0 f51896a;

    public C9151qp0(C5752Pp0 c5752Pp0) {
        this.f51896a = c5752Pp0;
    }

    @Override
    public final D1 a(Object obj, D1 d12) {
        return C8984pp0.f51628h;
    }

    @Override
    public final C8984pp0 b(W5 w52, C8984pp0 c8984pp0) {
        if (c8984pp0.d()) {
            return c8984pp0;
        }
        if (!C8984pp0.f51629i && c8984pp0.d()) {
            throw new AssertionError();
        }
        final C8817op0 c8817op0 = new C8817op0(c8984pp0);
        w52.s().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9151qp0.this.a(c8817op0, (C7201f60) obj);
            }
        });
        return c8817op0.a();
    }

    public final void a(C8817op0 c8817op0, C7201f60 c7201f60) {
        if (this.f51896a.a(c7201f60)) {
            c8817op0.d();
            c8817op0.f51363d.add(c7201f60);
        }
        for (C10340xw0 c10340xw0 : c7201f60.c0()) {
            if (c8817op0.f51363d.contains(c10340xw0)) {
                c8817op0.d();
                c8817op0.f51363d.add(c7201f60);
                c8817op0.a(c7201f60, c10340xw0);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x013f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C8984pp0 a(AbstractC10561zE abstractC10561zE, C8984pp0 c8984pp0) {
        if (c8984pp0.d()) {
            return c8984pp0;
        }
        if (!C8984pp0.f51629i && c8984pp0.d()) {
            throw new AssertionError();
        }
        C8817op0 c8817op0 = new C8817op0(c8984pp0);
        boolean a10 = this.f51896a.a(new C9962vh1(c8984pp0), abstractC10561zE);
        if (!a10 && (abstractC10561zE.F1() || abstractC10561zE.N1() || abstractC10561zE.g2() || abstractC10561zE.o1())) {
            ArrayList arrayList = abstractC10561zE.f54321f;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                C10340xw0 c10340xw0 = (C10340xw0) obj;
                if (c8817op0.f51363d.contains(c10340xw0)) {
                    if (c8817op0.f51362c == c8817op0.f51365f.f51632d) {
                        c8817op0.f51362c = new HashSet(c8817op0.f51362c);
                    }
                    if (c8817op0.f51362c.add(c10340xw0)) {
                        c8817op0.f51364e.add(c10340xw0);
                    }
                }
            }
        }
        if (a10) {
            if (abstractC10561zE.P1()) {
                boolean z10 = f51895b;
                if (!z10 && abstractC10561zE.f54321f.isEmpty()) {
                    throw new AssertionError();
                }
                C10340xw0 W02 = abstractC10561zE.W0();
                if (!c8817op0.f51363d.contains(W02)) {
                    if (!z10) {
                        C10340xw0 i11 = W02.i();
                        if (!i11.K() || !i11.f53886c.J().A2()) {
                            throw new AssertionError();
                        }
                    }
                    c8817op0.d();
                    c8817op0.f51363d.add(W02);
                }
            } else if (!f51895b && !abstractC10561zE.c2()) {
                throw new AssertionError();
            }
        }
        if (!f51895b && a10 && !abstractC10561zE.c2() && !c8817op0.f51363d.contains(abstractC10561zE.W0())) {
            throw new AssertionError();
        }
        C10340xw0 d10 = abstractC10561zE.d();
        if (d10 != null) {
            C5752Pp0 c5752Pp0 = this.f51896a;
            if ((abstractC10561zE instanceof C4) || abstractC10561zE.t1() || c5752Pp0.b(abstractC10561zE)) {
                if (c8817op0.f51363d.contains(abstractC10561zE.W0())) {
                    c8817op0.d();
                    c8817op0.f51363d.add(d10);
                    c8817op0.a(d10, abstractC10561zE.W0());
                    if (!a10) {
                        if (c8817op0.f51363d.contains(abstractC10561zE.d()) && (abstractC10561zE.k1() || abstractC10561zE.N1() || abstractC10561zE.D1() || abstractC10561zE.n1() || abstractC10561zE.t1())) {
                            C10340xw0 d11 = abstractC10561zE.d();
                            if (c8817op0.f51362c == c8817op0.f51365f.f51632d) {
                                c8817op0.f51362c = new HashSet(c8817op0.f51362c);
                            }
                            if (c8817op0.f51362c.add(d11)) {
                                c8817op0.f51364e.add(d11);
                            }
                        }
                    }
                }
            }
            if (this.f51896a.a(d10)) {
                c8817op0.d();
                c8817op0.f51363d.add(d10);
            }
            if (!a10) {
            }
        }
        return c8817op0.a();
    }
}
