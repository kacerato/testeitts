package com.android.tools.r8.graph;

import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.N4;
import com.android.tools.r8.internal.AK;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6114Vx;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC9530t40;
import com.android.tools.r8.internal.AbstractC9907vK;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C6057Ux;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C9073qK;
import com.android.tools.r8.internal.C9239rK;
import com.android.tools.r8.internal.C9406sK;
import com.android.tools.r8.internal.CK;
import com.android.tools.r8.internal.EK;
import com.android.tools.r8.internal.EnumC5537Ly;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.internal.FK;
import com.android.tools.r8.internal.GK;
import com.android.tools.r8.internal.InterfaceC5422Jy;
import com.android.tools.r8.internal.JK;
import com.android.tools.r8.internal.Z60;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.Reference;
import java.io.UTFDataFormatException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Predicate;

public abstract class E0 extends AbstractC4365b1 implements S, InterfaceC4364b0 {

    public static final boolean f36243t = true;

    public final Origin f36244d;

    public final M2 f36245e;

    public final Q f36246f;

    public M2 f36247g;

    public O2 f36248h;

    public L2 f36249i;

    public AbstractC9530t40 f36250j;

    public final C4669r3 f36251k;

    public final N4 f36252l;

    public C4500i3 f36253m;

    public List f36254n;

    public C4615o5 f36255o;

    public List f36256p;

    public List f36257q;

    public final List f36258r;

    protected H3.b f36259s;

    public E0(L2 l22, O2 o22, Q q10, M2 m22, M2 m23, InterfaceC4651q3 interfaceC4651q3, N4.a aVar, C4615o5 c4615o5, List list, List list2, List list3, C4500i3 c4500i3, List list4, H3.b bVar, C4723u0 c4723u0, Origin origin, boolean z10) {
        super(c4723u0);
        boolean z11;
        this.f36250j = AbstractC9530t40.f52519c;
        boolean z12 = f36243t;
        if (!z12 && origin == null) {
            throw new AssertionError();
        }
        this.f36244d = origin;
        this.f36249i = l22;
        this.f36248h = o22;
        this.f36246f = q10;
        this.f36247g = m22;
        this.f36245e = m23;
        this.f36251k = interfaceC4651q3.a(this);
        this.f36252l = aVar.a(this);
        this.f36255o = c4615o5;
        this.f36256p = list;
        if (!z12 && list == null) {
            throw new AssertionError();
        }
        this.f36257q = list2;
        this.f36258r = list3;
        if (!z12 && list2 == null) {
            throw new AssertionError();
        }
        this.f36253m = c4500i3;
        this.f36254n = list4;
        if (!z12 && bVar == null) {
            throw new AssertionError();
        }
        this.f36259s = bVar;
        if (!z12 && !Z3.a(bVar, c4723u0)) {
            throw new AssertionError();
        }
        if (m23.a(m22)) {
            throw new C5325If("Class " + ((Object) m23) + " cannot extend itself");
        }
        Iterator<M2> it = o22.iterator();
        while (it.hasNext()) {
            if (m23.a(it.next())) {
                throw new C5325If("Interface " + ((Object) m23) + " cannot implement itself");
            }
        }
        if (z10) {
            return;
        }
        L2 l23 = m23.f36592f;
        l23.getClass();
        try {
            z11 = C4932Bl.B(L2.a(l23.f36561e, l23.f36562f));
        } catch (UTFDataFormatException unused) {
            z11 = false;
        }
        if (z11) {
            return;
        }
        throw new C5325If("Class descriptor '" + ((Object) m23.f36592f) + "' cannot be represented in dex format.");
    }

    public List<C4516j1> A0() {
        return this.f36252l.a();
    }

    public List<C4460g1> A1() {
        return this.f36251k.f37700b.g();
    }

    public final C9406sK B0() {
        return AbstractC9907vK.a(I0(), new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return E0.this.b((C4460g1) obj);
            }
        });
    }

    public final boolean B1() {
        return N0().e().isEmpty() || this.f36248h.f36675b.length == N0().e().size();
    }

    public final C9406sK C0() {
        return AbstractC9907vK.a(z1(), new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return E0.this.b((C4516j1) obj);
            }
        });
    }

    public final C9406sK C1() {
        return AbstractC9907vK.a(D1(), new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return E0.this.c((C4516j1) obj);
            }
        });
    }

    @Override
    public final E0 D() {
        return this;
    }

    public final void D0() {
        this.f36259s = H3.b.f();
    }

    public Iterable<C4516j1> D1() {
        return this.f36252l.f36638b.j();
    }

    public final void E0() {
        this.f36255o = null;
    }

    public final C4460g1[] F0() {
        List<C4460g1> A12 = A1();
        this.f36251k.f37700b.b();
        return (C4460g1[]) A12.toArray(C4460g1.f37200o);
    }

    @Override
    public C4725u2 G() {
        return null;
    }

    public final boolean G0() {
        return A1().stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return E0.c((C4460g1) obj);
            }
        });
    }

    public Iterable<C4516j1> H0() {
        return this.f36252l.f36638b.c();
    }

    public Iterable<C4460g1> I0() {
        return this.f36251k.f37700b.a(EnumC6871d70.f47286b);
    }

    @Override
    public Q getAccessFlags() {
        return this.f36246f;
    }

    public final L2 K0() {
        L2 Z02 = Z0();
        this.f36249i = null;
        return Z02;
    }

    public final C4516j1 L0() {
        C4516j1 c4516j1;
        N4 n42 = this.f36252l;
        synchronized (n42) {
            try {
                if (n42.f36639c == C4516j1.f37311v) {
                    n42.f36639c = null;
                    Iterator it = n42.f36638b.c().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        C4516j1 c4516j12 = (C4516j1) it.next();
                        if (c4516j12.f1()) {
                            n42.f36639c = c4516j12;
                            break;
                        }
                    }
                }
                c4516j1 = n42.f36639c;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (f36243t || c4516j1 != C4516j1.f37311v) {
            return c4516j1;
        }
        throw new AssertionError();
    }

    public ClassReference M0() {
        return Reference.classFromDescriptor(getType().V0());
    }

    public H3.b N0() {
        return this.f36259s;
    }

    public C4500i3 O0() {
        return this.f36253m;
    }

    public C4425e4 P0() {
        for (C4425e4 c4425e4 : Q0()) {
            if (this.f36245e == c4425e4.b()) {
                return c4425e4;
            }
        }
        return null;
    }

    public List<C4425e4> Q0() {
        return this.f36254n;
    }

    public O2 R0() {
        return this.f36248h;
    }

    public abstract V S0();

    public M2 T0() {
        if (u1()) {
            return this.f36255o.a();
        }
        if (t1()) {
            return this.f36245e;
        }
        return null;
    }

    public C4615o5 U0() {
        return this.f36255o;
    }

    public List<C4634p5> V0() {
        return this.f36256p;
    }

    public List<A5> W0() {
        return this.f36257q;
    }

    @Override
    public final boolean X() {
        return true;
    }

    public List<P5> X0() {
        return this.f36258r;
    }

    public final String Y0() {
        return getType().C0();
    }

    public L2 Z0() {
        return this.f36249i;
    }

    @Override
    public E0 a() {
        return this;
    }

    public abstract void a(Consumer consumer, Consumer consumer2, Consumer consumer3);

    public abstract boolean a(C4798y c4798y, E0 e02, Predicate predicate, Set set);

    public M2 a1() {
        return this.f36247g;
    }

    @Override
    public E0 asClass() {
        return this;
    }

    @Override
    public void b(Consumer<? super F0> consumer) {
        a(consumer, EnumC6871d70.f47286b);
    }

    @Override
    public N4 b0() {
        return this.f36252l;
    }

    public final String b1() {
        return getType().D0();
    }

    @Override
    public void c(Consumer<? super H0> consumer) {
        b(consumer, EnumC6871d70.f47286b);
    }

    public final boolean c1() {
        return L0() != null;
    }

    public final C4516j1 d(A2 a22) {
        N4 n42 = this.f36252l;
        C4516j1 c10 = n42.f36638b.c(a22);
        if (c10 != null) {
            n42.f36638b.getClass();
            if (c10.f37314g.D()) {
                n42.f36639c = C4516j1.f37311v;
                return c10;
            }
            if (!N4.f36636d) {
                n42.f36638b.getClass();
                if (!c10.J0()) {
                    throw new AssertionError();
                }
            }
        }
        return c10;
    }

    public final boolean d1() {
        return this.f36253m != null;
    }

    public final void e(Consumer consumer) {
        M2 m22 = this.f36247g;
        if (m22 != null) {
            consumer.accept(m22);
        }
        d(consumer);
    }

    public boolean e1() {
        return this.f36251k.f37700b.d() > 0;
    }

    public final void f(Consumer consumer) {
        Z60 z60 = EnumC6871d70.f47286b;
        j1().forEach(consumer);
    }

    @Override
    public boolean f0() {
        return false;
    }

    public final boolean f1() {
        return this.f36252l.f36638b.h() > 0 || this.f36251k.f37700b.f() > 0;
    }

    public void g(Consumer<C4516j1> consumer) {
        N4 n42 = this.f36252l;
        n42.getClass();
        n42.b(consumer, EnumC6871d70.f47286b);
    }

    public boolean g1() {
        return this.f36251k.f37700b.e() > 0;
    }

    @Override
    public final Origin getOrigin() {
        return this.f36244d;
    }

    @Override
    public J2 getReference() {
        return getType();
    }

    @Override
    public M2 getType() {
        return this.f36245e;
    }

    public final void h(final Consumer consumer) {
        if (!f36243t && !t1()) {
            throw new AssertionError();
        }
        V0().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Consumer.this.accept(((C4634p5) obj).a());
            }
        });
    }

    public final boolean h1() {
        for (C4516j1 c4516j1 : H0()) {
            if (c4516j1.w0() && c4516j1.f37314g.L()) {
                return true;
            }
        }
        return false;
    }

    public Iterable<C4516j1> i(Predicate<? super C4516j1> predicate) {
        Iterable<C4516j1> D12 = D1();
        Objects.requireNonNull(predicate);
        return AbstractC9907vK.c(D12, new C4466g7(predicate));
    }

    public final boolean i1() {
        return this.f36247g != null;
    }

    @Override
    public boolean isInterface() {
        return this.f36246f.J();
    }

    public final C9239rK j1() {
        return AbstractC9907vK.c(k1(), new C4485h7(EnumC6871d70.f47286b));
    }

    @Override
    public I0 k() {
        return null;
    }

    public List<C4460g1> k1() {
        return this.f36251k.f37700b.c();
    }

    @Override
    public final E0 l0() {
        return this;
    }

    public boolean l1() {
        return this.f36246f.G();
    }

    public boolean m1() {
        C4425e4 P02 = P0();
        return P02 != null && P02.f37149d == null;
    }

    public boolean n1() {
        return this instanceof I0;
    }

    public boolean o1() {
        return this.f36246f.I();
    }

    public boolean p1() {
        return this.f36246f.e();
    }

    public boolean q1() {
        return t1() || u1();
    }

    public boolean r1() {
        C4425e4 P02 = P0();
        return P02 != null && P02.d() == null && P02.e();
    }

    @Override
    public final boolean s0() {
        return true;
    }

    public boolean s1() {
        C4425e4 P02 = P0();
        boolean z10 = (P02 == null || P02.d() == null || !P02.e()) ? false : true;
        if (f36243t || !z10 || O0() == null) {
            return z10;
        }
        throw new AssertionError();
    }

    public boolean t1() {
        return !this.f36256p.isEmpty();
    }

    public boolean u1() {
        return this.f36255o != null;
    }

    @Override
    public final E0 v() {
        return null;
    }

    public abstract boolean v1();

    public boolean w1() {
        return this.f36246f.l();
    }

    @Override
    public final boolean x0() {
        return false;
    }

    public boolean x1() {
        return AbstractC4458g.d(this.f36246f.f37197c, 65536);
    }

    public final List y0() {
        return this.f36251k.a();
    }

    public final C6057Ux y1() {
        return AbstractC6114Vx.b(I0(), z1());
    }

    public final Iterable z0() {
        final Iterator a10;
        M2 m22 = this.f36247g;
        if (m22 != null) {
            EK ek2 = new EK(m22);
            M2[] m2Arr = this.f36248h.f36675b;
            FK a11 = JK.a(m2Arr.length, 0, m2Arr);
            a11.getClass();
            a10 = new GK(new AK(new Iterator[]{ek2, a11}));
        } else {
            M2[] m2Arr2 = this.f36248h.f36675b;
            a10 = JK.a(m2Arr2.length, 0, m2Arr2);
        }
        return new Iterable() {
            @Override
            public final Iterator iterator() {
                return E0.a(Iterator.this);
            }
        };
    }

    public Iterable<C4516j1> z1() {
        return this.f36252l.f36638b.e();
    }

    public static Iterator a(Iterator it) {
        return it;
    }

    public final void b(final Consumer consumer, Predicate predicate) {
        this.f36252l.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                E0.this.a(consumer, (C4516j1) obj);
            }
        }, predicate);
    }

    public final void c(Consumer consumer, Predicate predicate) {
        this.f36251k.f37700b.a(predicate).forEach(consumer);
    }

    @Override
    public final void a(Consumer consumer) {
        consumer.accept(this);
    }

    public final F0 b(C4460g1 c4460g1) {
        return F0.a(this, c4460g1);
    }

    public final void f(Predicate predicate) {
        this.f36256p.removeIf(predicate);
    }

    public final void g(Predicate predicate) {
        this.f36257q.removeIf(predicate);
    }

    public final void h(Predicate predicate) {
        if (this.f36258r.isEmpty()) {
            return;
        }
        this.f36258r.removeIf(predicate);
    }

    public final void a(final Consumer consumer, Predicate predicate) {
        c(new Consumer() {
            @Override
            public final void accept(Object obj) {
                E0.this.a(consumer, (C4460g1) obj);
            }
        }, predicate);
    }

    public final H0 b(C4516j1 c4516j1) {
        return H0.a(this, c4516j1);
    }

    public final void e(Predicate predicate) {
        this.f36254n.removeIf(predicate);
    }

    public final void a(Consumer consumer, C4460g1 c4460g1) {
        consumer.accept(F0.a(this, c4460g1));
    }

    public final void b(C4460g1[] c4460g1Arr) {
        C4669r3 c4669r3 = this.f36251k;
        c4669r3.f37700b.b(c4460g1Arr);
        if (C4669r3.f37698c) {
            return;
        }
        c4669r3.f37700b.h();
    }

    public final void a(Consumer consumer, C4516j1 c4516j1) {
        consumer.accept(H0.a(this, c4516j1));
    }

    public Iterable<C4516j1> c(Predicate<? super C4516j1> predicate) {
        return C9073qK.a(this.f36252l.f36638b.e(), predicate);
    }

    @Override
    public void a(com.android.tools.r8.dex.X x10) {
        throw new C5417Jv0();
    }

    public final C9239rK a(Predicate predicate) {
        Iterable<C4516j1> H02 = H0();
        Objects.requireNonNull(predicate);
        return AbstractC9907vK.c(H02, new C4466g7(predicate));
    }

    public final void a(C4516j1 c4516j1) {
        N4 n42 = this.f36252l;
        n42.getClass();
        n42.f36639c = C4516j1.f37311v;
        n42.f36638b.a(c4516j1);
    }

    public final C4460g1 b(C4554l1 c4554l1) {
        return this.f36251k.f37700b.a(c4554l1);
    }

    public final H0 c(C4516j1 c4516j1) {
        return H0.a(this, c4516j1);
    }

    public C4516j1 c(A2 a22) {
        return this.f36252l.f36638b.b(a22);
    }

    public final void d(Consumer consumer, Predicate predicate) {
        C9073qK.a(A1(), predicate).forEach(consumer);
    }

    public static boolean b(L2 l22, C4460g1 c4460g1) {
        return c4460g1.C0() == l22;
    }

    public final void a(Collection collection) {
        N4 n42 = this.f36252l;
        n42.getClass();
        EnumC5537Ly enumC5537Ly = EnumC5537Ly.f42110b;
        if (collection.isEmpty()) {
            return;
        }
        if (!N4.f36636d) {
            CK a10 = JK.a(collection.iterator(), enumC5537Ly);
            while (a10.hasNext()) {
                C4516j1 c4516j1 = (C4516j1) a10.next();
                if (!N4.f36636d) {
                    n42.c(c4516j1);
                }
            }
        }
        n42.f36638b.a(collection, enumC5537Ly);
    }

    public final C4460g1 b(final L2 l22) {
        Predicate predicate = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return E0.b(L2.this, (C4460g1) obj);
            }
        };
        C4460g1 c4460g1 = null;
        for (C4460g1 c4460g12 : A1()) {
            if (predicate.test(c4460g12)) {
                if (c4460g1 != null) {
                    return null;
                }
                c4460g1 = c4460g12;
            }
        }
        return c4460g1;
    }

    public final boolean d(C4798y c4798y) {
        boolean z10;
        if (this.f36250j.e()) {
            if (f0()) {
                z10 = com.android.tools.r8.internal.G2.a(G(), c4798y);
            } else {
                boolean z11 = true;
                for (M2 m22 : z0()) {
                    m22.getClass();
                    E0 g10 = c4798y.g(m22);
                    z11 &= g10 != null && g10.d(c4798y);
                    if (!z11) {
                        break;
                    }
                }
                z10 = z11;
            }
            this.f36250j = AbstractC9530t40.a(z10);
        }
        if (f36243t || !this.f36250j.e()) {
            return this.f36250j.d();
        }
        throw new AssertionError();
    }

    public boolean c(C4798y c4798y) {
        return p1();
    }

    public static boolean c(C4460g1 c4460g1) {
        return c4460g1.L0() && c4460g1.K0().U0();
    }

    public C4516j1 b(Predicate<C4516j1> predicate) {
        return this.f36252l.f36638b.b(predicate);
    }

    public final C4516j1 b(A2 a22) {
        return this.f36252l.f36638b.a(a22.y0(), a22.t0());
    }

    public final void a(C4516j1[] c4516j1Arr) {
        N4 n42 = this.f36252l;
        if (!N4.f36636d) {
            n42.getClass();
            if (c4516j1Arr != null) {
                for (C4516j1 c4516j1 : Arrays.asList(c4516j1Arr)) {
                    if (!N4.f36636d) {
                        n42.c(c4516j1);
                    }
                }
            }
        }
        n42.f36638b.b(c4516j1Arr);
    }

    public final void b(final BiConsumer biConsumer) {
        M2 m22 = this.f36247g;
        if (m22 != null) {
            biConsumer.accept(m22, Boolean.FALSE);
        }
        d(new Consumer() {
            @Override
            public final void accept(Object obj) {
                BiConsumer.this.accept((M2) obj, Boolean.TRUE);
            }
        });
    }

    public final void d(Consumer consumer) {
        for (M2 m22 : this.f36248h.f36675b) {
            consumer.accept(m22);
        }
    }

    public final void d(Predicate predicate) {
        C4500i3 c4500i3 = this.f36253m;
        if (c4500i3 == null || !predicate.test(c4500i3)) {
            return;
        }
        this.f36253m = null;
    }

    public final void b(List list, BiConsumer biConsumer) {
        M2 m22 = this.f36247g;
        if (m22 != null) {
            biConsumer.accept(m22, a(N0().d(), list));
        }
        a(list, biConsumer);
    }

    public final void a(Iterable iterable, C8570nJ c8570nJ) {
        c8570nJ.getClass();
        if (!c8570nJ.a(com.android.tools.r8.internal.C2.L) || l1()) {
            return;
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            C4516j1 c4516j1 = (C4516j1) it.next();
            if (!f36243t && c4516j1.d1()) {
                throw new AssertionError((Object) ("Non-abstract method on abstract class: `" + c4516j1.getReference().j0() + "`"));
            }
        }
    }

    public final ArrayList b(C4798y c4798y) {
        final ArrayList arrayList = new ArrayList();
        E0 e02 = this;
        while (e02 != null && e02.f36245e != c4798y.b().f38068i2) {
            e02.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    List.this.add((F0) obj);
                }
            }, new R6());
            e02 = c4798y.g(e02.f36247g);
        }
        return arrayList;
    }

    public final void a(C4460g1 c4460g1) {
        C4669r3 c4669r3 = this.f36251k;
        boolean z10 = C4669r3.f37698c;
        if (!z10) {
            c4669r3.a(c4460g1);
        }
        c4669r3.f37700b.b(c4460g1);
        if (z10) {
            return;
        }
        c4669r3.f37700b.h();
    }

    public final void a(C4460g1[] c4460g1Arr) {
        C4669r3 c4669r3 = this.f36251k;
        c4669r3.f37700b.a(c4460g1Arr);
        if (C4669r3.f37698c) {
            return;
        }
        c4669r3.f37700b.h();
    }

    public final F0 a(C4554l1 c4554l1) {
        C4460g1 a10 = this.f36251k.f37700b.a(c4554l1);
        if (a10 != null) {
            return F0.a(this, a10);
        }
        return null;
    }

    public static boolean a(L2 l22, C4460g1 c4460g1) {
        return c4460g1.C0() == l22;
    }

    public final C4460g1 a(final L2 l22) {
        Predicate predicate = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return E0.a(L2.this, (C4460g1) obj);
            }
        };
        C4460g1 c4460g1 = null;
        for (C4460g1 c4460g12 : k1()) {
            if (predicate.test(c4460g12)) {
                if (c4460g1 != null) {
                    return null;
                }
                c4460g1 = c4460g12;
            }
        }
        return c4460g1;
    }

    public final H0 a(A2 a22) {
        C4516j1 a10 = this.f36252l.f36638b.a(a22.y0(), a22.t0());
        if (a10 != null) {
            return H0.a(this, a10);
        }
        return null;
    }

    public final boolean a(C4516j1 c4516j1, C4724u1 c4724u1) {
        if (f36243t || this.f36245e.a(c4724u1.f37920O2) || this.f36245e.a(c4724u1.f37913N2)) {
            return AbstractC4458g.d(c4516j1.f37314g.f37197c, 128) && c4516j1.f37314g.J() && c4516j1.V0().size() == 1 && c4516j1.j(0).a(c4724u1.f38092l2);
        }
        throw new AssertionError();
    }

    public final C4516j1 a(M2[] m2Arr) {
        for (C4516j1 c4516j1 : H0()) {
            if (c4516j1.j1() && Arrays.equals(c4516j1.getReference().f36127i.f36441f.f36675b, m2Arr)) {
                return c4516j1;
            }
        }
        return null;
    }

    public boolean a(C4798y<?> c4798y) {
        return a(c4798y, this, EnumC6871d70.f47287c, AbstractC5513Ll0.c());
    }

    public final boolean a(final C4798y c4798y, final InterfaceC4610o0 interfaceC4610o0) {
        return a(c4798y, this, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean d10;
                d10 = C4798y.this.a(interfaceC4610o0.S(), (M2) obj).d();
                return d10;
            }
        }, AbstractC5513Ll0.c());
    }

    public final void a(final InterfaceC4403d1 interfaceC4403d1, final BiPredicate biPredicate, final BiConsumer biConsumer) {
        e(new Consumer() {
            @Override
            public final void accept(Object obj) {
                E0.a(InterfaceC4403d1.this, biPredicate, biConsumer, (M2) obj);
            }
        });
    }

    public static void a(InterfaceC4403d1 interfaceC4403d1, BiPredicate biPredicate, BiConsumer biConsumer, M2 m22) {
        E0 g10 = interfaceC4403d1.g(m22);
        if (biPredicate.test(m22, g10)) {
            biConsumer.accept(m22, g10);
        }
    }

    public final void a(final BiConsumer biConsumer) {
        if (!f36243t && !B1()) {
            throw new AssertionError();
        }
        if (N0().e().isEmpty()) {
            d(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    BiConsumer.this.accept(r2, new H3.c((M2) obj));
                }
            });
            return;
        }
        Iterator it = Arrays.asList(this.f36248h.f36675b).iterator();
        Iterator<H3.c> it2 = N0().e().iterator();
        while (it.hasNext()) {
            if (!f36243t && !it2.hasNext()) {
                throw new AssertionError();
            }
            biConsumer.accept((M2) it.next(), it2.next());
        }
    }

    public final void a(C4724u1 c4724u1, BiConsumer biConsumer) {
        M2 m22 = this.f36247g;
        if (m22 != null) {
            H3.c cVar = this.f36259s.f36382b;
            if (cVar == null) {
                cVar = new H3.c(c4724u1.f38068i2);
            }
            biConsumer.accept(m22, cVar);
        }
        a(biConsumer);
    }

    public final void a(List list, final BiConsumer biConsumer) {
        if (!f36243t && !B1()) {
            throw new AssertionError();
        }
        if (N0().e().isEmpty()) {
            d(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    E0.a(BiConsumer.this, (M2) obj);
                }
            });
            return;
        }
        Iterator<H3.c> it = N0().e().iterator();
        for (M2 m22 : Arrays.asList(this.f36248h.f36675b)) {
            if (!f36243t && !it.hasNext()) {
                throw new AssertionError();
            }
            H3.c next = it.next();
            if (list.isEmpty()) {
                Iterator<H3.e> it2 = next.f36386c.iterator();
                while (it2.hasNext()) {
                    if (it2.next().o()) {
                        int i10 = AbstractC7552hC.f48487c;
                        biConsumer.accept(m22, C6190Xe0.f45779e);
                        break;
                    }
                }
            }
            biConsumer.accept(m22, a(next, list));
        }
        if (!f36243t && it.hasNext()) {
            throw new AssertionError();
        }
    }

    public static void a(BiConsumer biConsumer, M2 m22) {
        int i10 = AbstractC7552hC.f48487c;
        biConsumer.accept(m22, C6190Xe0.f45779e);
    }

    public final List a(H3.c cVar, final List list) {
        if (cVar == null) {
            return Collections.EMPTY_LIST;
        }
        int i10 = AbstractC7552hC.f48487c;
        final C7051eC c7051eC = new C7051eC();
        cVar.r().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                E0.this.a(list, c7051eC, (H3.e) obj);
            }
        });
        return c7051eC.a();
    }

    public final void a(List list, C7051eC c7051eC, H3.e eVar) {
        if (eVar.o()) {
            for (int i10 = 0; i10 < N0().c().size(); i10++) {
                if (N0().c().get(i10).f36390a.equals(eVar.i().f36402b)) {
                    if (i10 >= list.size()) {
                        if (!f36243t) {
                            throw new AssertionError();
                        }
                    } else {
                        c7051eC.a((H3.e) list.get(i10));
                    }
                }
            }
            return;
        }
        c7051eC.a(eVar);
    }

    public final void a(H3.b bVar) {
        this.f36259s = bVar;
    }

    public final void a(C8570nJ c8570nJ) {
        boolean z10 = f36243t;
        if (!z10) {
            a(D1(), c8570nJ);
        }
        if (!z10 && isInterface() && b0().b(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((C4516j1) obj).h1();
            }
        })) {
            throw new AssertionError();
        }
        if (!z10) {
            this.f36251k.c();
        }
        if (z10) {
            return;
        }
        this.f36252l.f();
    }
}
