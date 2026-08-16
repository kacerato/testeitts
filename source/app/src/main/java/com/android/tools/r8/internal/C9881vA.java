package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.AbstractC4401d;
import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.graph.C4344a;
import com.android.tools.r8.graph.C4363b;
import com.android.tools.r8.graph.C4382c;
import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.shaking.AbstractC11516y1;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11500x1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C9881vA {

    public static final boolean f53047c = true;

    public final C4798y f53048a;

    public final C8570nJ.g f53049b;

    public C9881vA(C4798y c4798y) {
        this.f53048a = c4798y;
        this.f53049b = c4798y.E().K();
    }

    public static void a(C10343xx0 c10343xx0, com.android.tools.r8.shaking.H1 h12) {
        h12.a(c10343xx0.f53901b);
    }

    public static boolean c(C4516j1 c4516j1) {
        return c4516j1.b1() && c4516j1.Q0().z0();
    }

    public static boolean d(C4516j1 c4516j1) {
        return c4516j1.b1() && c4516j1.Q0().z0();
    }

    public final void b(C8659ns0 c8659ns0, com.android.tools.r8.shaking.L4 l42, ExecutorService executorService) {
        c8659ns0.b("HorizontalClassMerger");
        if (this.f53049b.a(this.f53048a.f38407V) && this.f53048a.f38396K.isEmpty()) {
            a(c8659ns0, l42, executorService);
            if (!f53047c) {
                AbstractC8528n4.a(this.f53048a, new EnumC8361m4[0]);
            }
            this.f53048a.b().b();
            this.f53048a.getClass();
        } else {
            this.f53048a.a(new CA(new C5412Jt()));
        }
        if (!f53047c) {
            AbstractC8528n4.a(this.f53048a, new EnumC8361m4[0]);
        }
        c8659ns0.d();
    }

    public static C9881vA a(C4798y c4798y) {
        return new C9881vA(c4798y);
    }

    /* JADX WARN: Type inference failed for: r15v7, types: [com.android.tools.r8.graph.E0] */
    public final void a(C8659ns0 c8659ns0, com.android.tools.r8.shaking.L4 l42, ExecutorService executorService) {
        C4387c4 c4387c4;
        C4387c4 c4387c42;
        List<AbstractC9369s60> apply;
        int i10;
        int i11;
        int i12;
        Iterator it;
        C9508sx0 c9508sx0;
        C9675tx0 c9675tx0;
        com.android.tools.r8.graph.A2 a22;
        com.android.tools.r8.shaking.O0 o02 = null;
        if (this.f53048a.m()) {
            C4798y L10 = this.f53048a.L();
            c4387c4 = C4387c4.a(L10, ((C4514j) L10.f()).e());
        } else {
            c4387c4 = null;
        }
        C4798y c4798y = this.f53048a;
        if (c4798y.f().h()) {
            C4798y L11 = c4798y.L();
            int i13 = AbstractC7552hC.f48487c;
            C7051eC c7051eC = new C7051eC();
            C7051eC c7051eC2 = new C7051eC();
            AbstractC10644zm0[] abstractC10644zm0Arr = {new C4852Ac(L11), new MZ(L11), new C8684o00(L11), new SZ()};
            AbstractC9694u30.a(4, abstractC10644zm0Arr);
            c7051eC2.a(4, abstractC10644zm0Arr);
            if (L11.f().i() && (L11.E().f50697l instanceof ClassFileConsumer)) {
                c7051eC2.a(new C9351s00(L11.M()));
            }
            if (L11.E().K().e()) {
                if (!AbstractC9703u60.f52782a) {
                    AbstractC9703u60.b(L11, c7051eC2);
                }
            } else {
                C4798y<C11245i> M10 = L11.M();
                AbstractC10644zm0[] abstractC10644zm0Arr2 = {new C10353y00(), new C7353g10(M10), new IZ(), new ZZ(M10, l42), new C6683c00(M10), new C6850d00(M10), new C8016k00(M10), new C7684i00(), new C7849j00(), new C9018q00(), new C9685u00(), new A00(M10), new C10186x00()};
                AbstractC9694u30.a(13, abstractC10644zm0Arr2);
                c7051eC2.a(13, abstractC10644zm0Arr2);
            }
            C7051eC b10 = c7051eC.b((Iterable) c7051eC2.a());
            C7051eC c7051eC3 = new C7051eC();
            C4387c4 a10 = C4387c4.a(L11, ((C4514j) L11.f()).d());
            C4387c4 c4387c43 = c4387c4;
            AbstractC9369s60[] abstractC9369s60Arr = {new C6032Uk0(L11), new C7443gc(L11), new NZ(), new C5916Sk0(L11), new C7304fl0(L11), new C6146Wk0(L11), new C6203Xk0(L11), new C6317Zk0(L11), new C6804cl0(), new C9157qr0(L11), new C5103Ej0(L11), new YZ(L11), new C7350g00(L11, l42), new B00(L11, a10), new C9205r70(L11, a10), new C7687i10(L11)};
            AbstractC9694u30.a(16, abstractC9369s60Arr);
            c7051eC3.a(16, abstractC9369s60Arr);
            if (!L11.E().K().e()) {
                C4798y<C11245i> M11 = L11.M();
                AbstractC9369s60[] abstractC9369s60Arr2 = {new RZ(M11), new TZ(M11)};
                AbstractC9694u30.a(2, abstractC9369s60Arr2);
                c7051eC3.a(2, abstractC9369s60Arr2);
            }
            if (L11.f().i()) {
                c7051eC3.a(new C7870j70(L11.M()));
            }
            c7051eC3.a(new FX());
            AbstractC9369s60[] abstractC9369s60Arr3 = {new XZ(L11), new WZ(L11, c4387c43), new C7421gS(L11), new C7529h40(L11, c4387c43)};
            AbstractC9694u30.a(4, abstractC9369s60Arr3);
            c7051eC3.a(4, abstractC9369s60Arr3);
            AbstractC9369s60[] abstractC9369s60Arr4 = {new C7254fS(L11), new C7172ex(L11)};
            AbstractC9694u30.a(2, abstractC9369s60Arr4);
            c7051eC3.a(2, abstractC9369s60Arr4);
            apply = L11.E().f50599F1.f50806A.apply(b10.b((Iterable) c7051eC3.a()).a());
            if (!AbstractC9703u60.f52782a) {
                AbstractC9703u60.a(apply);
            }
            c4387c42 = c4387c43;
        } else {
            C4798y N10 = c4798y.N();
            int i14 = AbstractC7552hC.f48487c;
            C7051eC c7051eC4 = new C7051eC();
            C7051eC a11 = new C7051eC().a(new C4852Ac(N10)).a(new C7195f40());
            boolean z10 = AbstractC9703u60.f52782a;
            if (!z10) {
                AbstractC9703u60.c(N10, a11);
            }
            C7051eC b11 = c7051eC4.b((Iterable) a11.a());
            C7051eC c7051eC5 = new C7051eC();
            if (N10.E().f50596E1 != null) {
                c7051eC5.a(new C6971dl0(N10));
            }
            c4387c42 = c4387c4;
            AbstractC10102wY[] abstractC10102wYArr = {new C7443gc(N10), new C5916Sk0(N10), new C6203Xk0(N10), new C6317Zk0(N10), new C6804cl0(), new C9157qr0(N10), new LZ(N10), new C6638bl0(N10), new YZ(N10), new C7254fS(N10)};
            AbstractC9694u30.a(10, abstractC10102wYArr);
            c7051eC5.a(10, abstractC10102wYArr);
            if (!z10) {
                AbstractC9703u60.a(N10, c7051eC5);
            }
            c7051eC5.a(new C7172ex(N10));
            apply = N10.E().f50599F1.f50806A.apply(b11.b((Iterable) c7051eC5.a()).a());
            if (!z10) {
                AbstractC9703u60.a(apply);
            }
        }
        LinkedList<AA> a12 = new C10382yA().a(a(), apply, executorService, c8659ns0);
        if (a12.isEmpty()) {
            this.f53048a.a(new CA(new C5412Jt()));
            return;
        }
        C9114qd c9114qd = new C9114qd(this.f53048a);
        C10048wA c10048wA = new C10048wA();
        ArrayList arrayList = new ArrayList(a12.size());
        for (AA aa2 : a12) {
            boolean z11 = f53047c;
            if (!z11 && aa2.k()) {
                throw new AssertionError();
            }
            if (!z11 && !aa2.g()) {
                throw new AssertionError();
            }
            if (!z11 && !aa2.h()) {
                throw new AssertionError();
            }
            arrayList.add(new C8279ld(this.f53048a, aa2));
        }
        int size = arrayList.size();
        int i15 = 0;
        while (i15 < size) {
            Object obj = arrayList.get(i15);
            int i16 = i15 + 1;
            C8279ld c8279ld = (C8279ld) obj;
            if (!c8279ld.f50014a.f().h()) {
                if (!C8279ld.f50013d && !c8279ld.b().isEmpty()) {
                    throw new AssertionError();
                }
                c8279ld.f50016c = Collections.EMPTY_LIST;
            } else {
                LinkedHashMap b12 = c8279ld.b();
                if (b12.isEmpty()) {
                    c8279ld.f50016c = Collections.EMPTY_LIST;
                } else {
                    c8279ld.f50016c = new ArrayList(b12.size());
                    ArrayList arrayList2 = new ArrayList(b12.size());
                    Iterator it2 = b12.values().iterator();
                    while (it2.hasNext()) {
                        C9341rx0 c9341rx0 = (C9341rx0) it2.next();
                        C4798y L12 = c8279ld.f50014a.L();
                        AA aa3 = c8279ld.f50015b;
                        int i17 = size;
                        if (c9341rx0.f52228a.size() < aa3.f38553b.size()) {
                            i12 = i16;
                            Z4.c<?> o10 = ((C4514j) L12.f()).a(aa3.c(), ((com.android.tools.r8.graph.H5) c9341rx0.f52228a.iterator().next()).getReference()).o();
                            if (o10 != null && !o10.q().d1()) {
                                com.android.tools.r8.graph.A2 reference = o10.q().getReference();
                                if (o10.d().isInterface()) {
                                    it = it2;
                                    a22 = o10.q().getReference().a(aa3.c(), L12.b());
                                } else {
                                    it = it2;
                                    a22 = reference;
                                }
                                c9508sx0 = new C9508sx0(a22, reference);
                                c9675tx0 = new C9675tx0(L12, aa3, c9341rx0.f52228a, c9508sx0);
                                if (c9675tx0.b() && !c9675tx0.c()) {
                                    arrayList2.add(c9675tx0);
                                } else {
                                    c8279ld.f50016c.add(c9675tx0);
                                }
                                size = i17;
                                i16 = i12;
                                it2 = it;
                            }
                        } else {
                            i12 = i16;
                        }
                        it = it2;
                        c9508sx0 = null;
                        c9675tx0 = new C9675tx0(L12, aa3, c9341rx0.f52228a, c9508sx0);
                        if (c9675tx0.b()) {
                        }
                        c8279ld.f50016c.add(c9675tx0);
                        size = i17;
                        i16 = i12;
                        it2 = it;
                    }
                    i10 = size;
                    i11 = i16;
                    c8279ld.f50016c.addAll(arrayList2);
                    if (C8279ld.f50013d) {
                        continue;
                    } else {
                        boolean z12 = false;
                        for (C9675tx0 c9675tx02 : c8279ld.f50016c) {
                            if (z12) {
                                if (!C8279ld.f50013d && (c9675tx02.b() || c9675tx02.c())) {
                                    throw new AssertionError();
                                }
                            } else if (!c9675tx02.b() && !c9675tx02.c()) {
                                z12 = true;
                            }
                        }
                    }
                    c8279ld.c();
                    size = i10;
                    i15 = i11;
                }
            }
            i10 = size;
            i11 = i16;
            c8279ld.c();
            size = i10;
            i15 = i11;
        }
        C4387c4 c4387c44 = c4387c42;
        C6280Yu0 c6280Yu0 = new C6280Yu0(this.f53048a, c9114qd, c4387c44);
        C4798y c4798y2 = c6280Yu0.f46108a;
        if (c4798y2 != null && c4798y2.E().e()) {
            c8659ns0.b("Undo constructor inlining");
            c6280Yu0.a(a12, executorService);
            c8659ns0.d();
        }
        ArrayList arrayList3 = new ArrayList(arrayList.size());
        int size2 = arrayList.size();
        int i18 = 0;
        while (i18 < size2) {
            Object obj2 = arrayList.get(i18);
            i18++;
            C8279ld c8279ld2 = (C8279ld) obj2;
            c8279ld2.getClass();
            arrayList3.add(new C8613nd(c8279ld2.f50014a, c10048wA, c8279ld2.f50015b, c8279ld2.f50016c));
        }
        this.f53048a.b().b();
        M70 b13 = M70.b(this.f53048a);
        C8656nr0 c8656nr0 = new C8656nr0(this.f53048a);
        final ArrayList arrayList4 = new ArrayList();
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj3) {
                List.this.add((C10343xx0) obj3);
            }
        };
        com.android.tools.r8.graph.M5 m52 = new com.android.tools.r8.graph.M5();
        m52.f36605a = this.f53048a.e();
        int size3 = arrayList3.size();
        int i19 = 0;
        while (i19 < size3) {
            Consumer consumer2 = consumer;
            ((C8613nd) arrayList3.get(i19)).a(c9114qd, b13, m52, c8656nr0, consumer2);
            arrayList4 = arrayList4;
            i19++;
            size3 = size3;
            consumer = consumer2;
            arrayList3 = arrayList3;
        }
        ArrayList arrayList5 = arrayList4;
        this.f53048a.b().b();
        final com.android.tools.r8.graph.O5 a13 = m52.a();
        C4798y c4798y3 = c8656nr0.f51093a;
        ArrayList arrayList6 = c8656nr0.f51094b;
        C8823or0 c8823or0 = new C8823or0(c4798y3, arrayList6);
        boolean z13 = f53047c;
        if (!z13 && !arrayList6.isEmpty() && !this.f53048a.m()) {
            throw new AssertionError();
        }
        c8823or0.a(executorService);
        boolean z14 = CA.f39146b;
        CA ca2 = new CA(new BA().a(a12).f38844a);
        this.f53048a.a(ca2);
        final C10215xA c10215xA = (C10215xA) new C10549zA(this.f53048a, c9114qd, c4387c44, ca2, c10048wA).a(executorService, c8659ns0);
        Objects.requireNonNull(c10215xA);
        M70 a14 = b13.a(new Function() {
            @Override
            public final Object apply(Object obj3) {
                return C10215xA.this.f((com.android.tools.r8.graph.A2) obj3);
            }
        });
        if (!z13) {
            a(this.f53048a, a12);
        }
        if (this.f53048a.m()) {
            o02 = a(a12);
        } else if (!z13 && !a12.stream().noneMatch(new Predicate() {
            @Override
            public final boolean test(Object obj3) {
                return ((AA) obj3).d();
            }
        })) {
            throw new AssertionError();
        }
        com.android.tools.r8.shaking.O0 o03 = o02;
        this.f53048a.a(c10215xA);
        AbstractC4780x0 a15 = a(ca2);
        if (this.f53048a.m()) {
            a(a12, c10215xA, executorService);
            C4798y L13 = this.f53048a.L();
            AbstractC11516y1 r10 = this.f53048a.r();
            Consumer consumer3 = new Consumer() {
                @Override
                public final void accept(Object obj3) {
                    ((C11500x1) obj3).a(com.android.tools.r8.graph.O5.this);
                }
            };
            C11500x1 c11500x1 = (C11500x1) r10;
            c11500x1.getClass();
            consumer3.accept(c11500x1);
            C4798y c4798y4 = this.f53048a;
            c4798y4.a(c10215xA, c4798y4.e().a(), executorService, c8659ns0);
            new com.android.tools.r8.naming.D(L13).c(executorService);
            ZS.b(L13, c8659ns0, executorService);
            this.f53048a.b(a15);
        } else {
            com.android.tools.r8.synthesis.J g10 = this.f53048a.f().g();
            if (!z13 && g10.b()) {
                throw new AssertionError();
            }
            this.f53048a.N().b(this.f53048a.f().a(g10.a(a15, c10215xA, c8659ns0)));
            this.f53048a.a(c10215xA, c8659ns0);
        }
        a14.a(this.f53048a.f38411d).a(this.f53048a.f38424q).a(this.f53048a);
        if (o03 != null) {
            o03.a(this.f53048a.M());
        }
        C4798y c4798y5 = this.f53048a;
        com.android.tools.r8.graph.M5 m53 = new com.android.tools.r8.graph.M5();
        if (!com.android.tools.r8.graph.M5.f36604h && !a13.f36680c.isEmpty()) {
            throw new AssertionError();
        }
        m53.f36606b.addAll(a13.f36679b);
        m53.f36608d.addAll(a13.f36681d);
        m53.f36605a = a13.f36678a;
        m53.f36609e.addAll(a13.f36682e);
        m53.f36610f.addAll(a13.f36683f);
        m53.f36611g.addAll(a13.f36684g);
        m53.f36605a = this.f53048a.e();
        c4798y5.a(m53.a(), executorService, c8659ns0);
        a(c10215xA, arrayList5);
    }

    public static boolean b(C4516j1 c4516j1) {
        return c4516j1.b1() && c4516j1.Q0().y0();
    }

    public static void b(com.android.tools.r8.shaking.M0 m02, AA aa2, com.android.tools.r8.graph.H5 h52) {
        C4554l1 a10 = aa2.a();
        com.android.tools.r8.shaking.N0 a11 = m02.a(a10);
        AbstractC4401d abstractC4401d = a11.f56832a;
        if (abstractC4401d instanceof C4363b) {
            C4344a c4344a = new C4344a();
            c4344a.a(a10, h52);
            a11.f56832a = c4344a;
        } else if (abstractC4401d instanceof C4344a) {
            abstractC4401d.a().a(a10, h52);
        } else if (!com.android.tools.r8.shaking.N0.f56831c && !(abstractC4401d instanceof C4382c)) {
            throw new AssertionError();
        }
    }

    public final void a(final C10215xA c10215xA, AA aa2) {
        aa2.f38555d.h(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9881vA.this.a(c10215xA, (com.android.tools.r8.graph.H5) obj);
            }
        }, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C9881vA.c((C4516j1) obj);
            }
        });
    }

    public final void a(final C10215xA c10215xA, final ArrayList arrayList) {
        if (!this.f53048a.m()) {
            if (!f53047c && !arrayList.isEmpty()) {
                throw new AssertionError();
            }
            return;
        }
        this.f53048a.r().a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9881vA.this.a(arrayList, c10215xA, (C11500x1) obj);
            }
        });
    }

    public final void a(List list, C10215xA c10215xA, C11500x1 c11500x1) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            final C10343xx0 c10343xx0 = (C10343xx0) it.next();
            com.android.tools.r8.graph.H0 b10 = this.f53048a.b(c10215xA.f(c10343xx0.f53900a));
            boolean z10 = com.android.tools.r8.graph.H0.f36361e;
            com.android.tools.r8.graph.H5 H10 = b10 != null ? b10.H() : null;
            if (H10 != null) {
                c11500x1.a(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C9881vA.a(C10343xx0.this, (com.android.tools.r8.shaking.H1) obj);
                    }
                }, H10);
            } else if (!f53047c) {
                throw new AssertionError();
            }
        }
    }

    public static com.android.tools.r8.shaking.O0 a(LinkedList linkedList) {
        final com.android.tools.r8.shaking.M0 m02 = new com.android.tools.r8.shaking.M0();
        Iterator<E> it = linkedList.iterator();
        while (it.hasNext()) {
            final AA aa2 = (AA) it.next();
            if (aa2.d()) {
                com.android.tools.r8.graph.H2 h22 = aa2.f38555d;
                h22.g(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C9881vA.a(com.android.tools.r8.shaking.M0.this, aa2, (com.android.tools.r8.graph.H5) obj);
                    }
                }, new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean y02;
                        y02 = ((C4516j1) obj).Q0().y0();
                        return y02;
                    }
                });
                h22.j(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C9881vA.b(com.android.tools.r8.shaking.M0.this, aa2, (com.android.tools.r8.graph.H5) obj);
                    }
                }, new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return C9881vA.b((C4516j1) obj);
                    }
                });
            }
        }
        return new com.android.tools.r8.shaking.O0(m02.f56719a);
    }

    public static void a(com.android.tools.r8.shaking.M0 m02, AA aa2, com.android.tools.r8.graph.H5 h52) {
        C4554l1 a10 = aa2.a();
        com.android.tools.r8.shaking.N0 a11 = m02.a(a10);
        AbstractC4401d abstractC4401d = a11.f56833b;
        if (abstractC4401d instanceof C4363b) {
            C4344a c4344a = new C4344a();
            c4344a.a(a10, h52);
            a11.f56833b = c4344a;
        } else if (abstractC4401d instanceof C4344a) {
            abstractC4401d.a().a(a10, h52);
        } else if (!com.android.tools.r8.shaking.N0.f56831c && !(abstractC4401d instanceof C4382c)) {
            throw new AssertionError();
        }
    }

    public final void a(LinkedList linkedList, final C10215xA c10215xA, ExecutorService executorService) {
        if (!this.f53048a.f().h()) {
            if (f53047c) {
                return;
            }
            a(linkedList, executorService);
            return;
        }
        C5467Kr0.a(linkedList, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9881vA.this.a(c10215xA, (AA) obj);
            }
        }, this.f53048a.E().G(), executorService);
    }

    public final void a(C10215xA c10215xA, com.android.tools.r8.graph.H5 h52) {
        h52.a(((AbstractC7221fD) h52.d().Q0()).a(this.f53048a.L(), h52, c10215xA), this.f53048a);
    }

    public final void a(LinkedList linkedList, ExecutorService executorService) {
        C5467Kr0.a(linkedList, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9881vA.a((AA) obj);
            }
        }, this.f53048a.E().G(), executorService);
    }

    public static void a(AA aa2) {
        if (!f53047c && aa2.f38555d.c(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C9881vA.d((C4516j1) obj);
            }
        }).iterator().hasNext()) {
            throw new AssertionError((Object) "Expected no incomplete code");
        }
    }

    public final AbstractC4780x0 a(final CA ca2) {
        return this.f53048a.e().c().a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean c10;
                c10 = CA.this.c(((com.android.tools.r8.graph.H2) obj).getType());
                return c10;
            }
        }).b();
    }

    public final LinkedList a() {
        AA aa2 = new AA();
        AA aa3 = new AA();
        for (com.android.tools.r8.graph.H2 h22 : this.f53048a.f().e()) {
            if (h22.isInterface()) {
                aa3.f38553b.add(h22);
            } else {
                aa2.f38553b.add(h22);
            }
        }
        LinkedList linkedList = new LinkedList();
        linkedList.add(aa2);
        linkedList.add(aa3);
        linkedList.removeIf(new C10663zs1());
        return linkedList;
    }

    public static void a(C4798y c4798y, LinkedList linkedList) {
        Iterator<E> it = linkedList.iterator();
        while (it.hasNext()) {
            AA aa2 = (AA) it.next();
            if (aa2.j()) {
                if (!f53047c && !c4798y.f().h()) {
                    throw new AssertionError();
                }
                final com.android.tools.r8.graph.H2 h22 = aa2.f38555d;
                ((C4514j) c4798y.L().f()).b(h22, new InterfaceC7495gt0() {
                    @Override
                    public final Object a(Object obj, Object obj2, Object obj3) {
                        return C9881vA.a(com.android.tools.r8.graph.H2.this, (com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.E0) obj2, (Boolean) obj3);
                    }
                });
            }
        }
    }

    public static AbstractC6333Zs0 a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E0 e02, Boolean bool) {
        if (!f53047c && m22.a(h22.getType())) {
            throw new AssertionError((Object) ("Interface " + h22.b1() + " inherits from itself"));
        }
        return C6276Ys0.f46097c;
    }
}
