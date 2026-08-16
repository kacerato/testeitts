package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11500x1;
import com.android.tools.r8.synthesis.S;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;

public final class T00 {

    public static final boolean f44357f = true;

    public final C4798y f44358a;

    public final C4724u1 f44359b;

    public final U00 f44360c;

    public final AbstractC9148qo0 f44361d;

    public final C7873j80 f44362e;

    public T00(C4798y c4798y) {
        int i10 = V00.f44934n;
        this.f44360c = new U00();
        this.f44358a = c4798y;
        this.f44359b = c4798y.b();
        this.f44361d = c4798y.f38424q;
        C8040k80 c8040k80 = AbstractC8374m80.f50207d;
        this.f44362e = new C7873j80();
    }

    public final void a(ExecutorService executorService, C8659ns0 c8659ns0) {
        ConcurrentHashMap a10 = a(executorService);
        if (a10.isEmpty()) {
            return;
        }
        M70 b10 = M70.b(this.f44358a);
        a(a10, executorService, b10);
        b10.a(this.f44358a);
        if (this.f44358a.f38408a.g().b()) {
            C4798y c4798y = this.f44358a;
            c4798y.b(c4798y.e());
        }
        a();
        if (this.f44360c.f44649a.f51964b.isEmpty()) {
            return;
        }
        U00 u00 = this.f44360c;
        C4798y c4798y2 = this.f44358a;
        u00.getClass();
        V00 v00 = new V00(c4798y2, u00.f44649a);
        C4798y c4798y3 = this.f44358a;
        c4798y3.a(v00, c4798y3.e().a(), executorService, c8659ns0);
    }

    public final void b(final ExecutorService executorService, final C8659ns0 c8659ns0) {
        if (this.f44361d.c() || !this.f44358a.E().E().f51618a) {
            return;
        }
        c8659ns0.a("NonStartupInStartupOutliner", new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                T00.this.a(executorService, c8659ns0);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0082, code lost:
    
        if (r10.f45165b.containsKey(r1.getReference()) != false) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(AbstractC8374m80 abstractC8374m80, C5093Ef c5093Ef, M70 m70, com.android.tools.r8.graph.H2 h22, List list) {
        final boolean z10;
        final com.android.tools.r8.graph.H5 a10;
        Set c10 = AbstractC5513Ll0.c();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            final com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) it.next();
            C5035Df a11 = c5093Ef.a(h52);
            boolean z11 = f44357f;
            if (!z11 && !this.f44358a.m()) {
                throw new AssertionError();
            }
            if (this.f44358a.a(h52).e(this.f44358a.E())) {
                if (!h52.getAccessFlags().n() && !h52.getAccessFlags().h()) {
                    if (!z11 && h52.getAccessFlags().D()) {
                        throw new AssertionError();
                    }
                    if (h52.d().k1().a()) {
                    }
                }
                z10 = true;
                if (!z10) {
                    com.android.tools.r8.graph.L4 accessFlags = h52.getAccessFlags();
                    com.android.tools.r8.graph.L4 r10 = new com.android.tools.r8.graph.L4(accessFlags.f37196b, accessFlags.f37197c).r();
                    r10.f37197c |= 8;
                    a10 = a(h52, a11, (com.android.tools.r8.graph.L4) r10.E());
                    U00 u00 = this.f44360c;
                    synchronized (u00) {
                        u00.f44649a.f51964b.a(h52.getReference(), a10.getReference(), true);
                    }
                    c10.add(h52.d());
                } else {
                    a10 = a(h52, a11);
                }
                m70.a(h52.getReference(), new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        T00.a(com.android.tools.r8.graph.H5.this, z10, h52, (K70) obj);
                    }
                });
                this.f44362e.add((C7873j80) a10);
            }
            z10 = false;
            if (!z10) {
            }
            m70.a(h52.getReference(), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    T00.a(com.android.tools.r8.graph.H5.this, z10, h52, (K70) obj);
                }
            });
            this.f44362e.add((C7873j80) a10);
        }
        com.android.tools.r8.graph.N4 b02 = h22.b0();
        b02.getClass();
        if (c10.isEmpty()) {
            return;
        }
        b02.f36638b.a(c10);
        b02.f36639c = C4516j1.f37311v;
    }

    public final ConcurrentHashMap a(ExecutorService executorService) {
        final ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        com.android.tools.r8.J.a(this.f44358a, ((C4514j) this.f44358a.f()).d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                T00.this.a(concurrentHashMap, (com.android.tools.r8.graph.H2) obj);
            }
        }, executorService);
        return concurrentHashMap;
    }

    public final void a(final Map map, final com.android.tools.r8.graph.H2 h22) {
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((List) Map.this.computeIfAbsent(h22, TU.a(new com.android.tools.r8.graph.Uc()))).add((com.android.tools.r8.graph.H5) obj);
            }
        }, h22);
    }

    public final com.android.tools.r8.graph.H5 a(final com.android.tools.r8.graph.H5 h52, C5035Df c5035Df) {
        com.android.tools.r8.graph.H5 a10 = a(h52, c5035Df, com.android.tools.r8.graph.L4.b(4105, false));
        h52.a(new C6842cy(this.f44359b).a(h52.getAccessFlags().n(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                T00.a(com.android.tools.r8.graph.H5.this, (C6842cy) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                T00.b(com.android.tools.r8.graph.H5.this, (C6842cy) obj);
            }
        }).a(a10.getReference(), false).a(this.f44358a), this.f44358a);
        return a10;
    }

    public final void a(final Consumer consumer, com.android.tools.r8.graph.H2 h22) {
        if (this.f44361d.b(h22.getType())) {
            h22.h(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    T00.this.a(consumer, (com.android.tools.r8.graph.H5) obj);
                }
            }, new u.P0());
        }
    }

    public final void a(Consumer consumer, com.android.tools.r8.graph.H5 h52) {
        if (this.f44361d.a((com.android.tools.r8.graph.A2) h52.getReference()) || ((C4516j1) h52.d()).i1()) {
            return;
        }
        S00 s00 = new S00(this, this.f44358a, h52);
        h52.a(s00);
        if (s00.f37241e.booleanValue()) {
            consumer.accept(h52);
        }
    }

    public static void b(com.android.tools.r8.graph.H5 h52, C6842cy c6842cy) {
        c6842cy.f47222b = h52.getReference();
        c6842cy.f47225e = false;
    }

    public final void a(com.android.tools.r8.graph.L4 l42, final com.android.tools.r8.graph.H5 h52, final com.android.tools.r8.synthesis.N n10) {
        com.android.tools.r8.graph.I2 y02;
        n10.f58119i = l42;
        n10.f58124n = h52.d().f37322o;
        n10.f58123m = h52.d().f37261e;
        C4724u1 c4724u1 = this.f44359b;
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        boolean n11 = h52.getAccessFlags().n();
        c4724u1.getClass();
        if (!n11) {
            y02 = reference.y0().b(c4724u1, reference.s0());
        } else {
            y02 = reference.y0();
        }
        n10.f58115e = y02;
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return T00.this.a(h52, n10, a22);
            }
        };
    }

    public final void a(ConcurrentHashMap concurrentHashMap, ExecutorService executorService, final M70 m70) {
        final C5093Ef k10 = this.f44358a.k();
        C4798y c4798y = this.f44358a;
        C4387c4 a10 = C4387c4.a(c4798y, ((C4514j) c4798y.f()).d());
        final C7873j80 a11 = YX.a(c4798y, a10, new C6541b80(c4798y, a10).a(), executorService);
        C5467Kr0.a(concurrentHashMap, new InterfaceC5988Tr0() {
            @Override
            public final void accept(Object obj, Object obj2) {
                T00.this.a(a11, k10, m70, (com.android.tools.r8.graph.H2) obj, (List) obj2);
            }
        }, this.f44358a.E().G(), executorService);
    }

    public static void a(com.android.tools.r8.graph.H5 h52, boolean z10, com.android.tools.r8.graph.H5 h53, K70 k70) {
        k70.a(h52.p()).a(h52.getReference());
        if (z10) {
            k70.a(h52, h53.getReference());
        }
    }

    public static void a(com.android.tools.r8.graph.H5 h52, C6842cy c6842cy) {
        c6842cy.f47222b = h52.getReference();
        c6842cy.f47225e = true;
    }

    public final com.android.tools.r8.graph.H5 a(final com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, final com.android.tools.r8.graph.L4 l42) {
        return this.f44358a.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58171X;
                return bVar;
            }
        }, c5035Df.a(), this.f44358a, new Consumer() {
            @Override
            public final void accept(Object obj) {
                T00.this.a(l42, h52, (com.android.tools.r8.synthesis.N) obj);
            }
        });
    }

    public final AbstractC4497i0 a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.synthesis.N n10, com.android.tools.r8.graph.A2 a22) {
        AbstractC4497i0 a10;
        if (h52.d().Q0().C0()) {
            a10 = h52.d().Q0();
            com.android.tools.r8.graph.A2 reference = h52.getReference();
            if (!h52.d().F0()) {
                n10.f58118h = reference;
            } else {
                n10.getClass();
            }
        } else {
            a10 = h52.d().Q0().a(a22, true, h52.getReference(), h52.d().F0(), this.f44359b);
        }
        if (!h52.getAccessFlags().n()) {
            C4516j1.a(a10, a22.w0(), this.f44358a);
        }
        return a10;
    }

    public final void a() {
        this.f44358a.r().a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                T00.this.a((C11500x1) obj);
            }
        });
    }

    public final void a(final C11500x1 c11500x1) {
        this.f44362e.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                T00.a(C11500x1.this, (com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    public static void a(C11500x1 c11500x1, com.android.tools.r8.graph.H5 h52) {
        c11500x1.a(h52);
        c11500x1.a(new AW0(), h52);
    }
}
