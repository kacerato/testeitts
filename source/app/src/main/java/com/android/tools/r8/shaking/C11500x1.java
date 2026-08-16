package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AV;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC6483ap0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.InterfaceC7495gt0;
import com.android.tools.r8.internal.R00;
import com.android.tools.r8.internal.TU;
import com.android.tools.r8.internal.V00;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import u.C15556y0;

public final class C11500x1 extends AbstractC11516y1 {

    public static final boolean f57961j = true;

    public final IdentityHashMap f57962b;

    public final IdentityHashMap f57963c;

    public final IdentityHashMap f57964d;

    public final Map f57965e;

    public final Map f57966f;

    public final Map f57967g;

    public AV f57968h;

    public final AbstractC11483w1 f57969i;

    public C11500x1(IdentityHashMap identityHashMap, IdentityHashMap identityHashMap2, IdentityHashMap identityHashMap3, Map map, Map map2, Map map3, AV av, AbstractC11483w1 abstractC11483w1) {
        this.f57962b = identityHashMap;
        this.f57963c = identityHashMap2;
        this.f57964d = identityHashMap3;
        this.f57965e = map;
        this.f57966f = map2;
        this.f57967g = map3;
        this.f57968h = av;
        this.f57969i = abstractC11483w1;
    }

    public final void a(Consumer consumer, com.android.tools.r8.graph.H5 h52) {
        I1 a10 = a(h52.getHolder(), h52.d());
        I1 i12 = I1.f56548C;
        if (a10.equals(i12)) {
            if (!f57961j && a10 != i12) {
                throw new AssertionError();
            }
        } else {
            H1 d10 = a10.d();
            consumer.accept(d10);
            I1 i13 = (I1) d10.l();
            if (a10.equals(i13)) {
                return;
            }
            this.f57963c.put(h52.getReference(), this.f57969i.a(i13));
        }
    }

    public final void b(final com.android.tools.r8.graph.O5 o52) {
        if (o52.a()) {
            this.f57962b.o().removeAll(o52.f36682e);
        }
        if (o52.a() || !o52.f36683f.isEmpty()) {
            this.f57964d.o().removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return com.android.tools.r8.graph.O5.this.a((C4554l1) obj);
                }
            });
        }
        if (o52.a() || !o52.f36683f.isEmpty() || !o52.f36684g.isEmpty()) {
            this.f57963c.o().removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return com.android.tools.r8.graph.O5.this.a((com.android.tools.r8.graph.A2) obj);
                }
            });
        }
        this.f57968h.a(o52);
    }

    public final IdentityHashMap c(final R00 r00, final C8570nJ c8570nJ, C8659ns0 c8659ns0) {
        c8659ns0.b("Rewrite field info");
        final IdentityHashMap identityHashMap = new IdentityHashMap(this.f57964d.size());
        this.f57964d.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11500x1.a(R00.this, c8570nJ, identityHashMap, (C4554l1) obj, (C11382q1) obj2);
            }
        });
        c8659ns0.d();
        return identityHashMap;
    }

    public final IdentityHashMap d(final R00 r00, final C8570nJ c8570nJ, C8659ns0 c8659ns0) {
        c8659ns0.b("Rewrite method info");
        final IdentityHashMap identityHashMap = new IdentityHashMap(this.f57963c.size());
        this.f57963c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11500x1.a(R00.this, c8570nJ, identityHashMap, (com.android.tools.r8.graph.A2) obj, (I1) obj2);
            }
        });
        c8659ns0.d();
        return identityHashMap;
    }

    public final void c(com.android.tools.r8.graph.H2 h22) {
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C11280k1) obj).o();
            }
        }, h22);
    }

    @Override
    public final void c(final Consumer consumer, final C8570nJ c8570nJ) {
        this.f57962b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11500x1.a(C8570nJ.this, consumer, (com.android.tools.r8.graph.M2) obj, (C11297l1) obj2);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.F5 f52, Consumer consumer) {
        C11382q1 a10 = a(f52.d(), f52.getHolder());
        C11382q1 c11382q1 = C11382q1.f57708n;
        if (a10.equals(c11382q1)) {
            if (!f57961j && a10 != c11382q1) {
                throw new AssertionError();
            }
        } else {
            C11365p1 c10 = a10.c();
            consumer.accept(c10);
            C11382q1 c11382q12 = (C11382q1) c10.l();
            if (a10.equals(c11382q12)) {
                return;
            }
            this.f57964d.put(f52.getReference(), this.f57969i.a(c11382q12));
        }
    }

    public final IdentityHashMap b(final R00 r00, final C8570nJ c8570nJ, C8659ns0 c8659ns0) {
        c8659ns0.b("Rewrite class info");
        final IdentityHashMap identityHashMap = new IdentityHashMap(this.f57962b.size());
        this.f57962b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11500x1.a(R00.this, c8570nJ, identityHashMap, (com.android.tools.r8.graph.M2) obj, (C11297l1) obj2);
            }
        });
        c8659ns0.d();
        return identityHashMap;
    }

    public final void b(com.android.tools.r8.graph.H2 h22) {
        this.f57962b.computeIfAbsent(h22.getType(), TU.a(new Supplier() {
            @Override
            public final Object get() {
                return Q4.f();
            }
        }));
    }

    public final void b(com.android.tools.r8.graph.H5 h52) {
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((H1) obj).o();
            }
        }, h52);
    }

    public final void a(com.android.tools.r8.graph.O5 o52) {
        if (o52.a()) {
            this.f57962b.o().removeAll(o52.f36682e);
        }
        if (!o52.f36683f.isEmpty()) {
            this.f57964d.o().removeAll(o52.f36683f);
        }
        if (o52.f36683f.isEmpty() && o52.f36684g.isEmpty()) {
            return;
        }
        this.f57963c.o().removeAll(o52.f36684g);
    }

    @Override
    public final void b(final Consumer consumer, final C8570nJ c8570nJ) {
        this.f57963c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11500x1.a(C8570nJ.this, consumer, (com.android.tools.r8.graph.A2) obj, (I1) obj2);
            }
        });
    }

    @Override
    public final C11500x1 a(final R00 r00, C8570nJ c8570nJ, C8659ns0 c8659ns0) {
        c8659ns0.b("Rewrite KeepInfoCollection");
        IdentityHashMap b10 = b(r00, c8570nJ, c8659ns0);
        IdentityHashMap d10 = d(r00, c8570nJ, c8659ns0);
        IdentityHashMap c10 = c(r00, c8570nJ, c8659ns0);
        Map a10 = a(this.f57965e, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C11500x1.a(R00.this, (com.android.tools.r8.graph.M2) obj);
            }
        }, new Supplier() {
            @Override
            public final Object get() {
                return C11297l1.e();
            }
        });
        Map map = this.f57966f;
        Objects.requireNonNull(r00);
        Map a11 = a(map, new Function() {
            @Override
            public final Object apply(Object obj) {
                return R00.this.a((C4554l1) obj);
            }
        }, new Supplier() {
            @Override
            public final Object get() {
                return C11382q1.d();
            }
        });
        Map a12 = a(this.f57967g, new Function() {
            @Override
            public final Object apply(Object obj) {
                return R00.this.b((com.android.tools.r8.graph.A2) obj);
            }
        }, new C11323ma());
        AV av = this.f57968h;
        C11500x1 c11500x1 = new C11500x1(b10, d10, c10, a10, a11, a12, new AV(av.f38625a.a(r00), av.f38626b), this.f57969i);
        c8659ns0.d();
        return c11500x1;
    }

    public static com.android.tools.r8.graph.M2 a(R00 r00, com.android.tools.r8.graph.M2 m22) {
        r00.getClass();
        com.android.tools.r8.graph.M2 c10 = r00.c(AbstractC5308Hz.g(), m22);
        if (c10.I0()) {
            return c10;
        }
        if (f57961j || c10.L0()) {
            return null;
        }
        throw new AssertionError();
    }

    public static void a(R00 r00, C8570nJ c8570nJ, Map map, com.android.tools.r8.graph.M2 m22, C11297l1 c11297l1) {
        r00.getClass();
        com.android.tools.r8.graph.M2 c10 = r00.c(AbstractC5308Hz.g(), m22);
        if (c8570nJ.m().f37884J1.a(c10)) {
            if (!f57961j && c11297l1.d(c8570nJ)) {
                throw new AssertionError();
            }
            return;
        }
        boolean z10 = f57961j;
        if (!z10 && !m22.a(c10) && c11297l1.d(c8570nJ) && !c11297l1.b(c8570nJ) && (!c8570nJ.V() || !c11297l1.f57496n)) {
            throw new AssertionError((Object) (m22.j0() + " -> " + c10.j0() + ": isPinned: " + c11297l1.d(c8570nJ) + ", isMinificationAllowed: " + c11297l1.b(c8570nJ) + ", isRepackagingAllowed: " + (c8570nJ.V() && c11297l1.f57496n)));
        }
        C11297l1 c11297l12 = (C11297l1) map.put(c10, c11297l1);
        if (!z10 && c11297l12 != null) {
            throw new AssertionError();
        }
    }

    public static void a(R00 r00, C8570nJ c8570nJ, Map map, C4554l1 c4554l1, C11382q1 c11382q1) {
        r00.getClass();
        C4554l1 d10 = r00.d(AbstractC5308Hz.g(), c4554l1);
        boolean z10 = f57961j;
        if (!z10 && !d10.f38298g.g(c4554l1.f38298g) && c11382q1.d(c8570nJ) && !c11382q1.b(c8570nJ)) {
            throw new AssertionError();
        }
        C11382q1 c11382q12 = (C11382q1) map.put(d10, c11382q1);
        if (!z10 && c11382q12 != null) {
            throw new AssertionError();
        }
    }

    public static void a(R00 r00, C8570nJ c8570nJ, Map map, com.android.tools.r8.graph.A2 a22, I1 i12) {
        r00.getClass();
        com.android.tools.r8.graph.A2 d10 = r00.d(AbstractC5308Hz.g(), a22);
        boolean z10 = f57961j;
        if (!z10 && i12.d(c8570nJ) && !i12.b(c8570nJ) && !d10.f38298g.g(a22.f38298g)) {
            throw new AssertionError();
        }
        if (!z10 && i12.d(c8570nJ) && d10.w0() != a22.w0() && (!i12.e(c8570nJ) || !(r00 instanceof V00))) {
            throw new AssertionError();
        }
        if (!z10 && i12.d(c8570nJ) && !AbstractC6483ap0.a(d10.x0().stream(), a22.x0().stream().map(new C11123ad(r00)), new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return Boolean.valueOf(((com.android.tools.r8.graph.M2) obj).equals((com.android.tools.r8.graph.M2) obj2));
            }
        }).allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean booleanValue;
                booleanValue = ((Boolean) obj).booleanValue();
                return booleanValue;
            }
        }) && (!i12.e(c8570nJ) || !(r00 instanceof V00))) {
            throw new AssertionError();
        }
        if (!z10 && i12.d(c8570nJ)) {
            if (!d10.z0().a(r00.c(AbstractC5308Hz.g(), a22.z0()))) {
                throw new AssertionError();
            }
        }
    }

    public static Map a(Map map, Function function, final Supplier supplier) {
        return TU.a(map, new C15556y0(), function, Function.identity(), new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                AbstractC11415s1 a10;
                AbstractC11415s1 abstractC11415s1 = (AbstractC11415s1) obj3;
                a10 = ((AbstractC11415s1) Supplier.this.get()).a((AbstractC11415s1) obj2).a(abstractC11415s1);
                return a10;
            }
        });
    }

    @Override
    public final void a(final C4798y c4798y, final BiConsumer biConsumer, final BiConsumer biConsumer2, final BiConsumer biConsumer3) {
        this.f57965e.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11500x1.a(C4798y.this, biConsumer, (com.android.tools.r8.graph.M2) obj, (C11280k1) obj2);
            }
        });
        this.f57966f.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11500x1.a(C4798y.this, biConsumer2, (C4554l1) obj, (C11365p1) obj2);
            }
        });
        this.f57967g.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11500x1.a(C4798y.this, biConsumer3, (com.android.tools.r8.graph.A2) obj, (H1) obj2);
            }
        });
    }

    public static void a(C4798y c4798y, BiConsumer biConsumer, com.android.tools.r8.graph.M2 m22, C11280k1 c11280k1) {
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(c4798y.g(m22));
        if (a10 != null) {
            biConsumer.accept(a10, c11280k1);
        }
    }

    public static void a(C4798y c4798y, BiConsumer biConsumer, C4554l1 c4554l1, C11365p1 c11365p1) {
        com.android.tools.r8.graph.F5 c10 = com.android.tools.r8.graph.H2.a(c4798y.g(c4554l1.s0())).c(c4554l1);
        if (c10 != null) {
            biConsumer.accept(c10, c11365p1);
        }
    }

    public static void a(C4798y c4798y, BiConsumer biConsumer, com.android.tools.r8.graph.A2 a22, H1 h12) {
        com.android.tools.r8.graph.H5 e10 = com.android.tools.r8.graph.H2.a(c4798y.g(a22.s0())).e(a22);
        if (e10 != null) {
            biConsumer.accept(e10, h12);
        }
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52) {
        if (!f57961j && this.f57963c.containsKey(h52.getReference())) {
            throw new AssertionError();
        }
        this.f57963c.put(h52.getReference(), T4.f56998F);
    }

    public final void a(AbstractC11516y1 abstractC11516y1) {
        new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11500x1.this.a((C11500x1) obj);
            }
        }.accept((C11500x1) abstractC11516y1);
    }

    public final void a(C11500x1 c11500x1) {
        c11500x1.f57962b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11500x1.this.a((com.android.tools.r8.graph.M2) obj, (C11297l1) obj2);
            }
        });
        c11500x1.f57963c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11500x1.this.a((com.android.tools.r8.graph.A2) obj, (I1) obj2);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.M2 m22, C11297l1 c11297l1) {
        if (c11297l1 instanceof Q4) {
            if (!f57961j && this.f57962b.containsKey(m22)) {
                throw new AssertionError();
            }
            this.f57962b.put(m22, c11297l1);
        }
    }

    public final void a(com.android.tools.r8.graph.A2 a22, I1 i12) {
        if (i12 instanceof T4) {
            if (!f57961j && this.f57963c.containsKey(a22)) {
                throw new AssertionError();
            }
            this.f57963c.put(a22, i12);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final C11297l1 a(com.android.tools.r8.graph.H2 h22) {
        return (C11297l1) this.f57962b.getOrDefault(h22.f36245e, C11297l1.f57491t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final I1 a(com.android.tools.r8.graph.H2 h22, C4516j1 c4516j1) {
        if (f57961j || c4516j1.B0() == h22.f36245e) {
            return (I1) this.f57963c.getOrDefault(c4516j1.getReference(), I1.f56549D);
        }
        throw new AssertionError();
    }

    public final void a(com.android.tools.r8.graph.H5 h52, final H1 h12) {
        AbstractC11398r1 abstractC11398r1 = h12.f57790a;
        if (abstractC11398r1.b(abstractC11398r1.c())) {
            return;
        }
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((H1) obj).a(H1.this);
            }
        }, h52);
        ((H1) this.f57967g.computeIfAbsent(h52.getReference(), TU.a(new C11323ma()))).a(h12);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final C11382q1 a(C4460g1 c4460g1, com.android.tools.r8.graph.H2 h22) {
        if (f57961j || c4460g1.B0() == h22.f36245e) {
            return (C11382q1) this.f57964d.getOrDefault(c4460g1.getReference(), C11382q1.f57709o);
        }
        throw new AssertionError();
    }

    public final void a(Consumer consumer, com.android.tools.r8.graph.H2 h22) {
        C11297l1 a10 = a(h22);
        C11297l1 c11297l1 = C11297l1.f57490s;
        if (a10.equals(c11297l1)) {
            if (!f57961j && a10 != c11297l1) {
                throw new AssertionError();
            }
        } else {
            C11280k1 d10 = a10.d();
            consumer.accept(d10);
            C11297l1 c11297l12 = (C11297l1) d10.l();
            if (a10.equals(c11297l12)) {
                return;
            }
            this.f57962b.put(h22.f36245e, this.f57969i.a(c11297l12));
        }
    }

    public final void a(com.android.tools.r8.graph.F5 f52) {
        a(f52, new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C11365p1) obj).o();
            }
        });
    }

    @Override
    public final C11500x1 a(Consumer consumer) {
        consumer.accept(this);
        return this;
    }

    @Override
    public final void a(final C8570nJ c8570nJ, final Set set) {
        this.f57962b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11500x1.a(C8570nJ.this, set, (com.android.tools.r8.graph.M2) obj, (C11297l1) obj2);
            }
        });
    }

    public static void a(C8570nJ c8570nJ, Set set, com.android.tools.r8.graph.M2 m22, C11297l1 c11297l1) {
        if (!f57961j && c11297l1.d(c8570nJ) && !set.contains(m22)) {
            throw new AssertionError();
        }
    }

    public static void a(C8570nJ c8570nJ, Consumer consumer, com.android.tools.r8.graph.M2 m22, C11297l1 c11297l1) {
        if (c11297l1.d(c8570nJ)) {
            consumer.accept(m22);
        }
    }

    public static void a(C8570nJ c8570nJ, Consumer consumer, com.android.tools.r8.graph.A2 a22, I1 i12) {
        if (i12.d(c8570nJ)) {
            consumer.accept(a22);
        }
    }

    @Override
    public final void a(final Consumer consumer, final C8570nJ c8570nJ) {
        this.f57964d.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11500x1.a(C8570nJ.this, consumer, (C4554l1) obj, (C11382q1) obj2);
            }
        });
    }

    public static void a(C8570nJ c8570nJ, Consumer consumer, C4554l1 c4554l1, C11382q1 c11382q1) {
        if (c11382q1.d(c8570nJ)) {
            consumer.accept(c4554l1);
        }
    }
}
