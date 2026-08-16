package com.android.tools.r8.graph;

import com.android.tools.r8.AbstractC4291c;
import com.android.tools.r8.graph.J0;
import com.android.tools.r8.internal.AbstractC10241xK;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC5635Np;
import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.AbstractC9530t40;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C10523z10;
import com.android.tools.r8.internal.C5313Ib;
import com.android.tools.r8.internal.C5541Ma;
import com.android.tools.r8.internal.C5563Mi;
import com.android.tools.r8.internal.C5639Nr;
import com.android.tools.r8.internal.C5920Sm0;
import com.android.tools.r8.internal.C6269Yp;
import com.android.tools.r8.internal.C6382aB;
import com.android.tools.r8.internal.C6607bb;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C7437ga;
import com.android.tools.r8.internal.C7702i60;
import com.android.tools.r8.internal.C8103ka;
import com.android.tools.r8.internal.C8854p10;
import com.android.tools.r8.internal.C8938pa;
import com.android.tools.r8.internal.C9547tA;
import com.android.tools.r8.internal.C9970vk0;
import com.android.tools.r8.internal.EW;
import com.android.tools.r8.internal.EX;
import com.android.tools.r8.internal.EnumC5477Kw0;
import com.android.tools.r8.internal.EnumC8071kK;
import com.android.tools.r8.internal.PS;
import com.android.tools.r8.internal.RR;
import com.android.tools.r8.internal.WS;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.lang.constant.ConstantDescs;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;

public final class C4553l0 extends AbstractC4497i0 implements P, InterfaceC4443f3 {

    public static final C4553l0 f37446e = new C4553l0();

    public static final boolean f37447f = true;

    public static boolean b(com.android.tools.r8.internal.W9 w92) {
        w92.getClass();
        return !(w92 instanceof C8103ka);
    }

    public static int d(H5 h52) {
        int i10 = !h52.getAccessFlags().n() ? 1 : 0;
        Iterator<M2> it = h52.C().iterator();
        while (it.hasNext()) {
            i10 += it.next().B0();
        }
        return i10;
    }

    @Override
    public final int A() {
        return 2;
    }

    @Override
    public final AbstractC4497i0 P() {
        return this;
    }

    @Override
    public final int T() {
        return 1;
    }

    @Override
    public final int Y() {
        return 4;
    }

    @Override
    public final InterfaceC4443f3 a(H5 h52, C4766w5 c4766w5, C4798y c4798y, boolean z10) {
        return this;
    }

    @Override
    public final void c(H5 h52) {
    }

    @Override
    public final int k(int i10) {
        return 4 <= i10 ? 4 : -1;
    }

    @Override
    public final int k0() {
        return System.identityHashCode(this);
    }

    @Override
    public final int l() {
        return 2;
    }

    @Override
    public final P l0() {
        return this;
    }

    @Override
    public final InterfaceC4443f3 m0() {
        return this;
    }

    @Override
    public final J0.a[] o() {
        return J0.a.f36468f;
    }

    @Override
    public final int q0() {
        return 4;
    }

    @Override
    public final J0.b[] r() {
        return J0.b.f36474d;
    }

    @Override
    public final String toString() {
        return "DefaultInstanceInitializerCode";
    }

    @Override
    public final Z0 u() {
        return null;
    }

    @Override
    public final boolean x0() {
        return false;
    }

    @Override
    public final void a(com.android.tools.r8.dex.X x10) {
    }

    @Override
    public final boolean c(Object obj) {
        return this == obj;
    }

    @Override
    public final void a(com.android.tools.r8.dex.r rVar) {
    }

    @Override
    public final int b(H5 h52) {
        return d(h52);
    }

    @Override
    public final void a(H5 h52, AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.a(a((H0) h52, abstractC4446f6.f37176a.b()));
    }

    @Override
    public final void a(C4421e0 c4421e0, C5563Mi c5563Mi) {
        c5563Mi.a(a(c4421e0, c5563Mi.f37176a.b()));
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, H5 h52, RR rr) {
        A2 a10 = a((H0) h52, rr.f43897a.b());
        AbstractC5308Hz v10 = c4798y.v();
        v10.getClass();
        A2 a22 = (A2) v10.a(a10, h52.getReference(), EnumC8071kK.f49580d, abstractC5308Hz, AbstractC9530t40.f52519c).f41111a;
        if (a22.b(c4798y, m10)) {
            L2 a11 = c4798y.s().a(a22);
            a11.getClass();
            m10.a(a11);
        }
    }

    public static void a(C4798y c4798y, M2 m22, H5 h52) {
        AbstractC4497i0 g10;
        C4516j1 d10 = h52.d();
        boolean z10 = f37447f;
        if (!z10) {
            AbstractC4497i0 Q02 = d10.Q0();
            Q02.getClass();
            if (!(Q02 instanceof C4553l0)) {
                throw new AssertionError();
            }
        }
        C4516j1 d11 = h52.d();
        B60 W02 = d11.W0();
        d11.f37318k = null;
        if (c4798y.H().c()) {
            M2 type = h52.getHolder().getType();
            C8854p10 b10 = C8854p10.b();
            type.getClass();
            C10340xw0 c10340xw0 = new C10340xw0(0, AbstractC8999pu0.a(type, b10, (C4798y<?>) c4798y), null);
            C4724u1 b11 = c4798y.b();
            A2 a10 = b11.a(m22, b11.a(b11.f37905M1, new M2[0]), b11.f38067i1);
            C7702i60 c7702i60 = new C7702i60();
            c7702i60.f48841b.b(0, c10340xw0);
            PS a11 = WS.a(h52.getReference(), h52.d().F0(), c7702i60, c4798y.E());
            if (W02 != null) {
                a11.getClass();
                int i10 = PS.f43214p;
                if (!W02.o()) {
                    a11.f43230k = W02;
                }
            }
            g10 = a11.a(0).a(205, Collections.singletonList(a10), new C5920Sm0(c10340xw0)).b().d();
        } else {
            if (!z10 && !c4798y.H().b()) {
                throw new AssertionError();
            }
            C4724u1 b12 = c4798y.b();
            ArrayList arrayList = new ArrayList(W02 != null ? 5 : 3);
            if (W02 != null) {
                C8103ka c8103ka = new C8103ka();
                arrayList.add(c8103ka);
                arrayList.add(new C5541Ma(c8103ka, W02));
            }
            arrayList.add(new C8938pa(EnumC5477Kw0.f41824b, 0));
            arrayList.add(new C7437ga(183, b12.a(m22, b12.a(b12.f37905M1, new M2[0]), b12.f38067i1), false));
            arrayList.add(new C6607bb());
            M2 p10 = h52.p();
            int d12 = d(h52);
            List list = Collections.EMPTY_LIST;
            g10 = new G(p10, 1, d12, arrayList, list, list);
        }
        h52.a(g10, (C4798y<?>) c4798y);
    }

    public static boolean a(C4798y c4798y, H5 h52) {
        Predicate predicate;
        C7437ga j10;
        if (!h52.d().j1()) {
            return false;
        }
        AbstractC4497i0 Q02 = h52.d().Q0();
        if (!Q02.t0()) {
            return false;
        }
        G V10 = Q02.V();
        if (!h52.d().j1() || !V10.F0().isEmpty() || !V10.I0().isEmpty() || V10.E0().size() > 6) {
            return false;
        }
        C4724u1 b10 = c4798y.b();
        Iterator<com.android.tools.r8.internal.W9> it = V10.E0().iterator();
        if (h52.getHolder().a1().a(b10.f38068i2)) {
            predicate = new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C4553l0.a((com.android.tools.r8.internal.W9) obj);
                }
            };
        } else {
            predicate = new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C4553l0.b((com.android.tools.r8.internal.W9) obj);
                }
            };
        }
        C8938pa n10 = ((com.android.tools.r8.internal.W9) AbstractC10241xK.a(it, predicate)).n();
        if (n10 != null && n10.f51554c == 0 && (j10 = it.next().j()) != null && j10.V().b(b10) && j10.V().a(a((H0) h52, b10))) {
            com.android.tools.r8.internal.W9 next = it.next();
            next.getClass();
            return next instanceof C6607bb;
        }
        return false;
    }

    public static boolean a(com.android.tools.r8.internal.W9 w92) {
        w92.getClass();
        return ((w92 instanceof C8103ka) || (w92 instanceof C5541Ma)) ? false : true;
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        ((C9547tA) abstractC9213rA).f52553a.a(AbstractC4291c.b(2));
    }

    @Override
    public final C7215fB a(H5 h52, C4798y c4798y, EW.a aVar) {
        return C6382aB.a(h52, c4798y, new C4534k0(h52.getReference(), h52.d().F0(), h52.d().W0())).a(h52, aVar);
    }

    @Override
    public final C7215fB a(H5 h52, H5 h53, C4798y c4798y, AbstractC5308Hz abstractC5308Hz, C10523z10 c10523z10, B60 b60, com.android.tools.r8.graph.proto.j jVar) {
        return new C6382aB(h53, c4798y, abstractC5308Hz, new C4534k0(h53.getReference(), h53.d().F0(), h53.d().a(b60)), jVar, c10523z10).a(h52, EW.d());
    }

    @Override
    public final int a(H5 h52) {
        return d(h52);
    }

    public static A2 a(H0 h02, C4724u1 c4724u1) {
        return c4724u1.a(h02.getHolder().a1(), c4724u1.a(c4724u1.f37905M1, new M2[0]), c4724u1.f38067i1);
    }

    @Override
    public final void a(C4766w5 c4766w5, H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        new C6269Yp(1, a((H0) h52, c4766w5.f38335b.b()), 0, 0, 0, 0, 0).a(c4766w5, h52, abstractC5308Hz, abstractC5308Hz2, rr, shortBuffer);
        new C5639Nr();
        AbstractC5635Np.a(0, 14, shortBuffer);
    }

    @Override
    public final void a(H5 h52, C5313Ib c5313Ib, C4798y c4798y, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        ex.d(25, 0);
        ex.a(183, abstractC10992r0.d(h52.getHolder().a1()), ConstantDescs.INIT_NAME, "()V", false);
        ex.a(177);
        ex.c(1, d(h52));
    }

    @Override
    public final String a(C4516j1 c4516j1, C9970vk0 c9970vk0) {
        return "DefaultInstanceInitializerCode";
    }

    @Override
    public final InterfaceC4424e3 a(H5 h52, C4724u1 c4724u1) {
        return new C4405d3(this, a((H0) h52, c4724u1), d(h52), d(h52));
    }
}
