package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.C8106kb;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class C7753iR {

    public static final boolean f48939i = true;

    public final C4798y f48940a;

    public final C8753oR f48941b;

    public final com.android.tools.r8.graph.M2 f48942c;

    public final C8085kR f48943d;

    public final com.android.tools.r8.graph.A2 f48944e;

    public final com.android.tools.r8.graph.A2 f48945f;

    public final AbstractC7586hR f48946g;

    public com.android.tools.r8.graph.H2 f48947h = null;

    public C7753iR(com.android.tools.r8.synthesis.W w10, C4798y c4798y, C8753oR c8753oR, com.android.tools.r8.graph.H5 h52, C8085kR c8085kR, InterfaceC8586nR interfaceC8586nR, boolean z10) {
        if (!f48939i && c8085kR == null) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.M2 m22 = w10.f58283b;
        this.f48942c = m22;
        this.f48940a = c4798y;
        this.f48941b = c8753oR;
        this.f48943d = c8085kR;
        C4724u1 c4724u1 = w10.f58282a;
        this.f48944e = c4724u1.a(m22, c4724u1.a(c4724u1.f37905M1, c8085kR.f49631g.f36675b), c4724u1.f38067i1);
        this.f48946g = c(h52);
        this.f48945f = (z10 || c4798y.E().f50599F1.f50878g1) ? c4724u1.a(m22, c4724u1.a(m22, c8085kR.f49631g.f36675b), c4724u1.b("create")) : null;
        w10.a((List) c8085kR.f49629e);
        int length = c8085kR.f49631g.f36675b.length;
        ArrayList arrayList = new ArrayList(length);
        for (int i10 = 0; i10 < length; i10++) {
            C4460g1[] c4460g1Arr = C4460g1.f37200o;
            C4460g1.a a10 = new C4460g1.a(true).a(a(i10));
            a10.f37213c = this.f48940a.E().l().f50756d ? C4537k3.g(4113) : C4537k3.g(4097);
            arrayList.add(a10.c().a());
        }
        w10.f58295n.clear();
        w10.f58295n.addAll(arrayList);
        ArrayList arrayList2 = new ArrayList(this.f48945f != null ? 2 : 1);
        com.android.tools.r8.graph.L4 b10 = com.android.tools.r8.graph.L4.b(4097, true);
        C4516j1[] c4516j1Arr = C4516j1.f37310u;
        C4516j1.a a11 = new C4516j1.a(true).a(this.f48944e).a(b10);
        int i11 = AbstractC7552hC.f48487c;
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        C7051eC c7051eC = new C7051eC();
        c7051eC.a(new C8938pa(EnumC5477Kw0.f41824b, 0));
        c7051eC.a(new C7437ga(183, this.f48940a.b().f37859F4.f38228f, false));
        com.android.tools.r8.graph.M2[] m2Arr = this.f48943d.f49631g.f36675b;
        int i12 = 1;
        int i13 = 1;
        for (int i14 = 0; i14 < m2Arr.length; i14++) {
            C4554l1 a12 = a(i14);
            if (!AbstractC7918jR.f49236a && a12.f37449i != m2Arr[i14]) {
                throw new AssertionError();
            }
            EnumC5477Kw0 a13 = EnumC5477Kw0.a(a12.f37449i);
            c7051eC.a(new C8938pa(EnumC5477Kw0.f41824b, 0));
            c7051eC.a(new C8938pa(a13, i13));
            c7051eC.a(new U9(a12));
            i13 += a13.c();
            i12 += a13.c();
        }
        c7051eC.a(new C6607bb());
        arrayList2.add(a11.a(new com.android.tools.r8.graph.G(this.f48944e.f38297f, i12, i13, c7051eC.a(), c6190Xe0, c6190Xe0)).b().a());
        if (this.f48945f != null) {
            C4516j1.a a14 = new C4516j1.a(true).a(this.f48945f).a(com.android.tools.r8.graph.L4.b(4105, false));
            int i15 = AbstractC7552hC.f48487c;
            C7051eC c7051eC2 = new C7051eC();
            c7051eC2.a(new C10106wa(this.f48942c)).a(new C8106kb(C8106kb.a.Dup));
            int i16 = 0;
            int i17 = 0;
            int i18 = 0;
            int i19 = 2;
            while (i16 < this.f48944e.f36127i.n0().size()) {
                EnumC5477Kw0 a15 = EnumC5477Kw0.a(this.f48944e.f36127i.f36441f.f36675b[i16]);
                c7051eC2.a(new C8938pa(a15, i17));
                i19 += a15.c();
                i17 += a15.c();
                i16++;
                i18 = i17;
            }
            c7051eC2.a(new C7437ga(183, this.f48944e, false)).a(new C6440ab(EnumC5477Kw0.a(this.f48942c)));
            com.android.tools.r8.graph.M2 m23 = this.f48942c;
            AbstractC7552hC a16 = c7051eC2.a();
            List list = Collections.EMPTY_LIST;
            arrayList2.add(a14.a(new com.android.tools.r8.graph.G(m23, i19, i18, a16, list, list)).b().a());
        }
        w10.a((AbstractCollection) arrayList2);
        com.android.tools.r8.graph.A2 a17 = this.f48943d.f49626b.a(this.f48942c, this.f48940a.b());
        ArrayList arrayList3 = new ArrayList(this.f48943d.f49630f.size() + 1);
        C4516j1[] c4516j1Arr2 = C4516j1.f37310u;
        arrayList3.add(AbstractC8294li.a(a17, true).a(com.android.tools.r8.graph.L4.b(17, false)).a(AbstractC9087qR.a(this, a17, interfaceC8586nR)).b().a());
        Iterator it = this.f48943d.f49630f.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.A2 a18 = this.f48940a.b().a(this.f48942c, (com.android.tools.r8.graph.I2) it.next(), this.f48943d.f49626b.t0());
            C4516j1.a a19 = AbstractC8294li.a(a18, true).a(com.android.tools.r8.graph.L4.b(4177, false));
            C6842cy c6842cy = new C6842cy(this.f48940a.b());
            c6842cy.f47222b = a18;
            c6842cy.f47225e = false;
            C6842cy b11 = c6842cy.b(a17, false);
            b11.f47231k = this.f48940a.g();
            b11.f47228h = true;
            arrayList3.add(a19.a(b11.a()).b().a());
        }
        w10.b(arrayList3);
    }

    public final C4554l1 a(int i10) {
        return this.f48940a.b().a(this.f48942c, this.f48943d.f49631g.f36675b[i10], this.f48940a.b().b("f$" + i10));
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [com.android.tools.r8.graph.b1, com.android.tools.r8.graph.E0] */
    /* JADX WARN: Type inference failed for: r2v5, types: [com.android.tools.r8.graph.b1, com.android.tools.r8.graph.E0] */
    public final AbstractC7586hR b(com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.C2 c22 = this.f48943d.f49628d;
        boolean z10 = f48939i;
        if (!z10 && c22 == null) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.A2 m02 = c22.m0();
        if (!z10) {
            C8085kR c8085kR = this.f48943d;
            C4724u1 b10 = this.f48940a.b();
            com.android.tools.r8.graph.L2 t02 = c8085kR.f49628d.m0().t0();
            com.android.tools.r8.graph.L2 l22 = b10.f38091l1;
            t02.getClass();
            if (!t02.b(l22.f36562f)) {
                throw new AssertionError();
            }
        }
        if (!z10 && m02.f38297f != h52.p()) {
            throw new AssertionError();
        }
        if (!z10) {
            C8085kR c8085kR2 = this.f48943d;
            if (!c8085kR2.f49633i.a(h52.p())) {
                throw new AssertionError();
            }
        }
        if (c22.f36190e.c()) {
            com.android.tools.r8.graph.Z4 b11 = this.f48940a.g().b(m02, c22.f36192g);
            if (b11.h()) {
                return new C7085eR(m02, this.f48940a.b().f37827B3, this.f48943d.f49628d.f36192g);
            }
            Z4.c<?> o10 = b11.o();
            if (!z10 && !o10.q().w0()) {
                throw new AssertionError();
            }
            if (!z10 && !o10.d().e0()) {
                throw new AssertionError();
            }
            return new C7419gR(this.f48943d.f49628d.f36192g, new com.android.tools.r8.graph.H5(o10.d().d0(), o10.q()));
        }
        if (!z10 && !c22.f36190e.b()) {
            throw new AssertionError();
        }
        if (this.f48940a.g(m02.f38297f).isInterface()) {
            com.android.tools.r8.graph.I2 i22 = m02.f36127i;
            com.android.tools.r8.graph.M2[] m2Arr = i22.f36441f.f36675b;
            com.android.tools.r8.graph.M2[] m2Arr2 = new com.android.tools.r8.graph.M2[m2Arr.length + 1];
            m2Arr2[0] = m02.f38297f;
            System.arraycopy(m2Arr, 0, m2Arr2, 1, m2Arr.length);
            return new C6919dR(this.f48943d.f49628d.m0(), this.f48943d.f49628d.f36192g, this.f48940a.b().a(m02.f38297f, this.f48940a.b().a(i22.f36440e, m2Arr2), m02.f38298g), this.f48940a);
        }
        return new C6752cR(this.f48943d.f49628d.m0(), this.f48943d.f49628d.f36192g, this.f48940a.b().a(m02.f38297f, m02.f36127i, AbstractC6640bm.a(this.f48940a.b(), m02)), this.f48940a);
    }

    public final com.android.tools.r8.graph.H2 c() {
        if (f48939i || this.f48947h != null) {
            return this.f48947h;
        }
        throw new AssertionError();
    }

    public final com.android.tools.r8.graph.M2 d() {
        return this.f48942c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002d, code lost:
    
        if (r8.f48943d.f49628d.f36190e.c() != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x011c, code lost:
    
        if (r9 == false) goto L75;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0124 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean d(com.android.tools.r8.graph.H5 h52) {
        boolean z10;
        com.android.tools.r8.graph.L4 l42;
        if (!a()) {
            if (this.f48940a.E().Q()) {
                com.android.tools.r8.graph.C2 c22 = this.f48943d.f49628d;
                if (c22.f36192g) {
                    if (!c22.f36190e.b()) {
                    }
                }
            }
            C8085kR c8085kR = this.f48943d;
            com.android.tools.r8.graph.B2 b22 = c8085kR.f49628d.f36190e;
            b22.getClass();
            com.android.tools.r8.graph.B2 b23 = com.android.tools.r8.graph.B2.f36155k;
            if (b22 != b23 || ((l42 = c8085kR.f49632h) != null && !l42.l())) {
                boolean c10 = c8085kR.f49628d.f36190e.c();
                com.android.tools.r8.graph.B2 b24 = c8085kR.f49628d.f36190e;
                b24.getClass();
                boolean z11 = b24 == com.android.tools.r8.graph.B2.f36152h || c8085kR.f49628d.f36190e.b();
                com.android.tools.r8.graph.B2 b25 = c8085kR.f49628d.f36190e;
                b25.getClass();
                boolean z12 = b25 == com.android.tools.r8.graph.B2.f36153i;
                boolean z13 = C8085kR.f49624k;
                if (!z13 && !z11 && !c10 && !z12) {
                    com.android.tools.r8.graph.B2 b26 = c8085kR.f49628d.f36190e;
                    b26.getClass();
                    if (b26 != b23) {
                        throw new AssertionError();
                    }
                }
                if (!z13 && c8085kR.f49628d.f36190e.b() && (!c8085kR.f49632h.h() || AbstractC4458g.d(c8085kR.f49632h.f37197c, 65536) || c8085kR.f49632h.n())) {
                    throw new AssertionError();
                }
                com.android.tools.r8.graph.L4 l43 = c8085kR.f49632h;
                if (l43 == null) {
                    if (c10 || z12) {
                        z10 = !h52.p().z0().equals(c8085kR.f49628d.m0().f38297f.z0());
                        if (z10) {
                            return false;
                        }
                    }
                } else if (!l43.h()) {
                    if (!l43.l()) {
                        boolean equals = h52.p().z0().equals(c8085kR.f49633i.z0());
                        if (!z13 && !l43.k() && !equals) {
                            throw new AssertionError();
                        }
                        if (l43.k()) {
                        }
                    }
                }
                z10 = true;
                if (z10) {
                }
            }
            z10 = false;
            if (z10) {
            }
        }
        return true;
    }

    public final AbstractC7586hR c(com.android.tools.r8.graph.H5 h52) {
        switch (this.f48943d.f49628d.f36190e.ordinal()) {
            case 4:
                if (a()) {
                    return b(h52);
                }
                if (!f48939i && !this.f48943d.f49628d.f36190e.c()) {
                    throw new AssertionError();
                }
                if (d(h52)) {
                    C8085kR c8085kR = this.f48943d;
                    return new C7252fR(c8085kR.f49628d.m0(), c8085kR.f49628d.f36190e.e(), c8085kR.f49628d.f36192g);
                }
                com.android.tools.r8.graph.A2 a10 = this.f48940a.b().a(h52.p(), this.f48943d.f49628d.m0().f36127i, b());
                com.android.tools.r8.graph.C2 c22 = this.f48943d.f49628d;
                return new C6419aR(c22.m0(), c22.f36192g, c22.f36190e, a10, h52.getHolder().isInterface(), this.f48940a);
            case 5:
                if (!f48939i) {
                    com.android.tools.r8.graph.B2 b22 = this.f48943d.f49628d.f36190e;
                    b22.getClass();
                    if (b22 != com.android.tools.r8.graph.B2.f36152h && !this.f48943d.f49628d.f36190e.b()) {
                        throw new AssertionError();
                    }
                }
                return a(h52);
            case 6:
                com.android.tools.r8.graph.C2 c23 = this.f48943d.f49628d;
                boolean z10 = f48939i;
                if (!z10 && c23 == null) {
                    throw new AssertionError();
                }
                if (!z10) {
                    com.android.tools.r8.graph.B2 b23 = c23.f36190e;
                    b23.getClass();
                    if (b23 != com.android.tools.r8.graph.B2.f36153i) {
                        throw new AssertionError();
                    }
                }
                if (d(h52)) {
                    C8085kR c8085kR2 = this.f48943d;
                    return new C7252fR(c8085kR2.f49628d.m0(), c8085kR2.f49628d.f36190e.e(), c8085kR2.f49628d.f36192g);
                }
                com.android.tools.r8.graph.A2 m02 = c23.m0();
                com.android.tools.r8.graph.A2 a11 = this.f48940a.b().a(h52.p(), this.f48940a.b().a(m02.f38297f, m02.f36127i.f36441f.f36675b), b());
                com.android.tools.r8.graph.C2 c24 = this.f48943d.f49628d;
                return new C6419aR(c24.m0(), c24.f36192g, c24.f36190e, a11, h52.getHolder().isInterface(), this.f48940a);
            case 7:
                if (a()) {
                    return b(h52);
                }
                if (!f48939i) {
                    com.android.tools.r8.graph.B2 b24 = this.f48943d.f49628d.f36190e;
                    b24.getClass();
                    if (b24 != com.android.tools.r8.graph.B2.f36152h && !this.f48943d.f49628d.f36190e.b()) {
                        throw new AssertionError();
                    }
                }
                return a(h52);
            case 8:
                if (!f48939i) {
                    com.android.tools.r8.graph.B2 b25 = this.f48943d.f49628d.f36190e;
                    b25.getClass();
                    if (b25 != com.android.tools.r8.graph.B2.f36155k) {
                        throw new AssertionError();
                    }
                }
                return a(h52);
            case 9:
                throw new C6501av0("Method references to super methods are not yet supported");
            default:
                throw new C5417Jv0("Unexpected method handle type in " + ((Object) this.f48943d.f49628d));
        }
    }

    public final boolean a() {
        C8570nJ E10 = this.f48940a.E();
        C4798y c4798y = this.f48940a;
        E10.getClass();
        if (c4798y.m()) {
            return false;
        }
        com.android.tools.r8.graph.B2 b22 = this.f48943d.f49628d.f36190e;
        if (this.f48940a.E().Q()) {
            com.android.tools.r8.graph.C2 c22 = this.f48943d.f49628d;
            if (c22.f36192g && (c22.f36190e.b() || this.f48943d.f49628d.f36190e.c())) {
                return false;
            }
        }
        if (!b22.b() && !b22.c()) {
            return false;
        }
        C8085kR c8085kR = this.f48943d;
        C4724u1 b10 = this.f48940a.b();
        com.android.tools.r8.graph.L2 t02 = c8085kR.f49628d.m0().t0();
        com.android.tools.r8.graph.L2 l22 = b10.f38091l1;
        t02.getClass();
        if (!t02.b(l22.f36562f)) {
            return false;
        }
        C8753oR c8753oR = this.f48941b;
        com.android.tools.r8.graph.C2 c23 = this.f48943d.f49628d;
        return (c23.f36190e.b() && c8753oR.f51245c.contains(c23.m0())) ? false : true;
    }

    public final AbstractC7586hR a(com.android.tools.r8.graph.H5 h52) {
        if (d(h52)) {
            C8085kR c8085kR = this.f48943d;
            return new C7252fR(c8085kR.f49628d.m0(), c8085kR.f49628d.f36190e.e(), c8085kR.f49628d.f36192g);
        }
        com.android.tools.r8.graph.I2 i22 = this.f48943d.f49628d.m0().f36127i;
        com.android.tools.r8.graph.M2[] m2Arr = i22.f36441f.f36675b;
        com.android.tools.r8.graph.M2[] m2Arr2 = new com.android.tools.r8.graph.M2[m2Arr.length + 1];
        m2Arr2[0] = this.f48943d.a();
        System.arraycopy(m2Arr, 0, m2Arr2, 1, m2Arr.length);
        com.android.tools.r8.graph.A2 a10 = this.f48940a.b().a(h52.p(), this.f48940a.b().a(i22.f36440e, m2Arr2), b());
        com.android.tools.r8.graph.C2 c22 = this.f48943d.f49628d;
        return new C6419aR(c22.m0(), c22.f36192g, c22.f36190e, a10, h52.getHolder().isInterface(), this.f48940a);
    }

    public final com.android.tools.r8.graph.L2 b() {
        return this.f48940a.b().b("$r8$lambda$" + this.f48943d.f49625a);
    }
}
