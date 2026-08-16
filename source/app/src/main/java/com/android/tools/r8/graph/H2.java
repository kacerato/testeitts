package com.android.tools.r8.graph;

import com.android.tools.r8.C10895l2;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.N4;
import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.AbstractC6114Vx;
import com.android.tools.r8.internal.AbstractC6333Zs0;
import com.android.tools.r8.internal.AbstractC9907vK;
import com.android.tools.r8.internal.C40;
import com.android.tools.r8.internal.C5313Ib;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C6057Ux;
import com.android.tools.r8.internal.C6276Ys0;
import com.android.tools.r8.internal.C9406sK;
import com.android.tools.r8.internal.EnumC5372Jb0;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.internal.InterfaceC5422Jy;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import com.android.tools.r8.internal.RR;
import com.android.tools.r8.kotlin.AbstractC10752b0;
import com.android.tools.r8.kotlin.InterfaceC10835p;
import com.android.tools.r8.naming.AbstractC10992r0;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11451u3;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public class H2 extends E0 implements D5, I5, Supplier<H2>, InterfaceC5580Mq0<H2> {

    public static final H2[] f36363B = new H2[0];

    public static final boolean f36364C = true;

    public com.android.tools.r8.synthesis.L f36365A;

    public final ProgramResource.Kind f36366u;

    public C5313Ib f36367v;

    public boolean f36368w;

    public InterfaceC10835p f36369x;

    public final EnumC5372Jb0 f36370y;

    public final a f36371z;

    @FunctionalInterface
    public interface a {
        long a(H2 h22);
    }

    public H2(M2 m22, ProgramResource.Kind kind, Origin origin, Q q10, M2 m23, O2 o22, L2 l22, C4615o5 c4615o5, List list, List list2, List list3, C4500i3 c4500i3, List list4, H3.b bVar, C4723u0 c4723u0, InterfaceC4651q3 interfaceC4651q3, N4.a aVar, boolean z10, a aVar2, EnumC5372Jb0 enumC5372Jb0, com.android.tools.r8.synthesis.L l10) {
        super(l22, o22, q10, m23, m22, interfaceC4651q3, aVar, c4615o5, list, list2, list3, c4500i3, list4, bVar, c4723u0, origin, z10);
        this.f36367v = null;
        this.f36368w = false;
        this.f36369x = AbstractC10752b0.f55256b;
        boolean z11 = f36364C;
        if (!z11 && aVar2 == null) {
            throw new AssertionError();
        }
        if (!z11 && c4723u0 == null) {
            throw new AssertionError();
        }
        this.f36366u = kind;
        this.f36371z = aVar2;
        this.f36365A = l10;
        this.f36370y = enumC5372Jb0;
    }

    public static boolean i(H2 h22) {
        return h22.f36259s == H3.b.f();
    }

    @Override
    public final H2 E() {
        return this;
    }

    public final C9406sK E1() {
        return AbstractC9907vK.a(H0(), new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return H2.this.d((C4516j1) obj);
            }
        });
    }

    public long F1() {
        return this.f36371z.a(this);
    }

    public C5313Ib G1() {
        return this.f36367v;
    }

    public H5 H1() {
        return h(a(M2.f36589h));
    }

    public final boolean I1() {
        EnumC5372Jb0 enumC5372Jb0 = this.f36370y;
        enumC5372Jb0.getClass();
        return enumC5372Jb0 == EnumC5372Jb0.f41430c;
    }

    public final boolean J1() {
        return this.f36366u == ProgramResource.Kind.CF;
    }

    public final C9406sK K1() {
        return j(new C4429e8());
    }

    public final C6057Ux L1() {
        return AbstractC6114Vx.b(E1(), M1());
    }

    public final C9406sK M1() {
        return AbstractC9907vK.a(D1(), new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return H2.this.f((C4516j1) obj);
            }
        });
    }

    @Override
    public final M2 S() {
        return getType();
    }

    @Override
    public final V S0() {
        return V.f36877c;
    }

    @Override
    public final E0 a() {
        return this;
    }

    @Override
    public final E0 asClass() {
        return this;
    }

    @Override
    public final AbstractC4365b1 d() {
        return this;
    }

    @Override
    public H2 d0() {
        return this;
    }

    @Override
    public final boolean e0() {
        return true;
    }

    @Override
    public final H2 get() {
        return this;
    }

    @Override
    public final InterfaceC4610o0 getContext() {
        return this;
    }

    public final void j(final Consumer consumer) {
        f(new Consumer() {
            @Override
            public final void accept(Object obj) {
                H2.this.c(consumer, (C4460g1) obj);
            }
        });
    }

    @Override
    public String j0() {
        return this.f36245e.j0();
    }

    public final void k(Consumer consumer) {
        f(consumer, EnumC6871d70.f47286b);
        l(consumer);
    }

    public void l(Consumer<? super H5> consumer) {
        h(consumer, EnumC6871d70.f47286b);
    }

    @Override
    public final InterfaceC5638Nq0<H2> m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                H2.a(abstractC5754Pq0);
            }
        };
    }

    public final void n(Consumer consumer) {
        e(consumer, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((C4516j1) obj).w0();
            }
        });
    }

    public final void o(Consumer consumer) {
        j(consumer, EnumC6871d70.f47286b);
    }

    public final String toString() {
        return this.f36245e.toString();
    }

    @Override
    public final boolean v1() {
        return false;
    }

    @Override
    public final H2 a() {
        return this;
    }

    @Override
    public final H2 asClass() {
        return this;
    }

    public final void b(Consumer consumer, C4460g1 c4460g1) {
        consumer.accept(new F5(c4460g1, this));
    }

    public final void c(Consumer consumer, C4460g1 c4460g1) {
        consumer.accept(new F5(c4460g1, this));
    }

    public final void e(Consumer consumer, C4460g1 c4460g1) {
        consumer.accept(new F5(c4460g1, this));
    }

    public final void f(final Consumer consumer, Predicate predicate) {
        c(new Consumer() {
            @Override
            public final void accept(Object obj) {
                H2.this.b(consumer, (C4460g1) obj);
            }
        }, predicate);
    }

    public final H5 g(C4516j1 c4516j1) {
        return new H5(this, c4516j1);
    }

    public final void h(final Consumer consumer, Predicate predicate) {
        this.f36252l.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                H2.this.c(consumer, (C4516j1) obj);
            }
        }, predicate);
    }

    public final void i(final Consumer consumer, Predicate predicate) {
        d(new Consumer() {
            @Override
            public final void accept(Object obj) {
                H2.this.e(consumer, (C4460g1) obj);
            }
        }, predicate);
    }

    public final C9406sK j(Predicate predicate) {
        return new C9406sK(a(predicate), new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return H2.this.e((C4516j1) obj);
            }
        });
    }

    public final void m(final Consumer consumer) {
        d(new Consumer() {
            @Override
            public final void accept(Object obj) {
                H2.this.d(consumer, (C4460g1) obj);
            }
        }, EnumC6871d70.f47286b);
    }

    public static void a(C4798y c4798y, com.android.tools.r8.dex.M m10, F5 f52) {
        f52.getReference().a(c4798y, m10);
        C4460g1 d10 = f52.d();
        d10.k0().a(c4798y, m10);
        if (d10.w0() && d10.L0()) {
            d10.K0().a(c4798y, m10);
        }
    }

    public final AbstractC6333Zs0 b(final BiFunction biFunction) {
        C4669r3 c4669r3 = this.f36251k;
        return c4669r3.f37700b.a(c4669r3.f37699a, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return H2.a(BiFunction.this, (F0) obj, obj2);
            }
        });
    }

    public final void c(Consumer consumer, C4516j1 c4516j1) {
        consumer.accept(new H5(this, c4516j1));
    }

    public final void d(Consumer consumer, C4460g1 c4460g1) {
        consumer.accept(new F5(c4460g1, this));
    }

    public final H5 e(C4516j1 c4516j1) {
        return new H5(this, c4516j1);
    }

    public final H5 f(C4516j1 c4516j1) {
        return new H5(this, c4516j1);
    }

    public final void g(Consumer consumer, final Predicate predicate) {
        e(consumer, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return H2.a(Predicate.this, (C4516j1) obj);
            }
        });
    }

    public final H5 h(C4516j1 c4516j1) {
        if (c4516j1 != null) {
            return new H5(this, c4516j1);
        }
        return null;
    }

    public final void i(Consumer consumer) {
        if (c1()) {
            consumer.accept(h(L0()));
        }
    }

    public final C9406sK k(Predicate predicate) {
        return AbstractC9907vK.a(i((Predicate<? super C4516j1>) predicate), new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return H2.this.g((C4516j1) obj);
            }
        });
    }

    public final AbstractC6333Zs0 c(final Function function) {
        N4 b02 = b0();
        return b02.f36638b.b((Function) new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return H2.this.a(function, (C4516j1) obj);
            }
        });
    }

    public final H5 d(C4516j1 c4516j1) {
        return new H5(this, c4516j1);
    }

    public final void e(final Consumer consumer, Predicate predicate) {
        this.f36252l.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                H2.this.b(consumer, (C4516j1) obj);
            }
        }, predicate);
    }

    public final void j(final Consumer consumer, Predicate predicate) {
        this.f36252l.c(new Consumer() {
            @Override
            public final void accept(Object obj) {
                H2.this.d(consumer, (C4516j1) obj);
            }
        }, predicate);
    }

    public final void d(Consumer consumer, C4516j1 c4516j1) {
        consumer.accept(new H5(this, c4516j1));
    }

    public H5 e(A2 a22) {
        return h(b0().f36638b.a(a22.y0(), a22.t0()));
    }

    public final void b(final Function function) {
        C4669r3 c4669r3 = this.f36251k;
        c4669r3.f37700b.b(c4669r3.f37699a, new Function() {
            @Override
            public final Object apply(Object obj) {
                return H2.b(Function.this, (F0) obj);
            }
        });
    }

    public final F5 c(C4554l1 c4554l1) {
        C4460g1 a10 = this.f36251k.f37700b.a(c4554l1);
        if (a10 != null) {
            return new F5(a10, this);
        }
        return null;
    }

    public static void a(C4798y c4798y, com.android.tools.r8.dex.M m10, RR rr, H5 h52) {
        C4516j1 d10 = h52.d();
        if (!H5.f36412f && d10.f37327t) {
            throw new AssertionError();
        }
        A2 reference = h52.getReference();
        if (reference.b(c4798y, m10)) {
            reference.c(c4798y, m10);
        }
        if (d10.b1()) {
            AbstractC4497i0 Q02 = d10.Q0();
            Q02.m0().a(c4798y, Q02.a(c4798y), m10, h52, rr);
        }
        d10.k0().a(c4798y, m10);
        C4723u0[] c4723u0Arr = d10.f37316i.f38467b;
        for (C4723u0 c4723u0 : c4723u0Arr) {
            c4723u0.a(c4798y, m10);
        }
    }

    public final void b(Consumer consumer, C4516j1 c4516j1) {
        consumer.accept(new H5(this, c4516j1));
    }

    @Override
    public final boolean c(C4798y c4798y) {
        if (p1()) {
            return true;
        }
        if (c4798y.f().i()) {
            if (!f36364C && !c4798y.m()) {
                throw new AssertionError();
            }
            if (!c4798y.r().a(this).d(c4798y.E())) {
                C11245i h10 = c4798y.h();
                if (!C11245i.f57385J) {
                    h10.c();
                }
                if (!h10.f57405t.a(this)) {
                    return true;
                }
            }
        }
        return false;
    }

    public H2(M2 m22, ProgramResource.Kind kind, Origin origin, Q q10, M2 m23, O2 o22, L2 l22, C4615o5 c4615o5, List<C4634p5> list, List<A5> list2, List<P5> list3, C4500i3 c4500i3, List<C4425e4> list4, H3.b bVar, C4723u0 c4723u0, InterfaceC4651q3 interfaceC4651q3, N4.a aVar, boolean z10, a aVar2, EnumC5372Jb0 enumC5372Jb0) {
        this(m22, kind, origin, q10, m23, o22, l22, c4615o5, list, list2, list3, c4500i3, list4, bVar, c4723u0, interfaceC4651q3, aVar, z10, aVar2, enumC5372Jb0, null);
    }

    public static AbstractC6333Zs0 b(Function function, F0 f02) {
        return (AbstractC6333Zs0) function.apply(f02.W());
    }

    public final void b(final com.android.tools.r8.dex.X x10) {
        boolean z10 = f36364C;
        if (!z10 && O0() != null) {
            throw new AssertionError();
        }
        if (!z10 && !Q0().isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && this.f36259s.b()) {
            throw new AssertionError();
        }
        if (f1()) {
            x10.a(this);
            N4 n42 = this.f36252l;
            Consumer consumer = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    H2.a(com.android.tools.r8.dex.X.this, (C4516j1) obj);
                }
            };
            n42.getClass();
            n42.b(consumer, EnumC6871d70.f47286b);
            this.f36251k.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((F0) obj).d().a(com.android.tools.r8.dex.X.this);
                }
            });
        }
        C4723u0 k02 = k0();
        k02.getClass();
        x10.a(k02);
        AbstractC4592n1.a(x10, k02.f37806d);
        O2 o22 = this.f36248h;
        if (o22 != null) {
            x10.a(o22);
        }
    }

    public static H2 a(C4724u1 c4724u1) {
        M2 d10 = c4724u1.d("LMock;");
        Origin unknown = Origin.unknown();
        Q g10 = Q.g(0);
        M2 m22 = c4724u1.f38068i2;
        O2 k02 = O2.k0();
        List list = Collections.EMPTY_LIST;
        return new H2(d10, null, unknown, g10, m22, k02, null, null, list, list, list, null, list, H3.b.f(), C4723u0.l0(), InterfaceC4651q3.empty(), N4.a.empty(), false, new C10895l2(), EnumC5372Jb0.f41429b);
    }

    public final boolean b(C4798y c4798y, E0 e02, Predicate predicate, Set set) {
        E0 g10;
        boolean z10 = f36364C;
        if (!z10 && !isInterface()) {
            throw new AssertionError();
        }
        if (!z10 && !set.contains(getType())) {
            throw new AssertionError();
        }
        if (!z10 && predicate.test(getType())) {
            throw new AssertionError();
        }
        if (this == e02) {
            if (c1()) {
                C4516j1 L02 = L0();
                L02.L0();
                if (!L02.f37320m.f()) {
                    return true;
                }
            }
            return G0();
        }
        if (c1()) {
            C4516j1 L03 = L0();
            L03.L0();
            if (!L03.f37320m.f() && b0().b(new F7())) {
                return true;
            }
        }
        M2 m22 = this.f36247g;
        if (m22 != null && ((g10 = c4798y.g(m22)) == null || g10.a(c4798y, e02, predicate, set))) {
            return true;
        }
        Iterator<M2> it = this.f36248h.iterator();
        while (it.hasNext()) {
            M2 next = it.next();
            next.getClass();
            E0 g11 = c4798y.g(next);
            if (g11 == null || g11.a(c4798y, e02, predicate, set)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final void a(Consumer consumer, Consumer consumer2, Consumer consumer3) {
        consumer.accept(this);
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.e(new Function() {
            @Override
            public final Object apply(Object obj) {
                M2 m22;
                m22 = ((H2) obj).f36245e;
                return m22;
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                M2 m22;
                m22 = ((H2) obj).f36247g;
                return m22;
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                O2 o22;
                o22 = ((H2) obj).f36248h;
                return o22;
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                Q q10;
                q10 = ((H2) obj).f36246f;
                return q10;
            }
        }).j(new Function() {
            @Override
            public final Object apply(Object obj) {
                L2 l22;
                l22 = ((H2) obj).f36249i;
                return l22;
            }
        }).j(new Function() {
            @Override
            public final Object apply(Object obj) {
                C5313Ib c5313Ib;
                c5313Ib = ((H2) obj).f36367v;
                return c5313Ib;
            }
        }).b(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean z10;
                z10 = ((H2) obj).f36368w;
                return z10;
            }
        }).j(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((H2) obj).U0();
            }
        }).h(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((H2) obj).V0();
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((H2) obj).k0();
            }
        }).a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return H2.i((H2) obj);
            }
        }).h(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((H2) obj).y0();
            }
        }).h(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((H2) obj).A0();
            }
        });
    }

    public final AbstractC6333Zs0 a(final Function function) {
        C4669r3 c4669r3 = this.f36251k;
        return c4669r3.f37700b.a(c4669r3.f37699a, new Function() {
            @Override
            public final Object apply(Object obj) {
                return H2.a(Function.this, (F0) obj);
            }
        });
    }

    public static boolean a(Predicate predicate, C4516j1 c4516j1) {
        return c4516j1.j1() && predicate.test(c4516j1);
    }

    public static AbstractC6333Zs0 a(Function function, F0 f02) {
        return (AbstractC6333Zs0) function.apply(f02.W());
    }

    public static AbstractC6333Zs0 a(BiFunction biFunction, F0 f02, Object obj) {
        return (AbstractC6333Zs0) biFunction.apply(f02.W(), obj);
    }

    public final AbstractC6333Zs0 a(Function function, C4516j1 c4516j1) {
        return (AbstractC6333Zs0) function.apply(new H5(this, c4516j1));
    }

    public final AbstractC6333Zs0 a(final Function function, final Predicate predicate) {
        N4 b02 = b0();
        return b02.f36638b.b((Function) new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return H2.this.a(predicate, function, (C4516j1) obj);
            }
        });
    }

    public final AbstractC6333Zs0 a(Predicate predicate, Function function, C4516j1 c4516j1) {
        if (predicate.test(c4516j1)) {
            return (AbstractC6333Zs0) function.apply(new H5(this, c4516j1));
        }
        return C6276Ys0.f46097c;
    }

    public final void a(final C4798y c4798y, final com.android.tools.r8.dex.M m10, final RR rr) {
        if (m10.a(this)) {
            this.f36245e.a(c4798y, m10);
            M2 m22 = this.f36247g;
            if (m22 != null) {
                m22.a(c4798y, m10);
            } else if (!f36364C && !this.f36245e.V0().equals("Ljava/lang/Object;")) {
                throw new AssertionError();
            }
            L2 l22 = this.f36249i;
            if (l22 != null) {
                m10.a(l22);
            }
            k0().a(c4798y, m10);
            O2 o22 = this.f36248h;
            if (o22 != null) {
                o22.a(c4798y, m10);
            }
            if (O0() != null) {
                C4500i3 O02 = O0();
                M2 m23 = O02.f37289a;
                if (m23 != null) {
                    m23.a(c4798y, m10);
                }
                A2 a22 = O02.f37290b;
                if (a22 != null && a22.b(c4798y, m10)) {
                    a22.c(c4798y, m10);
                }
            }
            for (C4425e4 c4425e4 : Q0()) {
                c4425e4.f37147b.a(c4798y, m10);
                M2 m24 = c4425e4.f37148c;
                if (m24 != null) {
                    m24.a(c4798y, m10);
                }
                L2 l23 = c4425e4.f37149d;
                if (l23 != null) {
                    m10.a(l23);
                }
            }
            f(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    H2.a(C4798y.this, m10, (F5) obj);
                }
            }, EnumC6871d70.f47286b);
            l(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    H2.a(C4798y.this, m10, rr, (H5) obj);
                }
            });
        }
    }

    @Override
    public final void a(com.android.tools.r8.dex.X x10) {
        boolean b10;
        boolean z10 = f36364C;
        if (!z10 && O0() != null) {
            throw new AssertionError();
        }
        if (!z10 && !Q0().isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && this.f36259s.b()) {
            throw new AssertionError();
        }
        if (k0().isEmpty()) {
            N4 n42 = this.f36252l;
            synchronized (n42) {
                b10 = n42.b();
            }
            if (!b10 && !a(this.f36251k)) {
                return;
            }
        }
        x10.a(this, new C4685s0(this));
    }

    public static void a(com.android.tools.r8.dex.X x10, C4516j1 c4516j1) {
        c4516j1.getClass();
        x10.b(c4516j1);
    }

    public static H2 a(E0 e02) {
        if (e02 != null) {
            return e02.d0();
        }
        return null;
    }

    @Override
    public final boolean a(C4798y c4798y, E0 e02, Predicate predicate, Set set) {
        M2 m22;
        E0 g10;
        if (!set.add(getType()) || predicate.test(getType())) {
            return false;
        }
        if (isInterface()) {
            return b(c4798y, e02, predicate, set);
        }
        boolean z10 = f36364C;
        if (!z10 && isInterface()) {
            throw new AssertionError();
        }
        if (!z10 && !set.contains(getType())) {
            throw new AssertionError();
        }
        if (!z10 && predicate.test(getType())) {
            throw new AssertionError();
        }
        if (c1()) {
            C4516j1 L02 = L0();
            L02.L0();
            if (!L02.f37320m.f()) {
                return true;
            }
        }
        if (!G0() && ((m22 = this.f36247g) == null || ((g10 = c4798y.g(m22)) != null && !g10.a(c4798y, e02, predicate, set)))) {
            Iterator<M2> it = this.f36248h.iterator();
            while (it.hasNext()) {
                M2 next = it.next();
                next.getClass();
                E0 g11 = c4798y.g(next);
                if (g11 != null && !g11.a(c4798y, e02, predicate, set)) {
                }
            }
            return false;
        }
        return true;
    }

    public static boolean a(C4669r3 c4669r3) {
        boolean b10;
        synchronized (c4669r3) {
            b10 = c4669r3.b();
        }
        return b10;
    }

    public final C4441f1 a(final AbstractC10992r0 abstractC10992r0) {
        Iterator<C4460g1> it = A1().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            C4460g1 next = it.next();
            R2 K02 = next.K0();
            if (K02 != null && K02 != R2.a(next.getReference().f37449i)) {
                ArrayList arrayList = new ArrayList(A1());
                arrayList.sort(new Comparator() {
                    @Override
                    public final int compare(Object obj, Object obj2) {
                        int a10;
                        a10 = ((C4460g1) obj).getReference().a((InterfaceC4596n5) ((C4460g1) obj2).getReference(), AbstractC10992r0.this);
                        return a10;
                    }
                });
                ArrayList arrayList2 = new ArrayList(arrayList.size());
                int i10 = 0;
                for (int i11 = 0; i11 < arrayList.size(); i11++) {
                    C4460g1 c4460g1 = (C4460g1) arrayList.get(i11);
                    R2 K03 = c4460g1.K0();
                    if (!f36364C && K03 == null) {
                        throw new AssertionError();
                    }
                    arrayList2.add(K03);
                    M2 m22 = c4460g1.getReference().f37449i;
                    K03.getClass();
                    if (K03 != R2.a(m22)) {
                        i10 = i11 + 1;
                    }
                }
                if (i10 > 0) {
                    return new C4441f1((R2[]) arrayList2.subList(0, i10).toArray(R2.f36737b));
                }
            }
        }
        return null;
    }

    public final void a(List list, C4724u1 c4724u1) {
        if (list.isEmpty()) {
            return;
        }
        O2 o22 = this.f36248h;
        M2[] m2Arr = (M2[]) Arrays.copyOf(o22.f36675b, list.size() + o22.size());
        for (int size = this.f36248h.size(); size < m2Arr.length; size++) {
            m2Arr[size] = ((H3.c) list.get(size - this.f36248h.size())).f36385b;
        }
        this.f36248h = new O2(m2Arr);
        if (!f36364C && list.isEmpty()) {
            throw new AssertionError();
        }
        if (this.f36259s.a()) {
            return;
        }
        H3.b bVar = H3.b.f36379d;
        J3 j32 = new J3();
        j32.f36499c.addAll(this.f36259s.e());
        j32.f36499c.addAll(list);
        j32.f36498b = this.f36259s.d();
        j32.f36497a.addAll(this.f36259s.c());
        this.f36259s = j32.a(c4724u1);
    }

    public void a(C5313Ib c5313Ib) {
        if (!f36364C && c5313Ib == null) {
            throw new AssertionError();
        }
        this.f36367v = (C5313Ib) C40.c(this.f36367v, c5313Ib);
    }

    public static Iterable a(final Iterable iterable, final C11451u3 c11451u3) {
        return new Iterable() {
            @Override
            public final Iterator iterator() {
                return H2.a(Iterable.this, c11451u3);
            }
        };
    }

    public static Iterator a(Iterable iterable, InterfaceC4403d1 interfaceC4403d1) {
        return new G2(iterable, interfaceC4403d1);
    }

    public static long a(H2 h22) {
        throw new C5325If(h22.f36244d, ((Object) h22) + " has no checksum information while checksum encoding is requested", null);
    }
}
