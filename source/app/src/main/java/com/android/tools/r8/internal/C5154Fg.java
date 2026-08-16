package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C5154Fg {

    public static final boolean f40271d = true;

    public final C4798y f40272a;

    public final C5212Gg f40273b;

    public final InterfaceC5096Eg f40274c;

    public C5154Fg(C4798y c4798y, InterfaceC5096Eg interfaceC5096Eg) {
        this.f40272a = c4798y;
        this.f40273b = new C5212Gg(c4798y);
        this.f40274c = interfaceC5096Eg;
    }

    public final void a(ExecutorService executorService, C8659ns0 c8659ns0) {
        c8659ns0.b("Concurrent method fixup");
        c8659ns0.b("Compute strongly connected components");
        C4798y c4798y = this.f40272a;
        ArrayList a10 = new C6541b80(this.f40272a, C4387c4.a(c4798y, ((C4514j) c4798y.f()).d())).a();
        c8659ns0.d();
        c8659ns0.b("Process strongly connected components");
        C5467Kr0.a(a10, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5154Fg.this.a((Set) obj);
            }
        }, this.f40272a.E().G(), executorService);
        c8659ns0.d();
        c8659ns0.d();
    }

    public final void b(com.android.tools.r8.graph.H2 h22, Set set, C4942Bq c4942Bq) {
        if (!f40271d && !h22.isInterface()) {
            throw new AssertionError();
        }
        if (set.add(h22)) {
            Iterator<com.android.tools.r8.graph.M2> it = h22.R0().iterator();
            while (it.hasNext()) {
                com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(this.f40272a.g(it.next()));
                if (a10 != null) {
                    b(a10, set, c4942Bq);
                }
            }
            this.f40274c.a(h22, a(h22, c4942Bq));
        }
    }

    public final OW a(com.android.tools.r8.graph.H2 h22, C4942Bq c4942Bq) {
        final C7045eA c7045eA = new C7045eA(16);
        h22.g(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5154Fg.this.a(c7045eA, (com.android.tools.r8.graph.H5) obj);
            }
        }, EnumC6871d70.f47286b);
        return new OW(this.f40272a.b(), c4942Bq, c7045eA);
    }

    public final void a(Set set) {
        ArrayList arrayList = new ArrayList(set);
        arrayList.sort(Comparator.comparing(new com.android.tools.r8.errors.q()));
        C4942Bq c4942Bq = new C4942Bq();
        a(arrayList, c4942Bq);
        Set c10 = AbstractC5513Ll0.c();
        int size = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) obj;
            if (h22.isInterface()) {
                b(h22, c10, c4942Bq);
            }
        }
        Set c11 = AbstractC5513Ll0.c();
        int size2 = arrayList.size();
        while (i10 < size2) {
            Object obj2 = arrayList.get(i10);
            i10++;
            com.android.tools.r8.graph.H2 h23 = (com.android.tools.r8.graph.H2) obj2;
            if (!h23.isInterface()) {
                a(h23, c11, c4942Bq);
            }
        }
    }

    public final void a(com.android.tools.r8.graph.H2 h22, Set set, C4942Bq c4942Bq) {
        if (!f40271d && h22.isInterface()) {
            throw new AssertionError();
        }
        if (set.add(h22)) {
            com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(this.f40272a.g(h22.f36247g));
            if (a10 != null) {
                a(a10, set, c4942Bq);
            }
            this.f40274c.a(h22, a(h22, c4942Bq));
        }
    }

    public final void a(InterfaceC7200f6 interfaceC7200f6, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.shaking.I1 a10 = this.f40272a.a(h52);
        if (a10.c(this.f40272a.E()) && a10.e(this.f40272a.E()) && !this.f40274c.a(h52)) {
            return;
        }
        interfaceC7200f6.put(h52.getReference(), h52.getReference());
    }

    public final void a(C4942Bq c4942Bq, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.shaking.I1 a10 = this.f40272a.a(h52);
        if (a10.c(this.f40272a.E()) && a10.e(this.f40272a.E()) && !this.f40274c.a(h52)) {
            return;
        }
        c4942Bq.f39368b.put(h52.x(), h52.x());
    }

    public final void a(ArrayList arrayList, final C4942Bq c4942Bq) {
        final Set c10 = AbstractC5513Ll0.c();
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) obj;
            h22.h(new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    C5154Fg.this.a(c4942Bq, (com.android.tools.r8.graph.H5) obj2);
                }
            }, new Predicate() {
                @Override
                public final boolean test(Object obj2) {
                    return C5154Fg.a((C4516j1) obj2);
                }
            });
            h22.a(this.f40272a, new BiPredicate() {
                @Override
                public final boolean test(Object obj2, Object obj3) {
                    return C5154Fg.a(Set.this, (com.android.tools.r8.graph.M2) obj2, (com.android.tools.r8.graph.E0) obj3);
                }
            }, new BiConsumer() {
                @Override
                public final void accept(Object obj2, Object obj3) {
                    C5154Fg.this.a(c4942Bq, (com.android.tools.r8.graph.M2) obj2, (com.android.tools.r8.graph.E0) obj3);
                }
            });
        }
    }

    public static boolean a(C4516j1 c4516j1) {
        return !c4516j1.j1();
    }

    public static boolean a(Set set, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E0 e02) {
        return (e02 == null || e02.e0() || !set.add(e02.z())) ? false : true;
    }

    public final void a(C4942Bq c4942Bq, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E0 e02) {
        C5212Gg c5212Gg = this.f40273b;
        com.android.tools.r8.graph.S z10 = e02.z();
        c5212Gg.getClass();
        com.android.tools.r8.graph.E0 e03 = (com.android.tools.r8.graph.E0) z10;
        e03.getClass();
        C5058Dq c5058Dq = (C5058Dq) c5212Gg.f40556b.get(e03);
        if (c5058Dq == null) {
            c5058Dq = c5212Gg.a(e03);
        }
        c4942Bq.getClass();
        for (com.android.tools.r8.graph.F2 f22 : c5058Dq.f39661b) {
            c4942Bq.f39368b.put(f22, f22);
        }
    }
}
