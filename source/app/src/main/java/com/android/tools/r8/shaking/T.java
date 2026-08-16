package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.AbstractC4401d;
import com.android.tools.r8.graph.C4382c;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4594n3;
import com.android.tools.r8.graph.C4613o3;
import com.android.tools.r8.graph.C4735uc;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC8374m80;
import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C5076Dz;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5467Kr0;
import com.android.tools.r8.internal.C5573Mn;
import com.android.tools.r8.internal.C5576Mo0;
import com.android.tools.r8.internal.C5756Pr0;
import com.android.tools.r8.internal.C6558bE;
import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.internal.C7040e80;
import com.android.tools.r8.internal.C7207f80;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C7333fv;
import com.android.tools.r8.internal.C7905jK0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C9225rE;
import com.android.tools.r8.internal.C9875v8;
import com.android.tools.r8.internal.EW;
import com.android.tools.r8.internal.FW;
import com.android.tools.r8.internal.InterfaceC10593zT;
import com.android.tools.r8.internal.TU;
import com.android.tools.r8.ir.optimize.C10696a;
import com.android.tools.r8.ir.optimize.C10726q;
import com.android.tools.r8.ir.optimize.C10732x;
import com.android.tools.r8.shaking.N;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class T extends S {

    public static final boolean f56983h = true;

    public final C4798y f56984a;

    public final N f56985b;

    public final N.a f56986c;

    public final C8570nJ f56987d;

    public final U f56988e;

    public final C7040e80 f56989f = C7040e80.k();

    public final C7207f80 f56990g = new C7207f80(new IdentityHashMap());

    public T(C4798y c4798y, N n10, N.a aVar) {
        this.f56984a = c4798y;
        this.f56985b = n10;
        this.f56986c = aVar;
        this.f56987d = c4798y.E();
        this.f56988e = new U(c4798y);
    }

    @Override
    public final boolean a(C4554l1 c4554l1, com.android.tools.r8.graph.D3 d32, com.android.tools.r8.graph.H5 h52, J j10, K k10) {
        com.android.tools.r8.graph.F5 r10;
        A0 b02;
        R0 r02 = R0.f56919a;
        if ((!c4554l1.getType().P0() && !this.f56987d.F().f50859a0) || (r10 = d32.r()) == null) {
            return false;
        }
        boolean n10 = r10.getAccessFlags().n();
        J j11 = J.f56639d;
        if (n10 != (j10 == j11 || j10 == J.f56640e)) {
            b(r10);
            return false;
        }
        if (d32.a(h52, this.f56984a).b()) {
            b(r10);
            return false;
        }
        if (h52.getHolder().I1()) {
            b(r10);
            return false;
        }
        if (j10.a()) {
            C11295l c11295l = this.f56984a.f38412e;
            c11295l.getClass();
            if (!c11295l.a(r10.getReference()).f40088b.isUnknown()) {
                b(r10);
                return false;
            }
            if (r10.getAccessFlags().n() && r10.d().L0()) {
                b(r10);
                return false;
            }
        }
        if (!c(r10)) {
            b(r10);
            return false;
        }
        K k11 = k10.f56662a;
        int ordinal = j10.ordinal();
        if (ordinal == 0) {
            b02 = new B0(c4554l1, h52, k11);
        } else if (ordinal == 1) {
            b02 = new C0(c4554l1, h52, k11);
        } else if (ordinal == 2) {
            b02 = new I0(c4554l1, h52, k11);
        } else if (ordinal == 3) {
            b02 = new J0(c4554l1, h52, k11);
        } else {
            throw new C5417Jv0();
        }
        C7040e80 c7040e80 = this.f56989f;
        Function a10 = TU.a(new C7905jK0());
        c7040e80.getClass();
        ((Set) c7040e80.a(a10, new C7333fv(C5573Mn.f42399a, r10))).add(b02);
        if (j10 == j11 || j10 == J.f56640e) {
            if (this.f56985b.f56786b.b() && r10.getHolder() != h52.getHolder()) {
                return false;
            }
            S0 s02 = this.f56985b.f56795f0;
            com.android.tools.r8.graph.H2 holder = r10.getHolder();
            if (s02.f56953c != null) {
                s02.a(s02.a(h52.getReference()), s02.a(holder.f36245e), C5076Dz.a.f39718l);
            }
            this.f56985b.f56776S.a(r10.getHolder(), r02);
            this.f56985b.f56776S.c(r10.getHolder());
        }
        return true;
    }

    public final void b(com.android.tools.r8.graph.F5 f52) {
        Set set = (Set) this.f56989f.f43368b.remove(new C7333fv(C5573Mn.f42399a, f52));
        if (set != null) {
            this.f56985b.f56776S.a(set);
        }
        this.f56990g.a(f52);
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [java.util.Map, java.lang.Object] */
    public final boolean c(com.android.tools.r8.graph.F5 f52) {
        com.android.tools.r8.graph.H2 a10;
        L l10 = this.f56985b.f56775R;
        l10.getClass();
        if (l10.f56689a.contains(f52.d())) {
            return false;
        }
        boolean z10 = f56983h;
        if (!z10) {
            C11500x1 c11500x1 = this.f56985b.f56780W;
            c11500x1.getClass();
            if (!c11500x1.a(f52.d(), f52.getHolder()).equals(C11382q1.f57709o)) {
                throw new AssertionError();
            }
        }
        if (!z10) {
            C11500x1 c11500x12 = this.f56985b.f56780W;
            c11500x12.getClass();
            if (c11500x12.a(f52.d(), f52.getHolder()).d(this.f56987d) && !this.f56987d.S()) {
                throw new AssertionError();
            }
        }
        C4613o3 c4613o3 = (C4613o3) this.f56985b.f56810n.f37507a.get(f52.getReference());
        if (!c4613o3.d() && (c4613o3.f37537b & 2) == 0 && !c4613o3.g()) {
            int i10 = c4613o3.f37537b;
            if ((i10 & 1) == 0 && (i10 & 32) == 0 && !this.f56985b.a(f52, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return T.a((C11365p1) obj);
                }
            })) {
                if (!this.f56987d.T()) {
                    if (!z10 && !this.f56987d.S()) {
                        throw new AssertionError();
                    }
                    if (!this.f56985b.e(f52.getHolder())) {
                        return false;
                    }
                }
                if (c4613o3.f() && f52.getReference().getType().Q0()) {
                    com.android.tools.r8.graph.M2 a11 = f52.getReference().getType().a(this.f56984a.b());
                    if (a11.I0()) {
                        C4798y c4798y = this.f56984a;
                        if (a11 == c4798y.b().f38068i2 ? true : R2.a(c4798y, this.f56985b.f56812o, a11)) {
                            return false;
                        }
                    }
                }
                if (!z10) {
                    AbstractC4401d abstractC4401d = c4613o3.f37538c;
                    abstractC4401d.getClass();
                    if (abstractC4401d instanceof C4382c) {
                        throw new AssertionError();
                    }
                }
                if (!z10) {
                    AbstractC4401d abstractC4401d2 = c4613o3.f37539d;
                    abstractC4401d2.getClass();
                    if (abstractC4401d2 instanceof C4382c) {
                        throw new AssertionError();
                    }
                }
                com.android.tools.r8.graph.M2 type = f52.getReference().getType();
                if (c4613o3.f37538c.c() || c4613o3.f37539d.c() || !(!type.I0() || (a10 = com.android.tools.r8.graph.H2.a(this.f56984a.g(type))) == null || this.f56985b.f56812o.d(a10))) {
                    return !this.f56990g.f47879b.containsKey(f52.getReference());
                }
                return false;
            }
        }
        return false;
    }

    @Override
    public final void a(com.android.tools.r8.graph.F5 f52) {
        b(f52);
    }

    @Override
    public final boolean a(final L0 l02, C8659ns0 c8659ns0) {
        c8659ns0.b("Process deferred tracing");
        boolean a10 = this.f56989f.a(new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return T.this.a(l02, (com.android.tools.r8.graph.F5) obj, (Set) obj2);
            }
        });
        c8659ns0.d();
        return a10;
    }

    public final boolean a(L0 l02, com.android.tools.r8.graph.F5 f52, Set set) {
        if (c(f52)) {
            return false;
        }
        l02.a(set);
        return true;
    }

    @Override
    public final void a(ExecutorService executorService) {
        final C4594n3 c4594n3 = this.f56985b.f56810n;
        final AbstractC8374m80 c10 = AbstractC8374m80.c();
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        this.f56989f.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                T.a(C4594n3.this, identityHashMap, c10, (com.android.tools.r8.graph.F5) obj, (Set) obj2);
            }
        });
        this.f56989f.f43368b.clear();
        final ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        C5467Kr0.a(c10, new InterfaceC10593zT() {
            @Override
            public final void accept(Object obj, int i10) {
                T.this.a(concurrentHashMap, identityHashMap, (com.android.tools.r8.graph.H5) obj, i10);
            }
        }, this.f56984a.E().G(), executorService, C5467Kr0.a.f41789c);
        concurrentHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                T.this.a((com.android.tools.r8.graph.H2) obj, (AbstractC8374m80) obj2);
            }
        });
        if (!f56983h && !this.f56985b.f56776S.f56693b.isEmpty()) {
            throw new AssertionError();
        }
        identityHashMap.values().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                T.a(C4594n3.this, (com.android.tools.r8.graph.F5) obj);
            }
        });
    }

    public static void a(C4594n3 c4594n3, final Map map, AbstractC8374m80 abstractC8374m80, final com.android.tools.r8.graph.F5 f52, Set set) {
        C4613o3 c4613o3 = (C4613o3) c4594n3.f37507a.get(f52.getReference());
        map.put(f52.getReference(), f52);
        Objects.requireNonNull(abstractC8374m80);
        C4735uc c4735uc = new C4735uc(abstractC8374m80);
        c4613o3.f37538c.a(c4735uc);
        c4613o3.f37539d.a(c4735uc);
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                Map.this.put((C4554l1) obj, f52);
            }
        };
        Set c10 = AbstractC5513Ll0.c();
        c4613o3.a(consumer, c4613o3.f37538c, c10);
        c4613o3.a(consumer, c4613o3.f37539d, c10);
    }

    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H5 h52) {
        this.f56985b.d(h22.getType(), h52);
    }

    public final void a(final com.android.tools.r8.graph.H2 h22, AbstractC8374m80 abstractC8374m80) {
        abstractC8374m80.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                T.this.a(h22, (com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    public static void a(C4594n3 c4594n3, com.android.tools.r8.graph.F5 f52) {
        c4594n3.f37507a.remove(f52.getReference());
    }

    public final void a(Map map, Map map2, com.android.tools.r8.graph.H5 h52, int i10) {
        EW.a b10;
        com.android.tools.r8.internal.Y5 y52;
        com.android.tools.r8.internal.Y5 y53;
        C10340xw0 a10;
        com.android.tools.r8.internal.Y5 y54;
        com.android.tools.r8.internal.Y5 y55;
        C10340xw0 a11;
        if (this.f56986c.b()) {
            C4798y c4798y = this.f56984a;
            boolean z10 = EW.f39887a;
            if (!c4798y.m()) {
                b10 = EW.a(c4798y);
            } else {
                if (!z10 && !c4798y.H().b()) {
                    throw new AssertionError();
                }
                b10 = new EW.a(FW.f40236b);
            }
        } else {
            b10 = EW.b(this.f56984a);
        }
        C7215fB a12 = h52.a(this.f56984a, b10);
        new C10726q(this.f56984a).a(a12, C8659ns0.c());
        U u10 = this.f56988e;
        u10.getClass();
        com.android.tools.r8.graph.H5 j10 = a12.j();
        C10696a c10696a = new C10696a();
        com.android.tools.r8.internal.Z5 u11 = a12.u();
        boolean z11 = false;
        while (u11.f46159b.hasNext()) {
            com.android.tools.r8.internal.W5 w52 = (com.android.tools.r8.internal.W5) u11.f46159b.next();
            u11.f46160c = w52;
            com.android.tools.r8.internal.Y5 I10 = w52.I();
            boolean z12 = z11;
            while (I10.hasNext()) {
                AbstractC10561zE next = I10.next();
                int r22 = next.r2();
                boolean z13 = true;
                if (r22 != 28) {
                    if (r22 == 30) {
                        y54 = I10;
                        C9225rE m10 = next.m();
                        if (((com.android.tools.r8.graph.F5) map2.get(m10.getField())) != null) {
                            if (!m10.n().O()) {
                                y55 = y54;
                                y55.a(u10.f57009a, m10.n());
                            } else {
                                y55 = y54;
                                y55.i();
                            }
                            y53 = y55;
                        }
                        I10 = y54;
                        y53 = I10;
                        z13 = false;
                    } else if (r22 == 59) {
                        y54 = I10;
                        C5576Mo0 K02 = next.K0();
                        com.android.tools.r8.graph.F5 f52 = (com.android.tools.r8.graph.F5) map2.get(K02.getField());
                        if (f52 != null) {
                            if (K02.f1()) {
                                y54.previous();
                                if (f52.getReference().getType().Q0()) {
                                    a11 = y54.a(a12, u10.f57009a.E(), 0L, AbstractC8999pu0.m());
                                } else {
                                    a11 = y54.a(a12, u10.f57009a.E(), 0L, K02.a());
                                }
                                K02.d().a(a11, c10696a);
                                y54.next();
                            }
                            y53 = y54;
                            u10.a(a12, y53, j10, map, f52);
                        }
                        I10 = y54;
                        y53 = I10;
                        z13 = false;
                    } else if (r22 == 60) {
                        com.android.tools.r8.graph.F5 f53 = (com.android.tools.r8.graph.F5) map2.get(next.L0().getField());
                        if (f53 != null) {
                            u10.a(a12, I10, j10, map, f53);
                            y53 = I10;
                        }
                        y53 = I10;
                        z13 = false;
                    }
                    z12 |= z13;
                    I10 = y53;
                } else {
                    C6558bE c10 = next.c();
                    com.android.tools.r8.graph.F5 f54 = (com.android.tools.r8.graph.F5) map2.get(c10.getField());
                    if (f54 != null) {
                        if (c10.f1()) {
                            I10.previous();
                            if (f54.getReference().getType().Q0()) {
                                y52 = I10;
                                a10 = I10.a(a12, u10.f57009a.E(), 0L, AbstractC8999pu0.m());
                            } else {
                                y52 = I10;
                                a10 = y52.a(a12, u10.f57009a.E(), 0L, c10.a());
                            }
                            c10.d().a(a10, c10696a);
                            y52.next();
                        } else {
                            y52 = I10;
                        }
                        if (!c10.n().O()) {
                            y53 = y52;
                            y53.a(u10.f57009a, c10.n());
                        } else {
                            y53 = y52;
                            y53.i();
                        }
                        z12 |= z13;
                        I10 = y53;
                    }
                    y53 = I10;
                    z13 = false;
                    z12 |= z13;
                    I10 = y53;
                }
            }
            z11 = z12;
        }
        c10696a.a(u10.f57009a, a12, C6628bi.b());
        if (z11) {
            a12.x();
        }
        new C5756Pr0(this.f56984a).a(a12, C8659ns0.c());
        this.f56988e.f57010b.a(a12, C8659ns0.c());
        C10732x.a((C4798y<?>) this.f56984a, a12);
        h52.a(b10.a(this.f56984a, this.f56988e.f57010b).a(a12, C9875v8.b(), C8659ns0.c()), this.f56984a);
    }

    public static boolean a(C11365p1 c11365p1) {
        return (c11365p1.f57790a.f() && c11365p1.f57790a.g()) ? false : true;
    }
}
