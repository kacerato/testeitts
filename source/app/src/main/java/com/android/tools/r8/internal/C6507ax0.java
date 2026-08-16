package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4462g3;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.AbstractC11516y1;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11500x1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C6507ax0 {

    public static final boolean f46657e = true;

    public final C4798y f46658a;

    public final C4724u1 f46659b;

    public final int f46660c;

    public final C8570nJ f46661d;

    public C6507ax0(C4798y c4798y, int i10) {
        this.f46658a = c4798y;
        this.f46659b = c4798y.b();
        this.f46660c = i10;
        this.f46661d = c4798y.E();
    }

    public static C6507ax0 b(C4798y c4798y, C8659ns0 c8659ns0) {
        c8659ns0.b("VerticalClassMerger (1/3)");
        return new C6507ax0(c4798y, 1);
    }

    public static C6507ax0 c(C4798y c4798y, C8659ns0 c8659ns0) {
        c8659ns0.b("VerticalClassMerger (2/3)");
        return new C6507ax0(c4798y, 2);
    }

    public final void a(C8006jx0 c8006jx0, C11500x1 c11500x1) {
        C8674nx0 c8674nx0 = c8006jx0.f49434c;
        com.android.tools.r8.graph.M5 m52 = new com.android.tools.r8.graph.M5();
        m52.f36609e = c8674nx0.a();
        c11500x1.a(m52.a());
        Iterator it = c8674nx0.f51120a.mo743values().iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 d02 = this.f46658a.g((com.android.tools.r8.graph.M2) it.next()).d0();
            com.android.tools.r8.synthesis.J g10 = this.f46658a.f38408a.g();
            g10.getClass();
            if (g10.g(d02.f36245e)) {
                c11500x1.b(d02);
                c11500x1.a(new C9034q51(), d02);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(ExecutorService executorService, C8659ns0 c8659ns0) {
        boolean z10;
        C7006dx0 H10 = this.f46661d.H();
        int i10 = this.f46660c;
        if (H10.f47553b) {
            C8570nJ c8570nJ = H10.f47552a;
            if (!c8570nJ.f50690i1 && !c8570nJ.f50595E0 && c8570nJ.T() && H10.f47552a.W() && ((i10 != 1 || H10.f47554c) && this.f46658a.f38396K.isEmpty())) {
                a(executorService, c8659ns0);
                z10 = f46657e;
                if (z10 && this.f46658a.f38393H == null) {
                    throw new AssertionError();
                }
                if (!z10) {
                    AbstractC8528n4.a(this.f46658a, new EnumC8361m4[0]);
                }
                c8659ns0.d();
            }
        }
        C4798y c4798y = this.f46658a;
        C5412Jt c5412Jt = new C5412Jt();
        c4798y.a(new C8674nx0(c5412Jt, c5412Jt, c5412Jt), this.f46660c);
        z10 = f46657e;
        if (z10) {
        }
        if (!z10) {
        }
        c8659ns0.d();
    }

    public static void a(C7722iD c7722iD, K70 k70) {
        k70.a((com.android.tools.r8.graph.J2) c7722iD.f48879e);
    }

    public static C6507ax0 a(C4798y c4798y, C8659ns0 c8659ns0) {
        c8659ns0.b("VerticalClassMerger (3/3)");
        return new C6507ax0(c4798y, 2);
    }

    public final void a(ExecutorService executorService, C8659ns0 c8659ns0) {
        c8659ns0.b("Setup");
        C4798y c4798y = this.f46658a;
        C4387c4 a10 = C4387c4.a(c4798y, ((C4514j) c4798y.f()).e());
        ArrayList a11 = new C6541b80(this.f46658a, a10).a();
        a11.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C6507ax0.a((Set) obj);
            }
        });
        c8659ns0.d();
        C9114qd c9114qd = new C9114qd(this.f46658a);
        C8006jx0 a12 = a(c9114qd, a(a11, a10, executorService, c8659ns0), executorService, c8659ns0);
        this.f46658a.a(a12.f49434c, this.f46660c);
        if (a12.f49434c.b()) {
            return;
        }
        C8173kx0 c8173kx0 = new C8173kx0(this.f46658a, c9114qd, a10, a12);
        C6840cx0 c6840cx0 = (C6840cx0) c8173kx0.a(executorService, c8659ns0);
        ArrayList arrayList = c8173kx0.f49843n;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C7722iD c7722iD = (C7722iD) obj;
            c7722iD.f48880f = c6840cx0.g(c7722iD.f48879e);
            c7722iD.f48879e = c6840cx0.f(c7722iD.f48879e);
        }
        if (!f46657e) {
            a(c6840cx0, a12);
        }
        a(a12, c8659ns0);
        a(c6840cx0, a12, c8659ns0);
        C4798y c4798y2 = this.f46658a;
        c4798y2.a(c6840cx0, c4798y2.e().a(), executorService, c8659ns0);
        ZS.a(this.f46658a, c8659ns0, executorService, InterfaceC5930Sr0.empty());
        new com.android.tools.r8.naming.D(this.f46658a).c(executorService);
        a(a12.f49434c, executorService, c8659ns0);
        a(a12.f49433b, c8659ns0);
        c8659ns0.b("Mark rewritten with lens");
        C4798y c4798y3 = this.f46658a;
        c4798y3.getClass();
        c8659ns0.b("Clear code rewritings");
        c4798y3.a(new C8115ke(c4798y3.L()));
        c4798y3.a(VV.a(c4798y3.L(), executorService));
        c8659ns0.d();
        c8659ns0.d();
        this.f46658a.b().b();
        this.f46658a.getClass();
    }

    public static boolean a(Set set) {
        return set.size() == 1;
    }

    public final ArrayList a(ArrayList arrayList, final C4387c4 c4387c4, final ExecutorService executorService, C8659ns0 c8659ns0) {
        c8659ns0.b("Compute classes to merge");
        C8325ls0 a10 = c8659ns0.a(C5467Kr0.a(executorService), "Compute classes to merge");
        final ArrayList arrayList2 = new ArrayList(arrayList.size());
        final List a11 = AbstractC7507gx0.a(this.f46658a);
        a10.a(C5467Kr0.a(arrayList, new InterfaceC6217Xr0() {
            @Override
            public final Object apply(Object obj) {
                return C6507ax0.this.a(c4387c4, a11, executorService, arrayList2, (Set) obj);
            }
        }, this.f46658a.E().G(), executorService));
        a10.a();
        c8659ns0.d();
        return arrayList2;
    }

    public final C8659ns0 a(C4387c4 c4387c4, Collection collection, ExecutorService executorService, List list, Set set) {
        C8659ns0 a10 = C8659ns0.a(this.f46661d, "Compute classes to merge in component");
        C4798y c4798y = this.f46658a;
        C7340fx0 c7340fx0 = new C7340fx0(c4798y, c4387c4);
        C7625hh c7625hh = new C7625hh(c4798y, c7340fx0.a(c7340fx0.a(set), collection, executorService, a10));
        if (!c7625hh.f48672b.isEmpty()) {
            synchronized (list) {
                list.add(c7625hh);
            }
        }
        a10.d();
        return a10;
    }

    public final C8006jx0 a(final C9114qd c9114qd, ArrayList arrayList, ExecutorService executorService, C8659ns0 c8659ns0) {
        c8659ns0.b("Merge classes");
        C8325ls0 a10 = c8659ns0.a(C5467Kr0.a(executorService), "Merge classes");
        final C7839ix0 c7839ix0 = new C7839ix0();
        a10.a(C5467Kr0.a(arrayList, new InterfaceC6217Xr0() {
            @Override
            public final Object apply(Object obj) {
                return C6507ax0.this.a(c9114qd, c7839ix0, (C7625hh) obj);
            }
        }, this.f46658a.E().G(), executorService));
        a10.a();
        c8659ns0.d();
        C8507mx0 c8507mx0 = c7839ix0.f49125c;
        c8507mx0.getClass();
        return new C8006jx0(c7839ix0.f49123a, c7839ix0.f49124b, new C8674nx0(c8507mx0.f50465a, c8507mx0.f50466b, c8507mx0.f50467c));
    }

    public final C8659ns0 a(C9114qd c9114qd, C7839ix0 c7839ix0, C7625hh c7625hh) {
        C8659ns0 a10 = C8659ns0.a(this.f46661d, "Merge classes in component");
        C7839ix0 a11 = c7625hh.a(c9114qd);
        synchronized (c7839ix0) {
            c7839ix0.f49123a.a(a11.f49123a);
            c7839ix0.f49124b.addAll(a11.f49124b);
            C8507mx0 c8507mx0 = c7839ix0.f49125c;
            C8507mx0 c8507mx02 = a11.f49125c;
            c8507mx0.f50465a.a(c8507mx02.f50465a);
            c8507mx0.f50466b.a(c8507mx02.f50466b);
            c8507mx0.f50467c.a(c8507mx02.f50467c);
        }
        a10.d();
        return a10;
    }

    public final void a(C6840cx0 c6840cx0, C8006jx0 c8006jx0, C8659ns0 c8659ns0) {
        M70 b10 = M70.b(this.f46658a);
        b10.getClass();
        if (b10 instanceof C6520b10) {
            return;
        }
        c8659ns0.b("Update ART profiles");
        ArrayList arrayList = c8006jx0.f49433b;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            final C7722iD c7722iD = (C7722iD) obj;
            b10.a(c6840cx0.d(c7722iD.f48879e), new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    C6507ax0.a(C7722iD.this, (K70) obj2);
                }
            });
        }
        b10.a(this.f46658a);
        c8659ns0.d();
    }

    public final void a(final C8006jx0 c8006jx0, C8659ns0 c8659ns0) {
        c8659ns0.b("Update keep info");
        this.f46658a.r().a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6507ax0.this.a(c8006jx0, (C11500x1) obj);
            }
        });
        c8659ns0.d();
    }

    public final void a(final C8674nx0 c8674nx0, ExecutorService executorService, C8659ns0 c8659ns0) {
        if (this.f46660c == 1) {
            return;
        }
        c8659ns0.b("Remove merged classes");
        C4462g3 b10 = ((C4462g3.a) this.f46658a.e().a().c().a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C6507ax0.a(C8674nx0.this, (com.android.tools.r8.graph.H2) obj);
            }
        })).b();
        com.android.tools.r8.graph.M5 m52 = new com.android.tools.r8.graph.M5();
        Set<com.android.tools.r8.graph.M2> a10 = c8674nx0.a();
        m52.f36608d.addAll(a10);
        m52.f36609e.addAll(a10);
        m52.f36605a = b10;
        com.android.tools.r8.graph.O5 a11 = m52.a();
        C4798y c4798y = this.f46658a;
        c4798y.b(((C11245i) c4798y.f()).a(a11, executorService, c8659ns0));
        c8659ns0.d();
    }

    public static boolean a(C8674nx0 c8674nx0, com.android.tools.r8.graph.H2 h22) {
        return c8674nx0.d(h22.getType());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1, types: [com.android.tools.r8.internal.PS, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2, types: [int] */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r9v4, types: [com.android.tools.r8.graph.A2] */
    public final void a(ArrayList arrayList, C8659ns0 c8659ns0) {
        c8659ns0.b("Finalize synthesized bridges");
        AbstractC11516y1 r10 = this.f46658a.r();
        int size = arrayList.size();
        boolean z10 = false;
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C7722iD c7722iD = (C7722iD) obj;
            com.android.tools.r8.graph.H0 b10 = this.f46658a.b(c7722iD.f48879e);
            boolean z11 = com.android.tools.r8.graph.H0.f36361e;
            final com.android.tools.r8.graph.H5 H10 = b10 != null ? b10.H() : null;
            boolean z12 = f46657e;
            if (!z12 && H10 == null) {
                throw new AssertionError();
            }
            com.android.tools.r8.graph.H0 b11 = this.f46658a.b(c7722iD.f48880f);
            final com.android.tools.r8.graph.H5 H11 = b11 != null ? b11.H() : null;
            if (!z12 && H11 == null) {
                throw new AssertionError();
            }
            C4798y<?> c4798y = this.f46658a;
            C7702i60 c7702i60 = new C7702i60();
            ?? a10 = WS.a(c7722iD.f48879e, true, (AbstractC6590bT) c7702i60, c4798y.E());
            ArrayList arrayList2 = new ArrayList();
            ?? r15 = z10;
            while (r15 < c7722iD.f48879e.a(z10)) {
                com.android.tools.r8.graph.M2 a11 = c7722iD.f48879e.a(r15, z10);
                C8854p10 b12 = r15 == 0 ? C8854p10.b() : C8854p10.h();
                a11.getClass();
                C10340xw0 c10340xw0 = new C10340xw0(r15, AbstractC8999pu0.a(a11, b12, c4798y), null);
                arrayList2.add(c10340xw0);
                c7702i60.f48841b.b(c10340xw0.t(), c10340xw0);
                a11.F0();
                a10.a(r15);
                size = size;
                z10 = false;
                r15++;
            }
            int i11 = size;
            if (c7722iD.f48881g.c()) {
                com.android.tools.r8.graph.A2 a22 = c7722iD.f48880f;
                boolean z13 = c7722iD.f48882h;
                a10.getClass();
                a10.a(z13 ? 204 : 184, Collections.singletonList(a22), arrayList2);
            } else if (c7722iD.f48882h) {
                com.android.tools.r8.graph.A2 a23 = c7722iD.f48880f;
                a10.getClass();
                a10.a(185, Collections.singletonList(a23), arrayList2);
            } else {
                com.android.tools.r8.graph.A2 a24 = c7722iD.f48880f;
                a10.getClass();
                a10.a(182, Collections.singletonList(a24), arrayList2);
            }
            if (c7722iD.f48879e.z0().S0()) {
                a10.b();
            } else {
                C10340xw0 c10340xw02 = new C10340xw0(r15, c7722iD.f48879e.z0().b(c4798y), null);
                c7702i60.f48841b.b(c10340xw02.t(), c10340xw02);
                a10.getClass();
                a10.a(176, Collections.EMPTY_LIST, Collections.singletonList(c10340xw02));
            }
            H10.a(a10.d(), this.f46658a);
            r10.a(new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    C6507ax0.this.a(H10, H11, (C11500x1) obj2);
                }
            });
            size = i11;
            z10 = false;
        }
        c8659ns0.d();
    }

    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.shaking.H1 h12) {
        h12.a(this.f46658a.a(h52).d());
    }

    public final void a(com.android.tools.r8.graph.H5 h52, final com.android.tools.r8.graph.H5 h53, C11500x1 c11500x1) {
        c11500x1.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6507ax0.this.a(h53, (com.android.tools.r8.shaking.H1) obj);
            }
        }, h52);
    }

    public final void a(C6840cx0 c6840cx0, C8006jx0 c8006jx0) {
        if (!f46657e) {
            c6840cx0.a(this.f46658a);
        }
        AbstractC5308Hz abstractC5308Hz = c6840cx0.f43777d;
        C8674nx0 c8674nx0 = c8006jx0.f49434c;
        Iterator<com.android.tools.r8.graph.H2> it = ((C11245i) this.f46658a.f()).d().iterator();
        while (it.hasNext()) {
            for (C4516j1 c4516j1 : it.next().z1()) {
                com.android.tools.r8.graph.A2 reference = c4516j1.getReference();
                com.android.tools.r8.graph.A2 a10 = c6840cx0.a(abstractC5308Hz, reference);
                com.android.tools.r8.graph.A2 d10 = c6840cx0.d(abstractC5308Hz, a10);
                if (c4516j1.b1() && (c4516j1.Q0() instanceof C7722iD)) {
                    com.android.tools.r8.graph.A2 a22 = ((C7722iD) c4516j1.Q0()).f48880f;
                    com.android.tools.r8.graph.A2 a11 = c6840cx0.a(abstractC5308Hz, a22);
                    boolean z10 = f46657e;
                    if (!z10 && !a10.a(a11)) {
                        throw new AssertionError();
                    }
                    if (!z10 && !a22.a(d10)) {
                        throw new AssertionError();
                    }
                } else if (!f46657e && !reference.a(d10)) {
                    throw new AssertionError();
                }
                if (!f46657e && !AbstractC6483ap0.a(reference.a(this.f46659b)).noneMatch(new C8366m51(c8674nx0))) {
                    throw new AssertionError();
                }
            }
        }
    }
}
