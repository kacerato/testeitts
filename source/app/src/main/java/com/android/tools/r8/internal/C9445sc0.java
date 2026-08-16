package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Consumer;

public final class C9445sc0 {

    public static final boolean f52407c = true;

    public final C4798y f52408a;

    public final C8048kB f52409b;

    public C9445sc0(C4798y c4798y) {
        this.f52408a = c4798y;
        this.f52409b = new C8048kB(c4798y);
    }

    public static C9445sc0 a(C4798y c4798y) {
        if (c4798y.m() && c4798y.E().P()) {
            return new C9445sc0(c4798y);
        }
        return null;
    }

    public final void a() {
        if (this.f52408a.f().i()) {
            for (com.android.tools.r8.graph.A2 a22 : this.f52408a.f().m().f57389D) {
                com.android.tools.r8.graph.E0 a10 = this.f52408a.a(a22.s0());
                boolean z10 = f52407c;
                if (!z10 && !a10.e0()) {
                    throw new AssertionError();
                }
                com.android.tools.r8.graph.H5 e10 = a10.d0().e(a22);
                if (!z10 && e10 == null) {
                    throw new AssertionError();
                }
                a(false, e10);
            }
            return;
        }
        Iterator<com.android.tools.r8.graph.H2> it = this.f52408a.f().d().iterator();
        while (it.hasNext()) {
            it.next().l(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C9445sc0.this.a((com.android.tools.r8.graph.H5) obj);
                }
            });
        }
    }

    public final void a(com.android.tools.r8.graph.H5 h52) {
        if (h52.d().b1()) {
            a(true, h52);
        }
    }

    public final void a(boolean z10, com.android.tools.r8.graph.H5 h52) {
        AbstractC4497i0 Q02 = h52.d().Q0();
        C4798y c4798y = this.f52408a;
        C7215fB a10 = Q02.a(h52, c4798y, EW.b(c4798y));
        Z5 u10 = a10.u();
        boolean z11 = false;
        while (u10.hasNext()) {
            Y5 I10 = u10.next().I();
            while (I10.hasNext()) {
                AbstractC10561zE next = I10.next();
                next.getClass();
                if (next instanceof C9278rc0) {
                    C9278rc0 D02 = next.D0();
                    com.android.tools.r8.graph.H5 j10 = a10.j();
                    ArrayList arrayList = D02.f54321f;
                    C4554l1[] c4554l1Arr = D02.f52076k;
                    if (!f52407c && arrayList.size() != c4554l1Arr.length) {
                        throw new AssertionError();
                    }
                    ArrayList arrayList2 = new ArrayList();
                    for (int i10 = 0; i10 < c4554l1Arr.length; i10++) {
                        C4477h f10 = this.f52408a.f();
                        AbstractC5308Hz v10 = this.f52408a.v();
                        C4554l1 c4554l1 = c4554l1Arr[i10];
                        v10.getClass();
                        C4554l1 d10 = v10.d(AbstractC5308Hz.g(), c4554l1);
                        f10.getClass();
                        if (f10.a(d10.f38297f, d10, j10).y()) {
                            arrayList2.add((C10340xw0) arrayList.get(i10));
                        }
                    }
                    C9126qh a11 = a10.a(arrayList2.size(), (C4515j0) null);
                    B60 s10 = this.f52408a.E().f50690i1 ? B60.s() : D02.getPosition();
                    a11.b(s10);
                    I10.previous();
                    I10.add(a11);
                    I10.next();
                    C8769oZ c8769oZ = new C8769oZ(D02.d(), a11.d(), this.f52408a.b().f38092l2);
                    c8769oZ.b(D02.getPosition());
                    I10.a(c8769oZ, (C10696a) null);
                    for (int i11 = 0; i11 < arrayList2.size(); i11++) {
                        C9126qh a12 = a10.a(i11, (C4515j0) null);
                        a12.b(s10);
                        I10.add(a12);
                        T3 a13 = T3.a(YV.f45995b, c8769oZ.d(), a12.d(), (C10340xw0) arrayList2.get(i11));
                        I10.add(a13);
                        a13.b(D02.getPosition());
                    }
                    if (c8769oZ.b().z()) {
                        a(a10, c8769oZ.b(), u10);
                    }
                    z11 = true;
                }
            }
        }
        if (!f52407c && !z10 && !z11) {
            throw new AssertionError();
        }
        this.f52409b.a(a10, AbstractC8529n40.f50496b, C8659ns0.c());
    }

    public final void a(C7215fB c7215fB, W5 w52, Z5 z52) {
        Y5 I10 = w52.I();
        while (w52 != null && I10.hasNext()) {
            if (((AbstractC10561zE) I10.a(new C6920dR0())) != null) {
                W5 a10 = I10.a(c7215fB, z52);
                z52.previous();
                a10.a(c7215fB, z52, w52, this.f52408a.E());
                W5 next = z52.next();
                if (!f52407c && next != a10) {
                    throw new AssertionError();
                }
                I10 = a10.I();
                w52 = a10;
            } else {
                if (!f52407c && I10.hasNext()) {
                    throw new AssertionError();
                }
                I10 = null;
                w52 = null;
            }
        }
    }
}
