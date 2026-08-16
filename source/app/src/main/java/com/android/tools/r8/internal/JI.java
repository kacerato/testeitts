package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4463g4;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.synthesis.S;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

public final class JI {

    public static final boolean f41370e = true;

    public final C4798y f41371a;

    public final C10404yI f41372b;

    public final ConcurrentHashMap f41373c = new ConcurrentHashMap();

    public final int f41374d;

    public JI(C4798y c4798y, int i10) {
        this.f41371a = c4798y;
        this.f41372b = new C10404yI(c4798y);
        this.f41374d = i10;
    }

    public static II b(com.android.tools.r8.graph.H2 h22) {
        return new II();
    }

    public final void a(com.android.tools.r8.graph.H5 h52, AbstractC7103ea abstractC7103ea) {
        boolean z10 = f41370e;
        if (!z10 && this.f41371a.m()) {
            throw new AssertionError();
        }
        if (h52.getHolder().isInterface()) {
            if (this.f41374d == 2) {
                if (this.f41371a.E().x().f45396a.f53764a && !h52.d().f37314g.D() && this.f41372b.c(h52.p()) && this.f41372b.a(h52.getHolder(), h52) != null) {
                    C10404yI c10404yI = this.f41372b;
                    C4516j1 d10 = h52.d();
                    c10404yI.getClass();
                    if (C10404yI.a(d10)) {
                        a(h52, this.f41372b.a(h52, (AI) abstractC7103ea));
                    }
                    if (a(h52)) {
                        return;
                    }
                    a(h52.getHolder()).f41054d = true;
                    return;
                }
                return;
            }
            if (h52.d().f37314g.D()) {
                if (h52.d().f1()) {
                    return;
                }
                a(h52.getHolder()).f41053c = true;
                a(h52, this.f41372b.b(h52, abstractC7103ea));
                return;
            }
            if (!z10 && !h52.d().J0()) {
                throw new AssertionError();
            }
            C10404yI c10404yI2 = this.f41372b;
            C4516j1 d11 = h52.d();
            c10404yI2.getClass();
            if (C10404yI.a(d11)) {
                a(h52, this.f41372b.a(h52, (AI) abstractC7103ea));
            }
            if (a(h52)) {
                return;
            }
            a(h52.getHolder()).f41054d = true;
        }
    }

    public final void c(com.android.tools.r8.graph.H2 h22) {
        if (!f41370e && this.f41371a.m()) {
            throw new AssertionError();
        }
        ArrayList arrayList = new ArrayList();
        C9406sK M12 = h22.M1();
        CK a10 = JK.a(M12.f52337b.iterator(), M12.f52338c);
        while (a10.f43396b.hasNext()) {
            com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) a10.a(a10.f43396b.next());
            if (a(h52)) {
                arrayList.add(h52.d());
            }
        }
        if (arrayList.size() < h22.b0().e()) {
            h22.a((C4516j1[]) arrayList.toArray(C4516j1.f37310u));
        } else {
            if (f41370e) {
                return;
            }
            throw new AssertionError((Object) ("Interface " + ((Object) h22) + " was analysed as having bridges to remove, but no bridges were found."));
        }
    }

    public static void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.synthesis.W w10) {
        w10.f58292k = h22.f36249i;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0161  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        com.android.tools.r8.graph.H2 holder;
        C4516j1 d10;
        boolean z10;
        II a10;
        boolean z11 = f41370e;
        if (!z11 && !C4463g4.a(h53.d().Q0())) {
            throw new AssertionError();
        }
        if (h52.d().Q0() != null) {
            AbstractC4497i0 Q02 = h52.d().Q0();
            if (!z11 && Q02 == null) {
                throw new AssertionError();
            }
            if (Q02.v0()) {
                for (AbstractC5635Np abstractC5635Np : Q02.C().f36463j) {
                    if (abstractC5635Np instanceof C7984jq) {
                        throw new C5325If(h52.f36317b.f36244d, "One or more instruction is preventing default interface method from being desugared: " + h52.r(), null);
                    }
                }
                holder = h52.getHolder();
                d10 = h52.d();
                z10 = f41370e;
                if (z10 && d10.i1()) {
                    throw new AssertionError();
                }
                if (z10 && d10.w0() && !d10.G0() && !d10.H0()) {
                    throw new AssertionError((Object) ("Static interface method " + h52.r() + " is expected to either be public or private in " + ((Object) h52.f36317b.f36244d)));
                }
                if (d10.w0() && !d10.G0()) {
                    if (!z10) {
                        this.f41372b.getClass();
                        if (!C10404yI.a(d10)) {
                            throw new AssertionError();
                        }
                    }
                    II a11 = a(holder);
                    C4516j1 d11 = h52.d();
                    C4516j1 d12 = h53.d();
                    if (a11.f41051a == null) {
                        a11.f41051a = new IdentityHashMap();
                    }
                    a11.f41051a.put(d11, d12);
                } else {
                    a(holder).f41053c = true;
                    a10 = a(holder);
                    com.android.tools.r8.graph.A2 reference = h52.getReference();
                    com.android.tools.r8.graph.A2 reference2 = h53.getReference();
                    if (a10.f41052b == null) {
                        a10.f41052b = new IdentityHashMap();
                    }
                    a10.f41052b.put(reference, reference2);
                }
                if (d10.a1()) {
                    C4516j1 d13 = h53.d();
                    C5313Ib P02 = d10.P0();
                    d13.L0();
                    if (!C4516j1.f37313x && P02 == null) {
                        throw new AssertionError();
                    }
                    d13.f37321n = (C5313Ib) C40.c(d13.f37321n, P02);
                }
                AbstractC4497i0 a12 = d10.Q0().a(h53.getReference(), h53.d().F0(), h52.getReference(), h52.d().F0(), this.f41371a.b());
                if (!d10.w0()) {
                    C4516j1.a(a12, h53.getReference().w0(), this.f41371a);
                }
                h53.a(a12, this.f41371a);
                h52.a(C4463g4.f37236e, this.f41371a);
                return;
            }
            if (!z11 && !Q02.t0()) {
                throw new AssertionError();
            }
            for (W9 w92 : Q02.V().E0()) {
                if ((w92 instanceof C7437ga) && ((C7437ga) w92).b(h52.p())) {
                    throw new C5325If(h52.f36317b.f36244d, "One or more instruction is preventing default interface method from being desugared: " + h52.r(), null);
                }
            }
            holder = h52.getHolder();
            d10 = h52.d();
            z10 = f41370e;
            if (z10) {
            }
            if (z10) {
            }
            if (d10.w0()) {
            }
            a(holder).f41053c = true;
            a10 = a(holder);
            com.android.tools.r8.graph.A2 reference3 = h52.getReference();
            com.android.tools.r8.graph.A2 reference22 = h53.getReference();
            if (a10.f41052b == null) {
            }
            a10.f41052b.put(reference3, reference22);
            if (d10.a1()) {
            }
            AbstractC4497i0 a122 = d10.Q0().a(h53.getReference(), h53.d().F0(), h52.getReference(), h52.d().F0(), this.f41371a.b());
            if (!d10.w0()) {
            }
            h53.a(a122, this.f41371a);
            h52.a(C4463g4.f37236e, this.f41371a);
            return;
        }
        throw new C5325If(h52.f36317b.f36244d, "Code is missing for private instance interface method: " + h52.getReference().j0(), null);
    }

    public final boolean a(com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.E0 g10;
        if (!f41370e && this.f41371a.m()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.H2 holder = h52.getHolder();
        if (!h52.getAccessFlags().I()) {
            return true;
        }
        if (this.f41371a.E().M()) {
            return false;
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        HashSet hashSet = new HashSet();
        com.android.tools.r8.graph.M2 m22 = holder.f36247g;
        if (m22 != null) {
            arrayDeque.add(new C8699o50(holder, m22));
        }
        for (com.android.tools.r8.graph.M2 m23 : holder.f36248h.f36675b) {
            arrayDeque.add(new C8699o50(holder, m23));
        }
        while (!arrayDeque.isEmpty()) {
            C8699o50 c8699o50 = (C8699o50) arrayDeque.pop();
            com.android.tools.r8.graph.M2 m24 = (com.android.tools.r8.graph.M2) c8699o50.b();
            com.android.tools.r8.graph.E0 e02 = (com.android.tools.r8.graph.E0) c8699o50.a();
            if (e02.e0()) {
                C4477h f10 = this.f41371a.f();
                g10 = e02.d0();
                f10.getClass();
                if (g10.f36245e != m24) {
                    com.android.tools.r8.graph.E0 g11 = f10.g(m24);
                    if (g11 != null && !g11.f0() && !g10.f0()) {
                        f10.a(g10, g11);
                    }
                    g10 = g11;
                }
            } else {
                g10 = this.f41371a.g(m24);
            }
            if (g10 != null && hashSet.add(g10.f36245e)) {
                if (g10.c(h52.getReference()) != null) {
                    return false;
                }
                com.android.tools.r8.graph.M2 m25 = g10.f36247g;
                if (m25 != null) {
                    arrayDeque.add(new C8699o50(g10, m25));
                }
                for (com.android.tools.r8.graph.M2 m26 : g10.f36248h.f36675b) {
                    arrayDeque.add(new C8699o50(g10, m26));
                }
            }
        }
        return true;
    }

    public final HI a() {
        int i10 = HI.f40731o;
        final GI gi2 = new GI();
        this.f41373c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                JI.this.a(gi2, (com.android.tools.r8.graph.H2) obj, (II) obj2);
            }
        });
        C4798y c4798y = this.f41371a;
        if (gi2.f40060a.f49890b.isEmpty() && gi2.f40459b.f51964b.isEmpty()) {
            return null;
        }
        return new HI(c4798y, gi2.f40060a, gi2.f40459b);
    }

    public static void a(GI gi2, C4516j1 c4516j1, C4516j1 c4516j12) {
        boolean z10 = f41370e;
        if (!z10 && !C4463g4.a(c4516j1.Q0())) {
            throw new AssertionError();
        }
        if (!z10 && C4463g4.a(c4516j12.Q0())) {
            throw new AssertionError();
        }
        c4516j1.f37314g.a(1024);
        c4516j1.L0();
        c4516j1.f37317j = null;
        gi2.f40459b.f51964b.a(c4516j1.getReference(), c4516j12.getReference(), true);
    }

    public final II a(com.android.tools.r8.graph.H2 h22) {
        return (II) this.f41373c.computeIfAbsent(h22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return JI.b((com.android.tools.r8.graph.H2) obj);
            }
        });
    }

    public final void a(final BiConsumer biConsumer) {
        this.f41373c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                JI.a(BiConsumer.this, (com.android.tools.r8.graph.H2) obj, (II) obj2);
            }
        });
    }

    public static void a(BiConsumer biConsumer, com.android.tools.r8.graph.H2 h22, II ii2) {
        IdentityHashMap identityHashMap = ii2.f41052b;
        if (identityHashMap != null) {
            identityHashMap.forEach(biConsumer);
        }
    }

    public final void a(final GI gi2, com.android.tools.r8.graph.H2 h22, II ii2) {
        if (ii2.f41053c || this.f41371a.m()) {
            C4516j1 L02 = h22.L0();
            com.android.tools.r8.graph.N4 b02 = h22.b0();
            if (L02 != null) {
                b02.a(new C4516j1[]{L02});
            } else {
                b02.getClass();
                b02.f36639c = C4516j1.f37311v;
                b02.f36638b.a();
            }
        }
        IdentityHashMap identityHashMap = ii2.f41051a;
        if (identityHashMap != null) {
            identityHashMap.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    JI.a(GI.this, (C4516j1) obj, (C4516j1) obj2);
                }
            });
        }
        IdentityHashMap identityHashMap2 = ii2.f41052b;
        if (identityHashMap2 != null) {
            Objects.requireNonNull(gi2);
            identityHashMap2.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    GI.this.a((com.android.tools.r8.graph.A2) obj, (com.android.tools.r8.graph.A2) obj2);
                }
            });
        }
        if (ii2.f41054d) {
            if (!f41370e && this.f41371a.m()) {
                throw new AssertionError();
            }
            c(h22);
        }
    }

    public static com.android.tools.r8.graph.H5 a(final com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.I2 i22, C4798y c4798y, Consumer consumer, Consumer consumer2) {
        return c4798y.f38408a.g().a(l22, i22, new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58183j;
                return bVar;
            }
        }, h22, c4798y, new Consumer() {
            @Override
            public final void accept(Object obj) {
                JI.a(com.android.tools.r8.graph.H2.this, (com.android.tools.r8.synthesis.W) obj);
            }
        }, consumer, consumer2);
    }
}
