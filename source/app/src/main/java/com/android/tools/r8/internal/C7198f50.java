package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.EnumC4535k1;
import com.android.tools.r8.ir.optimize.C10732x;
import com.android.tools.r8.shaking.C11500x1;
import com.android.tools.r8.synthesis.S;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.UnaryOperator;

public final class C7198f50 extends S40 {

    public static final boolean f47852g = true;

    public N40 f47853a;

    public final HashMap f47854b = new HashMap();

    public final HashMap f47855c = new HashMap();

    public final C4798y f47856d;

    public final C4724u1 f47857e;

    public final com.android.tools.r8.ir.optimize.X f47858f;

    public C7198f50(C4798y c4798y) {
        this.f47856d = c4798y;
        this.f47857e = c4798y.b();
        this.f47858f = new com.android.tools.r8.ir.optimize.X(c4798y);
    }

    public static W5 a(W5 w52, W5 w53) {
        return w52;
    }

    public static void c(com.android.tools.r8.graph.H5 h52) {
        C4516j1 d10 = h52.d();
        d10.L0();
        d10.f37319l = EnumC4535k1.f37407b;
    }

    @Override
    public final void b(com.android.tools.r8.graph.H5 h52) {
        a(h52);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52) {
        N40 n40 = this.f47853a;
        C4798y c4798y = this.f47856d;
        if (!N40.f42490d) {
            n40.getClass();
            if (c4798y.v() != n40.f42492b) {
                throw new AssertionError();
            }
        }
        n40.f42493c.remove(h52.getReference());
    }

    public final void b(C8048kB c8048kB, C7215fB c7215fB) {
        a(c7215fB);
        C8048kB.a(c7215fB, "IR after outlining (SSA)", (String) null, c8048kB.f49531j);
        c8048kB.f49533l.a(c7215fB);
        new C6933dY(this.f47856d).a(c7215fB, C8659ns0.c());
        c8048kB.a(c7215fB, AbstractC8529n40.f50496b, C8659ns0.c());
    }

    @Override
    public final void a(AbstractC5308Hz abstractC5308Hz) {
        boolean z10 = f47852g;
        if (!z10 && this.f47856d.v() != abstractC5308Hz) {
            throw new AssertionError();
        }
        if (!z10 && this.f47853a != null) {
            throw new AssertionError();
        }
        this.f47853a = new N40(abstractC5308Hz);
    }

    public final void b(final C7215fB c7215fB) {
        final com.android.tools.r8.graph.H5 j10 = c7215fB.j();
        boolean z10 = f47852g;
        if (!z10) {
            AbstractC4497i0 Q02 = j10.d().Q0();
            Q02.getClass();
            if (Q02 instanceof X40) {
                throw new AssertionError();
            }
        }
        if (!z10 && C6300Zd.a(j10.getHolder(), this.f47856d)) {
            throw new AssertionError();
        }
        a(this.f47856d, c7215fB, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7198f50.this.a(j10, c7215fB, (List) obj);
            }
        });
    }

    @Override
    public final void a(final C10374y70 c10374y70, C8195l40 c8195l40, ExecutorService executorService, C8659ns0 c8659ns0) {
        if (!f47852g) {
            c8195l40.b();
        }
        c10374y70.b("Outlining");
        c8659ns0.b("IR conversion phase 3");
        N40 n40 = this.f47853a;
        C4798y c4798y = this.f47856d;
        n40.getClass();
        AbstractC8374m80 c10 = AbstractC8374m80.c();
        for (List list : n40.a(c4798y).values()) {
            if (list.size() >= c4798y.E().f50677e0.f50792d) {
                c10.addAll(list);
            }
        }
        this.f47853a = null;
        if (!c10.f45165b.isEmpty()) {
            C4798y c4798y2 = this.f47856d;
            Q40 q40 = P40.f43115a;
            M70 b10 = M70.b(c4798y2);
            b10.getClass();
            if (!(b10 instanceof C6520b10)) {
                q40 = new W70(b10.a());
            }
            a(c10374y70, c10, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C7198f50.this.a(c10374y70, (C7215fB) obj);
                }
            }, executorService);
            ArrayList a10 = a(q40);
            a(a10);
            c10374y70.a(a10, C7097eX.f47704c, EW.b(this.f47856d), executorService);
            c8195l40.c();
            a(c10374y70, c10, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C7198f50.this.b(c10374y70, (C7215fB) obj);
                }
            }, executorService);
            c8195l40.c();
            if (!f47852g) {
                for (W40 w40 : this.f47855c.o()) {
                    if (!f47852g && !((List) this.f47854b.get(w40)).isEmpty()) {
                        throw new AssertionError((List) this.f47854b.get(w40));
                    }
                }
            }
            a10.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C7198f50.c((com.android.tools.r8.graph.H5) obj);
                }
            });
            q40.a(this.f47856d);
        }
        this.f47856d.getClass();
        c8659ns0.d();
    }

    public final void a(C8048kB c8048kB, C7215fB c7215fB) {
        C8048kB.a(c7215fB, "IR before outlining (SSA)", (String) null, c8048kB.f49531j);
        b(c7215fB);
    }

    public final void a(final ArrayList arrayList) {
        if (this.f47856d.H().f50828L) {
            return;
        }
        this.f47856d.r().a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7198f50.a(List.this, (C11500x1) obj);
            }
        });
    }

    public static void a(List list, C11500x1 c11500x1) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) it.next();
            c11500x1.a(h52);
            c11500x1.a(new AW0(), h52);
        }
    }

    public final void a(final C10374y70 c10374y70, AbstractC8374m80 abstractC8374m80, final Consumer consumer, ExecutorService executorService) {
        if (!f47852g && this.f47856d.E().f50687h1) {
            throw new AssertionError();
        }
        C5467Kr0.a(abstractC8374m80, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7198f50.this.a(c10374y70, consumer, (com.android.tools.r8.graph.H5) obj);
            }
        }, this.f47856d.E().G(), executorService);
    }

    public final void a(C8048kB c8048kB, Consumer consumer, com.android.tools.r8.graph.H5 h52) {
        C7215fB a10 = h52.a(this.f47856d);
        boolean z10 = f47852g;
        if (!z10 && a10 == null) {
            throw new AssertionError();
        }
        if (!z10) {
            AbstractC4497i0 Q02 = h52.d().Q0();
            Q02.getClass();
            if (Q02 instanceof X40) {
                throw new AssertionError();
            }
        }
        new C6933dY(this.f47856d).a(a10, C8659ns0.c());
        c8048kB.f49545x.a(a10, C8659ns0.c());
        C10732x.a((C4798y<?>) this.f47856d, a10);
        consumer.accept(a10);
    }

    @Override
    public final void a() {
        this.f47853a.a(this.f47856d.v());
    }

    @Override
    public final void a(final C7215fB c7215fB, C8659ns0 c8659ns0) {
        if (this.f47853a == null) {
            return;
        }
        final com.android.tools.r8.graph.H5 j10 = c7215fB.j();
        if (!f47852g) {
            AbstractC4497i0 Q02 = j10.d().Q0();
            Q02.getClass();
            if (Q02 instanceof X40) {
                throw new AssertionError();
            }
        }
        if (C6300Zd.a(j10.getHolder(), this.f47856d)) {
            return;
        }
        c8659ns0.b("Collect outlines");
        final ArrayList arrayList = new ArrayList();
        a(this.f47856d, c7215fB, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7198f50.this.a(j10, c7215fB, arrayList, (List) obj);
            }
        });
        this.f47853a.a(this.f47856d, j10, arrayList);
        c8659ns0.d();
    }

    public final void a(com.android.tools.r8.graph.H5 h52, C7215fB c7215fB, List list, List list2) {
        new C6365a50(this, h52, list2, list).a();
    }

    public static void a(C4798y c4798y, C7215fB c7215fB, Consumer consumer) {
        AbstractC10561zE next;
        c4798y.E().f50677e0.getClass();
        int i10 = c4798y.E().f50677e0.f50790b;
        Set c10 = AbstractC5513Ll0.c();
        Iterator<W5> it = c7215fB.f47897d.iterator();
        while (it.hasNext()) {
            W5 next2 = it.next();
            if (c10.add(next2)) {
                int i11 = AbstractC7552hC.f48487c;
                Object[] objArr = new Object[4];
                C7920jS c7920jS = new C7920jS(next2);
                boolean z10 = false;
                W5 w52 = next2;
                int i12 = 0;
                int i13 = 0;
                while (true) {
                    if (!c7920jS.f49240c.hasNext()) {
                        break;
                    }
                    next = c7920jS.next();
                    if (next.b() != next2) {
                        if (!next2.z() && !next.b().z()) {
                            if (c10.contains(next.b())) {
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                    int i14 = i12 + 1;
                    if (objArr.length < i14) {
                        objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i14));
                    }
                    objArr[i12] = next;
                    i13++;
                    if (i13 > 100 && next.b() != w52) {
                        i12 = i14;
                        break;
                    } else {
                        w52 = next.b();
                        i12 = i14;
                    }
                }
                w52 = next.b();
                z10 = true;
                c10.addAll(c7920jS.f49241d);
                if (z10) {
                    if (!f47852g && w52 == next2) {
                        throw new AssertionError();
                    }
                    c10.remove(w52);
                }
                if (i13 >= i10) {
                    consumer.accept(AbstractC7552hC.b(i12, objArr));
                }
            }
        }
    }

    public final void a(com.android.tools.r8.graph.H5 h52, C7215fB c7215fB, List list) {
        new C6698c50(this, h52, list).a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ArrayList a(Q40 q40) {
        final C5093Ef k10 = this.f47856d.k();
        IdentityHashMap identityHashMap = new IdentityHashMap();
        ArrayList arrayList = new ArrayList();
        if (!f47852g && this.f47854b.isEmpty()) {
            throw new AssertionError();
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : this.f47854b.entrySet()) {
            if (((List) entry.getValue()).size() >= this.f47856d.E().f50677e0.f50792d) {
                arrayList2.add((W40) entry.getKey());
            }
        }
        arrayList2.sort(Comparator.naturalOrder());
        int size = arrayList2.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList2.get(i10);
            i10++;
            final W40 w40 = (W40) obj;
            List list = (List) this.f47854b.get(w40);
            if (!f47852g && list.isEmpty()) {
                throw new AssertionError();
            }
            final com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) list.get(0);
            for (int i11 = 1; i11 < list.size(); i11++) {
                com.android.tools.r8.graph.H5 h53 = (com.android.tools.r8.graph.H5) list.get(i11);
                if (h53.getReference().compareTo(h52.getReference()) < 0) {
                    h52 = h53;
                }
            }
            com.android.tools.r8.graph.H5 b10 = this.f47856d.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    S.b bVar;
                    bVar = s10.f58163P;
                    return bVar;
                }
            }, ((C5035Df) identityHashMap.computeIfAbsent(h52.getReference(), new Function() {
                @Override
                public final Object apply(Object obj2) {
                    C5035Df a10;
                    a10 = C5093Ef.this.a(h52);
                    return a10;
                }
            })).a(), this.f47856d, new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    C7198f50.this.a(w40, h52, (com.android.tools.r8.synthesis.N) obj2);
                }
            });
            if (!f47852g && b10.getReference().w0() > 255) {
                throw new AssertionError();
            }
            q40.a(list, b10);
            this.f47855c.put(w40, b10.getReference());
            arrayList.add(b10);
        }
        return arrayList;
    }

    public final void a(final W40 w40, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.synthesis.N n10) {
        n10.f58119i = com.android.tools.r8.graph.L4.b(9, false);
        if (w40.f45285f == null) {
            w40.f45285f = w40.f45286g.f47857e.a(w40.f45284e, (com.android.tools.r8.graph.M2[]) w40.f45281b.toArray(com.android.tools.r8.graph.M2.f36589h));
        }
        n10.f58115e = w40.f45285f;
        int i10 = com.android.tools.r8.androidapi.f.f35602a;
        com.android.tools.r8.androidapi.h hVar = com.android.tools.r8.androidapi.h.f35609b;
        n10.f58123m = hVar;
        n10.f58124n = hVar;
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return C7198f50.this.a(w40, a22);
            }
        };
        if (this.f47856d.E().f50697l instanceof ClassFileConsumer) {
            n10.f58116f = h52.d().P0();
        }
    }

    public final AbstractC4497i0 a(W40 w40, com.android.tools.r8.graph.A2 a22) {
        return new X40(this, w40);
    }

    public final void a(final C7215fB c7215fB) {
        boolean z10 = f47852g;
        if (!z10) {
            AbstractC4497i0 Q02 = c7215fB.j().d().Q0();
            Q02.getClass();
            if (Q02 instanceof X40) {
                throw new AssertionError();
            }
        }
        final Set c10 = AbstractC5513Ll0.c();
        final Set c11 = AbstractC5513Ll0.c();
        a(this.f47856d, c7215fB, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7198f50.this.a(c7215fB, c10, c11, (List) obj);
            }
        });
        if (!c10.isEmpty()) {
            if (!z10 && c11.isEmpty()) {
                throw new AssertionError();
            }
            final Z5 u10 = c7215fB.u();
            while (u10.f46159b.hasNext()) {
                final W5 w52 = (W5) u10.f46159b.next();
                u10.f46160c = w52;
                final Y5 I10 = w52.I();
                I10.forEachRemaining(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C7198f50.this.a(c10, I10, c11, w52, c7215fB, u10, (AbstractC10561zE) obj);
                    }
                });
            }
            c7215fB.x();
        }
        boolean z11 = f47852g;
        if (!z11 && !c10.isEmpty()) {
            throw new AssertionError();
        }
        c7215fB.x();
        if (!z11 && !c7215fB.b(this.f47856d)) {
            throw new AssertionError();
        }
    }

    public final void a(C7215fB c7215fB, Set set, Set set2, List list) {
        new C6532b50(this, c7215fB, list, set, set2).a();
    }

    public final void a(Set set, EE ee2, Set set2, final W5 w52, C7215fB c7215fB, Z5 z52, AbstractC10561zE abstractC10561zE) {
        if (set.remove(abstractC10561zE)) {
            ee2.s();
        } else if (set2.contains(abstractC10561zE) && w52.z()) {
            ee2.a(c7215fB, z52, this.f47856d.E(), new UnaryOperator() {
                @Override
                public final Object apply(Object obj) {
                    return C7198f50.a(W5.this, (W5) obj);
                }
            });
        }
    }
}
