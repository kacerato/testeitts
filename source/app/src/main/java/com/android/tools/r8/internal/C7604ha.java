package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

public class C7604ha extends W9 {

    public final com.android.tools.r8.graph.D0 f48583c;

    public C7604ha(com.android.tools.r8.graph.D0 d02) {
        this.f48583c = d02;
    }

    @Override
    public final int B() {
        return 186;
    }

    public com.android.tools.r8.graph.D0 V() {
        return this.f48583c;
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        return this.f48583c.a(((C7604ha) w92).f48583c, abstractC8953pf);
    }

    @Override
    public final C7604ha k() {
        return this;
    }

    @Override
    public final int y() {
        return 5;
    }

    @Override
    public final boolean z() {
        return true;
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        this.f48583c.a(abstractC9213rA);
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        com.android.tools.r8.graph.D0 a10 = rr.a(this.f48583c, h52);
        com.android.tools.r8.graph.C2 c22 = a10.f36214g;
        List list = a10.f36215h;
        Object[] objArr = new Object[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            objArr[i10] = a((com.android.tools.r8.graph.R2) list.get(i10), abstractC10992r0, c4724u1);
        }
        ex.a(abstractC10992r0.a(a10, c4798y).toString(), a10.f36213f.a(abstractC10992r0), c22.a(abstractC10992r0), objArr);
    }

    public static Object a(com.android.tools.r8.graph.R2 r22, AbstractC10992r0 abstractC10992r0, C4724u1 c4724u1) {
        int ordinal = r22.G0().ordinal();
        if (ordinal != 18) {
            switch (ordinal) {
                case 3:
                    return Integer.valueOf(r22.w0().W0());
                case 4:
                    return Long.valueOf(r22.x0().W0());
                case 5:
                    return Float.valueOf(r22.v0().W0());
                case 6:
                    return Double.valueOf(r22.s0().W0());
                case 7:
                    String a10 = ((com.android.tools.r8.graph.I2) r22.A0().W0()).a(abstractC10992r0);
                    return new C9663tt0(11, 0, a10.length(), a10);
                case 8:
                    return ((com.android.tools.r8.graph.C2) r22.z0().W0()).a(abstractC10992r0);
                case 9:
                    com.android.tools.r8.graph.L2 l22 = (com.android.tools.r8.graph.L2) r22.D0().W0();
                    if (l22 == null) {
                        return null;
                    }
                    return l22.toString();
                case 10:
                    String l23 = abstractC10992r0.c((com.android.tools.r8.graph.M2) r22.E0().f36759d).toString();
                    return C9663tt0.a(l23, 0, l23.length());
                default:
                    throw new C5417Jv0("Unsupported bootstrap argument of type " + r22.getClass().getSimpleName());
            }
        }
        C4866Ah c4866Ah = r22.r0().f36793d;
        ArrayList arrayList = c4866Ah.f38690f;
        Object[] objArr = new Object[arrayList.size()];
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            objArr[i10] = a((com.android.tools.r8.graph.R2) arrayList.get(i10), abstractC10992r0, c4724u1);
        }
        return new C10127wh(c4866Ah.f38687c.toString(), abstractC10992r0.a(c4724u1, c4866Ah.f38688d).V0(), c4866Ah.f38689e.a(abstractC10992r0), objArr);
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6, ListIterator listIterator) {
        abstractC4446f6.a(this.f48583c);
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        com.android.tools.r8.graph.M2[] m2Arr = this.f48583c.f36213f.f36441f.f36675b;
        ArrayList arrayList = new ArrayList(m2Arr.length);
        int length = m2Arr.length;
        c9775ub.getClass();
        int[] iArr = new int[length];
        for (int i10 = length - 1; i10 >= 0; i10--) {
            iArr[i10] = c9775ub.a().f51280a;
        }
        for (int i11 = 0; i11 < length; i11++) {
            arrayList.add(Integer.valueOf(iArr[i11]));
        }
        ArrayList arrayList2 = new ArrayList(m2Arr.length);
        for (com.android.tools.r8.graph.M2 m22 : m2Arr) {
            arrayList2.add(EnumC5477Kw0.a(m22));
        }
        com.android.tools.r8.graph.D0 d02 = this.f48583c;
        c6382aB.getClass();
        if (!C6382aB.f46438D && arrayList2.size() != arrayList.size()) {
            throw new AssertionError();
        }
        ArrayList arrayList3 = new ArrayList(arrayList2.size());
        for (int i12 = 0; i12 < arrayList2.size(); i12++) {
            arrayList3.add(c6382aB.b(((Integer) arrayList.get(i12)).intValue(), EnumC5592Mw0.a((EnumC5477Kw0) arrayList2.get(i12))));
        }
        c6382aB.a(new OJ(d02, null, arrayList3));
        if (this.f48583c.f36213f.f36440e.S0()) {
            return;
        }
        c6382aB.c(c9775ub.a(new C9108qb(this.f48583c.f36213f.f36440e)).f51280a);
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        H9 a10 = h92.a(c4798y, o82, this.f48583c.f36213f.n0().f36675b);
        com.android.tools.r8.graph.M2 o02 = this.f48583c.f36213f.o0();
        return o02.S0() ? a10 : a10.a(o82, o02);
    }
}
