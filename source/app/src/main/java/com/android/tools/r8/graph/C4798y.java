package com.android.tools.r8.graph;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC5409Jr0;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6136Wf0;
import com.android.tools.r8.internal.AbstractC7160et;
import com.android.tools.r8.internal.AbstractC7696i40;
import com.android.tools.r8.internal.AbstractC8194l4;
import com.android.tools.r8.internal.AbstractC9109qb0;
import com.android.tools.r8.internal.AbstractC9148qo0;
import com.android.tools.r8.internal.AbstractC9530t40;
import com.android.tools.r8.internal.AbstractC9723uD;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C10057wD;
import com.android.tools.r8.internal.C10215xA;
import com.android.tools.r8.internal.C10325xr0;
import com.android.tools.r8.internal.C10444yb0;
import com.android.tools.r8.internal.C5093Ef;
import com.android.tools.r8.internal.C5267Hf;
import com.android.tools.r8.internal.C5334Ij;
import com.android.tools.r8.internal.C5412Jt;
import com.android.tools.r8.internal.C5467Kr0;
import com.android.tools.r8.internal.C5485La0;
import com.android.tools.r8.internal.C5556Mf;
import com.android.tools.r8.internal.C5658Oa0;
import com.android.tools.r8.internal.C5711Oy;
import com.android.tools.r8.internal.C6300Zd;
import com.android.tools.r8.internal.C6588bS;
import com.android.tools.r8.internal.C6620bf0;
import com.android.tools.r8.internal.C6678bz;
import com.android.tools.r8.internal.C6807cm0;
import com.android.tools.r8.internal.C6845cz;
import com.android.tools.r8.internal.C6929dW;
import com.android.tools.r8.internal.C7119ef0;
import com.android.tools.r8.internal.C7325fs0;
import com.android.tools.r8.internal.C7358g3;
import com.android.tools.r8.internal.C8115ke;
import com.android.tools.r8.internal.C8191l3;
import com.android.tools.r8.internal.C8268lZ;
import com.android.tools.r8.internal.C8325ls0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C8664nu;
import com.android.tools.r8.internal.C8674nx0;
import com.android.tools.r8.internal.C9265rX;
import com.android.tools.r8.internal.CA;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.internal.InterfaceC5351Ir0;
import com.android.tools.r8.internal.InterfaceC5930Sr0;
import com.android.tools.r8.internal.InterfaceC6160Wr0;
import com.android.tools.r8.internal.InterfaceC7158es0;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.internal.R00;
import com.android.tools.r8.internal.TV;
import com.android.tools.r8.internal.VD;
import com.android.tools.r8.internal.XR;
import com.android.tools.r8.internal.XV;
import com.android.tools.r8.naming.AbstractC10992r0;
import com.android.tools.r8.shaking.AbstractC11432t1;
import com.android.tools.r8.shaking.AbstractC11516y1;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11278k;
import com.android.tools.r8.shaking.C11295l;
import com.android.tools.r8.shaking.C11333n3;
import com.android.tools.r8.shaking.C11349o2;
import com.android.tools.r8.shaking.C11382q1;
import com.android.tools.r8.shaking.InterfaceC11248i2;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.Arrays;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public class C4798y<T extends C4477h> implements InterfaceC4403d1, InterfaceC11248i2 {

    public static final boolean f38385W = true;

    public C8191l3 f38386A;

    public final XR f38387B;

    public final C5658Oa0 f38388C;

    public C10057wD f38391F;

    public C8674nx0 f38393H;

    public AbstractC7696i40 f38395J;

    public Set f38396K;

    public final IdentityHashMap f38397L;

    public final IdentityHashMap f38398M;

    public com.android.tools.r8.naming.S0 f38399N;

    public final C10444yb0 f38400O;

    public Set f38401P;

    public final C5267Hf f38402Q;

    public final Thread f38403R;

    public final com.android.tools.r8.androidapi.a f38404S;

    public final com.android.tools.r8.androidapi.f f38405T;

    public boolean f38406U;

    public final int f38407V;

    public C4477h f38408a;

    public C4514j f38409b;

    public C4552l f38410c;

    public AbstractC8194l4 f38411d;

    public final AbstractC7160et f38413f;

    public AbstractC9723uD f38417j;

    public C11333n3 f38420m;

    public com.android.tools.r8.shaking.D4 f38421n;

    public AbstractC9148qo0 f38424q;

    public final com.android.tools.r8.internal.G1 f38427t;

    public final com.android.tools.r8.internal.H1 f38428u;

    public final com.android.tools.r8.internal.I1 f38429v;

    public final com.android.tools.r8.internal.J1 f38430w;

    public final C6588bS f38433z;

    public C11295l f38412e = new C11278k().a();

    public AbstractC5308Hz f38414g = AbstractC5308Hz.g();

    public AbstractC5308Hz f38415h = AbstractC5308Hz.g();

    public AbstractC5308Hz f38416i = AbstractC5308Hz.g();

    public AbstractC5308Hz f38418k = AbstractC5308Hz.g();

    public AbstractC10992r0 f38419l = AbstractC10992r0.a();

    public C9265rX f38422o = C9265rX.f52055b;

    public com.android.tools.r8.shaking.B4 f38423p = null;

    public AbstractC11516y1 f38425r = null;

    public C5556Mf f38426s = null;

    public final VD f38431x = new VD();

    public final C6807cm0 f38432y = new C6807cm0();

    public boolean f38389D = false;

    public Predicate f38390E = EnumC6871d70.f47286b;

    public CA f38392G = new CA(new C5412Jt());

    public C8664nu f38394I = null;

    public C4798y(C4477h c4477h, AbstractC8194l4 abstractC8194l4, AbstractC9148qo0 abstractC9148qo0, int i10, final C8659ns0 c8659ns0) {
        boolean z10 = false;
        boolean z11 = AbstractC7696i40.f48775a;
        this.f38395J = C5334Ij.f41189b;
        int i11 = QC.f43505c;
        this.f38396K = C7119ef0.f47742j;
        this.f38397L = new IdentityHashMap();
        this.f38398M = new IdentityHashMap();
        this.f38400O = null;
        this.f38401P = null;
        this.f38403R = Thread.currentThread();
        this.f38406U = false;
        if (!f38385W && c4477h == null) {
            throw new AssertionError();
        }
        this.f38408a = c4477h;
        this.f38402Q = (C5267Hf) c8659ns0.a("Compilation context", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return C4798y.this.x();
            }
        });
        this.f38407V = i10;
        this.f38427t = new com.android.tools.r8.internal.G1();
        this.f38428u = new com.android.tools.r8.internal.H1(this);
        if (m()) {
            this.f38429v = new com.android.tools.r8.internal.I1(L());
            this.f38430w = new com.android.tools.r8.internal.J1(L());
        } else {
            this.f38429v = null;
            this.f38430w = null;
        }
        this.f38411d = abstractC8194l4;
        this.f38424q = abstractC9148qo0;
        this.f38413f = (AbstractC7160et) c8659ns0.a("Dont warn config", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return C4798y.this.y();
            }
        });
        this.f38417j = (AbstractC9723uD) c8659ns0.a("Init class lens", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return AbstractC9723uD.a();
            }
        });
        c8659ns0.b("Create argument propagator");
        if (m()) {
            C8570nJ.b c10 = E().c();
            if (C8570nJ.this.T() && C8570nJ.this.W()) {
                z10 = c10.f50743a;
            }
            if (z10) {
                this.f38386A = new C8191l3(M());
                if (m() && E().S()) {
                    this.f38400O = AbstractC6136Wf0.a(this);
                }
                c8659ns0.d();
                this.f38433z = (C6588bS) c8659ns0.a("Library side-effects", new InterfaceC7158es0() {
                    @Override
                    public final Object get() {
                        return C4798y.this.z();
                    }
                });
                this.f38387B = (XR) c8659ns0.a("Library optimizer", new InterfaceC7158es0() {
                    @Override
                    public final Object get() {
                        return C4798y.this.a(c8659ns0);
                    }
                });
                this.f38388C = (C5658Oa0) c8659ns0.a("Proto shrinker", new InterfaceC7158es0() {
                    @Override
                    public final Object get() {
                        return C4798y.this.A();
                    }
                });
                this.f38404S = (com.android.tools.r8.androidapi.a) c8659ns0.a("ApiLevel compute", new InterfaceC7158es0() {
                    @Override
                    public final Object get() {
                        return C4798y.this.B();
                    }
                });
                this.f38405T = (com.android.tools.r8.androidapi.f) c8659ns0.a("ApiLevel computed", new InterfaceC7158es0() {
                    @Override
                    public final Object get() {
                        return C4798y.this.C();
                    }
                });
            }
        }
        this.f38386A = null;
        if (m()) {
            this.f38400O = AbstractC6136Wf0.a(this);
        }
        c8659ns0.d();
        this.f38433z = (C6588bS) c8659ns0.a("Library side-effects", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return C4798y.this.z();
            }
        });
        this.f38387B = (XR) c8659ns0.a("Library optimizer", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return C4798y.this.a(c8659ns0);
            }
        });
        this.f38388C = (C5658Oa0) c8659ns0.a("Proto shrinker", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return C4798y.this.A();
            }
        });
        this.f38404S = (com.android.tools.r8.androidapi.a) c8659ns0.a("ApiLevel compute", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return C4798y.this.B();
            }
        });
        this.f38405T = (com.android.tools.r8.androidapi.f) c8659ns0.a("ApiLevel computed", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return C4798y.this.C();
            }
        });
    }

    public final C5658Oa0 A() {
        C4798y<C11245i> M10 = M();
        if (!M10.m() || !M10.E().a0().a()) {
            return null;
        }
        C5485La0 c5485La0 = new C5485La0(M10.b());
        if (M10.g(c5485La0.f41997i) != null) {
            return new C5658Oa0(M10, c5485La0);
        }
        M10.E().f50691j.warning(new StringDiagnostic("Ignoring -shrinkunusedprotofields since the protobuf-lite runtime is missing"));
        C8570nJ.n a02 = M10.E().a0();
        a02.f50797a = false;
        a02.f50798b = false;
        a02.f50799c = false;
        a02.f50800d = false;
        a02.f50801e = false;
        return null;
    }

    public final com.android.tools.r8.androidapi.a B() {
        return com.android.tools.r8.androidapi.a.a((C4798y<?>) this);
    }

    public final com.android.tools.r8.androidapi.f C() {
        return this.f38404S.a(E());
    }

    public final void D() {
        if (E().B().r()) {
            this.f38399N = com.android.tools.r8.naming.S0.a(E().f50691j, E().B().d());
        }
    }

    public C8570nJ E() {
        return this.f38408a.j();
    }

    public final void F() {
        b(e());
    }

    public com.android.tools.r8.shaking.D4 G() {
        return this.f38421n;
    }

    public C8570nJ.p H() {
        return E().f50599F1;
    }

    public final C8664nu I() {
        if (w()) {
            return this.f38394I;
        }
        C6620bf0 c6620bf0 = C6620bf0.f46817i;
        return new C8664nu(c6620bf0, c6620bf0);
    }

    public final void J() {
        C8664nu c8664nu = this.f38394I;
        c8664nu.getClass();
        Set<M2> c10 = AbstractC5513Ll0.c();
        c10.addAll(c8664nu.f51108a.keySet());
        c10.addAll(c8664nu.f51109b.keySet());
        for (M2 m22 : c10) {
            boolean z10 = f38385W;
            if (!z10 && this.f38408a.c(m22) != null) {
                throw new AssertionError((Object) ("Enum " + ((Object) m22) + " has been unboxed but is still in the program."));
            }
            if (!z10 && !f().m().j(m22)) {
                throw new AssertionError((Object) ("Enum " + ((Object) m22) + " has been unboxed but was not pruned."));
            }
        }
    }

    public final void K() {
        e().a().e().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((H2) obj).l(new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        C4798y.b((H5) obj2);
                    }
                });
            }
        });
    }

    public final C4798y L() {
        if (this.f38408a.h()) {
            return this;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C4798y<C11245i> M() {
        return this;
    }

    public final C4798y N() {
        if (f38385W || !f().h()) {
            return this;
        }
        throw new AssertionError();
    }

    public final XR a(C8659ns0 c8659ns0) {
        return new XR(this, c8659ns0);
    }

    /* JADX WARN: Incorrect types in method signature: <U:TT;>(TU;)Lcom/android/tools/r8/graph/y<TU;>; */
    public C4798y b(C4477h c4477h) {
        if (!f38385W && c4477h.f37259f.a()) {
            throw new AssertionError();
        }
        C4477h c4477h2 = this.f38408a;
        this.f38408a = c4477h;
        this.f38409b = null;
        if (c4477h != c4477h2) {
            c4477h2.f37259f.e();
        }
        if (c4477h.i()) {
            this.f38425r = c4477h.m().f57407v;
        }
        return this;
    }

    public final C6929dW c() {
        C6929dW c6929dW = new C6929dW();
        if (!this.f38392G.f39147a.isEmpty()) {
            c6929dW.f47412a.add(this.f38392G);
        }
        C8674nx0 c8674nx0 = this.f38393H;
        if (c8674nx0 != null) {
            c6929dW.f47412a.add(c8674nx0);
        }
        return c6929dW;
    }

    @Override
    public final boolean d(M2 m22) {
        return this.f38387B.f45706c.contains(m22);
    }

    public AbstractC4780x0 e() {
        return f().a();
    }

    public T f() {
        if (f38385W || !this.f38408a.h() || m()) {
            return (T) this.f38408a;
        }
        throw new AssertionError();
    }

    public C4514j g() {
        if (m()) {
            if (f38385W || this.f38408a.h()) {
                return this.f38408a.l();
            }
            throw new AssertionError();
        }
        if (!f38385W && this.f38408a.h()) {
            throw new AssertionError();
        }
        if (this.f38409b == null) {
            T f10 = f();
            if (!C4514j.f37304i && f10.h()) {
                throw new AssertionError();
            }
            this.f38409b = new C4514j(f10);
        }
        return this.f38409b;
    }

    public final boolean h(M2 m22) {
        if (f38385W || m22.I0()) {
            return this.f38390E.test(m22);
        }
        throw new AssertionError();
    }

    public final boolean i() {
        return !this.f38406U && E().W();
    }

    public final void j() {
        this.f38399N = null;
    }

    public final C5093Ef k() {
        boolean z10 = f38385W;
        if (!z10 && !z10 && this.f38403R != Thread.currentThread()) {
            throw new AssertionError();
        }
        C5267Hf c5267Hf = this.f38402Q;
        int i10 = c5267Hf.f40825d;
        c5267Hf.f40825d = i10 + 1;
        C5093Ef c5093Ef = new C5093Ef(c5267Hf, i10);
        boolean z11 = C5267Hf.f40821e;
        if (!z11) {
            c5267Hf.a(c5093Ef);
        }
        if (z11 || c5267Hf.f40823b == Thread.currentThread()) {
            return c5093Ef;
        }
        throw new AssertionError((Object) "Invoked on another thread than main");
    }

    public final void l() {
        this.f38406U = true;
    }

    public boolean m() {
        return this.f38407V == 1;
    }

    public final void n() {
        AbstractC5308Hz v10 = v();
        a(AbstractC5308Hz.g());
        a(new C7358g3(L(), v10));
    }

    public final AbstractC8194l4 o() {
        return this.f38411d;
    }

    public final C5556Mf p() {
        if (this.f38426s == null) {
            this.f38426s = new C5556Mf(b());
        }
        return this.f38426s;
    }

    public final AbstractC7160et q() {
        return this.f38413f;
    }

    public final AbstractC11516y1 r() {
        if (f38385W || this.f38425r != null) {
            return this.f38425r;
        }
        throw new AssertionError();
    }

    public AbstractC10992r0 s() {
        return this.f38419l;
    }

    public final AbstractC9148qo0 t() {
        return this.f38424q;
    }

    public final com.android.tools.r8.synthesis.J u() {
        return this.f38408a.g();
    }

    public AbstractC5308Hz v() {
        return this.f38415h;
    }

    public final boolean w() {
        return this.f38394I != null;
    }

    public final C5267Hf x() {
        return new C5267Hf(E());
    }

    public final AbstractC7160et y() {
        return AbstractC7160et.a(E().B());
    }

    public final C6588bS z() {
        return new C6588bS(this);
    }

    public static <T extends C4477h> C4798y<T> a(T t10) {
        return new C4798y<>(t10, AbstractC8194l4.a(t10, t10.j()), AbstractC9148qo0.b(), 2, C8659ns0.c());
    }

    @Override
    public final boolean e(M2 m22) {
        return f().e(m22);
    }

    @Override
    public final InterfaceC4364b0 f(M2 m22) {
        return f().f(m22);
    }

    public final C11245i h() {
        if (f().i()) {
            return this.f38408a.m();
        }
        return null;
    }

    public final com.android.tools.r8.androidapi.a d() {
        return this.f38404S;
    }

    public static <T extends C4477h> C4798y<T> a(T t10, C8659ns0 c8659ns0) {
        return new C4798y<>(t10, AbstractC8194l4.a(t10, t10.j()), AbstractC9148qo0.a(t10.a()), 2, c8659ns0);
    }

    public static boolean c(H5 h52) {
        AbstractC4497i0 Q02 = h52.d().Q0();
        if (Q02 == null) {
            return true;
        }
        final A2 reference = h52.getReference();
        Q02.a(h52.getReference(), h52.d().F0(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4798y.a(A2.this, (B60) obj);
            }
        });
        return true;
    }

    public static C4798y<C4514j> a(AbstractC4780x0 abstractC4780x0) {
        return a(abstractC4780x0, C11349o2.b());
    }

    public static C4798y a(AbstractC4780x0 abstractC4780x0, C11349o2 c11349o2) {
        C6300Zd a10;
        C8570nJ c8570nJ = abstractC4780x0.f38366d;
        boolean z10 = C6300Zd.f46302c;
        AbstractC9109qb0 abstractC9109qb0 = c8570nJ.f50596E1;
        if (abstractC9109qb0 != null) {
            a10 = abstractC9109qb0.b().f51567c;
        } else {
            a10 = C6300Zd.a(c8570nJ.m(), c8570nJ.f50718s, c8570nJ.f50691j);
        }
        C4514j a11 = C4514j.a(abstractC4780x0, a10, c11349o2, com.android.tools.r8.synthesis.E.e());
        return new C4798y(a11, AbstractC8194l4.a(a11, a11.j()), AbstractC9148qo0.b(abstractC4780x0), 1, C8659ns0.c());
    }

    @Override
    public final E0 g(M2 m22) {
        return f().g(m22);
    }

    @Override
    public C4724u1 b() {
        return this.f38408a.b();
    }

    public final Object b(Object obj, Function function) {
        C6845cz c6845cz;
        C5658Oa0 c5658Oa0 = this.f38388C;
        return (c5658Oa0 == null || (c6845cz = c5658Oa0.f42925d) == null) ? obj : function.apply(c6845cz);
    }

    public final Object b(Function function) {
        Boolean bool = Boolean.FALSE;
        C10057wD c10057wD = this.f38391F;
        return c10057wD != null ? function.apply(c10057wD) : bool;
    }

    public final void b(AbstractC4780x0 abstractC4780x0) {
        if (f().i()) {
            C4798y<C11245i> M10 = M();
            C11245i h10 = h();
            M10.b(h10.a(h10.g().a(abstractC4780x0)));
        } else if (f().h()) {
            L().b((f().h() ? this.f38408a.l() : null).a(abstractC4780x0));
        } else {
            N().b(f().a(abstractC4780x0));
        }
    }

    public void a(C4552l c4552l) {
        this.f38410c = c4552l;
    }

    public final void a(AbstractC8194l4 abstractC8194l4) {
        this.f38411d = abstractC8194l4;
    }

    public final void a(AbstractC9148qo0 abstractC9148qo0) {
        this.f38424q = abstractC9148qo0;
    }

    public static void b(final ExecutorService executorService, final C4798y c4798y, final C8659ns0 c8659ns0, final C4462g3 c4462g3, final R00 r00, final AbstractC5308Hz abstractC5308Hz) {
        boolean z10 = f38385W;
        if (!z10 && r00 == null) {
            throw new AssertionError();
        }
        if (!z10 && c4462g3 == null) {
            throw new AssertionError();
        }
        c8659ns0.b("Rewrite AppView");
        boolean a10 = c4798y.a(r00);
        if (!z10 && !a10) {
            r00.getClass();
            if (!(r00 instanceof C10215xA)) {
                throw new AssertionError();
            }
        }
        if (!z10) {
            C4462g3 a11 = ((C4514j) c4798y.f()).a().a();
            c4462g3.getClass();
            if (!C4462g3.f37225m) {
                Iterator<E> it = a11.f37229k.iterator();
                while (it.hasNext()) {
                    M2 type = ((H2) it.next()).getType();
                    r00.getClass();
                    M2 c10 = r00.c(AbstractC5308Hz.g(), type);
                    if (!c10.L0() && c10 != type && (c4462g3.g(type) != null || c4462g3.g(c10) == null)) {
                        if (!C4462g3.f37225m && c4462g3.g(type).f36245e != c10 && c4462g3.g(c10) == null) {
                            throw new AssertionError((Object) "The lens and app is inconsistent");
                        }
                    }
                }
            }
            if (!C4462g3.f37225m) {
                c4462g3.l();
            }
        }
        R00 r002 = r00;
        while (true) {
            AbstractC5308Hz abstractC5308Hz2 = r002.f43777d;
            if (abstractC5308Hz2 != abstractC5308Hz) {
                boolean z11 = f38385W;
                if (!z11 && !abstractC5308Hz2.l()) {
                    throw new AssertionError();
                }
                if (!z11 && abstractC5308Hz2 == c4798y.f38414g) {
                    throw new AssertionError();
                }
                r002 = abstractC5308Hz2.d();
            } else {
                AbstractC5308Hz a12 = a(c4798y, abstractC5308Hz, r002, c8659ns0);
                InterfaceC5930Sr0 interfaceC5930Sr0 = new InterfaceC5930Sr0() {
                    @Override
                    public final void a() {
                        C4798y.a(ExecutorService.this, c4798y, c8659ns0, c4462g3, r00, abstractC5308Hz);
                    }
                };
                AbstractC5308Hz abstractC5308Hz3 = r002.f43777d;
                r002.f43777d = a12;
                interfaceC5930Sr0.a();
                r002.f43777d = abstractC5308Hz3;
                c8659ns0.d();
                return;
            }
        }
    }

    public final void a(C11295l c11295l) {
        this.f38412e = c11295l;
    }

    public final Object a(Object obj, Function function) {
        C5711Oy c5711Oy;
        C5658Oa0 c5658Oa0 = this.f38388C;
        return (c5658Oa0 == null || (c5711Oy = c5658Oa0.f42924c) == null) ? obj : function.apply(c5711Oy);
    }

    public final void a(InterfaceC6160Wr0 interfaceC6160Wr0) {
        C6678bz c6678bz;
        C5658Oa0 c5658Oa0 = this.f38388C;
        if (c5658Oa0 == null || (c6678bz = c5658Oa0.f42926e) == null) {
            return;
        }
        interfaceC6160Wr0.accept(c6678bz);
    }

    public final Object a(Function function) {
        C6678bz c6678bz;
        Boolean bool = Boolean.FALSE;
        C5658Oa0 c5658Oa0 = this.f38388C;
        return (c5658Oa0 == null || (c6678bz = c5658Oa0.f42926e) == null) ? bool : function.apply(c6678bz);
    }

    public final boolean a(AbstractC5308Hz abstractC5308Hz) {
        if (abstractC5308Hz == this.f38415h) {
            return false;
        }
        this.f38415h = abstractC5308Hz;
        abstractC5308Hz.getClass();
        if (!(abstractC5308Hz instanceof C7358g3) && !(abstractC5308Hz instanceof C8115ke)) {
            return true;
        }
        this.f38414g = abstractC5308Hz;
        return true;
    }

    public void a(com.android.tools.r8.shaking.D4 d42) {
        this.f38421n = d42;
    }

    public final AbstractC11432t1 a(final D5 d52) {
        return (AbstractC11432t1) d52.getReference().a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4798y.this.a(d52, (M2) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4798y.this.a(d52, (C4554l1) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4798y.this.a(d52, (A2) obj);
            }
        });
    }

    public final AbstractC11432t1 a(D5 d52, M2 m22) {
        return r().a(d52.d0());
    }

    public final AbstractC11432t1 a(D5 d52, C4554l1 c4554l1) {
        return a(d52.W());
    }

    public final AbstractC11432t1 a(D5 d52, A2 a22) {
        return a(d52.H());
    }

    public final C11382q1 a(F5 f52) {
        AbstractC11516y1 r10 = r();
        r10.getClass();
        return r10.a(f52.d(), f52.getHolder());
    }

    public final com.android.tools.r8.shaking.I1 a(H5 h52) {
        AbstractC11516y1 r10 = r();
        r10.getClass();
        return r10.a(h52.getHolder(), h52.d());
    }

    public final void a(com.android.tools.r8.naming.C0 c02) {
        this.f38419l = c02;
    }

    public final void a(CA ca2) {
        if (!f38385W && !this.f38392G.f39147a.isEmpty()) {
            throw new AssertionError();
        }
        this.f38392G = ca2;
        H().f50918z.accept(this, ca2);
    }

    public static void b(H5 h52) {
        if (!f38385W && !c(h52)) {
            throw new AssertionError();
        }
    }

    public final void a(C8674nx0 c8674nx0, int i10) {
        if (i10 == 1) {
            if (!f38385W && this.f38393H != null) {
                throw new AssertionError();
            }
            this.f38393H = c8674nx0;
            H().f50816F.accept(b(), c8674nx0);
            return;
        }
        if (!f38385W && this.f38393H == null) {
            throw new AssertionError();
        }
    }

    public void a(AbstractC7696i40 abstractC7696i40) {
        this.f38395J = abstractC7696i40;
    }

    public final void a(C8664nu c8664nu) {
        if (!f38385W && w()) {
            throw new AssertionError();
        }
        this.f38394I = c8664nu;
        H().f50814E.accept(b(), c8664nu);
    }

    public final AbstractC9530t40 a(M2 m22, M2 m23) {
        if (f().h()) {
            return AbstractC9530t40.a(f().l().c(m22, m23));
        }
        if (m22 != m23 && m23 != b().f38068i2) {
            return AbstractC9530t40.f52519c;
        }
        return AbstractC9530t40.f52517a;
    }

    public final boolean a(C4516j1 c4516j1) {
        if (!E().f50707o0) {
            return false;
        }
        if (!f38385W && !(E().f50697l instanceof ClassFileConsumer)) {
            throw new AssertionError();
        }
        if (this.f38396K.contains(c4516j1.getReference())) {
            return true;
        }
        return E().f50599F1.f50872e1 != null && E().f50599F1.f50872e1.test(c4516j1.getReference());
    }

    public final void a(O5 o52, ExecutorService executorService, C8659ns0 c8659ns0) {
        if (o52.b()) {
            if (!f38385W && f().a() != o52.f36678a) {
                throw new AssertionError();
            }
            return;
        }
        c8659ns0.b("Prune AppView");
        if (this.f38408a.i()) {
            C4798y<C11245i> M10 = M();
            M10.b(M10.f().a(o52, executorService, c8659ns0));
        } else if (this.f38408a.h()) {
            C4798y L10 = L();
            L10.b(((C4514j) L10.f()).a(o52, executorService, c8659ns0));
        } else {
            b(f().a(o52, executorService, c8659ns0));
        }
        C4552l c4552l = this.f38410c;
        if (c4552l != null) {
            a(c4552l.a(o52, c8659ns0));
        }
        this.f38411d = this.f38411d.a(o52, c8659ns0);
        this.f38412e = this.f38412e.a(o52, c8659ns0);
        C11333n3 c11333n3 = this.f38420m;
        if (c11333n3 != null) {
            c8659ns0.b("Prune ProguardCompatibilityActions");
            Set c10 = AbstractC5513Ll0.c();
            for (M2 m22 : c11333n3.f57555a) {
                if (!o52.f36682e.contains(m22)) {
                    c10.add(m22);
                }
            }
            C11333n3 c11333n32 = new C11333n3(c10);
            c8659ns0.d();
            if (!f38385W && !E().f50674d1) {
                throw new AssertionError();
            }
            this.f38420m = c11333n32;
        }
        com.android.tools.r8.shaking.D4 d42 = this.f38421n;
        if (d42 != null) {
            d42.a(o52, c8659ns0);
        }
        AbstractC9148qo0 abstractC9148qo0 = this.f38424q;
        this.f38408a.g();
        this.f38424q = abstractC9148qo0.a(o52, c8659ns0);
        com.android.tools.r8.shaking.B4 b42 = this.f38423p;
        if (b42 != null) {
            this.f38423p = b42.b(o52, c8659ns0);
        }
        a(this.f38395J.a(o52, c8659ns0));
        c8659ns0.d();
    }

    public final void a(R00 r00, C4462g3 c4462g3, ExecutorService executorService, C8659ns0 c8659ns0) {
        b(executorService, L(), c8659ns0, c4462g3, r00, r00.f43777d);
        if (f38385W) {
            return;
        }
        K();
    }

    public static void a(ExecutorService executorService, C4798y c4798y, C8659ns0 c8659ns0, C4462g3 c4462g3, R00 r00, AbstractC5308Hz abstractC5308Hz) {
        AbstractC5308Hz g10 = AbstractC5308Hz.g();
        C8570nJ E10 = c4798y.E();
        c8659ns0.getClass();
        C8325ls0 a10 = c8659ns0.a(C5467Kr0.a(executorService), "Rewrite AppView concurrently");
        a10.f50131d = null;
        InterfaceC5351Ir0[] interfaceC5351Ir0Arr = {new C4628p(c4798y, c4462g3, r00, g10), new C4647q(c4798y, r00), new r(c4798y, r00), new C4684s(c4798y, r00, g10), new C4703t(c4798y, r00), new C4722u(c4798y, r00), new C4741v(c4798y, r00), new C4760w(c4798y, r00), new C4779x(c4798y, r00), new C4571m(c4798y, r00), new C4590n(c4798y, r00, g10), new C4609o(c4798y, r00, abstractC5308Hz)};
        C10325xr0 c10325xr0 = new C10325xr0(E10.G(), executorService, 12);
        if (a10 instanceof C7325fs0) {
            for (int i10 = 0; i10 < 12; i10++) {
                InterfaceC5351Ir0 interfaceC5351Ir0 = interfaceC5351Ir0Arr[i10];
                if (interfaceC5351Ir0.b()) {
                    AbstractC5409Jr0.a(interfaceC5351Ir0, c10325xr0);
                }
            }
            c10325xr0.a((Consumer) null);
        } else {
            C8659ns0[] c8659ns0Arr = new C8659ns0[12];
            C8659ns0 c10 = C8659ns0.c();
            boolean z10 = com.android.tools.r8.internal.X3.f45604a;
            Arrays.fill(c8659ns0Arr, c10);
            List asList = Arrays.asList(c8659ns0Arr);
            int i11 = 0;
            for (int i12 = 0; i12 < 12; i12++) {
                InterfaceC5351Ir0 interfaceC5351Ir02 = interfaceC5351Ir0Arr[i12];
                if (interfaceC5351Ir02.b()) {
                    AbstractC5409Jr0.a(E10, interfaceC5351Ir02, i11, c10325xr0, asList);
                    i11++;
                }
            }
            c10325xr0.a((Consumer) null);
            a10.a(asList);
            a10.a();
        }
        for (int i13 = 0; i13 < 12; i13++) {
            InterfaceC5351Ir0 interfaceC5351Ir03 = interfaceC5351Ir0Arr[i13];
            if (interfaceC5351Ir03.b()) {
                interfaceC5351Ir03.a();
            }
        }
    }

    public static AbstractC5308Hz a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, R00 r00, C8659ns0 c8659ns0) {
        c8659ns0.b("Compute new member rebinding lens");
        AbstractC5308Hz g10 = AbstractC5308Hz.g();
        if (!(r00 instanceof XV) && !(r00 instanceof TV)) {
            Eh eh2 = new Eh();
            AbstractC5308Hz abstractC5308Hz2 = r00.f43777d;
            R00 a10 = abstractC5308Hz2.l() ? abstractC5308Hz2.d().a(eh2) : null;
            if (a10 != null) {
                TV c10 = a10.c();
                c10.getClass();
                g10 = c10.a(c4798y, abstractC5308Hz, a10, AbstractC5308Hz.g());
            }
        }
        c8659ns0.d();
        return g10;
    }

    public final void a(C8268lZ c8268lZ, C8659ns0 c8659ns0) {
        C4798y N10 = N();
        boolean a10 = N10.a(c8268lZ);
        if (!f38385W && !a10) {
            c8268lZ.getClass();
            if (!(c8268lZ instanceof C10215xA)) {
                throw new AssertionError();
            }
        }
        C4477h f10 = N10.f();
        N10.b(f10.a(f10.f().a(N10.f38408a.g(), c8268lZ, c8659ns0)));
        N10.f38411d = N10.f38411d.a(N10, c8268lZ, c8659ns0);
    }

    public final boolean a(H2 h22) {
        if (!E().l().f50754b) {
            return false;
        }
        if (f38385W || this.f38401P != null) {
            return this.f38401P.contains(h22.getType());
        }
        throw new AssertionError();
    }

    public final boolean a(Supplier supplier) {
        if (H().f50829L0) {
            return ((Boolean) supplier.get()).booleanValue();
        }
        return true;
    }

    public static void a(A2 a22, B60 b60) {
        A2 a23 = b60.h().f38808c;
        if (!f38385W && !a22.a(a23)) {
            throw new AssertionError();
        }
    }
}
