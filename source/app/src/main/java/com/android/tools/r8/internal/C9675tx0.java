package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.AbstractC11398r1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.function.Consumer;

public final class C9675tx0 {

    public static final boolean f52740f = true;

    public final C4798y f52741a;

    public final C4724u1 f52742b;

    public final AA f52743c;

    public final ArrayList f52744d;

    public final C9508sx0 f52745e;

    public C9675tx0(C4798y c4798y, AA aa2, ArrayList arrayList, C9508sx0 c9508sx0) {
        this.f52741a = c4798y;
        this.f52742b = c4798y.b();
        this.f52743c = aa2;
        this.f52744d = arrayList;
        this.f52745e = c9508sx0;
    }

    public static boolean b(com.android.tools.r8.graph.L4 l42) {
        return !l42.H();
    }

    public static boolean c(com.android.tools.r8.graph.L4 l42) {
        return !l42.I();
    }

    public static boolean d(com.android.tools.r8.graph.L4 l42) {
        return !l42.e();
    }

    public static boolean e(com.android.tools.r8.graph.L4 l42) {
        return !l42.o();
    }

    public static boolean f(com.android.tools.r8.graph.L4 l42) {
        return !AbstractC4458g.d(l42.f37197c, 128);
    }

    public final com.android.tools.r8.graph.A2 a(C9614td c9614td, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        C4724u1 c4724u1 = this.f52742b;
        String j02 = reference.f38298g.j0();
        com.android.tools.r8.graph.M2 p10 = h52.p();
        com.android.tools.r8.graph.I2 i22 = reference.f36127i;
        com.android.tools.r8.graph.M2 type = this.f52743c.f38555d.getType();
        Objects.requireNonNull(c9614td);
        C6074Vd1 c6074Vd1 = new C6074Vd1(c9614td);
        c4724u1.getClass();
        if (!C4724u1.f37814K6 && p10 == null) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.A2 a10 = c4724u1.a(j02, p10, i22, type, c6074Vd1, 0);
        C4516j1 d10 = h52.d();
        C4724u1 c4724u12 = this.f52742b;
        d10.L0();
        C4516j1 a11 = d10.a(a10, c4724u12, (Consumer) null);
        com.android.tools.r8.graph.L4 accessFlags = a11.getAccessFlags();
        accessFlags.B();
        accessFlags.C();
        accessFlags.u();
        c9614td.a(a11);
        return a11.getReference();
    }

    public final boolean b() {
        return this.f52745e != null && AbstractC9907vK.a(this.f52744d, new V60() {
            @Override
            public final boolean apply(Object obj) {
                boolean d12;
                d12 = ((com.android.tools.r8.graph.H5) obj).d().d1();
                return d12;
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean c() {
        int a10;
        if (this.f52745e != null) {
            return false;
        }
        if (this.f52744d.size() == 1) {
            return true;
        }
        C9239rK c10 = AbstractC9907vK.c(this.f52744d, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return C9675tx0.b((com.android.tools.r8.graph.H5) obj);
            }
        });
        if (c10 instanceof Collection) {
            a10 = ((Collection) c10).size();
        } else {
            Iterator it = c10.iterator();
            long j10 = 0;
            while (true) {
                AbstractC7015e0 abstractC7015e0 = (AbstractC7015e0) it;
                if (!abstractC7015e0.hasNext()) {
                    break;
                }
                abstractC7015e0.next();
                j10++;
            }
            a10 = HJ.a(j10);
        }
        return a10 <= 1;
    }

    public static boolean b(com.android.tools.r8.graph.H5 h52) {
        return !h52.d().d1();
    }

    public static boolean c(com.android.tools.r8.graph.H5 h52) {
        return !h52.d().d1();
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e6, code lost:
    
        if (com.android.tools.r8.internal.JK.a(com.android.tools.r8.internal.JK.a(r0.f52337b.iterator(), r0.f52338c), new com.android.tools.r8.internal.C7165eu1()) != (-1)) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final com.android.tools.r8.graph.L4 a() {
        C9406sK a10 = AbstractC9907vK.a(this.f52744d, new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return ((com.android.tools.r8.graph.H5) obj).getAccessFlags();
            }
        });
        CK a11 = JK.a(a10.f52337b.iterator(), a10.f52338c);
        com.android.tools.r8.graph.L4 l42 = (com.android.tools.r8.graph.L4) a11.a(a11.f43396b.next());
        com.android.tools.r8.graph.L4 l43 = new com.android.tools.r8.graph.L4(l42.f37196b, l42.f37197c);
        boolean z10 = f52740f;
        if (!z10 && !AbstractC9907vK.a(a10, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return C9675tx0.a((com.android.tools.r8.graph.L4) obj);
            }
        })) {
            throw new AssertionError();
        }
        if (!z10 && l43.K() && !AbstractC9907vK.a(a10, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return ((com.android.tools.r8.graph.L4) obj).K();
            }
        })) {
            throw new AssertionError();
        }
        if (!z10 && l43.L() && !AbstractC9907vK.a(a10, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return ((com.android.tools.r8.graph.L4) obj).L();
            }
        })) {
            throw new AssertionError();
        }
        if (l43.H()) {
            if (JK.a(JK.a(a10.f52337b.iterator(), a10.f52338c), new V60() {
                @Override
                public final boolean apply(Object obj) {
                    return C9675tx0.b((com.android.tools.r8.graph.L4) obj);
                }
            }) != -1) {
                l43.b(1024);
            }
        }
        if (l43.I()) {
            if (JK.a(JK.a(a10.f52337b.iterator(), a10.f52338c), new V60() {
                @Override
                public final boolean apply(Object obj) {
                    return C9675tx0.c((com.android.tools.r8.graph.L4) obj);
                }
            }) != -1) {
                l43.b(64);
            }
        }
        if (l43.e()) {
            if (this.f52744d.size() >= this.f52743c.f38553b.size()) {
            }
            l43.b(16);
        }
        if (l43.o()) {
            if (JK.a(JK.a(a10.f52337b.iterator(), a10.f52338c), new V60() {
                @Override
                public final boolean apply(Object obj) {
                    return C9675tx0.e((com.android.tools.r8.graph.L4) obj);
                }
            }) != -1) {
                l43.b(4096);
            }
        }
        if (AbstractC4458g.d(l43.f37197c, 128)) {
            if (JK.a(JK.a(a10.f52337b.iterator(), a10.f52338c), new V60() {
                @Override
                public final boolean apply(Object obj) {
                    return C9675tx0.f((com.android.tools.r8.graph.L4) obj);
                }
            }) != -1) {
                l43.b(128);
            }
        }
        l43.b(131072);
        return l43;
    }

    public static boolean a(com.android.tools.r8.graph.L4 l42) {
        return !l42.J();
    }

    public final void a(C9614td c9614td, final C10048wA c10048wA) {
        C4516j1 a10;
        com.android.tools.r8.graph.A2 reference = ((com.android.tools.r8.graph.H5) AT.a(this.f52744d)).getReference();
        com.android.tools.r8.graph.H2 h22 = this.f52743c.f38555d;
        C4724u1 c4724u1 = this.f52742b;
        reference.getClass();
        final com.android.tools.r8.graph.A2 a11 = reference.a(h22.getType(), c4724u1);
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) AbstractC9907vK.a(this.f52744d, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return C9675tx0.c((com.android.tools.r8.graph.H5) obj);
            }
        }, null);
        if (h52 == null) {
            h52 = (com.android.tools.r8.graph.H5) AT.a(this.f52744d);
        }
        if (h52.getAccessFlags().H() && this.f52745e != null) {
            this.f52744d.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C9675tx0.a(C10048wA.this, a11, (com.android.tools.r8.graph.H5) obj);
                }
            });
            return;
        }
        ArrayList arrayList = this.f52744d;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            com.android.tools.r8.graph.H5 h53 = (com.android.tools.r8.graph.H5) obj;
            if (h53.getReference() == h52.getReference()) {
                c10048wA.a(h53.getReference(), a11, false);
            } else {
                c10048wA.f53431b.a(h53.getReference(), a11);
            }
        }
        if (h52.getHolder() == this.f52743c.f38555d) {
            a10 = h52.d();
        } else {
            final AbstractC9530t40 k12 = h52.d().k1();
            a10 = h52.d().a(a11, this.f52742b, new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    C9675tx0.a(AbstractC9530t40.this, (C4516j1.a) obj2);
                }
            });
        }
        a10.getAccessFlags().b(16);
        c9614td.f52641b.add(a10);
        boolean add = c9614td.f52640a.add(a10.getReference());
        if (!C9614td.f52639d && !add) {
            throw new AssertionError();
        }
    }

    public static void a(C10048wA c10048wA, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H5 h52) {
        c10048wA.f53431b.a(h52.getReference(), a22);
    }

    public static void a(AbstractC9530t40 abstractC9530t40, C4516j1.a aVar) {
        aVar.getClass();
        if (abstractC9530t40.e()) {
            return;
        }
        aVar.a(abstractC9530t40);
    }

    public final void a(M70 m70, C9614td c9614td, C10048wA c10048wA, C9115qd0 c9115qd0, Consumer consumer) {
        if (!f52740f && this.f52744d.isEmpty()) {
            throw new AssertionError();
        }
        if (!b() && !c()) {
            DG dg2 = new DG();
            ArrayList arrayList = this.f52744d;
            int size = arrayList.size();
            com.android.tools.r8.graph.H5 h52 = null;
            int i10 = 0;
            C5313Ib c5313Ib = null;
            int i11 = 0;
            while (i11 < size) {
                Object obj = arrayList.get(i11);
                i11++;
                com.android.tools.r8.graph.H5 h53 = (com.android.tools.r8.graph.H5) obj;
                if (!h53.d().d1()) {
                    if (h53.d().a1()) {
                        c5313Ib = (C5313Ib) C40.b(c5313Ib, h53.d().P0());
                    }
                    c10048wA.b(h53.getReference(), a(c9614td, h53), false);
                    dg2.a(c9115qd0.b(h53.p()), h53.getReference());
                    if (h52 == null) {
                        h52 = h53;
                    }
                }
            }
            if (!f52740f && h52 == null) {
                throw new AssertionError();
            }
            AbstractC5308Hz v10 = this.f52741a.v();
            com.android.tools.r8.graph.A2 reference = h52.getReference();
            v10.getClass();
            com.android.tools.r8.graph.A2 a10 = v10.a(AbstractC5308Hz.g(), reference);
            C4724u1 c4724u1 = this.f52742b;
            String str = a10.t0().j0() + "$bridge";
            com.android.tools.r8.graph.I2 i22 = a10.f36127i;
            com.android.tools.r8.graph.M2 s02 = a10.s0();
            Objects.requireNonNull(c9614td);
            com.android.tools.r8.graph.A2 a11 = c4724u1.a(str, null, i22, s02, new C6074Vd1(c9614td), 0);
            final C4516j1 d10 = h52.d();
            com.android.tools.r8.graph.A2 reference2 = ((com.android.tools.r8.graph.H5) AT.a(this.f52744d)).getReference();
            com.android.tools.r8.graph.H2 h22 = this.f52743c.f38555d;
            C4724u1 c4724u12 = this.f52742b;
            reference2.getClass();
            com.android.tools.r8.graph.A2 a12 = reference2.a(h22.getType(), c4724u12);
            C8054kD c8054kD = new C8054kD(this.f52743c.a(), dg2, this.f52745e);
            C4516j1[] c4516j1Arr = C4516j1.f37310u;
            C4516j1.a a13 = AbstractC8294li.a(a12, true).a(a()).a(c8054kD);
            a13.f37339k = c5313Ib;
            a13.f37340l = d10.f37261e;
            a13.f37341m = d10.f37322o;
            C4516j1 a14 = a13.a();
            if (!h52.d().k1().e()) {
                a14.a(h52.d().k1());
            }
            C10343xx0 c10343xx0 = new C10343xx0(h52.getReference());
            ArrayList arrayList2 = this.f52744d;
            int size2 = arrayList2.size();
            int i12 = 0;
            while (i12 < size2) {
                Object obj2 = arrayList2.get(i12);
                i12++;
                com.android.tools.r8.graph.H5 h54 = (com.android.tools.r8.graph.H5) obj2;
                c10048wA.f53431b.a(h54.getReference(), a12);
                c10343xx0.f53901b.a(this.f52741a.a(h54).d());
            }
            if (this.f52745e != null) {
                c10343xx0.f53901b.y();
            }
            c10048wA.b(a11, a12, false);
            m70.getClass();
            if (!(m70 instanceof C6520b10)) {
                ArrayList arrayList3 = this.f52744d;
                int size3 = arrayList3.size();
                while (i10 < size3) {
                    Object obj3 = arrayList3.get(i10);
                    i10++;
                    m70.a(((com.android.tools.r8.graph.H5) obj3).getReference(), new Consumer() {
                        @Override
                        public final void accept(Object obj4) {
                            ((K70) obj4).a((com.android.tools.r8.graph.J2) C4516j1.this.getReference());
                        }
                    });
                }
            }
            c9614td.f52641b.add(a14);
            boolean add = c9614td.f52640a.add(a14.getReference());
            if (!C9614td.f52639d && !add) {
                throw new AssertionError();
            }
            AbstractC11398r1 abstractC11398r1 = c10343xx0.f53901b.f57790a;
            if (abstractC11398r1.b(abstractC11398r1.c())) {
                return;
            }
            consumer.accept(c10343xx0);
            return;
        }
        a(c9614td, c10048wA);
    }
}
