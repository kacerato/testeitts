package com.android.tools.r8.graph;

import com.android.tools.r8.AbstractC4291c;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.W0;
import com.android.tools.r8.internal.AbstractC5015Cx0;
import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.AbstractC9530t40;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C10106wa;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C10443yb;
import com.android.tools.r8.internal.C40;
import com.android.tools.r8.internal.C4965Cb;
import com.android.tools.r8.internal.C5160Fj;
import com.android.tools.r8.internal.C5313Ib;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5920Sm0;
import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.internal.C6842cy;
import com.android.tools.r8.internal.C6949de;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.C7437ga;
import com.android.tools.r8.internal.C7702i60;
import com.android.tools.r8.internal.C8106kb;
import com.android.tools.r8.internal.C8854p10;
import com.android.tools.r8.internal.C8938pa;
import com.android.tools.r8.internal.C9970vk0;
import com.android.tools.r8.internal.EnumC5477Kw0;
import com.android.tools.r8.internal.EnumC6509ay;
import com.android.tools.r8.internal.GG;
import com.android.tools.r8.internal.InterfaceC5465Kq0;
import com.android.tools.r8.internal.InterfaceC5523Lq0;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import com.android.tools.r8.internal.KV;
import com.android.tools.r8.internal.PS;
import com.android.tools.r8.internal.SG;
import com.android.tools.r8.internal.TW;
import com.android.tools.r8.internal.WS;
import com.android.tools.r8.internal.WY;
import com.android.tools.r8.ir.optimize.AbstractC10709g0;
import com.android.tools.r8.kotlin.AbstractC10752b0;
import com.android.tools.r8.kotlin.InterfaceC10764d0;
import com.android.tools.r8.naming.AbstractC10992r0;
import com.android.tools.r8.naming.V;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public class C4516j1 extends AbstractC4479h1<C4516j1, A2> implements InterfaceC5580Mq0<C4516j1> {

    public static final C4516j1[] f37310u = new C4516j1[0];

    public static final C4516j1 f37311v;

    public static final GG f37312w;

    public static final boolean f37313x = true;

    public final L4 f37314g;

    public final boolean f37315h;

    public C4823z5 f37316i;

    public AbstractC4497i0 f37317j;

    public A2 f37318k;

    public EnumC4535k1 f37319l;

    public TW f37320m;

    public C5313Ib f37321n;

    public com.android.tools.r8.androidapi.f f37322o;

    public InterfaceC10764d0 f37323p;

    public H3.g f37324q;

    public AbstractC9530t40 f37325r;

    public SG f37326s;

    public boolean f37327t;

    public static class a {

        public static final boolean f37328u = true;

        public L4 f37329a;

        public AbstractC4497i0 f37330b;

        public A2 f37331c;

        public H3.g f37332d;

        public C4723u0 f37333e;

        public AbstractC9530t40 f37334f;

        public C4823z5 f37335g;

        public EnumC4535k1 f37336h;

        public TW f37337i;

        public final InterfaceC10764d0 f37338j;

        public C5313Ib f37339k;

        public com.android.tools.r8.androidapi.f f37340l;

        public com.android.tools.r8.androidapi.f f37341m;

        public final boolean f37342n;

        public boolean f37343o;

        public A2 f37344p;

        public boolean f37345q;

        public boolean f37346r;

        public boolean f37347s;

        public Consumer f37348t;

        public a(boolean z10) {
            this.f37332d = H3.g.d();
            this.f37333e = C4723u0.l0();
            this.f37334f = AbstractC9530t40.f52519c;
            this.f37335g = C4823z5.f38465d;
            this.f37336h = EnumC4535k1.f37407b;
            this.f37337i = C5160Fj.f40293b;
            this.f37338j = AbstractC10752b0.f55256b;
            this.f37339k = null;
            int i10 = com.android.tools.r8.androidapi.f.f35602a;
            com.android.tools.r8.androidapi.g gVar = com.android.tools.r8.androidapi.g.f35607b;
            this.f37340l = gVar;
            this.f37341m = gVar;
            this.f37343o = false;
            this.f37344p = null;
            this.f37345q = true;
            this.f37346r = true;
            this.f37347s = true;
            this.f37348t = C6628bi.b();
            this.f37342n = z10;
        }

        public final a a(Consumer consumer) {
            consumer.accept(this);
            return this;
        }

        public final a b(Consumer consumer) {
            consumer.accept(this.f37329a);
            return this;
        }

        public a c() {
            this.f37345q = false;
            return this;
        }

        public final a a(boolean z10, Consumer consumer) {
            Consumer b10 = C6628bi.b();
            if (z10) {
                consumer.accept(this);
                return this;
            }
            b10.accept(this);
            return this;
        }

        public a b() {
            this.f37347s = false;
            return this;
        }

        public final a a(final C4798y c4798y, final S5 s52) {
            return a(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    ((WY) obj2).a(C4798y.this, s52);
                }
            });
        }

        public a a(L4 l42) {
            this.f37329a = l42;
            return this;
        }

        public a a(A2 a22) {
            this.f37331c = a22;
            return this;
        }

        public final a a(AbstractC9530t40 abstractC9530t40) {
            if (!f37328u && abstractC9530t40.e()) {
                throw new AssertionError();
            }
            this.f37334f = abstractC9530t40;
            return this;
        }

        public final a a(final BiConsumer biConsumer) {
            this.f37348t = this.f37348t.andThen(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C4516j1.a.this.a(biConsumer, (C4516j1) obj);
                }
            });
            return this;
        }

        public final void a(BiConsumer biConsumer, C4516j1 c4516j1) {
            if (this.f37337i.d()) {
                biConsumer.accept(c4516j1, this.f37337i.c());
            }
        }

        public a a(AbstractC4497i0 abstractC4497i0) {
            this.f37330b = abstractC4497i0;
            return this;
        }

        public final a a(Function function) {
            this.f37330b = (AbstractC4497i0) function.apply(this.f37331c);
            return this;
        }

        public C4516j1 a() {
            AbstractC4497i0 abstractC4497i0;
            boolean z10 = f37328u;
            if (!z10 && this.f37345q && this.f37331c == null) {
                throw new AssertionError();
            }
            if (!z10 && this.f37329a == null) {
                throw new AssertionError();
            }
            if (!z10 && this.f37333e == null) {
                throw new AssertionError();
            }
            if (!z10 && this.f37335g == null) {
                throw new AssertionError();
            }
            if (!z10 && this.f37346r && !this.f37335g.isEmpty() && this.f37335g.size() != this.f37331c.f36127i.f36441f.size()) {
                throw new AssertionError();
            }
            if (!z10 && this.f37347s && this.f37340l == null) {
                throw new AssertionError();
            }
            if (!z10 && this.f37347s && this.f37341m == null) {
                throw new AssertionError();
            }
            if (!z10 && (abstractC4497i0 = this.f37330b) != null && !abstractC4497i0.C0() && this.f37344p != null) {
                throw new AssertionError();
            }
            C4516j1 c4516j1 = new C4516j1(this.f37331c, this.f37329a, this.f37332d, this.f37333e, this.f37335g, this.f37330b, this.f37344p, this.f37342n, this.f37340l, this.f37341m, this.f37339k, this.f37337i, this.f37343o);
            c4516j1.a(this.f37338j);
            c4516j1.f37319l = this.f37336h;
            if (!this.f37334f.e()) {
                c4516j1.a(this.f37334f);
            }
            this.f37348t.accept(c4516j1);
            return c4516j1;
        }

        public a(C4516j1 c4516j1, boolean z10) {
            TW tw;
            this.f37332d = H3.g.d();
            this.f37333e = C4723u0.l0();
            this.f37334f = AbstractC9530t40.f52519c;
            C4823z5 c4823z5 = C4823z5.f38465d;
            this.f37335g = c4823z5;
            this.f37336h = EnumC4535k1.f37407b;
            this.f37337i = C5160Fj.f40293b;
            this.f37338j = AbstractC10752b0.f55256b;
            this.f37339k = null;
            int i10 = com.android.tools.r8.androidapi.f.f35602a;
            com.android.tools.r8.androidapi.g gVar = com.android.tools.r8.androidapi.g.f35607b;
            this.f37340l = gVar;
            this.f37341m = gVar;
            this.f37343o = false;
            this.f37344p = null;
            this.f37345q = true;
            this.f37346r = true;
            this.f37347s = true;
            this.f37348t = C6628bi.b();
            this.f37331c = c4516j1.getReference();
            L4 accessFlags = c4516j1.getAccessFlags();
            this.f37329a = new L4(accessFlags.f37196b, accessFlags.f37197c);
            this.f37332d = c4516j1.A0();
            this.f37333e = c4516j1.k0();
            this.f37330b = c4516j1.Q0();
            this.f37344p = c4516j1.f37318k;
            this.f37340l = c4516j1.f37261e;
            this.f37341m = c4516j1.f37322o;
            c4516j1.L0();
            if (c4516j1.f37320m.d()) {
                c4516j1.L0();
                WY c10 = c4516j1.f37320m.c();
                c10.getClass();
                tw = new WY(c10);
            } else {
                c4516j1.L0();
                tw = c4516j1.f37320m;
            }
            this.f37337i = tw;
            this.f37338j = c4516j1.f37323p;
            this.f37339k = c4516j1.f37321n;
            this.f37342n = z10;
            this.f37343o = c4516j1.f37315h;
            if (!c4516j1.U0().isEmpty() && c4516j1.U0().size() != c4516j1.V0().size()) {
                C4823z5 U02 = c4516j1.U0();
                int size = c4516j1.V0().size();
                if (U02 != c4823z5) {
                    if (size != U02.size()) {
                        if (size < U02.size()) {
                            C4723u0[] c4723u0Arr = new C4723u0[size];
                            System.arraycopy(U02.f38467b, 0, c4723u0Arr, 0, size);
                            U02 = new C4823z5(c4723u0Arr, 0);
                        } else {
                            C4723u0[] c4723u0Arr2 = U02.f38467b;
                            U02 = new C4823z5(c4723u0Arr2, size - c4723u0Arr2.length);
                        }
                    }
                } else {
                    U02.getClass();
                }
                this.f37335g = U02;
                return;
            }
            this.f37335g = c4516j1.U0();
        }
    }

    static {
        L4 e10 = L4.e(0);
        H3.g d10 = H3.g.d();
        C4723u0 l02 = C4723u0.l0();
        C4823z5 c4823z5 = C4823z5.f38465d;
        int i10 = com.android.tools.r8.androidapi.f.f35602a;
        com.android.tools.r8.androidapi.g gVar = com.android.tools.r8.androidapi.g.f35607b;
        f37311v = new C4516j1(null, e10, d10, l02, c4823z5, null, null, false, gVar, gVar, null, C5160Fj.f40293b, false);
        f37312w = new GG(0);
    }

    public C4516j1(A2 a22, L4 l42, H3.g gVar, C4723u0 c4723u0, C4823z5 c4823z5, AbstractC4497i0 abstractC4497i0, A2 a23, boolean z10, com.android.tools.r8.androidapi.f fVar, com.android.tools.r8.androidapi.f fVar2, C5313Ib c5313Ib, TW tw, boolean z11) {
        super(a22, c4723u0, z10, fVar);
        AbstractC4497i0 abstractC4497i02;
        this.f37319l = EnumC4535k1.f37407b;
        this.f37323p = AbstractC10752b0.f55256b;
        this.f37325r = AbstractC9530t40.f52519c;
        this.f37326s = f37312w;
        this.f37327t = false;
        this.f37314g = l42;
        this.f37315h = z11;
        this.f37324q = gVar;
        this.f37316i = c4823z5;
        this.f37317j = abstractC4497i0;
        this.f37318k = a23;
        this.f37321n = c5313Ib;
        this.f37322o = fVar2;
        Objects.requireNonNull(tw);
        this.f37320m = tw;
        boolean z12 = f37313x;
        if (!z12 && l42 == null) {
            throw new AssertionError();
        }
        if (!z12 && abstractC4497i0 != null && v1()) {
            throw new AssertionError();
        }
        if (!z12 && (abstractC4497i02 = this.f37317j) != null && !abstractC4497i02.C0() && c1()) {
            throw new AssertionError();
        }
        if (!z12 && c4823z5 == null) {
            throw new AssertionError();
        }
        if (!z12 && fVar == null) {
            throw new AssertionError();
        }
        if (!z12 && fVar2 == null) {
            throw new AssertionError();
        }
    }

    public static a K0() {
        return new a(false);
    }

    public static a e(C4516j1 c4516j1) {
        return new a(c4516j1, true);
    }

    public static a w1() {
        return new a(true);
    }

    @Override
    public final KV D0() {
        L0();
        return this.f37320m;
    }

    @Override
    public final C4516j1 E() {
        return this;
    }

    public final boolean I0() {
        return this.f37314g.D();
    }

    public final boolean J0() {
        return !this.f37314g.D();
    }

    public final void L0() {
        if (!f37313x && this.f37327t) {
            throw new AssertionError();
        }
    }

    public String M0() {
        L0();
        AbstractC4497i0 abstractC4497i0 = this.f37317j;
        return abstractC4497i0 == null ? "<no code>" : abstractC4497i0.a(this, C9970vk0.f53318b);
    }

    public String N0() {
        L0();
        return a(AbstractC10992r0.a());
    }

    @Override
    public L4 getAccessFlags() {
        return this.f37314g;
    }

    public final C5313Ib P0() {
        L0();
        if (f37313x || this.f37321n != null) {
            return this.f37321n;
        }
        throw new AssertionError();
    }

    public AbstractC4497i0 Q0() {
        L0();
        return this.f37317j;
    }

    public final InterfaceC4443f3 R0() {
        AbstractC4497i0 Q02 = Q0();
        if (!f37313x && Q02 != null && !Q02.w0()) {
            throw new AssertionError();
        }
        if (Q02 == null) {
            return null;
        }
        return Q02.m0();
    }

    @Override
    public H3.g A0() {
        return this.f37324q;
    }

    public synchronized WY T0() {
        WY wy;
        L0();
        wy = (WY) this.f37320m.a();
        this.f37320m = wy;
        return wy;
    }

    public C4823z5 U0() {
        return this.f37316i;
    }

    public O2 V0() {
        return getReference().x0();
    }

    public final B60 W0() {
        if (!c1()) {
            return null;
        }
        if (!f37313x && !F0()) {
            throw new AssertionError();
        }
        B60.c.a a10 = B60.c.t().a(getReference());
        a10.f38816e = F0();
        return a((B60) ((B60.c.a) a10.c()).a(0).a());
    }

    public I2 X0() {
        return getReference().y0();
    }

    public M2 Y0() {
        return getReference().z0();
    }

    public final F2 Z0() {
        return new D2(getReference());
    }

    public final void a(A2 a22, C4798y c4798y, C6842cy c6842cy) {
        c6842cy.f47222b = a22;
        c6842cy.f47225e = true;
        A2 reference = getReference();
        M2 s02 = getReference().s0();
        s02.getClass();
        c6842cy.a(reference, c4798y.g(s02).isInterface());
    }

    public final boolean a1() {
        L0();
        return this.f37321n != null;
    }

    public final void b(A2 a22, C4798y c4798y, C6842cy c6842cy) {
        c6842cy.f47222b = a22;
        c6842cy.f47225e = false;
        A2 reference = getReference();
        M2 s02 = getReference().s0();
        s02.getClass();
        boolean isInterface = c4798y.g(s02).isInterface();
        c6842cy.f47223c = reference;
        c6842cy.f47226f = EnumC6509ay.f46667e;
        c6842cy.f47227g = Boolean.valueOf(isInterface);
    }

    public boolean b1() {
        return this.f37317j != null;
    }

    @Override
    public final com.android.tools.r8.kotlin.Q c0() {
        return this.f37323p;
    }

    public final boolean c1() {
        return this.f37318k != null;
    }

    public boolean d1() {
        return this.f37314g.H();
    }

    public boolean e1() {
        return this.f37314g.I();
    }

    public final void f(com.android.tools.r8.androidapi.f fVar) {
        if (!f37313x && fVar == null) {
            throw new AssertionError();
        }
        this.f37322o = fVar;
    }

    public boolean f1() {
        L0();
        return AbstractC4458g.d(this.f37314g.f37197c, 65536) && this.f37314g.n();
    }

    public final boolean g1() {
        if (w0() || d1()) {
            return false;
        }
        L0();
        return (this.f37314g.h() || j1()) ? false : true;
    }

    public boolean h1() {
        return this.f37314g.e();
    }

    public boolean i1() {
        L0();
        return j1() || f1();
    }

    public M2 j(int i10) {
        return getReference().k(i10);
    }

    @Override
    public String j0() {
        L0();
        return getReference().j0();
    }

    public boolean j1() {
        L0();
        return AbstractC4458g.d(this.f37314g.f37197c, 65536) && !this.f37314g.n();
    }

    public C4723u0 k(int i10) {
        return U0().j(i10);
    }

    public AbstractC9530t40 k1() {
        return n1() ? this.f37325r : AbstractC9530t40.f52518b;
    }

    public final boolean l1() {
        return this.f37314g.J();
    }

    @Override
    public final InterfaceC5638Nq0<C4516j1> m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                C4516j1.a(abstractC5754Pq0);
            }
        };
    }

    public final boolean m1() {
        L0();
        return (this.f37314g.H() || this.f37314g.J()) ? false : true;
    }

    public boolean n1() {
        L0();
        L0();
        return !this.f37314g.h() && r1();
    }

    @Override
    public final C4516j1 o0() {
        L0();
        return this;
    }

    public final boolean o1() {
        L0();
        return this.f37319l != EnumC4535k1.f37407b;
    }

    public boolean p1() {
        L0();
        return this.f37314g.l();
    }

    public boolean q1() {
        L0();
        return this.f37314g.o();
    }

    @Override
    public boolean r0() {
        return q0() || !U0().isEmpty();
    }

    public boolean r1() {
        L0();
        return (this.f37314g.n() || AbstractC4458g.d(this.f37314g.f37197c, 65536)) ? false : true;
    }

    public final void s1() {
        L0();
        this.f37319l = EnumC4535k1.f37407b;
    }

    @Override
    public final void t() {
        this.f37324q = H3.g.d();
    }

    public String t1() {
        L0();
        return getReference().A0();
    }

    public String toString() {
        return j0();
    }

    public M2 u1() {
        return getReference().f36127i.f36440e;
    }

    @Override
    public final boolean v0() {
        L0();
        return true;
    }

    public boolean v1() {
        return this.f37314g.H() || this.f37314g.J();
    }

    @Override
    public boolean w0() {
        L0();
        return this.f37314g.n();
    }

    @Override
    public final boolean x0() {
        L0();
        return w0();
    }

    @Override
    public final void y() {
        this.f37066b = C4723u0.l0();
        this.f37316i = C4823z5.f38465d;
    }

    @Override
    public final void y0() {
        this.f37323p = AbstractC10752b0.f55256b;
    }

    @Override
    public final com.android.tools.r8.androidapi.f z0() {
        com.android.tools.r8.androidapi.f fVar = this.f37261e;
        return v1() ? fVar : fVar.a(this.f37322o);
    }

    public static C4666r0 c(BiFunction biFunction, C4666r0 c4666r0) {
        return (C4666r0) biFunction.apply(c4666r0, EnumC4629p0.f37569e);
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.e(new I9()).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C4516j1) obj).getAccessFlags();
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C4516j1) obj).k0();
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                C4823z5 c4823z5;
                c4823z5 = ((C4516j1) obj).f37316i;
                return c4823z5;
            }
        }).j(new Function() {
            @Override
            public final Object apply(Object obj) {
                C5313Ib c5313Ib;
                c5313Ib = ((C4516j1) obj).f37321n;
                return c5313Ib;
            }
        }).b(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((C4516j1) obj).F0();
            }
        }).j(new Function() {
            @Override
            public final Object apply(Object obj) {
                A2 a22;
                a22 = ((C4516j1) obj).f37318k;
                return a22;
            }
        }).a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean a10;
                a10 = ((C4516j1) obj).f37324q.a();
                return a10;
            }
        }).a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C4516j1) obj).Q0();
            }
        }, new InterfaceC5465Kq0() {
            @Override
            public final int a(Object obj, Object obj2, AbstractC8953pf abstractC8953pf) {
                return C4516j1.a((AbstractC4497i0) obj, (AbstractC4497i0) obj2, abstractC8953pf);
            }
        }, new InterfaceC5523Lq0() {
            @Override
            public final void a(Object obj, AbstractC9213rA abstractC9213rA) {
                C4516j1.a((AbstractC4497i0) obj, abstractC9213rA);
            }
        });
    }

    public final boolean b(C4798y c4798y, C4516j1 c4516j1) {
        boolean z10 = f37313x;
        if (!z10 && getReference().y0() != c4516j1.getReference().y0()) {
            throw new AssertionError();
        }
        if (!z10 && !c4798y.a(B0(), c4516j1.B0()).d() && !c4798y.a(c4516j1.B0(), B0()).d()) {
            throw new AssertionError();
        }
        L4 accessFlags = getAccessFlags();
        if (accessFlags.d() < c4516j1.getAccessFlags().d()) {
            return false;
        }
        if (accessFlags.h()) {
            return B0() == c4516j1.B0();
        }
        if (accessFlags.l()) {
            return true;
        }
        if (z10 || accessFlags.f() || accessFlags.k()) {
            return B0().A0().equals(c4516j1.B0().A0());
        }
        throw new AssertionError();
    }

    public static int a(AbstractC4497i0 abstractC4497i0, AbstractC4497i0 abstractC4497i02, AbstractC8953pf abstractC8953pf) {
        if (abstractC4497i0 == abstractC4497i02) {
            return 0;
        }
        if (abstractC4497i0 != null && abstractC4497i02 != null) {
            if (abstractC4497i0.A0() && abstractC4497i02.A0()) {
                return abstractC4497i0.o0().a(abstractC4497i02.o0(), abstractC8953pf);
            }
            if (abstractC4497i0.u0() && abstractC4497i02.u0()) {
                P l02 = abstractC4497i0.l0();
                P l03 = abstractC4497i02.l0();
                int A10 = l02.A();
                int A11 = l03.A();
                if (A10 != A11) {
                    return AbstractC4291c.a(A10, A11);
                }
                int b10 = AbstractC4291c.b(A10);
                if (b10 == 0) {
                    return l02.V().a(l03.V(), abstractC8953pf);
                }
                if (b10 == 1 || b10 == 2) {
                    return 0;
                }
                throw new C5417Jv0();
            }
            if (abstractC4497i0.w0() && abstractC4497i02.w0()) {
                return abstractC4497i0.m0().a(abstractC4497i02.m0(), abstractC8953pf);
            }
            throw new C5417Jv0("Unexpected attempt to compare incompatible synthetic objects: " + ((Object) abstractC4497i0) + " and " + ((Object) abstractC4497i02));
        }
        return abstractC8953pf.a(abstractC4497i0 != null, abstractC4497i02 != null);
    }

    public static C4666r0 b(BiFunction biFunction, C4666r0 c4666r0) {
        return (C4666r0) biFunction.apply(c4666r0, EnumC4629p0.f37567c);
    }

    public static void a(AbstractC4497i0 abstractC4497i0, AbstractC9213rA abstractC9213rA) {
        if (abstractC4497i0 == null) {
            return;
        }
        if (abstractC4497i0.A0()) {
            abstractC4497i0.o0().a(abstractC9213rA);
            return;
        }
        if (abstractC4497i0.u0()) {
            abstractC4497i0.l0().a(abstractC9213rA);
        } else {
            if (!f37313x && !abstractC4497i0.w0()) {
                throw new AssertionError();
            }
            abstractC4497i0.m0().a(abstractC9213rA);
        }
    }

    public final void a(AbstractC9530t40 abstractC9530t40) {
        boolean z10 = f37313x;
        if (!z10 && !n1()) {
            throw new AssertionError();
        }
        if (!z10 && abstractC9530t40.e()) {
            throw new AssertionError();
        }
        if (!z10 && !abstractC9530t40.b() && !this.f37325r.c()) {
            throw new AssertionError((Object) ("Method `" + getReference().j0() + "` went from not overriding a library method to overriding a library method"));
        }
        if (!z10 && !abstractC9530t40.c() && !this.f37325r.b()) {
            throw new AssertionError((Object) ("Method `" + getReference().j0() + "` went from overriding a library method to not overriding a library method"));
        }
        this.f37325r = abstractC9530t40;
    }

    @Override
    public final Object a(Function function, Function function2) {
        return function2.apply(this);
    }

    public final H5 a(H2 h22) {
        if (f37313x || B0() == h22.getType()) {
            return new H5(h22, this);
        }
        throw new AssertionError();
    }

    public final void a(InterfaceC10764d0 interfaceC10764d0) {
        if (!f37313x && this.f37323p != AbstractC10752b0.f55256b) {
            throw new AssertionError();
        }
        this.f37323p = interfaceC10764d0;
    }

    public final boolean a(C4798y c4798y, H5 h52, AbstractC5015Cx0 abstractC5015Cx0) {
        L0();
        C4514j c4514j = (C4514j) c4798y.f();
        switch (this.f37319l.ordinal()) {
            case 0:
                abstractC5015Cx0.i();
                return false;
            case 1:
                abstractC5015Cx0.h();
                return false;
            case 2:
                return true;
            case 3:
                if (c4514j.c(h52.p(), B0())) {
                    return true;
                }
                abstractC5015Cx0.e();
                return false;
            case 4:
                if (h52.a(B0())) {
                    return true;
                }
                abstractC5015Cx0.d();
                return false;
            case 5:
                if (AbstractC10709g0.a(h52.p(), B0(), c4514j)) {
                    return true;
                }
                abstractC5015Cx0.c();
                return false;
            case 6:
                if (h52.p().a(B0())) {
                    return true;
                }
                abstractC5015Cx0.b();
                return false;
            default:
                throw new C5417Jv0("Unexpected compilation state: " + ((Object) this.f37319l));
        }
    }

    public final boolean a(com.android.tools.r8.ir.optimize.O o10) {
        L0();
        EnumC4535k1 enumC4535k1 = this.f37319l;
        switch (AbstractC4498i1.f37286b[o10.f54789a.ordinal()]) {
            case 1:
                this.f37319l = EnumC4535k1.f37409d;
                break;
            case 2:
                this.f37319l = EnumC4535k1.f37410e;
                break;
            case 3:
                this.f37319l = EnumC4535k1.f37411f;
                break;
            case 4:
                this.f37319l = EnumC4535k1.f37412g;
                break;
            case 5:
                this.f37319l = EnumC4535k1.f37413h;
                break;
            case 6:
                this.f37319l = EnumC4535k1.f37408c;
                break;
        }
        return enumC4535k1 != this.f37319l;
    }

    public final void a(AbstractC4497i0 abstractC4497i0, SG sg2) {
        L0();
        if (abstractC4497i0 != null && !abstractC4497i0.C0() && c1()) {
            if (!f37313x) {
                a(abstractC4497i0);
            }
            this.f37318k = null;
        }
        this.f37317j = abstractC4497i0;
        this.f37326s = sg2;
    }

    public final void a(AbstractC4497i0 abstractC4497i0) {
        final com.android.tools.r8.internal.U6 u62 = new com.android.tools.r8.internal.U6(false);
        A2 reference = getReference();
        L0();
        abstractC4497i0.a(reference, true, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4516j1.this.a(u62, (B60) obj);
            }
        });
        if (!f37313x && !u62.d()) {
            throw new AssertionError();
        }
    }

    public final void a(com.android.tools.r8.internal.U6 u62, B60 b60) {
        if (u62.d()) {
            return;
        }
        do {
            if (!b60.f38811f && b60.f38808c.equals(this.f37318k)) {
                u62.c(true);
                return;
            }
            b60 = b60.f38809d;
        } while (b60 != null);
    }

    @Override
    public final void a(com.android.tools.r8.dex.X x10) {
        x10.b(this);
    }

    public final B60 a(B60 b60) {
        if (!f37313x && b60 == null) {
            throw new AssertionError();
        }
        if (!c1()) {
            return b60;
        }
        B60.c.a a10 = B60.c.t().a(0).a(this.f37318k);
        a10.f38814c = b60;
        return ((B60.c.a) a10.c()).a();
    }

    public final void a(C5313Ib c5313Ib) {
        L0();
        if (!f37313x && c5313Ib == null) {
            throw new AssertionError();
        }
        this.f37321n = (C5313Ib) C40.b(this.f37321n, c5313Ib);
    }

    public final String a(AbstractC10992r0 abstractC10992r0) {
        L0();
        StringBuilder sb2 = new StringBuilder("(");
        for (M2 m22 : getReference().f36127i.f36441f.f36675b) {
            sb2.append(abstractC10992r0.c(m22).toString());
        }
        sb2.append(")");
        sb2.append(abstractC10992r0.c(getReference().f36127i.f36440e).toString());
        return sb2.toString();
    }

    @Override
    public final void a(final BiFunction biFunction) {
        this.f37066b = k0().a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4516j1.b(BiFunction.this, (C4666r0) obj);
            }
        });
        this.f37316i = U0().a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4516j1.c(BiFunction.this, (C4666r0) obj);
            }
        });
    }

    public static void a(AbstractC4497i0 abstractC4497i0, int i10, C4798y c4798y) {
        if (abstractC4497i0.v0()) {
            J0 C10 = abstractC4497i0.C();
            W0.a a10 = C10.a(c4798y.b());
            if (!f37313x && a10 != null && i10 != a10.f36925f.length) {
                throw new AssertionError();
            }
            C10.a((W0) a10);
            return;
        }
        if (abstractC4497i0.t0()) {
            abstractC4497i0.V().a(c4798y.b());
            return;
        }
        if (abstractC4497i0.A0()) {
            boolean z10 = f37313x;
            if (!z10 && c4798y.E().f50690i1) {
                throw new AssertionError();
            }
            if (!z10 && abstractC4497i0.o0().f45411m != null) {
                throw new AssertionError();
            }
        }
    }

    public final WS a(C4798y c4798y) {
        L0();
        C4724u1 b10 = c4798y.b();
        V.b a10 = V.b.a(getReference());
        L2 b11 = b10.b("Shaking error: Missing method in " + getReference().f38297f.j0() + ": " + ((Object) a10));
        L2 b12 = b10.b("[R8]");
        M2 m22 = b10.f38006a4;
        A2 a11 = b10.a(m22, b10.a(m22, b10.f38052g2), b10.b("getLogger"));
        A2 a12 = b10.a(m22, b10.a(b10.f37905M1, b10.f38052g2), b10.b("severe"));
        M2 m23 = b10.f38157t3;
        A2 a13 = b10.a(m23, b10.a(b10.f37905M1, b10.f38052g2), b10.f38067i1);
        C6949de a14 = AbstractC8999pu0.a((C4798y<?>) c4798y, C8854p10.b());
        AbstractC8999pu0 b13 = m22.b((C4798y<?>) c4798y);
        C8854p10 b14 = C8854p10.b();
        m23.getClass();
        AbstractC8999pu0 a15 = AbstractC8999pu0.a(m23, b14, (C4798y<?>) c4798y);
        C7702i60 c7702i60 = new C7702i60();
        PS a16 = WS.a(getReference(), F0(), c7702i60, c4798y.E());
        int i10 = 0;
        while (i10 < getReference().a(w0())) {
            getReference().a(i10, w0()).F0();
            a16.a(i10);
            i10++;
        }
        C10340xw0 c10340xw0 = new C10340xw0(i10, a14, null);
        c7702i60.f48841b.b(c10340xw0.t(), c10340xw0);
        a16.getClass();
        List singletonList = Collections.singletonList(b12);
        List list = Collections.EMPTY_LIST;
        a16.a(18, singletonList, list);
        C10340xw0 c10340xw02 = new C10340xw0(i10 + 1, b13, null);
        c7702i60.f48841b.b(c10340xw02.t(), c10340xw02);
        a16.a(184, Collections.singletonList(a11), new C5920Sm0(c10340xw0));
        C10340xw0 c10340xw03 = new C10340xw0(i10 + 2, a14, null);
        c7702i60.f48841b.b(c10340xw03.t(), c10340xw03);
        a16.a(18, Collections.singletonList(b11), list);
        a16.a(182, Collections.singletonList(a12), AbstractC7552hC.a(c10340xw02, c10340xw03));
        C10340xw0 c10340xw04 = new C10340xw0(i10 + 4, a15, null);
        c7702i60.f48841b.b(c10340xw04.t(), c10340xw04);
        a16.a(187, Collections.singletonList(m23), list).a(205, Collections.singletonList(a13), AbstractC7552hC.a(c10340xw04, c10340xw03));
        a16.a(191, list, Collections.singletonList(c10340xw04));
        return a16.d();
    }

    public final G a(C4724u1 c4724u1) {
        L0();
        V.b a10 = V.b.a(getReference());
        L2 b10 = c4724u1.b("Shaking error: Missing method in " + getReference().f38297f.j0() + ": " + ((Object) a10));
        L2 b11 = c4724u1.b("[R8]");
        M2 m22 = c4724u1.f38006a4;
        A2 a11 = c4724u1.a(m22, c4724u1.a(m22, c4724u1.f38052g2), c4724u1.b("getLogger"));
        A2 a12 = c4724u1.a(m22, c4724u1.a(c4724u1.f37905M1, c4724u1.f38052g2), c4724u1.b("severe"));
        M2 m23 = c4724u1.f38157t3;
        A2 a13 = c4724u1.a(m23, c4724u1.a(c4724u1.f37905M1, c4724u1.f38052g2), c4724u1.f38067i1);
        int size = getReference().f36127i.f36441f.size();
        int i10 = size + 1;
        L0();
        if (!w0()) {
            i10 = size + 2;
        }
        int i11 = i10;
        C7051eC c7051eC = new C7051eC();
        C7051eC a14 = c7051eC.a(new com.android.tools.r8.internal.A9(b11)).a(new C7437ga(184, a11, false));
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
        int i12 = i11 - 1;
        a14.a(new C10443yb(enumC5477Kw0, i12)).a(new C8938pa(enumC5477Kw0, i12)).a(new com.android.tools.r8.internal.A9(b10)).a(new C7437ga(182, a12, false)).a(new C10106wa(m23)).a(new C8106kb(C8106kb.a.Dup)).a(new com.android.tools.r8.internal.A9(b10)).a(new C7437ga(183, a13, false)).a(new C4965Cb());
        M2 m24 = getReference().f38297f;
        AbstractC7552hC a15 = c7051eC.a();
        List list = Collections.EMPTY_LIST;
        return new G(m24, 3, i11, a15, list, list);
    }

    public final C4516j1 a(final A2 a22, final C4724u1 c4724u1, final Consumer consumer) {
        final boolean z10 = true;
        Consumer consumer2 = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4516j1.this.a(a22, z10, c4724u1, consumer, (C4516j1.a) obj);
            }
        };
        L0();
        a e10 = e(this);
        if (n1() && k1() != AbstractC9530t40.f52519c) {
            e10.a(k1());
        }
        e10.a(a22);
        consumer2.accept(e10);
        return e10.a();
    }

    public final void a(A2 a22, boolean z10, C4724u1 c4724u1, Consumer consumer, a aVar) {
        AbstractC4497i0 abstractC4497i0;
        AbstractC4497i0 abstractC4497i02 = this.f37317j;
        if (abstractC4497i02 != null && !abstractC4497i02.C0()) {
            aVar.a(Q0().a(a22, z10, getReference(), F0(), c4724u1));
        } else {
            A2 reference = getReference();
            boolean F02 = F0();
            boolean z11 = a.f37328u;
            if (!z11 && (abstractC4497i0 = aVar.f37330b) != null && !abstractC4497i0.C0()) {
                throw new AssertionError();
            }
            if (F02) {
                aVar.getClass();
            } else {
                if (!z11 && aVar.f37344p != null) {
                    throw new AssertionError();
                }
                aVar.f37344p = reference;
            }
        }
        if (consumer != null) {
            AbstractC4497i0 abstractC4497i03 = aVar.f37330b;
            consumer.accept(aVar);
            if (!f37313x && abstractC4497i03 != aVar.f37330b) {
                throw new AssertionError();
            }
        }
    }

    public final H5 a(H2 h22, A2 a22, C4724u1 c4724u1) {
        boolean z10 = f37313x;
        if (!z10 && w0()) {
            throw new AssertionError();
        }
        if (!z10 && G0()) {
            throw new AssertionError();
        }
        if (!z10 && !B0().a(a22.s0())) {
            throw new AssertionError();
        }
        L0();
        return new H5(h22, a(a22, c4724u1, new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C4516j1.a) obj).b(new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        C4516j1.a((L4) obj2);
                    }
                });
            }
        }));
    }

    public static void a(L4 l42) {
        l42.z();
        l42.B();
        l42.C();
        l42.u();
    }

    public final C4516j1 a(final C4798y c4798y, E0 e02, Consumer consumer) {
        A2 reference = getReference();
        C4724u1 b10 = c4798y.b();
        reference.getClass();
        final A2 a10 = reference.a(e02.S(), b10);
        L0();
        this.f37314g.a();
        a b11 = e(this).a(a10).b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((L4) obj).z();
            }
        });
        b11.f37332d = H3.g.d();
        a a11 = b11.a(!d1(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4516j1.this.a(c4798y, a10, (C4516j1.a) obj);
            }
        });
        boolean z10 = (w0() || k1().e()) ? false : true;
        AbstractC9530t40 k12 = k1();
        if (z10) {
            a11 = a11.a(k12);
        }
        return a11.a(consumer).a();
    }

    public final void a(final C4798y c4798y, final A2 a22, a aVar) {
        C6842cy a10 = new C6842cy(c4798y.b()).a(w0(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4516j1.this.a(a22, c4798y, (C6842cy) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4516j1.this.b(a22, c4798y, (C6842cy) obj);
            }
        });
        aVar.a(c4798y.H().c() ? a10.a(c4798y) : a10.a()).b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((L4) obj).N();
            }
        });
    }

    public static C4516j1 a(H0 h02, E0 e02, A2 a22, C4724u1 c4724u1, boolean z10) {
        boolean z11 = f37313x;
        if (!z11 && a22 == null) {
            throw new AssertionError();
        }
        A2 reference = h02.getReference();
        reference.getClass();
        A2 a10 = reference.a(e02.S(), c4724u1);
        L4 accessFlags = h02.getAccessFlags();
        L4 l42 = new L4(accessFlags.f37196b, accessFlags.f37197c);
        l42.z();
        l42.b(1024);
        C6842cy c6842cy = new C6842cy(c4724u1);
        c6842cy.f47222b = a10;
        c6842cy.f47225e = false;
        if (z10) {
            c6842cy.a(a22, false);
        } else {
            c6842cy.b(a22, false);
        }
        if (!a22.z0().a(h02.E())) {
            if (!z11 && !h02.E().S0()) {
                throw new AssertionError();
            }
            c6842cy.f47229i = true;
        }
        a a11 = new a(true).a(a10).a(l42);
        a11.f37332d = H3.g.d();
        a11.f37333e = C4723u0.l0();
        a a12 = a11.a(c6842cy.a());
        a12.f37340l = h02.d().f37261e;
        a12.f37341m = h02.d().f37322o;
        return a12.a();
    }

    public final void a(WY wy) {
        L0();
        this.f37320m = wy;
    }

    public final void a(C4798y c4798y, C4516j1 c4516j1) {
        L0();
        if (c4516j1.a1()) {
            a(c4516j1.P0());
        }
        if (c4798y.E().a().e() && c4798y.m()) {
            this.f37322o = this.f37322o.a(c4516j1.f37322o);
        }
    }
}
