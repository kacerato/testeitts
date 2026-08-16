package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4669r3;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.C4823z5;
import com.android.tools.r8.graph.EnumC4535k1;
import com.android.tools.r8.graph.R2;
import com.android.tools.r8.ir.optimize.C10696a;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.synthesis.S;
import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C5819Qu implements InterfaceC5096Eg {

    public static final boolean f43748l = true;

    public final C5587Mu f43749a;

    public final C4798y f43750b;

    public final C7541h80 f43751c;

    public final C4724u1 f43752d;

    public final C8664nu f43753e;

    public final AbstractC8552nC f43754f;

    public final C5993Tu f43755g;

    public final C7541h80 f43756h = C7541h80.l();

    public final C7873j80 f43757i;

    public final com.android.tools.r8.graph.N5 f43758j;

    public final M70 f43759k;

    public C5819Qu(C4798y c4798y, C7541h80 c7541h80, C8664nu c8664nu, AbstractC8552nC abstractC8552nC, C5993Tu c5993Tu) {
        C8040k80 c8040k80 = AbstractC8374m80.f50207d;
        this.f43757i = new C7873j80();
        this.f43750b = c4798y;
        this.f43751c = c7541h80;
        this.f43753e = c8664nu;
        this.f43752d = c4798y.b();
        this.f43754f = abstractC8552nC;
        boolean z10 = C5645Nu.f42728t;
        C5587Mu c5587Mu = new C5587Mu(c4798y, c8664nu);
        Set c10 = AbstractC5513Ll0.c();
        c10.addAll(c8664nu.f51108a.keySet());
        c10.addAll(c8664nu.f51109b.keySet());
        Iterator it = c10.iterator();
        while (it.hasNext()) {
            c5587Mu.f42447c.a((com.android.tools.r8.graph.M2) it.next(), c5587Mu.f42445a.f37884J1);
        }
        this.f43749a = c5587Mu;
        this.f43755g = c5993Tu;
        this.f43758j = new com.android.tools.r8.graph.N5();
        this.f43759k = M70.b(c4798y);
    }

    public static boolean a(Set set, com.android.tools.r8.graph.H5 h52, Set set2) {
        boolean z10;
        if (!set.isEmpty()) {
            Iterator<E> it = set2.iterator();
            while (it.hasNext()) {
                if (set.contains(it.next())) {
                    z10 = true;
                    break;
                }
            }
        }
        z10 = false;
        return !z10;
    }

    public final void b(C5058Dq c5058Dq, PT pt, Map map, com.android.tools.r8.graph.H5 h52) {
        if (h52.d().f1() && this.f43753e.c(h52.p()) != h52.p()) {
            if (!f43748l && !h52.d().Q0().x0()) {
                throw new AssertionError();
            }
            com.android.tools.r8.graph.N5 n52 = this.f43758j;
            n52.f36611g.add(h52.getReference());
            h52.d().f37327t = true;
            return;
        }
        if (h52.d().j1()) {
            com.android.tools.r8.graph.N5 n53 = this.f43758j;
            n53.f36611g.add(h52.getReference());
            h52.d().f37327t = true;
            return;
        }
        if (h52.d().n1()) {
            c5058Dq.a(h52.getReference());
        } else {
            a(pt, map, h52, false);
        }
    }

    public final void b(final C10374y70 c10374y70, ExecutorService executorService) {
        final C4460g1 q10 = ((C11245i) this.f43750b.f()).c(this.f43752d.f37943R4.f36483b).q();
        C5467Kr0.a(this.f43754f.o(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5819Qu.this.b(c10374y70, q10, (com.android.tools.r8.graph.H2) obj);
            }
        }, this.f43750b.E().G(), executorService);
    }

    public static void a(C5645Nu c5645Nu, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.J j10) {
        j10.f36456o = c5645Nu;
    }

    public final C7045eA a(final C10374y70 c10374y70, ExecutorService executorService) {
        final C7045eA c7045eA = new C7045eA(16);
        final C5093Ef k10 = this.f43750b.k();
        final C6529b40 c6529b40 = new C6529b40(C7097eX.f47704c, k10);
        final Set a10 = a();
        this.f43751c.a(new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C5819Qu.a(Set.this, (com.android.tools.r8.graph.H5) obj, (Set) obj2);
            }
        });
        this.f43751c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C5819Qu.this.a(k10, c7045eA, c6529b40, (com.android.tools.r8.graph.H5) obj, (Set) obj2);
            }
        });
        final C6862d40 c6862d40 = new C6862d40(c6529b40.f46692b, c6529b40.f46693c, c6529b40.f46691a);
        c6862d40.a(new InterfaceC6695c40() {
            @Override
            public final void a(com.android.tools.r8.graph.H5 h52, C5035Df c5035Df) {
                C5819Qu.this.a(c10374y70, c6862d40, h52, c5035Df);
            }
        }, this.f43750b.E().G(), executorService);
        return c7045eA;
    }

    public final com.android.tools.r8.graph.A2 b(PT pt, final Map map, com.android.tools.r8.graph.H5 h52, boolean z10) {
        C4516j1 b10;
        boolean z11 = f43748l;
        if (!z11 && !z10 && h52.getAccessFlags().H()) {
            throw new AssertionError();
        }
        Predicate predicate = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C5819Qu.b(Map.this, (com.android.tools.r8.graph.A2) obj);
            }
        };
        if (z10) {
            b10 = a(h52, pt, predicate);
        } else {
            b10 = b(h52, pt, predicate);
        }
        if (!z11 && map.containsKey(b10.getReference())) {
            throw new AssertionError();
        }
        map.put(b10.getReference(), b10);
        return b10.getReference();
    }

    public static boolean b(Map map, com.android.tools.r8.graph.A2 a22) {
        return !map.containsKey(a22);
    }

    public final void a(final com.android.tools.r8.graph.H5 h52, C9945vc c9945vc, com.android.tools.r8.graph.I2 i22, com.android.tools.r8.synthesis.N n10) {
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        C4516j1 d10 = h52.d();
        n10.f58116f = d10.a1() ? d10.P0() : null;
        com.android.tools.r8.androidapi.f fVar = this.f43750b.f38405T;
        n10.f58123m = fVar;
        n10.f58124n = fVar;
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return C5819Qu.a(com.android.tools.r8.graph.H5.this, a22);
            }
        };
        C5160Fj c5160Fj = C5160Fj.f40293b;
        n10.f58125o = new WY().a(c9945vc);
        n10.f58115e = i22;
    }

    public static C4516j1.a c(final com.android.tools.r8.graph.H5 h52, C4516j1.a aVar) {
        aVar.getClass();
        aVar.f37333e = C4723u0.l0();
        aVar.f37335g = C4823z5.f38465d;
        aVar.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5819Qu.a(com.android.tools.r8.graph.H5.this, (com.android.tools.r8.graph.L4) obj);
            }
        }).f37334f = AbstractC9530t40.f52519c;
        return aVar;
    }

    public final C4516j1 b(final com.android.tools.r8.graph.H5 h52, PT pt, Predicate predicate) {
        if (!f43748l && h52.getAccessFlags().H()) {
            throw new AssertionError();
        }
        return h52.d().a(a(h52, pt, predicate, h52.getReference()), this.f43752d, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5819Qu.this.b(h52, (C4516j1.a) obj);
            }
        });
    }

    public final void b(com.android.tools.r8.graph.H5 h52, C4516j1.a aVar) {
        C4516j1.a c10 = c(h52, aVar);
        EnumC4535k1 enumC4535k1 = h52.d().f37319l;
        if (!C4516j1.a.f37328u && c10.f37336h != EnumC4535k1.f37407b) {
            throw new AssertionError();
        }
        c10.f37336h = enumC4535k1;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.I2 y02 = h52.getReference().y0();
        return y02 == a(y02);
    }

    public final Set a() {
        final Set c10 = AbstractC5513Ll0.c();
        this.f43754f.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C5819Qu.a(Set.this, (com.android.tools.r8.graph.H2) obj, (Set) obj2);
            }
        });
        return c10;
    }

    public static void a(Set set, com.android.tools.r8.graph.H2 h22, Set set2) {
        set.add(h22);
        set.addAll(set2);
    }

    public final C5761Pu a(C10374y70 c10374y70, ExecutorService executorService, C8659ns0 c8659ns0) {
        b(c10374y70, executorService);
        new C5154Fg(this.f43750b, this).a(executorService, C8659ns0.c());
        final Set c10 = AbstractC5513Ll0.c();
        this.f43756h.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Set.this.add(((com.android.tools.r8.graph.H5) obj).getReference());
            }
        });
        C5587Mu c5587Mu = this.f43749a;
        C4798y c4798y = this.f43750b;
        if (!C5587Mu.f42444i) {
            if (c5587Mu.f42447c.f49890b.isEmpty()) {
                throw new AssertionError();
            }
        } else {
            c5587Mu.getClass();
        }
        final C5645Nu c5645Nu = new C5645Nu(c4798y, c5587Mu.f42448d, c5587Mu.f42449e, c5587Mu.f42447c, c5587Mu.f42450f, AbstractC8552nC.a(c5587Mu.f42451g), c10);
        C4798y c4798y2 = this.f43750b;
        c4798y2.a(c5645Nu, c4798y2.e().a(), executorService, c8659ns0);
        c10374y70.f49523b.a();
        c5645Nu.f50328n = com.android.tools.r8.ir.optimize.A.f54726a;
        C7045eA a10 = a(c10374y70, executorService);
        this.f43756h.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C5819Qu.a(C5645Nu.this, (com.android.tools.r8.graph.H5) obj, (com.android.tools.r8.graph.J) obj2);
            }
        });
        this.f43759k.a(this.f43750b.f38411d).a(this.f43750b);
        return new C5761Pu(a10, this.f43757i, c5645Nu, this.f43758j.a());
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22, final OW ow) {
        C8664nu c8664nu = this.f43753e;
        if (c8664nu.f51108a.containsKey(h22.getType())) {
            C5993Tu c5993Tu = this.f43755g;
            c5993Tu.getClass();
            PT a10 = c5993Tu.a(h22.getType());
            Collection a11 = a(h22, a10);
            Collection a12 = a(h22, (Set) this.f43754f.get(h22), a10);
            List<C4460g1> k12 = h22.k1();
            h22.f36251k.f37700b.a();
            h22.F0();
            com.android.tools.r8.graph.N4 b02 = h22.b0();
            b02.getClass();
            b02.f36639c = C4516j1.f37311v;
            b02.f36638b.a();
            h22.b0().f36638b.b();
            for (com.android.tools.r8.graph.H2 h23 : (Set) this.f43754f.get(h22)) {
                List<C4460g1> k13 = h23.k1();
                h23.f36251k.f37700b.a();
                h23.F0();
                com.android.tools.r8.graph.N4 b03 = h23.b0();
                b03.getClass();
                b03.f36639c = C4516j1.f37311v;
                b03.f36638b.a();
                h23.b0().f36638b.b();
            }
            com.android.tools.r8.graph.H2 h24 = a10.f43237b;
            h24.f36252l.a((C4516j1[]) a12.toArray(C4516j1.f37310u));
            a10.f43237b.b((C4460g1[]) a11.toArray(C4460g1.f37200o));
            return;
        }
        if (this.f43753e.b(h22.getType())) {
            return;
        }
        com.android.tools.r8.graph.N4 b04 = h22.b0();
        InterfaceC5422Jy interfaceC5422Jy = new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return C5819Qu.this.b(ow, (C4516j1) obj);
            }
        };
        b04.getClass();
        b04.f36639c = C4516j1.f37311v;
        b04.f36638b.a((Function) interfaceC5422Jy);
        C4669r3 c4669r3 = h22.f36251k;
        c4669r3.f37700b.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5819Qu.this.a((C4460g1) obj);
            }
        });
    }

    public final void a(C5093Ef c5093Ef, InterfaceC7200f6 interfaceC7200f6, C6529b40 c6529b40, final com.android.tools.r8.graph.H5 h52, Set set) {
        final C9945vc a10 = h52.A().o().a();
        C4724u1 c4724u1 = this.f43752d;
        com.android.tools.r8.graph.M2 m22 = c4724u1.f37905M1;
        com.android.tools.r8.graph.M2[] m2Arr = h52.C().f36675b;
        int i10 = a10.f53153a;
        com.android.tools.r8.graph.M2 m23 = this.f43752d.f37884J1;
        Object[] objArr = (Object[]) m2Arr.clone();
        objArr[i10] = m23;
        final com.android.tools.r8.graph.I2 a11 = c4724u1.a(m22, (com.android.tools.r8.graph.M2[]) objArr);
        com.android.tools.r8.graph.H5 b10 = this.f43750b.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58148A;
                return bVar;
            }
        }, c5093Ef.a(h52).a(), this.f43750b, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5819Qu.this.a(h52, a10, a11, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        interfaceC7200f6.put(h52.getReference(), b10.getReference());
        C5587Mu c5587Mu = this.f43749a;
        com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) c5587Mu.f42449e.a(h52.getReference(), h52.getReference());
        c5587Mu.f42449e.b(a22, h52.getReference());
        c5587Mu.f42449e.b(a22, b10.getReference());
        C9035q6 c9035q6 = c5587Mu.f42449e;
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        boolean z10 = C9035q6.f51716e;
        if (!z10 && c9035q6.e(a22).size() <= 1) {
            throw new AssertionError();
        }
        if (!z10 && !c9035q6.e(a22).contains(reference)) {
            throw new AssertionError();
        }
        c9035q6.f51717d.put(a22, reference);
        c6529b40.f46691a.add((AbstractC8374m80) b10);
    }

    public static AbstractC4497i0 a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.A2 a22) {
        return new C10112wc(h52);
    }

    public final void a(C8048kB c8048kB, C6862d40 c6862d40, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df) {
        boolean z10 = AbstractC8028k40.f49478a;
        c8048kB.a(h52, (AbstractC8028k40) C8696o40.f51162b, (AbstractC7431gX) c6862d40, c5035Df, EW.b(this.f43750b), C8659ns0.c());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r22v0, types: [com.android.tools.r8.internal.kB] */
    /* JADX WARN: Type inference failed for: r5v2, types: [com.android.tools.r8.internal.zw0, com.android.tools.r8.internal.fB] */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.android.tools.r8.internal.EE, java.util.ListIterator, com.android.tools.r8.internal.Y5] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [com.android.tools.r8.graph.j0, com.android.tools.r8.ir.optimize.a] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v8 */
    public final void b(C8048kB c8048kB, C4460g1 c4460g1, com.android.tools.r8.graph.H2 h22) {
        C8497mu c8497mu;
        PT pt;
        Z5 z52;
        com.android.tools.r8.graph.F5 r10;
        Iterator it;
        PT pt2;
        Z5 z53;
        C8497mu c8497mu2;
        C9126qh c10;
        com.android.tools.r8.graph.H2 a10;
        com.android.tools.r8.graph.H0 e10;
        int i10;
        if (!h22.c1()) {
            if (!f43748l && !h22.A1().isEmpty()) {
                throw new AssertionError();
            }
            return;
        }
        com.android.tools.r8.graph.H5 h10 = h22.h(h22.L0());
        C8664nu c8664nu = this.f43753e;
        c8664nu.getClass();
        C8497mu a11 = c8664nu.a(h22.getType());
        C5993Tu c5993Tu = this.f43755g;
        c5993Tu.getClass();
        PT a12 = c5993Tu.a(h22.getType());
        ?? a13 = h10.a(this.f43750b);
        Z5 u10 = a13.u();
        IdentityHashMap identityHashMap = new IdentityHashMap();
        while (true) {
            ?? r92 = 0;
            if (u10.hasNext()) {
                ?? I10 = u10.next().I();
                while (I10.hasNext()) {
                    AbstractC10561zE abstractC10561zE = (AbstractC10561zE) I10.next();
                    if (identityHashMap.containsKey(abstractC10561zE)) {
                        Optional optional = (Optional) identityHashMap.remove(abstractC10561zE);
                        if (optional.isPresent()) {
                            I10.a((AbstractC10561zE) optional.get(), r92);
                            I10.previous();
                        }
                        I10.i();
                    } else {
                        abstractC10561zE.getClass();
                        if (abstractC10561zE instanceof C7957jh) {
                            C7957jh F10 = abstractC10561zE.F();
                            if (this.f43753e.a(F10.f49303l, h22.getType())) {
                                final ArrayList arrayList = new ArrayList();
                                C10340xw0 d10 = F10.d();
                                d10.getClass();
                                C9132qj c9132qj = C9132qj.f51861a;
                                Set<AbstractC10561zE> c11 = AbstractC5513Ll0.c();
                                C10340xw0.a(c9132qj, d10, c11);
                                for (AbstractC10561zE abstractC10561zE2 : c11) {
                                    if (abstractC10561zE2.T1()) {
                                        C8405mK k02 = abstractC10561zE2.k0();
                                        if (k02.B2() == this.f43752d.f37922O4.f36319a) {
                                            arrayList.add(k02);
                                        }
                                    }
                                }
                                if (!arrayList.isEmpty()) {
                                    C7791ih c7791ih = new C7791ih();
                                    c7791ih.f49020d = a12.f43237b.getType();
                                    C4798y c4798y = this.f43750b;
                                    c7791ih.f52321a = a13.a(AbstractC8999pu0.a(c4798y.b().f38180w2, C8854p10.b(), (C4798y<?>) c4798y).b(), r92);
                                    c7791ih.f52322b = F10.getPosition();
                                    C7957jh c7957jh = new C7957jh(c7791ih.f52321a, c7791ih.f49020d, false);
                                    B60 b60 = c7791ih.f52322b;
                                    if (b60 != null) {
                                        c7957jh.b(b60);
                                    }
                                    I10.add(c7957jh);
                                    C10340xw0 d11 = F10.d();
                                    C10340xw0 d12 = c7957jh.d();
                                    Predicate predicate = new Predicate() {
                                        @Override
                                        public final boolean test(Object obj) {
                                            return List.this.contains((AbstractC10561zE) obj);
                                        }
                                    };
                                    if (d11 == d12) {
                                        d11.getClass();
                                    } else {
                                        for (AbstractC10561zE abstractC10561zE3 : d11.b0()) {
                                            if (predicate.test(abstractC10561zE3)) {
                                                d11.b(abstractC10561zE3);
                                                abstractC10561zE3.a(d11, d12, (Set) null);
                                            }
                                        }
                                    }
                                    r92 = 0;
                                }
                            }
                        } else if (abstractC10561zE.c2()) {
                            C9603tZ w02 = abstractC10561zE.w0();
                            AbstractC5308Hz v10 = this.f43750b.v();
                            com.android.tools.r8.graph.M2 u22 = w02.u2();
                            v10.getClass();
                            com.android.tools.r8.graph.M2 c12 = v10.c(AbstractC5308Hz.g(), u22);
                            if (this.f43753e.a(c12, h22.getType())) {
                                QJ a14 = AbstractC7716iB.a(this.f43752d, w02.d());
                                if (!f43748l && a14 == null) {
                                    throw new AssertionError();
                                }
                                com.android.tools.r8.graph.A2 B22 = a14.B2();
                                AbstractC5308Hz v11 = this.f43750b.v();
                                v11.getClass();
                                NW a15 = v11.a(B22, h10.getReference(), EnumC8071kK.f49580d);
                                if (a15.f41111a == B22 && a15.f42624e.c()) {
                                    identityHashMap.put(a14, Optional.empty());
                                    c8497mu = a11;
                                    pt = a12;
                                    z52 = u10;
                                } else {
                                    ArrayList arrayList2 = new ArrayList(a14.f54321f.size());
                                    for (int i11 = 0; i11 < a14.f54321f.size(); i11++) {
                                        C10340xw0 b10 = a14.b(i11);
                                        if (!a15.f42624e.f37623b.a(i11).c()) {
                                            arrayList2.add(b10);
                                        }
                                    }
                                    Iterator it2 = a15.f42624e.f37622a.iterator();
                                    while (it2.hasNext()) {
                                        AbstractC4952Bv abstractC4952Bv = (AbstractC4952Bv) it2.next();
                                        AbstractC4935Bm0 a16 = abstractC4952Bv.a(this.f43750b);
                                        boolean z10 = f43748l;
                                        if (z10) {
                                            it = it2;
                                        } else {
                                            a16.getClass();
                                            it = it2;
                                            if (!(a16 instanceof C5283Hm0) && !(a16 instanceof C5341Im0)) {
                                                throw new AssertionError();
                                            }
                                        }
                                        a16.getClass();
                                        if (a16 instanceof C5283Hm0) {
                                            if (!z10 && !abstractC4952Bv.a(this.f43750b.b()).N0()) {
                                                throw new AssertionError();
                                            }
                                            C5283Hm0 O10 = a16.O();
                                            C4798y c4798y2 = this.f43750b;
                                            AbstractC6450ae0 m10 = AbstractC8999pu0.m();
                                            pt2 = a12;
                                            B60 s10 = B60.s();
                                            O10.getClass();
                                            if (!C5283Hm0.f40868d) {
                                                m10.y();
                                            }
                                            boolean z11 = C9126qh.f51850m;
                                            C8959ph c8959ph = new C8959ph();
                                            z53 = u10;
                                            c8959ph.f52321a = a13.a(AbstractC8999pu0.m(), null);
                                            c10 = ((C8959ph) c8959ph.a(s10, c4798y2.E())).c();
                                            c8497mu2 = a11;
                                        } else {
                                            pt2 = a12;
                                            z53 = u10;
                                            if (!z10 && !abstractC4952Bv.a(this.f43750b.b()).L0()) {
                                                throw new AssertionError();
                                            }
                                            if (!z10 && !(a16 instanceof C5341Im0)) {
                                                throw new AssertionError();
                                            }
                                            C5341Im0 m11 = a16.m();
                                            C4798y c4798y3 = this.f43750b;
                                            C9736uI k10 = AbstractC8999pu0.k();
                                            B60 s11 = B60.s();
                                            m11.getClass();
                                            if (!C5341Im0.f41206d) {
                                                k10.x();
                                            }
                                            boolean z12 = C9126qh.f51850m;
                                            C8959ph c8959ph2 = new C8959ph();
                                            c8497mu2 = a11;
                                            c8959ph2.f52321a = a13.a(k10, null);
                                            C8959ph c8959ph3 = (C8959ph) c8959ph2.a(s11, c4798y3.E());
                                            c8959ph3.f51588d = m11.f41207c;
                                            c10 = c8959ph3.c();
                                        }
                                        I10.previous();
                                        I10.add(c10);
                                        arrayList2.add(c10.d());
                                        AbstractC10561zE abstractC10561zE4 = (AbstractC10561zE) I10.next();
                                        if (!z10 && abstractC10561zE4 != w02) {
                                            throw new AssertionError();
                                        }
                                        it2 = it;
                                        a12 = pt2;
                                        u10 = z53;
                                        a11 = c8497mu2;
                                    }
                                    c8497mu = a11;
                                    pt = a12;
                                    z52 = u10;
                                    boolean z13 = QJ.f43538p;
                                    PJ pj2 = (PJ) new PJ().a(arrayList2);
                                    pj2.f44718d = (com.android.tools.r8.graph.A2) a15.f41111a;
                                    QJ c13 = pj2.c();
                                    identityHashMap.put(a14, Optional.of(c13));
                                    a14 = c13;
                                }
                                if (w02.u2() == h22.getType()) {
                                    a10 = h22;
                                } else {
                                    C4798y c4798y4 = this.f43750b;
                                    com.android.tools.r8.graph.M2 u23 = w02.u2();
                                    c4798y4.getClass();
                                    a10 = com.android.tools.r8.graph.H2.a(c4798y4.a(h10.getHolder(), u23));
                                }
                                if (this.f43750b.E().e()) {
                                    e10 = ((C11245i) this.f43750b.f()).a((com.android.tools.r8.graph.A2) a15.f41111a, a14.f43539o).p();
                                } else {
                                    e10 = a10.e((com.android.tools.r8.graph.A2) a15.f41111a);
                                }
                                boolean z14 = f43748l;
                                if (!z14 && e10 == null) {
                                    throw new AssertionError();
                                }
                                C4516j1 c4516j1 = (C4516j1) e10.d();
                                c4516j1.L0();
                                SD a17 = c4516j1.f37320m.a(a14).b().a(c4460g1);
                                if (a17.s()) {
                                    C10340xw0 i12 = a14.b(a17.q().f43848a).i();
                                    if (!z14 && !i12.d(new C8009jy0())) {
                                        throw new AssertionError();
                                    }
                                    i10 = i12.r().J().u2();
                                } else {
                                    if (!z14 && !a17.r()) {
                                        throw new AssertionError();
                                    }
                                    if (!z14) {
                                        AbstractC5746Pm0 w10 = a17.w();
                                        w10.getClass();
                                        if (!(w10 instanceof C5341Im0)) {
                                            throw new AssertionError();
                                        }
                                    }
                                    i10 = (int) a17.w().m().f41207c;
                                }
                                r92 = 0;
                                I10.a(new C9937vZ(c12, i10, a13.a(C6949de.b(c12, C8854p10.b(), (C4798y<? extends C4514j>) this.f43750b), null)), null);
                                a12 = pt;
                                u10 = z52;
                                a11 = c8497mu;
                            } else {
                                a12 = a12;
                                r92 = 0;
                            }
                        } else {
                            c8497mu = a11;
                            pt = a12;
                            z52 = u10;
                            r92 = 0;
                            if (abstractC10561zE.e()) {
                                C4554l1 e11 = this.f43750b.v().e((AbstractC5308Hz) null, abstractC10561zE.L0().getField());
                                if (this.f43753e.a(e11.s0(), h22.getType()) && (r10 = ((C11245i) this.f43750b.f()).c(e11).r()) != null) {
                                    a11 = c8497mu;
                                    if (a(r10, a11)) {
                                        I10.i();
                                    }
                                    a12 = pt;
                                    u10 = z52;
                                } else {
                                    a12 = pt;
                                    u10 = z52;
                                    a11 = c8497mu;
                                }
                                r92 = 0;
                            } else {
                                a12 = pt;
                                u10 = z52;
                                a11 = c8497mu;
                            }
                        }
                    }
                }
                a12 = a12;
            } else {
                if (!identityHashMap.isEmpty()) {
                    C7549hB p10 = a13.p();
                    while (p10.hasNext()) {
                        AbstractC10561zE next = p10.next();
                        if (identityHashMap.containsKey(next)) {
                            Optional optional2 = (Optional) identityHashMap.get(next);
                            if (optional2.isPresent()) {
                                p10.a((AbstractC10561zE) optional2.get(), (C10696a) null);
                                p10.previous();
                            }
                            p10.i();
                        }
                    }
                }
                c8048kB.a(a13, AbstractC8529n40.f50496b, C8659ns0.c());
                return;
            }
        }
    }

    public final Collection a(com.android.tools.r8.graph.H2 h22, final PT pt) {
        C8664nu c8664nu = this.f43753e;
        c8664nu.getClass();
        final C8497mu a10 = c8664nu.a(h22.getType());
        final LinkedHashMap linkedHashMap = new LinkedHashMap(h22.A1().size());
        if (!f43748l && !pt.f43237b.A1().isEmpty()) {
            throw new AssertionError();
        }
        h22.f(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5819Qu.this.a(a10, pt, linkedHashMap, (com.android.tools.r8.graph.F5) obj);
            }
        }, EnumC6871d70.f47286b);
        return linkedHashMap.values();
    }

    public final void a(C8497mu c8497mu, PT pt, final Map map, com.android.tools.r8.graph.F5 f52) {
        if (a(f52, c8497mu)) {
            com.android.tools.r8.graph.N5 n52 = this.f43758j;
            n52.f36610f.add(f52.getReference());
        } else {
            C4460g1 a10 = a(f52, pt, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C5819Qu.a(Map.this, (C4554l1) obj);
                }
            });
            if (!f43748l && map.containsKey(a10.getReference())) {
                throw new AssertionError();
            }
            map.put(a10.getReference(), a10);
        }
    }

    public static boolean a(Map map, C4554l1 c4554l1) {
        return !map.containsKey(c4554l1);
    }

    public final C4460g1 a(com.android.tools.r8.graph.F5 f52, PT pt, Predicate predicate) {
        C4554l1 a10 = this.f43752d.a(pt.f43237b.getType(), a(f52.getReference().getType()), f52.getReference().t0().toString(), predicate);
        this.f43749a.a(f52.getReference(), a10);
        return f52.d().a(this.f43750b, a10, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5819Qu.a((C4460g1.a) obj);
            }
        });
    }

    public static void a(C4460g1.a aVar) {
        aVar.getClass();
        aVar.f37212b = C4723u0.l0();
        aVar.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5819Qu.a((C4537k3) obj);
            }
        });
    }

    public static void a(C4537k3 c4537k3) {
        if (!f43748l && !c4537k3.n()) {
            throw new AssertionError();
        }
        c4537k3.r();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v35, types: [com.android.tools.r8.graph.G0, com.android.tools.r8.graph.H0] */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.android.tools.r8.internal.Qu] */
    public final Collection a(com.android.tools.r8.graph.H2 h22, Set set, final PT pt) {
        com.android.tools.r8.graph.H5 h52;
        final LinkedHashMap linkedHashMap = new LinkedHashMap(h22.b0().f36638b.h() + pt.f43237b.b0().f36638b.h());
        pt.f43237b.g(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Map.this.put(r2.getReference(), (C4516j1) obj);
            }
        });
        final C5058Dq c5058Dq = new C5058Dq(new HashSet());
        h22.l(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5819Qu.this.a(c5058Dq, pt, linkedHashMap, (com.android.tools.r8.graph.H5) obj);
            }
        });
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((com.android.tools.r8.graph.H2) it.next()).l(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C5819Qu.this.b(c5058Dq, pt, linkedHashMap, (com.android.tools.r8.graph.H5) obj);
                }
            });
        }
        for (com.android.tools.r8.graph.F2 f22 : c5058Dq.f39661b) {
            com.android.tools.r8.graph.M2 type = h22.getType();
            C4724u1 c4724u1 = this.f43752d;
            f22.getClass();
            type.getClass();
            com.android.tools.r8.graph.A2 a10 = c4724u1.a(type, f22.b(), f22.a());
            AbstractC8374m80 c10 = AbstractC8374m80.c();
            Iterator it2 = set.iterator();
            boolean z10 = true;
            while (it2.hasNext()) {
                com.android.tools.r8.graph.H5 e10 = ((com.android.tools.r8.graph.H2) it2.next()).e(a10);
                if (e10 != null) {
                    c10.add((AbstractC8374m80) e10);
                } else {
                    z10 = false;
                }
            }
            com.android.tools.r8.graph.H5 e11 = h22.e(a10);
            if (e11 == null) {
                boolean z11 = f43748l;
                if (!z11 && c10.f45165b.isEmpty()) {
                    throw new AssertionError();
                }
                ?? a11 = ((C11245i) this.f43750b.f()).a(a10, h22, this.f43750b);
                if (!z11 && a11 != 0 && a11.getReference() != this.f43752d.f37943R4.f36487f) {
                    throw new AssertionError();
                }
                h52 = a11;
            } else {
                h52 = e11;
            }
            if (h52 == null) {
                for (com.android.tools.r8.graph.H5 h53 : c10.f45165b.values()) {
                    if (!f43748l && h53.getAccessFlags().H()) {
                        throw new AssertionError();
                    }
                    a(pt, linkedHashMap, h53, false);
                }
            } else if (h52.getAccessFlags().H()) {
                if (c10.f45165b.isEmpty()) {
                    a(pt, linkedHashMap, h52.H(), true);
                } else if (!z10) {
                    a(pt, linkedHashMap, h52, c10, true);
                } else if (c10.f45165b.size() == 1) {
                    if (!f43748l && !z10) {
                        throw new AssertionError();
                    }
                    this.f43749a.a(h52.getReference(), a(pt, linkedHashMap, (com.android.tools.r8.graph.H5) c10.f45165b.values().iterator().next(), false));
                } else {
                    a(pt, linkedHashMap, h52, c10, false);
                }
            } else {
                boolean z12 = f43748l;
                if (!z12 && h52.getAccessFlags().H()) {
                    throw new AssertionError();
                }
                if (c10.f45165b.isEmpty()) {
                    if (!z12 && !(h52 instanceof com.android.tools.r8.graph.H5)) {
                        throw new AssertionError();
                    }
                    a(pt, linkedHashMap, h52.H(), false);
                } else {
                    a(pt, linkedHashMap, h52, c10, false);
                }
            }
        }
        return linkedHashMap.values();
    }

    public final void a(PT pt, LinkedHashMap linkedHashMap, com.android.tools.r8.graph.H0 h02, AbstractC8374m80 abstractC8374m80, boolean z10) {
        com.android.tools.r8.graph.A2 a22;
        boolean z11 = f43748l;
        if (!z11 && abstractC8374m80.f45165b.isEmpty()) {
            throw new AssertionError();
        }
        ArrayList arrayList = new ArrayList(abstractC8374m80);
        arrayList.sort(Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((com.android.tools.r8.graph.H5) obj).p();
            }
        }));
        boolean z12 = h02 instanceof com.android.tools.r8.graph.H5;
        if (!z12) {
            if (!z11 && !h02.getReference().c(this.f43752d.f37943R4.f36487f)) {
                throw new AssertionError();
            }
            C4798y c4798y = this.f43750b;
            pt.getClass();
            com.android.tools.r8.graph.H5 a10 = pt.a(c4798y, c4798y.b().f37943R4.f36482a);
            com.android.tools.r8.graph.A2 reference = a10.getReference();
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                this.f43757i.add((C7873j80) a10);
                this.f43759k.a(a10, (com.android.tools.r8.graph.H5) obj);
            }
            a22 = reference;
        } else if (z10) {
            if (!z11 && !h02.getAccessFlags().H()) {
                throw new AssertionError();
            }
            a22 = b(pt, (Map) linkedHashMap, (com.android.tools.r8.graph.H5) h02, true);
        } else if (!h02.getAccessFlags().H()) {
            a22 = b(pt, (Map) linkedHashMap, (com.android.tools.r8.graph.H5) h02, false);
        } else {
            if (!z11 && !h02.getAccessFlags().H()) {
                throw new AssertionError();
            }
            a22 = null;
        }
        IdentityHashMap identityHashMap = new IdentityHashMap();
        int size2 = arrayList.size();
        int i11 = 0;
        while (i11 < size2) {
            Object obj2 = arrayList.get(i11);
            i11++;
            com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) obj2;
            com.android.tools.r8.graph.A2 b10 = b(pt, (Map) linkedHashMap, h52, false);
            if (!f43748l && b10 == null) {
                throw new AssertionError();
            }
            identityHashMap.put(h52.getReference(), b10);
        }
        if (z12) {
            arrayList.add((com.android.tools.r8.graph.H5) h02);
        }
        com.android.tools.r8.graph.A2 reference2 = a(pt, linkedHashMap, arrayList, a22, identityHashMap).getReference();
        if (z12) {
            a(h02.getReference(), a22, reference2);
        } else {
            this.f43749a.a(h02.getReference().a(pt.f44016a.getType(), this.f43752d), reference2);
        }
        for (com.android.tools.r8.graph.A2 a23 : identityHashMap.o()) {
            a(a23, (com.android.tools.r8.graph.A2) identityHashMap.get(a23), reference2);
        }
    }

    public final com.android.tools.r8.graph.A2 a(PT pt, Map map, com.android.tools.r8.graph.H5 h52, boolean z10) {
        com.android.tools.r8.graph.A2 b10 = b(pt, map, h52, z10);
        if (!f43748l && b10 == null) {
            throw new AssertionError();
        }
        C5587Mu c5587Mu = this.f43749a;
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        boolean w02 = h52.d().w0();
        c5587Mu.getClass();
        c5587Mu.a(reference, b10, w02, true, Collections.EMPTY_LIST);
        return b10;
    }

    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, com.android.tools.r8.graph.A2 a24) {
        boolean z10 = f43748l;
        if (!z10 && a22 == null) {
            throw new AssertionError();
        }
        if (!z10 && a24 == null) {
            throw new AssertionError();
        }
        if (a23 != null) {
            C5587Mu c5587Mu = this.f43749a;
            c5587Mu.getClass();
            com.android.tools.r8.graph.proto.j a10 = c5587Mu.a(a22, a23, false, true, false, Collections.EMPTY_LIST);
            synchronized (c5587Mu) {
                c5587Mu.f42449e.b(a22, a23);
                c5587Mu.f42451g.put(a23, a10);
            }
        }
        this.f43749a.a(a22, a24);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.Map, com.android.tools.r8.internal.Q] */
    public final C4516j1 a(PT pt, final LinkedHashMap linkedHashMap, ArrayList arrayList, com.android.tools.r8.graph.A2 a22, IdentityHashMap identityHashMap) {
        boolean z10 = f43748l;
        if (!z10 && identityHashMap.isEmpty()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) arrayList.iterator().next();
        C4724u1 c4724u1 = this.f43752d;
        String str = "_dispatch_" + h52.getReference().t0().toString();
        C4724u1 c4724u12 = this.f43752d;
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        c4724u12.getClass();
        com.android.tools.r8.graph.A2 a10 = c4724u1.a(str, null, a(reference.y0().b(c4724u12, reference.s0())), pt.f43237b.getType(), new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C5819Qu.a(Map.this, (com.android.tools.r8.graph.A2) obj);
            }
        }, 0);
        final QG qg2 = new QG();
        final IdentityHashMap identityHashMap2 = new IdentityHashMap();
        identityHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                IdentityHashMap.this.put(((com.android.tools.r8.graph.A2) obj).s0(), (com.android.tools.r8.graph.A2) obj2);
            }
        });
        com.android.tools.r8.graph.H2 h22 = pt.f44016a;
        if (!z10) {
            C8664nu c8664nu = this.f43753e;
            c8664nu.getClass();
            if (c8664nu.a(h22.getType()).f50450b == null) {
                throw new AssertionError();
            }
        }
        C8664nu c8664nu2 = this.f43753e;
        c8664nu2.getClass();
        c8664nu2.a(h22.getType()).f50450b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C5819Qu.a(IdentityHashMap.this, qg2, (Integer) obj, (com.android.tools.r8.graph.M2) obj2);
            }
        });
        com.android.tools.r8.graph.J b10 = new C5356Iu(this.f43750b, pt.f43237b.getType(), a22, qg2).b();
        int i10 = 0;
        C4516j1.a a11 = C4516j1.K0().a(a10).a(com.android.tools.r8.graph.L4.b(4105, false)).a(b10);
        a11.f37339k = h22.G1();
        a11.f37340l = h52.d().f37261e;
        a11.f37341m = h52.d().f37322o;
        C4516j1 a12 = a11.a();
        com.android.tools.r8.graph.H5 a13 = a12.a(pt.f43237b);
        C7541h80 c7541h80 = this.f43756h;
        c7541h80.getClass();
        c7541h80.f43368b.put(new C7333fv(C7374g80.f48192a, a13), b10);
        this.f43757i.add((C7873j80) a13);
        int size = arrayList.size();
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            this.f43759k.a(a13, (com.android.tools.r8.graph.H5) obj);
        }
        if (!f43748l && linkedHashMap.containsKey(a10)) {
            throw new AssertionError();
        }
        linkedHashMap.put(a10, a12);
        return a12;
    }

    public static boolean a(Map map, com.android.tools.r8.graph.A2 a22) {
        return !map.containsKey(a22);
    }

    public static void a(IdentityHashMap identityHashMap, InterfaceC10068wH interfaceC10068wH, Integer num, com.android.tools.r8.graph.M2 m22) {
        if (identityHashMap.containsKey(m22)) {
            interfaceC10068wH.a(num.intValue() + 1, (com.android.tools.r8.graph.A2) identityHashMap.get(m22));
        }
    }

    public final C4516j1 a(final com.android.tools.r8.graph.H5 h52, PT pt, Predicate predicate) {
        if (!f43748l && !h52.getAccessFlags().H()) {
            throw new AssertionError();
        }
        C4516j1 d10 = h52.d();
        B60 W02 = d10.W0();
        d10.f37318k = null;
        h52.a(new C5814Qr0(this.f43750b, pt.f43237b.getType(), this.f43752d.f37819A3, W02).b(), this.f43750b);
        C4516j1 a10 = h52.d().a(a(h52, pt, predicate, h52.getReference()), this.f43752d, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5819Qu.this.a(h52, (C4516j1.a) obj);
            }
        });
        this.f43757i.add((C7873j80) new com.android.tools.r8.graph.H5(pt.f43237b, a10));
        return a10;
    }

    public final void a(com.android.tools.r8.graph.H5 h52, C4516j1.a aVar) {
        C4516j1.a b10 = c(h52, aVar).b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((com.android.tools.r8.graph.L4) obj).P();
            }
        });
        b10.f37339k = C5313Ib.f41138i;
        com.android.tools.r8.androidapi.f fVar = this.f43750b.f38405T;
        b10.f37340l = fVar;
        b10.f37341m = fVar;
    }

    public static void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.L4 l42) {
        if (h52.d().f1()) {
            if (!f43748l && !l42.n()) {
                throw new AssertionError();
            }
        } else {
            l42.r();
            l42.f37197c |= 8;
        }
    }

    public final com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.H5 h52, PT pt, Predicate predicate, com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.I2 b10;
        if (h52.d().f1()) {
            return this.f43752d.b(pt.f43237b.getType());
        }
        C4724u1 c4724u1 = this.f43752d;
        String str = ConstantDescs.DEFAULT_NAME + h52.getReference().t0().toString();
        if (h52.getAccessFlags().n()) {
            b10 = h52.getReference().y0();
        } else {
            C4724u1 c4724u12 = this.f43752d;
            c4724u12.getClass();
            b10 = a22.y0().b(c4724u12, a22.s0());
        }
        return c4724u1.a(str, null, a(b10), pt.f43237b.getType(), predicate, 0);
    }

    public static boolean a(com.android.tools.r8.graph.F5 f52, C8497mu c8497mu) {
        if (!f52.getAccessFlags().n()) {
            return true;
        }
        c8497mu.getClass();
        if (!c8497mu.f50451c.containsKey(f52.getReference())) {
            if (!c8497mu.f50452d.contains(f52.getReference())) {
                return false;
            }
        }
        return !f52.d().f37207l.i();
    }

    public final C4516j1 b(OW ow, final C4516j1 c4516j1) {
        com.android.tools.r8.graph.I2 X02 = c4516j1.X0();
        com.android.tools.r8.graph.I2 a10 = a(X02);
        if (X02 == a10) {
            if (f43748l || c4516j1.getReference() == ow.a(c4516j1, a10, this.f43755g.f44609b.f42690b.getType())) {
                return c4516j1;
            }
            throw new AssertionError();
        }
        com.android.tools.r8.graph.A2 a11 = ow.a(c4516j1, a10, this.f43755g.f44609b.f42690b.getType());
        boolean z10 = f43748l;
        if (!z10 && a11 == c4516j1.getReference()) {
            throw new AssertionError();
        }
        if (!z10 && c4516j1.f1()) {
            throw new AssertionError();
        }
        if (!z10 && c4516j1.k1().d()) {
            throw new AssertionError((Object) "Enum unboxing is changing the signature of a library override in a non unboxed class.");
        }
        List a12 = AbstractC5300Hv.a(c4516j1.getReference(), a11);
        boolean w02 = c4516j1.w0();
        final com.android.tools.r8.graph.proto.j a13 = this.f43749a.a(c4516j1.getReference(), a11, w02, w02, a12);
        return c4516j1.a(a11, this.f43752d, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5819Qu.this.a(a13, c4516j1, (C4516j1.a) obj);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.proto.j jVar, C4516j1 c4516j1, C4516j1.a aVar) {
        C4798y c4798y = this.f43750b;
        jVar.getClass();
        C4516j1.a a10 = aVar.a(c4798y, new com.android.tools.r8.graph.S5(jVar));
        EnumC4535k1 enumC4535k1 = c4516j1.f37319l;
        if (!C4516j1.a.f37328u && a10.f37336h != EnumC4535k1.f37407b) {
            throw new AssertionError();
        }
        a10.f37336h = enumC4535k1;
        boolean n12 = c4516j1.n1();
        AbstractC9530t40 abstractC9530t40 = AbstractC9530t40.f52518b;
        if (n12) {
            a10.a(abstractC9530t40);
        }
    }

    public final C4460g1 a(C4460g1 c4460g1) {
        C4554l1 reference = c4460g1.getReference();
        com.android.tools.r8.graph.M2 a10 = a(reference.f37449i);
        if (a10 == reference.f37449i) {
            return c4460g1;
        }
        C4554l1 a11 = this.f43752d.a(reference.f38297f, a10, reference.f38298g);
        this.f43749a.a(reference, a11);
        C4460g1 a12 = c4460g1.a(this.f43750b, a11, new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C4460g1.a) obj).b();
            }
        });
        if (c4460g1.w0() && c4460g1.L0()) {
            if (!f43748l && c4460g1.K0() != com.android.tools.r8.graph.Z2.f37013d) {
                throw new AssertionError();
            }
            a12.a((com.android.tools.r8.graph.R2) R2.h.f36753e);
        }
        return a12;
    }

    public final com.android.tools.r8.graph.I2 a(com.android.tools.r8.graph.I2 i22) {
        com.android.tools.r8.graph.M2 a10 = a(i22.f36440e);
        com.android.tools.r8.graph.M2[] m2Arr = i22.f36441f.f36675b;
        int length = m2Arr.length;
        com.android.tools.r8.graph.M2[] m2Arr2 = new com.android.tools.r8.graph.M2[length];
        for (int i10 = 0; i10 < length; i10++) {
            m2Arr2[i10] = a(m2Arr[i10]);
        }
        return this.f43752d.a(a10, m2Arr2);
    }

    public final com.android.tools.r8.graph.M2 a(com.android.tools.r8.graph.M2 m22) {
        if (!m22.E0()) {
            return (m22.I0() && this.f43753e.b(m22)) ? this.f43752d.f37884J1 : m22;
        }
        com.android.tools.r8.graph.M2 a10 = m22.a(this.f43752d);
        com.android.tools.r8.graph.M2 a11 = a(a10);
        return a10 == a11 ? m22 : m22.a(this.f43752d, a11);
    }
}
