package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;
import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.position.MethodPosition;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntConsumer;
import java.util.function.Predicate;

public final class I00 extends Y9 {

    public static final boolean f40944h = true;

    public final C4798y f40945a;

    public final ArrayList f40946b;

    public final ArrayList f40947c;

    public final C7769iZ f40948d;

    public final EI f40949e;

    public final C7139em f40950f;

    public final X9[][] f40951g;

    /* JADX WARN: Removed duplicated region for block: B:100:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02a1  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0132 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x026e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public I00(C4798y c4798y, com.android.tools.r8.androidapi.a aVar) {
        C8640nm c8640nm;
        C8807om c8807om;
        C7863j5 c7863j5;
        Iterator it;
        C7972jm c7972jm;
        int i10;
        int b10;
        X9 x92;
        EI ei2;
        C7139em c7139em;
        C8570nJ E10;
        C10534z5 c10534z5;
        C5766Pw0 c5766Pw0;
        Set set;
        ArrayList arrayList = new ArrayList();
        this.f40946b = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.f40947c = arrayList2;
        this.f40945a = c4798y;
        C8355m2 c8355m2 = c4798y.m() ? new C8355m2(c4798y.L()) : null;
        if (c8355m2 != null) {
            arrayList.add(c8355m2);
        }
        if (c4798y.E().a().f()) {
            arrayList2.add(new T2(c4798y, aVar));
        }
        if (c4798y.E().f50616L0.a()) {
            this.f40948d = null;
            this.f40949e = null;
            this.f40950f = null;
            arrayList.add(new C6905dK(c4798y));
            if (c4798y.E().P()) {
                c4798y.E().getClass();
                arrayList.add(new L40(c4798y));
                arrayList2.add(new C5822Qv0(c4798y));
            }
            this.f40951g = a();
            return;
        }
        C7769iZ c7769iZ = !c4798y.E().i() ? c4798y.m() ? new C7769iZ(c4798y) : new C5621Ni(c4798y) : null;
        this.f40948d = c7769iZ;
        H5 h52 = new H5(c4798y);
        if (!c4798y.E().x().a().j().isEmpty()) {
            AbstractC8552nC a10 = C8640nm.a(c4798y);
            if (!a10.isEmpty()) {
                c8640nm = new C8640nm(c4798y, a10);
                if (c8640nm != null) {
                    arrayList.add(c8640nm);
                }
                c8807om = !X2.a(c4798y).f53766c.r() ? new C8807om(c4798y) : null;
                if (c8807om != null) {
                    arrayList.add(c8807om);
                }
                c7863j5 = !c4798y.E().c0() ? new C7863j5(c4798y) : null;
                if (c7863j5 != null) {
                    arrayList.add(c7863j5);
                }
                it = c4798y.b().f38117o3.iterator();
                while (true) {
                    if (it.hasNext()) {
                        c7972jm = null;
                        break;
                    } else if (c4798y.f().c((com.android.tools.r8.graph.M2) it.next()) != null) {
                        c7972jm = new C7972jm(c4798y);
                        break;
                    }
                }
                if (c7972jm != null) {
                    arrayList.add(c7972jm);
                }
                C8570nJ E11 = c4798y.E();
                E11.getClass();
                i10 = AbstractC8403mJ.f50256a[E11.f50634R0.ordinal()];
                if (i10 != 1) {
                    if (i10 != 2) {
                        throw new C5417Jv0();
                    }
                    if (E11.f50616L0.b() && !E11.c(C2.K)) {
                        arrayList.add(new C9496st0(c4798y));
                    }
                }
                if (c4798y.E().f50622N0) {
                    arrayList.add(new C10501yu0(c4798y));
                }
                b10 = AbstractC4291c.b(c4798y.E().k());
                if (b10 != 0) {
                    x92 = null;
                } else if (b10 == 1) {
                    x92 = new C9779uc0(c4798y);
                } else {
                    if (b10 != 2) {
                        throw new C5417Jv0();
                    }
                    x92 = new C9612tc0(c4798y);
                }
                if (x92 != null) {
                    arrayList.add(x92);
                }
                C6099Vp0 c6099Vp0 = new C6099Vp0(c4798y);
                arrayList.add(c6099Vp0);
                C8753oR c8753oR = new C8753oR(c4798y);
                arrayList.add(c8753oR);
                QC c10 = C4875Al0.c(c8355m2, h52, c7863j5, c8807om);
                QC c11 = C4875Al0.c(c8753oR, c6099Vp0, x92);
                int a11 = C10404yI.a(c4798y.E());
                ei2 = a11 != 3 ? null : new EI(c4798y, c10, c11, a11);
                this.f40949e = ei2;
                if (ei2 == null) {
                    arrayList.add(ei2);
                } else {
                    c4798y.E().getClass();
                    arrayList.add(new L40(c4798y));
                }
                if (c4798y.E().x().b().a()) {
                    c7139em = null;
                } else {
                    QC c12 = C4875Al0.c(ei2, c8807om, h52);
                    if (ei2 != null) {
                        set = ei2.f39821g;
                    } else {
                        int i11 = QC.f43505c;
                        set = C7119ef0.f47742j;
                    }
                    c7139em = new C7139em(c4798y, c12, set);
                }
                this.f40950f = c7139em;
                if (c7139em != null) {
                    arrayList.add(c7139em);
                }
                arrayList.add(new C10628zh(c4798y));
                arrayList.add(new C6905dK(c4798y));
                if (c4798y.E().f50697l instanceof ClassFileConsumer) {
                    if (!f40944h && c7769iZ == null) {
                        throw new AssertionError();
                    }
                    arrayList.add(new C7904jK());
                }
                E10 = c4798y.E();
                E10.getClass();
                if (!E10.c(C2.Q)) {
                    arrayList.add(new T7(c4798y));
                }
                c10534z5 = h52.f40677c;
                if (c10534z5.f54281c.isEmpty() || !c10534z5.f54282d.isEmpty()) {
                    arrayList.add(h52);
                }
                if (c7769iZ != null) {
                    arrayList.add(c7769iZ);
                }
                c5766Pw0 = !c4798y.E().d0() ? new C5766Pw0(c4798y) : null;
                if (c5766Pw0 != null) {
                    arrayList.add(c5766Pw0);
                }
                arrayList2.add(new C5822Qv0(c4798y));
                this.f40951g = a();
            }
        }
        c8640nm = null;
        if (c8640nm != null) {
        }
        if (!X2.a(c4798y).f53766c.r()) {
        }
        if (c8807om != null) {
        }
        if (!c4798y.E().c0()) {
        }
        if (c7863j5 != null) {
        }
        it = c4798y.b().f38117o3.iterator();
        while (true) {
            if (it.hasNext()) {
            }
        }
        if (c7972jm != null) {
        }
        C8570nJ E112 = c4798y.E();
        E112.getClass();
        i10 = AbstractC8403mJ.f50256a[E112.f50634R0.ordinal()];
        if (i10 != 1) {
        }
        if (c4798y.E().f50622N0) {
        }
        b10 = AbstractC4291c.b(c4798y.E().k());
        if (b10 != 0) {
        }
        if (x92 != null) {
        }
        C6099Vp0 c6099Vp02 = new C6099Vp0(c4798y);
        arrayList.add(c6099Vp02);
        C8753oR c8753oR2 = new C8753oR(c4798y);
        arrayList.add(c8753oR2);
        QC c102 = C4875Al0.c(c8355m2, h52, c7863j5, c8807om);
        QC c112 = C4875Al0.c(c8753oR2, c6099Vp02, x92);
        int a112 = C10404yI.a(c4798y.E());
        if (a112 != 3) {
        }
        this.f40949e = ei2;
        if (ei2 == null) {
        }
        if (c4798y.E().x().b().a()) {
        }
        this.f40950f = c7139em;
        if (c7139em != null) {
        }
        arrayList.add(new C10628zh(c4798y));
        arrayList.add(new C6905dK(c4798y));
        if (c4798y.E().f50697l instanceof ClassFileConsumer) {
        }
        E10 = c4798y.E();
        E10.getClass();
        if (!E10.c(C2.Q)) {
        }
        c10534z5 = h52.f40677c;
        if (c10534z5.f54281c.isEmpty()) {
        }
        arrayList.add(h52);
        if (c7769iZ != null) {
        }
        if (!c4798y.E().d0()) {
        }
        if (c5766Pw0 != null) {
        }
        arrayList2.add(new C5822Qv0(c4798y));
        this.f40951g = a();
    }

    public final X9[][] a() {
        final C6899dH c6899dH = new C6899dH(16);
        Iterator it = AbstractC6114Vx.b(this.f40946b, this.f40947c).iterator();
        while (true) {
            GK gk2 = (GK) it;
            if (!gk2.hasNext()) {
                break;
            }
            final X9 x92 = (X9) gk2.next();
            x92.a(new IntConsumer() {
                @Override
                public final void accept(int i10) {
                    I00.this.a(c6899dH, x92, i10);
                }
            });
            x92.b(new IntConsumer() {
                @Override
                public final void accept(int i10) {
                    I00.this.b(c6899dH, x92, i10);
                }
            });
        }
        X9[][] x9Arr = new X9[212];
        WG wg2 = new WG(((C6399aH) c6899dH.c()).f46484b);
        while (wg2.hasNext()) {
            RG rg2 = (RG) wg2.next();
            x9Arr[rg2.a()] = (X9[]) ((List) rg2.getValue()).toArray(X9.f45630a);
        }
        for (int i10 = 0; i10 < 212; i10++) {
            if (x9Arr[i10] == null) {
                x9Arr[i10] = X9.f45630a;
            }
        }
        return x9Arr;
    }

    public final void b(SG sg2, X9 x92, int i10) {
        if (sg2.a(i10)) {
            ((List) sg2.get(i10)).add(x92);
            return;
        }
        boolean z10 = AT.f38618a;
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(x92);
        sg2.a(i10, arrayList);
    }

    public final void c(com.android.tools.r8.graph.H5 h52) {
        boolean z10 = f40944h;
        if (!z10 && !this.f40946b.stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return I00.b((X9) obj);
            }
        })) {
            throw new AssertionError((Object) "Expected code to be desugared");
        }
        if (!z10 && !a(h52)) {
            throw new AssertionError();
        }
        boolean z11 = false;
        for (W9 w92 : h52.d().Q0().V().E0()) {
            Iterator it = AbstractC9907vK.c(this.f40946b, new V60() {
                @Override
                public final boolean apply(Object obj) {
                    return I00.c((X9) obj);
                }
            }).iterator();
            while (true) {
                AbstractC7015e0 abstractC7015e0 = (AbstractC7015e0) it;
                if (!abstractC7015e0.hasNext()) {
                    break;
                } else if (((X9) abstractC7015e0.next()).a(h52, w92).a()) {
                    z11 = true;
                }
            }
            Iterator it2 = AbstractC9907vK.c(this.f40946b, new V60() {
                @Override
                public final boolean apply(Object obj) {
                    boolean a10;
                    a10 = ((X9) obj).a();
                    return a10;
                }
            }).iterator();
            while (true) {
                AbstractC7015e0 abstractC7015e02 = (AbstractC7015e0) it2;
                if (abstractC7015e02.hasNext()) {
                    X9 x92 = (X9) abstractC7015e02.next();
                    if (!f40944h && x92.a(h52, w92).a()) {
                        throw new AssertionError();
                    }
                }
            }
        }
        if (!f40944h && !z11) {
            throw new AssertionError();
        }
    }

    public final void b(com.android.tools.r8.graph.H5 h52) {
        if (h52.d().Q0().t0()) {
            return;
        }
        this.f40945a.E().f50691j.error(new StringDiagnostic("Unsupported attempt to desugar non-CF code", h52.f36317b.f36244d, MethodPosition.create(h52)));
    }

    public static boolean c(X9 x92) {
        return !x92.a();
    }

    public static boolean b(X9 x92) {
        return !x92.a();
    }

    public final void a(SG sg2, X9 x92, int i10) {
        if (sg2.a(i10)) {
            ((List) sg2.get(i10)).add(x92);
            return;
        }
        boolean z10 = AT.f38618a;
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(x92);
        sg2.a(i10, arrayList);
    }

    @Override
    public final void a(final AbstractC7103ea abstractC7103ea, final Z70 z70, final com.android.tools.r8.graph.H5 h52) {
        b(h52);
        this.f40946b.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                X9 x92 = (X9) obj;
                x92.a(abstractC7103ea, z70, com.android.tools.r8.graph.H5.this);
            }
        });
        this.f40947c.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                X9 x92 = (X9) obj;
                x92.a(abstractC7103ea, z70, com.android.tools.r8.graph.H5.this);
            }
        });
    }

    @Override
    public final void a(final com.android.tools.r8.graph.H5 h52, final AbstractC7103ea abstractC7103ea) {
        b(h52);
        this.f40946b.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((X9) obj).a(com.android.tools.r8.graph.H5.this, abstractC7103ea);
            }
        });
        this.f40947c.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((X9) obj).a(com.android.tools.r8.graph.H5.this, abstractC7103ea);
            }
        });
    }

    @Override
    public final void a(final com.android.tools.r8.graph.H5 h52, final AbstractC7103ea abstractC7103ea, final C5035Df c5035Df) {
        b(h52);
        final com.android.tools.r8.graph.G V10 = h52.d().Q0().V();
        final IH ih2 = new IH(V10.G0());
        final IH ih3 = new IH(V10.G0());
        final IH ih4 = new IH(V10.f36304g);
        final IH ih5 = new IH(V10.f36304g);
        int i10 = 0;
        for (W9 w92 : V10.f36305h) {
            int y10 = w92.y();
            if (!com.android.tools.r8.graph.G.f36301n && y10 <= 0 && w92.A()) {
                throw new AssertionError();
            }
            i10 += y10;
        }
        final H00 h00 = new H00(i10);
        final C7 c72 = new C7();
        final boolean J10 = this.f40945a.E().J();
        if (J10) {
            c72.a((C7) V10.H0());
            if (!c72.b()) {
                B60.c.a a10 = B60.c.t().a(0).a(h52.getReference());
                a10.f38816e = h52.d().F0();
                c72.a((C7) a10.a());
            }
        }
        List<W9> b10 = AT.b(V10.E0(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return I00.this.a(J10, c72, ih3, ih5, h00, abstractC7103ea, h52, c5035Df, ih2, V10, ih4, (W9) obj);
            }
        });
        if (b10 != null) {
            boolean z10 = f40944h;
            if (!z10 && ih2.a() < V10.G0()) {
                throw new AssertionError();
            }
            if (!z10 && ih4.a() < V10.f36304g) {
                throw new AssertionError();
            }
            V10.a(b10);
            V10.f36303f = ih2.a();
            V10.f36304g = ih4.a();
            return;
        }
        if (f40944h) {
            return;
        }
        c(h52);
    }

    public final Collection a(boolean z10, C7 c72, IH ih2, IH ih3, final H00 h00, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, IH ih4, com.android.tools.r8.graph.G g10, IH ih5, W9 w92) {
        w92.getClass();
        if (w92 instanceof C5541Ma) {
            if (!z10) {
                return null;
            }
            c72.a((C7) w92.q().V());
            return null;
        }
        B60 b60 = (B60) c72.a();
        Objects.requireNonNull(ih2);
        C8235lI0 c8235lI0 = new C8235lI0(ih2);
        Objects.requireNonNull(ih3);
        Collection a10 = a(w92, b60, c8235lI0, new C8402mI0(ih3), h00, abstractC7103ea, h52, c5035Df);
        if (a10 != null) {
            int G02 = g10.G0();
            int i10 = ih2.f41050a;
            ih2.d(G02);
            if (i10 > ih4.a()) {
                ih4.d(i10);
            }
            int i11 = g10.f36304g;
            int i12 = ih3.f41050a;
            ih3.d(i11);
            if (i12 > ih5.a()) {
                ih5.d(i12);
            }
            h00.f40647a += -w92.y();
            a10.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    I00.a(H00.this, (W9) obj);
                }
            });
            return a10;
        }
        boolean z11 = f40944h;
        if (!z11 && ih2.a() != g10.G0()) {
            throw new AssertionError();
        }
        if (z11 || ih3.a() == g10.f36304g) {
            return a10;
        }
        throw new AssertionError();
    }

    public static void a(H00 h00, W9 w92) {
        h00.f40647a += w92.y();
    }

    @Override
    public final Collection a(W9 w92, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df) {
        Collection collection;
        Iterator it = this.f40946b.iterator();
        while (true) {
            if (!it.hasNext()) {
                collection = null;
                break;
            }
            X9 x92 = (X9) it.next();
            collection = x92.a(h52, w92).a(b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, this, this.f40945a.b());
            if (collection != null) {
                if (!f40944h) {
                    a(w92, h52, it, x92);
                }
            }
        }
        if (collection != null) {
            return collection;
        }
        Iterator it2 = this.f40947c.iterator();
        while (it2.hasNext()) {
            X9 x93 = (X9) it2.next();
            Collection a10 = x93.a(h52, w92).a(b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, this, this.f40945a.b());
            if (a10 != null) {
                if (!f40944h) {
                    a(w92, h52, it2, x93);
                }
                return a10;
            }
        }
        return null;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.H5 h52) {
        if (!h52.d().b1()) {
            return false;
        }
        AbstractC4497i0 Q02 = h52.d().Q0();
        if (Q02.v0()) {
            return false;
        }
        if (Q02.t0()) {
            for (W9 w92 : Q02.V().E0()) {
                for (X9 x92 : this.f40951g[w92.E() ? w92.B() : w92.C()]) {
                    if (x92.a(h52, w92).a()) {
                        return true;
                    }
                }
                if (!f40944h) {
                    a(h52, w92);
                }
            }
            return false;
        }
        throw new C5417Jv0("Unexpected attempt to determine if non-CF code needs desugaring");
    }

    public final void a(com.android.tools.r8.graph.H5 h52, W9 w92) {
        Iterator it = AbstractC6114Vx.b(this.f40946b, this.f40947c).iterator();
        while (true) {
            GK gk2 = (GK) it;
            if (!gk2.hasNext()) {
                return;
            }
            X9 x92 = (X9) gk2.next();
            if (!f40944h && x92.a(h52, w92).a()) {
                throw new AssertionError((Object) ("Expected instruction to be desugared, but matched by: " + x92.getClass().getName()));
            }
        }
    }

    public static void a(final W9 w92, final com.android.tools.r8.graph.H5 h52, Iterator it, final X9 x92) {
        it.forEachRemaining(new Consumer() {
            @Override
            public final void accept(Object obj) {
                I00.a(W9.this, h52, x92, (X9) obj);
            }
        });
    }

    public static void a(W9 w92, com.android.tools.r8.graph.H5 h52, X9 x92, X9 x93) {
        boolean a10 = x93.a(h52, w92).a();
        if (f40944h || !a10) {
            return;
        }
        if ((x92 instanceof EI) && ((x93 instanceof C7904jK) || (x93 instanceof C7769iZ))) {
            return;
        }
        if ((x92 instanceof C9496st0) && (x93 instanceof EI)) {
            return;
        }
        throw new AssertionError((Object) ("Desugaring of " + ((Object) w92) + " in method " + h52.r() + " has multiple matches: " + x92.getClass().getName() + " and " + x93.getClass().getName()));
    }

    @Override
    public final DI a(final Predicate predicate, final JI ji2) {
        return (DI) a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return I00.a(Predicate.this, ji2, (EI) obj);
            }
        });
    }

    @Override
    public final void a(Consumer consumer) {
        C7139em c7139em = this.f40950f;
        if (c7139em != null) {
            consumer.accept(c7139em);
        }
    }

    public final Object a(Function function) {
        EI ei2 = this.f40949e;
        if (ei2 != null) {
            return function.apply(ei2);
        }
        return null;
    }

    public static DI a(Predicate predicate, JI ji2, EI ei2) {
        return new DI(ei2.f39816b, ji2, ei2.f39819e, predicate);
    }
}
