package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4425e4;
import com.android.tools.r8.graph.C4500i3;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10732x;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.ListIterator;
import java.util.Objects;
import java.util.TreeSet;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.stream.Stream;

public final class C9642tm0 {

    public static final boolean f52693b = true;

    public final C4798y f52694a;

    public C9642tm0(C4798y c4798y) {
        this.f52694a = c4798y;
    }

    public final void a(C7541h80 c7541h80, ExecutorService executorService) {
        final com.android.tools.r8.graph.M5 m52 = new com.android.tools.r8.graph.M5();
        m52.f36605a = this.f52694a.e();
        c7541h80.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C9642tm0.a(com.android.tools.r8.graph.M5.this, (com.android.tools.r8.graph.H5) obj, (com.android.tools.r8.graph.H5) obj2);
            }
        });
        this.f52694a.a(m52.a(), executorService, C8659ns0.c());
    }

    public final void b(final C9475sm0 c9475sm0, C7541h80 c7541h80, ExecutorService executorService) {
        Stream j10 = c7541h80.j();
        Objects.requireNonNull(j10);
        C5467Kr0.a(new Xt1(j10), new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C9642tm0.this.a(c9475sm0, (com.android.tools.r8.graph.H5) obj);
            }
        }, this.f52694a.E().G(), executorService);
    }

    public final void a(ExecutorService executorService, C8659ns0 c8659ns0) {
        C10310xm0 D10 = this.f52694a.E().D();
        if (D10.f53843b) {
            C8570nJ c8570nJ = D10.f53842a;
            if (c8570nJ.f50690i1 || c8570nJ.f50595E0 || !c8570nJ.T() || !D10.f53842a.W()) {
                return;
            }
            c8659ns0.b("SingleCallerInliner");
            C4798y c4798y = this.f52694a;
            C4387c4 a10 = C4387c4.a(c4798y, ((C4514j) c4798y.f()).d());
            C7541h80 a11 = new C10477ym0(this.f52694a, YX.a(c4798y, a10, new C6541b80(c4798y, a10).a(), executorService)).a(executorService);
            if (!a11.f43368b.isEmpty()) {
                C9475sm0 c9475sm0 = new C9475sm0(this.f52694a, a11);
                b(c9475sm0, a11, executorService);
                a(c9475sm0, a11, executorService);
                for (com.android.tools.r8.graph.H2 h22 : ((C11245i) this.f52694a.f()).d()) {
                    if (h22.d1()) {
                        C4500i3 O02 = h22.O0();
                        if (O02.f37290b != null) {
                            com.android.tools.r8.graph.H0 b10 = this.f52694a.b(O02.a());
                            if (b10 != null && b10.A().w()) {
                                h22.f36253m = null;
                                C4425e4 P02 = h22.P0();
                                if (P02 != null) {
                                    if (!f52693b && P02.d() != null) {
                                        throw new AssertionError();
                                    }
                                    C4425e4 c4425e4 = new C4425e4(P02.a(), P02.b(), b10.p(), P02.c());
                                    ListIterator<C4425e4> listIterator = h22.Q0().listIterator();
                                    while (listIterator.hasNext()) {
                                        if (h22.f36245e == listIterator.next().b()) {
                                            listIterator.set(c4425e4);
                                        }
                                    }
                                    throw new C5417Jv0();
                                }
                                continue;
                            }
                        } else {
                            continue;
                        }
                    }
                }
                a(a11, executorService);
            }
            c8659ns0.d();
        }
    }

    public final void a(com.android.tools.r8.ir.optimize.W w10, com.android.tools.r8.graph.H5 h52) {
        C7215fB a10 = h52.a(this.f52694a);
        C8696o40 a11 = AbstractC8028k40.a();
        C4516j1 d10 = h52.d();
        com.android.tools.r8.ir.optimize.O a12 = w10.a(a10);
        a11.getClass();
        d10.a(a12);
        if (h52.d().f37322o.x()) {
            C4516j1 d11 = h52.d();
            C4798y c4798y = this.f52694a;
            d11.f(c4798y.f38404S.a(c4798y.E()));
        }
    }

    public final void a(com.android.tools.r8.ir.optimize.W w10, C6862d40 c6862d40, C7541h80 c7541h80, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df) {
        if (h52.d().f37322o.x()) {
            C4516j1 d10 = h52.d();
            C4798y c4798y = this.f52694a;
            d10.f(c4798y.f38404S.a(c4798y.E()));
        }
        C4798y<?> c4798y2 = this.f52694a;
        C7215fB a10 = h52.a(c4798y2, EW.b(c4798y2));
        w10.a(h52, a10, AbstractC8028k40.a(), c6862d40, C8659ns0.c(), w10.a(c6862d40));
        C10732x.a((C4798y<?>) this.f52694a, a10);
        h52.a(new C9717uB(this.f52694a).a(a10, C9875v8.b(), C8659ns0.c()), this.f52694a);
        if (c7541h80.f43368b.containsKey(new C7333fv(C7374g80.f48192a, h52))) {
            C8696o40 a11 = AbstractC8028k40.a();
            C4516j1 d11 = h52.d();
            com.android.tools.r8.ir.optimize.O a12 = w10.a(a10);
            a11.getClass();
            d11.a(a12);
        }
    }

    public final void a(final C9475sm0 c9475sm0, final C7541h80 c7541h80, ExecutorService executorService) {
        C9142qm0 c9142qm0 = new C9142qm0(c7541h80);
        C9809um0 a10 = new C9809um0(this.f52694a).a(c7541h80);
        Collection values = a10.f38541b.values();
        TreeSet treeSet = new TreeSet();
        AbstractC9907vK.a(values, treeSet);
        new C10631zi().a(treeSet);
        C10143wm0 c10143wm0 = new C10143wm0(a10.f38541b);
        ArrayDeque arrayDeque = new ArrayDeque();
        c10143wm0.c();
        while (!c10143wm0.b()) {
            arrayDeque.addLast(c10143wm0.c());
        }
        while (!arrayDeque.isEmpty()) {
            final C6862d40 c6862d40 = new C6862d40(C7097eX.f47704c, this.f52694a.k(), (AbstractC8374m80) arrayDeque.removeFirst());
            c6862d40.f47269e = c9142qm0;
            c6862d40.a(new InterfaceC6695c40() {
                @Override
                public final void a(com.android.tools.r8.graph.H5 h52, C5035Df c5035Df) {
                    C9642tm0.this.a(c9475sm0, c6862d40, c7541h80, h52, c5035Df);
                }
            }, this.f52694a.E().G(), executorService);
        }
    }

    public static void a(com.android.tools.r8.graph.M5 m52, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        if (h52.A().w()) {
            com.android.tools.r8.graph.A2 reference = h52.getReference();
            if (!com.android.tools.r8.graph.M5.f36604h && m52.f36607c.containsKey(reference)) {
                throw new AssertionError();
            }
            m52.f36607c.put(reference, h53);
            m52.f36611g.add(reference);
            h52.getHolder().d(h52.getReference());
        }
    }
}
