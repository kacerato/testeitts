package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.AbstractC4365b1;
import com.android.tools.r8.graph.AbstractC4481h3;
import com.android.tools.r8.graph.AbstractC4709t5;
import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.graph.C4427e6;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4462g3;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4594n3;
import com.android.tools.r8.graph.C4613o3;
import com.android.tools.r8.graph.C4690s5;
import com.android.tools.r8.graph.C4742v0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H4;
import com.android.tools.r8.graph.InterfaceC4444f4;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.AbstractC10122wf0;
import com.android.tools.r8.internal.AbstractC10330xt;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6037Un;
import com.android.tools.r8.internal.AbstractC8374m80;
import com.android.tools.r8.internal.C10325xr0;
import com.android.tools.r8.internal.C5313Ib;
import com.android.tools.r8.internal.C5921Sn;
import com.android.tools.r8.internal.C5979Tn;
import com.android.tools.r8.internal.C6286Yx0;
import com.android.tools.r8.internal.C6300Zd;
import com.android.tools.r8.internal.C6949de;
import com.android.tools.r8.internal.C6991ds0;
import com.android.tools.r8.internal.C8085kR;
import com.android.tools.r8.internal.C8331lu0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C9406sK;
import com.android.tools.r8.internal.CK;
import com.android.tools.r8.internal.EnumC10677zx0;
import com.android.tools.r8.internal.IC;
import com.android.tools.r8.internal.InterfaceC5930Sr0;
import com.android.tools.r8.internal.JK;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.internal.R00;
import com.android.tools.r8.internal.W10;
import com.android.tools.r8.internal.W60;
import com.android.tools.r8.internal.X10;
import com.android.tools.r8.internal.Y10;
import com.android.tools.r8.synthesis.C11549b;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;

public class C11245i extends C4514j implements InterfaceC4444f4 {

    public static final boolean f57385J = true;

    public final W60 f57386A;

    public final Set f57387B;

    public final Map f57388C;

    public final Set f57389D;

    public final Y10 f57390E;

    public final Set f57391F;

    public final Map f57392G;

    public final N4 f57393H;

    public C5313Ib f57394I;

    public final Set f57395j;

    public final Set f57396k;

    public Set f57397l;

    public final Set f57398m;

    public final Set f57399n;

    public final Set f57400o;

    public final Set f57401p;

    public final Set f57402q;

    public Set f57403r;

    public final C4594n3 f57404s;

    public final AbstractC4709t5 f57405t;

    public final Map f57406u;

    public final AbstractC11516y1 f57407v;

    public final Map f57408w;

    public final Set f57409x;

    public final Set f57410y;

    public final Set f57411z;

    public C11245i(C11549b c11549b, C6300Zd c6300Zd, C11349o2 c11349o2, C11450u2 c11450u2, Set set, Set set2, Set set3, Set set4, Set set5, Set set6, Set set7, Set set8, Set set9, C4594n3 c4594n3, AbstractC4709t5 abstractC4709t5, Map map, AbstractC11516y1 abstractC11516y1, Map map2, Set set10, Set set11, Set set12, W60 w60, Y10 y10, Set set13, Map map3, Set set14, Map map4, Set set15) {
        super(c11549b, c6300Zd, c11349o2, c11450u2);
        this.f57393H = new N4();
        this.f57394I = null;
        this.f57395j = set;
        this.f57396k = set2;
        this.f57397l = set3;
        this.f57398m = set4;
        this.f57399n = set5;
        this.f57400o = set6;
        this.f57401p = set7;
        this.f57402q = set8;
        this.f57403r = set9;
        this.f57404s = c4594n3;
        this.f57405t = abstractC4709t5;
        this.f57407v = abstractC11516y1;
        this.f57408w = map2;
        this.f57406u = map;
        this.f57409x = set10;
        this.f57410y = set11;
        this.f57411z = set12;
        this.f57386A = w60;
        this.f57390E = y10;
        this.f57391F = set13;
        this.f57392G = map3;
        this.f57387B = set14;
        this.f57388C = map4;
        this.f57389D = set15;
        if (f57385J) {
            return;
        }
        q();
    }

    public static AbstractC10330xt a(AbstractC10330xt abstractC10330xt) {
        return abstractC10330xt;
    }

    @Override
    public final C11245i a(C11349o2 c11349o2) {
        return new C11245i(g().a(a()), this.f37255b, c11349o2, this.f37305h, this.f57395j, this.f57396k, this.f57397l, this.f57398m, this.f57399n, this.f57400o, this.f57401p, this.f57402q, this.f57403r, this.f57404s, this.f57405t, this.f57406u, this.f57407v, this.f57408w, this.f57409x, this.f57410y, this.f57411z, this.f57386A, this.f57390E, this.f57391F, this.f57392G, this.f57387B, this.f57388C, this.f57389D);
    }

    public final boolean d(com.android.tools.r8.graph.F0 f02) {
        boolean z10 = f57385J;
        if (!z10) {
            c();
        }
        if (z10 || b(f02)) {
            C4516j1 L02 = g(f02.p()).d0().L0();
            return L02 != null && a(f02, L02);
        }
        throw new AssertionError((Object) ("Expected field `" + f02.r() + "` to be written"));
    }

    @Override
    public final boolean e(com.android.tools.r8.graph.M2 m22) {
        return super.g(m22) != null;
    }

    @Override
    public com.android.tools.r8.graph.E0 g(com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.E0 g10 = super.g(m22);
        if (f57385J || g10 != null || this.f57395j.contains(m22) || this.f37305h.f57888a.contains(m22) || m22.f36592f.toString().startsWith("L$-vivified-$/")) {
            return g10;
        }
        throw new AssertionError((Object) ("Failed lookup of non-missing type: " + ((Object) m22)));
    }

    public final boolean i(com.android.tools.r8.graph.M2 m22) {
        if (this.f57396k.contains(m22)) {
            return true;
        }
        if (this.f57391F.contains(m22)) {
            return false;
        }
        com.android.tools.r8.graph.E0 g10 = g(m22);
        return g10 == null || !g10.e0();
    }

    public final boolean j(com.android.tools.r8.graph.M2 m22) {
        if (!f57385J) {
            c();
        }
        return this.f57391F.contains(m22);
    }

    @Override
    public final C11245i m() {
        if (!f57385J) {
            c();
        }
        return this;
    }

    @Override
    public final void n() {
        this.f57403r = C6991ds0.f47532b;
    }

    public final C4594n3 o() {
        return this.f57404s;
    }

    public final Set p() {
        if (!f57385J) {
            c();
        }
        return this.f57391F;
    }

    public final void q() {
        boolean z10 = f57385J;
        if (!z10) {
            this.f57407v.a(j(), this.f57396k);
        }
        if (z10) {
            return;
        }
        AbstractC4709t5 abstractC4709t5 = this.f57405t;
        Set set = this.f57396k;
        C11450u2 c11450u2 = this.f37305h;
        for (com.android.tools.r8.graph.H2 h22 : abstractC4709t5.f37782a.o()) {
            if (!AbstractC4709t5.f37781g && !set.contains(h22.getType())) {
                throw new AssertionError();
            }
        }
        for (com.android.tools.r8.graph.H2 h23 : abstractC4709t5.f37783b) {
            if (!AbstractC4709t5.f37781g && !set.contains(h23.getType())) {
                throw new AssertionError();
            }
        }
        for (com.android.tools.r8.graph.H2 h24 : abstractC4709t5.f37784c) {
            if (!AbstractC4709t5.f37781g && !set.contains(h24.getType())) {
                throw new AssertionError();
            }
        }
        for (com.android.tools.r8.graph.H2 h25 : abstractC4709t5.f37785d) {
            if (!AbstractC4709t5.f37781g && !set.contains(h25.getType())) {
                throw new AssertionError();
            }
        }
        for (com.android.tools.r8.graph.M2 m22 : abstractC4709t5.f37786e.o()) {
            if (!AbstractC4709t5.f37781g && !c11450u2.f57888a.contains(m22) && !g(m22).v1() && !set.contains(m22)) {
                throw new AssertionError();
            }
        }
    }

    public final void r() {
        d().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11245i.this.c((com.android.tools.r8.graph.H2) obj);
            }
        });
    }

    public static Set a(final Set set, final Set set2, C10325xr0 c10325xr0) {
        if (set != C6991ds0.f47532b && !set2.isEmpty()) {
            c10325xr0.b(new InterfaceC5930Sr0() {
                @Override
                public final void a() {
                    C11245i.a(Set.this, set2);
                }
            });
        }
        return set;
    }

    public final boolean b(com.android.tools.r8.graph.H2 h22) {
        boolean z10 = f57385J;
        if (!z10) {
            c();
        }
        if (a(h22)) {
            return true;
        }
        if (!z10) {
            c();
        }
        return this.f57405t.a(h22);
    }

    @Override
    public final boolean i() {
        if (f57385J) {
            return true;
        }
        c();
        return true;
    }

    public final boolean c(com.android.tools.r8.graph.F0 f02) {
        boolean z10 = f57385J;
        if (!z10) {
            c();
        }
        if (!z10 && !b(f02)) {
            throw new AssertionError((Object) ("Expected field `" + f02.r() + "` to be written"));
        }
        if (a((com.android.tools.r8.graph.G0) f02)) {
            return false;
        }
        C4613o3 c4613o3 = (C4613o3) this.f57404s.f37507a.get(f02.getReference());
        if (c4613o3 != null && c4613o3.f()) {
            final com.android.tools.r8.graph.M2 p10 = f02.p();
            if (c4613o3.f37539d.b(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C11245i.b(com.android.tools.r8.graph.M2.this, (com.android.tools.r8.graph.H5) obj);
                }
            }) && !c4613o3.e() && !c4613o3.g()) {
                return true;
            }
        }
        return false;
    }

    public static Y10 a(final Y10 y10, final com.android.tools.r8.graph.O5 o52, C10325xr0 c10325xr0) {
        if (o52.f36683f.isEmpty() && o52.f36684g.isEmpty()) {
            return y10;
        }
        c10325xr0.b(new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                C11245i.a(com.android.tools.r8.graph.O5.this, y10);
            }
        });
        return y10;
    }

    public final boolean b(com.android.tools.r8.graph.F0 f02) {
        boolean z10 = f57385J;
        if (!z10) {
            c();
        }
        if (!z10) {
            c();
        }
        C4613o3 c4613o3 = (C4613o3) this.f57404s.f37507a.get(f02.getReference());
        return ((c4613o3 == null || !c4613o3.f()) ? (f02 instanceof com.android.tools.r8.graph.F5) ^ true : true) || a((com.android.tools.r8.graph.G0) f02);
    }

    public static void a(com.android.tools.r8.graph.O5 o52, final Y10 y10) {
        Set set = o52.f36683f;
        Objects.requireNonNull(y10);
        set.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Y10.this.c((C4554l1) obj);
            }
        });
        o52.f36684g.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Y10.this.c((com.android.tools.r8.graph.A2) obj);
            }
        });
    }

    public static Map a(Map map, final com.android.tools.r8.graph.O5 o52) {
        map.entrySet().removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C11245i.a(com.android.tools.r8.graph.O5.this, (Map.Entry) obj);
            }
        });
        return map;
    }

    public static boolean a(com.android.tools.r8.graph.O5 o52, Map.Entry entry) {
        AbstractC8374m80 a10 = ((AbstractC8374m80) entry.getValue()).a(o52);
        if (a10.f45165b.isEmpty()) {
            return true;
        }
        entry.setValue(a10);
        return false;
    }

    public final boolean b(com.android.tools.r8.graph.F0 f02, C4516j1 c4516j1) {
        boolean z10 = f57385J;
        if (!z10) {
            c();
        }
        if (z10 || b(f02)) {
            C4613o3 c4613o3 = (C4613o3) this.f57404s.f37507a.get(f02.getReference());
            return (c4613o3 == null || !c4613o3.f() || c4613o3.f37539d.a(c4516j1) || c4613o3.e() || c4613o3.g()) ? false : true;
        }
        throw new AssertionError((Object) ("Expected field `" + f02.r() + "` to be written"));
    }

    @Override
    public final C11245i a(final com.android.tools.r8.graph.O5 o52, ExecutorService executorService, C8659ns0 c8659ns0) {
        Set set;
        boolean z10 = f57385J;
        if (!z10 && getClass() != C11245i.class) {
            throw new AssertionError();
        }
        if (!z10) {
            c();
        }
        if (o52.b()) {
            if (z10 || a() == o52.f36678a) {
                return this;
            }
            throw new AssertionError();
        }
        c8659ns0.b("Pruning AppInfoWithLiveness");
        if (o52.a()) {
            this.f57405t.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((C4690s5) obj).a(com.android.tools.r8.graph.O5.this);
                }
            }, this);
            this.f57407v.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((C11500x1) obj).b(com.android.tools.r8.graph.O5.this);
                }
            });
        } else if (!o52.f36683f.isEmpty() || !o52.f36684g.isEmpty()) {
            this.f57407v.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((C11500x1) obj).b(com.android.tools.r8.graph.O5.this);
                }
            });
        }
        C10325xr0 c10325xr0 = new C10325xr0(j().G(), executorService, -1);
        com.android.tools.r8.synthesis.J g10 = g();
        C11549b a10 = com.android.tools.r8.synthesis.J.a(o52, g10.f58087d, g10.f58088e, g10.f58086c, g10.f58084a, g10.f58089f);
        C6300Zd a11 = this.f37255b.a(o52);
        C11349o2 a12 = f().a(o52);
        C11450u2 c11450u2 = this.f37305h;
        Set set2 = this.f57395j;
        Set a13 = a(this.f57396k, o52.f36682e, c10325xr0);
        Set a14 = a(this.f57397l, o52.f36684g, c10325xr0);
        Set a15 = a(this.f57398m, o52.f36682e, c10325xr0);
        Set a16 = a(this.f57399n, o52.f36684g, c10325xr0);
        Set a17 = a(this.f57400o, o52.f36683f, c10325xr0);
        Set a18 = a(this.f57401p, o52.f36684g, c10325xr0);
        Set a19 = a(this.f57402q, o52.f36684g, c10325xr0);
        Set a20 = a(this.f57403r, o52.f36684g, c10325xr0);
        C4594n3 c4594n3 = this.f57404s;
        Iterator it = c4594n3.f37507a.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (o52.a((C4554l1) entry.getKey())) {
                it.remove();
            } else {
                C4613o3 c4613o3 = (C4613o3) entry.getValue();
                c4613o3.f37538c = c4613o3.f37538c.a(o52);
                c4613o3.f37539d = c4613o3.f37539d.a(o52);
                entry.setValue(c4613o3);
            }
        }
        AbstractC4709t5 b10 = this.f57405t.b(o52);
        Map a21 = a(this.f57406u, o52);
        AbstractC11516y1 a22 = a(this, o52.f36679b);
        Map map = this.f57408w;
        Set a23 = a(this.f57409x, o52.f36684g, c10325xr0);
        Set a24 = a(this.f57410y, o52.f36684g, c10325xr0);
        Set a25 = a(this.f57411z, o52.f36684g, c10325xr0);
        W60 w60 = this.f57386A;
        Y10 a26 = a(this.f57390E, o52, c10325xr0);
        if (o52.a()) {
            Set set3 = this.f57391F;
            Set set4 = o52.f36682e;
            int i10 = QC.f43505c;
            IC ic2 = new IC();
            ic2.a((Iterable) set3);
            ic2.a((Iterable) set4);
            set = ic2.a();
        } else {
            set = this.f57391F;
        }
        C11245i c11245i = new C11245i(a10, a11, a12, c11450u2, set2, a13, a14, a15, a16, a17, a18, a19, a20, c4594n3, b10, a21, a22, map, a23, a24, a25, w60, a26, set, this.f57392G, a(this.f57387B, o52.f36682e, c10325xr0), a(this.f57388C, o52.f36682e, c10325xr0), this.f57389D);
        c10325xr0.a((Consumer) null);
        c8659ns0.d();
        return c11245i;
    }

    public static void a(final Set set, Set set2) {
        if (set.size() <= set2.size()) {
            set.removeAll(set2);
        } else {
            set2.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Set.this.remove(obj);
                }
            });
        }
    }

    public static Map a(final Map map, final Set set, C10325xr0 c10325xr0) {
        if (!set.isEmpty()) {
            c10325xr0.b(new InterfaceC5930Sr0() {
                @Override
                public final void a() {
                    C11245i.a(Map.this, set);
                }
            });
        }
        return map;
    }

    public static void a(final Map map, Set set) {
        if (map.size() <= set.size()) {
            map.o().removeAll(set);
        } else {
            set.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Map.this.remove(obj);
                }
            });
        }
    }

    public static boolean b(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52) {
        return h52.p() == m22 && h52.d().j1();
    }

    @Override
    public final C4514j a(AbstractC4780x0 abstractC4780x0) {
        return a(g().a(abstractC4780x0));
    }

    public C11245i(C11245i c11245i, IdentityHashMap identityHashMap) {
        super(c11245i.g().a(c11245i.a()), c11245i.f37255b, c11245i.f(), c11245i.f37305h);
        this.f57393H = new N4();
        this.f57394I = null;
        this.f57395j = c11245i.f57395j;
        this.f57396k = c11245i.f57396k;
        this.f57397l = c11245i.f57397l;
        this.f57398m = c11245i.f57398m;
        this.f57399n = c11245i.f57399n;
        this.f57400o = c11245i.f57400o;
        this.f57401p = c11245i.f57401p;
        this.f57402q = c11245i.f57402q;
        this.f57403r = c11245i.f57403r;
        this.f57404s = c11245i.f57404s;
        this.f57405t = c11245i.f57405t;
        this.f57407v = c11245i.f57407v;
        this.f57408w = c11245i.f57408w;
        this.f57406u = c11245i.f57406u;
        this.f57409x = c11245i.f57409x;
        this.f57410y = c11245i.f57410y;
        this.f57411z = c11245i.f57411z;
        this.f57386A = c11245i.f57386A;
        this.f57390E = c11245i.f57390E;
        this.f57391F = c11245i.f57391F;
        this.f57392G = identityHashMap;
        this.f57387B = c11245i.f57387B;
        this.f57388C = c11245i.f57388C;
        this.f57389D = c11245i.f57389D;
        c11245i.f37259f.e();
        if (f57385J) {
            return;
        }
        q();
    }

    public static AbstractC11516y1 a(final C11245i c11245i, final Collection collection) {
        if (collection != null && !collection.isEmpty()) {
            return c11245i.f57407v.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C11245i.a(Collection.this, c11245i, (C11500x1) obj);
                }
            });
        }
        return c11245i.f57407v;
    }

    public static void a(Collection collection, C11245i c11245i, C11500x1 c11500x1) {
        com.android.tools.r8.graph.H5 e10;
        com.android.tools.r8.graph.F5 c10;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.J2 j22 = (com.android.tools.r8.graph.J2) it.next();
            j22.getClass();
            if (j22 instanceof com.android.tools.r8.graph.M2) {
                com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(c11245i.g(j22.o0()));
                if (a10 != null) {
                    c11500x1.a(new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            ((C11280k1) obj).i();
                        }
                    }, a10);
                }
            } else if (j22.r0()) {
                com.android.tools.r8.graph.A2 n02 = j22.n0();
                com.android.tools.r8.graph.H2 a11 = com.android.tools.r8.graph.H2.a(c11245i.g(n02.f38297f));
                if (a11 != null && (e10 = a11.e(n02)) != null) {
                    c11500x1.a(new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            ((H1) obj).i();
                        }
                    }, e10);
                }
            } else {
                C4554l1 l02 = j22.l0();
                com.android.tools.r8.graph.H2 a12 = com.android.tools.r8.graph.H2.a(c11245i.g(l02.f38297f));
                if (a12 != null && (c10 = a12.c(l02)) != null) {
                    c11500x1.a(c10, new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            ((C11365p1) obj).i();
                        }
                    });
                }
            }
        }
    }

    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H2 h23, Consumer consumer) {
        List<com.android.tools.r8.graph.H2> list;
        boolean z10 = C4514j.f37304i;
        if (!z10 && !c(h23.f36245e, h22.f36245e)) {
            throw new AssertionError();
        }
        if (!z10 && h23.isInterface()) {
            throw new AssertionError();
        }
        if (!h22.isInterface()) {
            list = b(h23, h22.f36245e);
        } else {
            ArrayList b10 = b(h23, b().f38068i2);
            C6286Yx0 c6286Yx0 = new C6286Yx0(2);
            int size = b10.size() - 1;
            loop1: while (true) {
                if (size >= 0) {
                    com.android.tools.r8.graph.H2 h24 = (com.android.tools.r8.graph.H2) b10.get(size);
                    com.android.tools.r8.graph.M2 m22 = h22.f36245e;
                    c6286Yx0.b(h24.z0());
                    while (c6286Yx0.b()) {
                        com.android.tools.r8.graph.M2 m23 = (com.android.tools.r8.graph.M2) c6286Yx0.c();
                        if (m23 == m22) {
                            list = b10.subList(0, size + 1);
                            break loop1;
                        } else {
                            com.android.tools.r8.graph.E0 g10 = g(m23);
                            if (g10 != null) {
                                c6286Yx0.b(g10.z0());
                            }
                        }
                    }
                    size--;
                } else {
                    list = Collections.EMPTY_LIST;
                    break;
                }
            }
        }
        for (com.android.tools.r8.graph.H2 h25 : list) {
            if (!a(h25)) {
                if (!this.f57407v.a((com.android.tools.r8.graph.D5) h25).d(j())) {
                    if (!f57385J) {
                        c();
                    }
                    AbstractC4709t5 abstractC4709t5 = this.f57405t;
                    abstractC4709t5.getClass();
                    if (h25.isInterface() && abstractC4709t5.f37785d.contains(h25)) {
                    }
                }
            }
            consumer.accept(h25);
        }
    }

    public final AbstractC6037Un a(com.android.tools.r8.graph.D0 d02, C4798y c4798y) {
        com.android.tools.r8.graph.E0 g10;
        if (!f57385J) {
            c();
        }
        C8085kR a10 = C8085kR.a(d02, c4798y, (C4514j) c4798y.f(), null);
        ArrayList arrayList = a10 != C8085kR.f49623j ? a10.f49629e : null;
        if (arrayList != null && !arrayList.isEmpty()) {
            C5921Sn c5921Sn = AbstractC6037Un.f44869d;
            C5979Tn c5979Tn = new C5979Tn();
            ArrayDeque arrayDeque = new ArrayDeque(arrayList);
            Set c10 = AbstractC5513Ll0.c();
            while (!arrayDeque.isEmpty()) {
                com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) arrayDeque.removeFirst();
                if (c10.add(m22) && (g10 = g(m22)) != null) {
                    if (!f57385J && !g10.isInterface()) {
                        throw new AssertionError();
                    }
                    C9406sK C12 = g10.C1();
                    CK a11 = JK.a(C12.f52337b.iterator(), C12.f52338c);
                    while (a11.f43396b.hasNext()) {
                        com.android.tools.r8.graph.H0 h02 = (com.android.tools.r8.graph.H0) a11.a(a11.f43396b.next());
                        if (h02.getReference().t0().g(d02.f36212e) && h02.getAccessFlags().H()) {
                            c5979Tn.add((C5979Tn) h02);
                        }
                    }
                    Collections.addAll(arrayDeque, g10.f36248h.f36675b);
                }
            }
            return c5979Tn;
        }
        return AbstractC6037Un.f44869d;
    }

    public final void a(C4798y c4798y) {
        this.f57404s.a(c4798y);
    }

    public final void a(com.android.tools.r8.graph.E0 e02) {
        this.f57393H.a(e02.f36245e, this);
    }

    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        if (!f57385J) {
            c();
        }
        com.android.tools.r8.graph.M2 m22 = h22.f36245e;
        if (h22.isInterface() || !this.f57405t.c(h22)) {
            return h22.f36246f.H() && this.f57396k.contains(m22);
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0035, code lost:
    
        if ((r0 & 32) != 0) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(com.android.tools.r8.graph.F0 f02) {
        if (!f57385J) {
            c();
        }
        C4613o3 c4613o3 = (C4613o3) this.f57404s.f37507a.get(f02.getReference());
        if (c4613o3 != null) {
            if (c4613o3.f37538c.c()) {
                int i10 = c4613o3.f37537b;
                if ((i10 & 8) == 0) {
                    if ((i10 & 1) == 0) {
                        if ((i10 & 2) == 0) {
                        }
                    }
                }
            }
            return true;
        }
        if (a((com.android.tools.r8.graph.G0) f02)) {
            return true;
        }
        return !(f02 instanceof com.android.tools.r8.graph.F5);
    }

    @Override
    public final C11245i a(C11549b c11549b) {
        C6300Zd c6300Zd = this.f37255b;
        C11349o2 f10 = f();
        C11450u2 c11450u2 = this.f37305h;
        Set set = this.f57395j;
        Set set2 = this.f57396k;
        set2.addAll(c11549b.f58228d);
        return new C11245i(c11549b, c6300Zd, f10, c11450u2, set, set2, this.f57397l, this.f57398m, this.f57399n, this.f57400o, this.f57401p, this.f57402q, this.f57403r, this.f57404s, this.f57405t, this.f57406u, this.f57407v, this.f57408w, this.f57409x, this.f57410y, this.f57411z, this.f57386A, this.f57390E, this.f57391F, this.f57392G, this.f57387B, this.f57388C, this.f57389D);
    }

    public final boolean a(com.android.tools.r8.graph.F0 f02, C4516j1 c4516j1) {
        boolean z10 = f57385J;
        if (!z10) {
            c();
        }
        if (z10 || b(f02)) {
            if (a((com.android.tools.r8.graph.G0) f02)) {
                return false;
            }
            return b(f02, c4516j1);
        }
        throw new AssertionError((Object) ("Expected field `" + f02.r() + "` to be written"));
    }

    public final boolean a(com.android.tools.r8.graph.H2 h22, C4798y c4798y) {
        C11297l1 a10 = this.f57407v.a(h22);
        C8570nJ j10 = j();
        a10.getClass();
        if (!j10.V() || !a10.f57496n || AbstractC10122wf0.a(h22, c4798y.E())) {
            return false;
        }
        com.android.tools.r8.naming.S0 s02 = c4798y.f38399N;
        if (s02 != null) {
            return !s02.f55747a.containsKey(h22.f36245e.f36592f.toString());
        }
        return true;
    }

    public final void c(com.android.tools.r8.graph.H2 h22) {
        if (f57385J || !j(h22.f36245e)) {
            return;
        }
        throw new AssertionError((Object) (((Object) h22.f36245e) + " was not pruned"));
    }

    public final boolean a(AbstractC4365b1 abstractC4365b1) {
        com.android.tools.r8.graph.E0 g10;
        if (this.f57407v.a(abstractC4365b1, j(), this)) {
            return true;
        }
        if (abstractC4365b1.v0()) {
            C4516j1 o02 = abstractC4365b1.o0();
            return !o02.getReference().f38297f.I0() || (g10 = g(o02.getReference().f38297f)) == null || !g10.e0() || o02.k1().c();
        }
        boolean z10 = f57385J;
        if (!z10 && !abstractC4365b1.s0()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.E0 l02 = abstractC4365b1.l0();
        if (!l02.v1()) {
            com.android.tools.r8.graph.H2 d02 = l02.d0();
            if (!z10) {
                c();
            }
            AbstractC4709t5 abstractC4709t5 = this.f57405t;
            abstractC4709t5.getClass();
            if (!d02.isInterface() || !abstractC4709t5.f37785d.contains(d02)) {
                return false;
            }
        }
        return true;
    }

    public final boolean a(com.android.tools.r8.graph.G0 g02) {
        if (!f57385J && g02 == null) {
            throw new AssertionError();
        }
        if (g02.h()) {
            return this.f57407v.a(g02.g()).d(j());
        }
        return false;
    }

    @Override
    public final C4477h a(AbstractC4780x0 abstractC4780x0) {
        return a(g().a(abstractC4780x0));
    }

    public final C11245i a(C4462g3 c4462g3, R00 r00, AbstractC5308Hz abstractC5308Hz, C8659ns0 c8659ns0) {
        boolean z10 = f57385J;
        if (!z10) {
            c();
        }
        if (!z10) {
            Iterable iterable = (Iterable) this.f57392G.o().stream().map(new v.K1(this)).filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return ((com.android.tools.r8.graph.D3) obj).y();
                }
            }).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return ((com.android.tools.r8.graph.D3) obj).q();
                }
            }).collect(Collectors.toList());
            r00.getClass();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                C4554l1 reference = ((C4460g1) it.next()).getReference();
                if (!AbstractC5308Hz.f40940a && r00.d(AbstractC5308Hz.g(), reference) != reference) {
                    throw new AssertionError();
                }
            }
        }
        C11549b a10 = g().a(c4462g3, r00, c8659ns0);
        AbstractC4780x0 abstractC4780x0 = a10.f58225a;
        abstractC4780x0.getClass();
        C4742v0 c4742v0 = new C4742v0(a10, abstractC4780x0);
        C6300Zd a11 = this.f37255b.a(r00, c8659ns0);
        C11349o2 a12 = f().a(g(), r00, c8659ns0);
        C11450u2 c11450u2 = this.f37305h;
        Set set = this.f57395j;
        Set a13 = r00.a(this.f57396k);
        Set a14 = r00.a(this.f57397l);
        Set a15 = r00.a(this.f57398m);
        Set a16 = r00.a(this.f57399n);
        Set a17 = r00.a(this.f57400o, c8659ns0);
        Set a18 = r00.a(this.f57401p);
        Set a19 = r00.a(this.f57402q);
        Set a20 = r00.a(this.f57403r);
        C4594n3 a21 = this.f57404s.a(c4742v0, r00, c8659ns0);
        AbstractC4709t5 a22 = this.f57405t.a(c4742v0, r00, abstractC5308Hz, c8659ns0);
        IdentityHashMap a23 = r00.a(this.f57406u, c4742v0, c8659ns0);
        C11500x1 a24 = this.f57407v.a(r00, c4462g3.f38366d, c8659ns0);
        IdentityHashMap a25 = r00.a(this.f57408w, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C11245i.a((com.android.tools.r8.graph.J2) obj, (List) obj2);
            }
        });
        Set a26 = r00.a(this.f57409x);
        Set a27 = r00.a(this.f57410y);
        Set a28 = r00.a(this.f57411z);
        W60 w60 = this.f57386A;
        C11123ad c11123ad = new C11123ad(r00);
        w60.getClass();
        W60 w602 = new W60();
        for (Iterator it2 = w60.f45304a.iterator(); it2.hasNext(); it2 = it2) {
            C11500x1 c11500x1 = a24;
            w602.f45304a.add(c11123ad.apply(it2.next()));
            a24 = c11500x1;
        }
        C11500x1 c11500x12 = a24;
        w602.f45305b.addAll(w60.f45305b);
        Y10 y10 = this.f57390E;
        Y10 y102 = new Y10();
        y10.getClass();
        for (W10 w10 = new W10(new X10(y10)); w10.hasNext(); w10 = w10) {
            com.android.tools.r8.internal.W0 w02 = (com.android.tools.r8.internal.W0) w10.next();
            y102.a(r00.b((com.android.tools.r8.graph.J2) w02.f45254b, (AbstractC5308Hz) null), w02.f45255c);
        }
        return new C11245i(a10, a11, a12, c11450u2, set, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, c11500x12, a25, a26, a27, a28, w602, y102, this.f57391F, r00.a(this.f57392G), r00.a(this.f57387B), a(r00), r00.a(this.f57389D));
    }

    public static R3 a(com.android.tools.r8.graph.J2 j22, List list) {
        return (R3) AT.a(list);
    }

    public final IdentityHashMap a(R00 r00) {
        return r00.b(this.f57388C, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C11245i.a((EnumC10677zx0) obj, (EnumC10677zx0) obj2);
            }
        });
    }

    public static EnumC10677zx0 a(EnumC10677zx0 enumC10677zx0, EnumC10677zx0 enumC10677zx02) {
        boolean z10 = f57385J;
        if (!z10) {
            enumC10677zx0.getClass();
            if (enumC10677zx0 == EnumC10677zx0.f54588d) {
                throw new AssertionError();
            }
        }
        if (!z10) {
            enumC10677zx02.getClass();
            if (enumC10677zx02 == EnumC10677zx0.f54588d) {
                throw new AssertionError();
            }
        }
        enumC10677zx0.getClass();
        EnumC10677zx0 enumC10677zx03 = EnumC10677zx0.f54586b;
        if (enumC10677zx0 == enumC10677zx03) {
            return enumC10677zx03;
        }
        enumC10677zx02.getClass();
        if (enumC10677zx02 == enumC10677zx03) {
            return enumC10677zx03;
        }
        EnumC10677zx0 enumC10677zx04 = EnumC10677zx0.f54587c;
        return (enumC10677zx0 == enumC10677zx04 || enumC10677zx02 == enumC10677zx04) ? enumC10677zx04 : EnumC10677zx0.f54589e;
    }

    public com.android.tools.r8.graph.H0 a(C4798y<C11245i> c4798y, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H5 h52, boolean z10, InterfaceC11248i2 interfaceC11248i2, AbstractC10330xt abstractC10330xt) {
        if (!f57385J) {
            c();
        }
        Z4.c<?> o10 = c4798y.f().b(a22, z10).o();
        if (o10 != null) {
            return a(c4798y, a22, o10, h52, z10, interfaceC11248i2, abstractC10330xt);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00eb, code lost:
    
        if (r2.a(r3.getHolder(), r3.d()).c(j()) == false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x018d, code lost:
    
        if (r2.f37784c.contains(r11) != false) goto L90;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final com.android.tools.r8.graph.H0 a(C4798y c4798y, com.android.tools.r8.graph.A2 a22, Z4.c cVar, com.android.tools.r8.graph.H5 h52, boolean z10, InterfaceC11248i2 interfaceC11248i2, final AbstractC10330xt abstractC10330xt) {
        com.android.tools.r8.graph.M2 a10;
        com.android.tools.r8.graph.E0 g10;
        AbstractC4481h3 abstractC4481h3;
        com.android.tools.r8.graph.H2 h22;
        com.android.tools.r8.graph.I4 i42;
        com.android.tools.r8.graph.E0 g11;
        boolean z11 = f57385J;
        if (!z11) {
            c();
        }
        if (!z11 && abstractC10330xt == null) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.H0 h02 = null;
        if (a22.s0().E0()) {
            return null;
        }
        if (!c4798y.f38395J.a(c4798y, new Supplier() {
            @Override
            public final Object get() {
                return C11245i.a(AbstractC10330xt.this);
            }
        }, a22.s0().b((C4798y<?>) c4798y)) || cVar.f37020b.isInterface() != z10 || (g10 = g((a10 = C8331lu0.a(abstractC10330xt, a22, c4798y)))) == null) {
            return null;
        }
        if (this.f57393H.d(a10, a22)) {
            return this.f57393H.b(a10, a22);
        }
        if ((!abstractC10330xt.e() && this.f57393H.c(a10, a22)) || cVar.b((com.android.tools.r8.graph.D5) h52.getHolder(), c4798y).a()) {
            return null;
        }
        com.android.tools.r8.graph.H0 a11 = com.android.tools.r8.graph.H0.a(cVar.f37021c, cVar.f37022d);
        if ((!a11.getHolder().p1() && !a11.getAccessFlags().e()) || ((a11 instanceof com.android.tools.r8.graph.A4) && !interfaceC11248i2.d(a11.p()))) {
            C6949de b10 = abstractC10330xt.b();
            if (b10 == null || b10.E() != a10) {
                abstractC4481h3 = null;
            } else if (g10.e0()) {
                com.android.tools.r8.graph.D4 a12 = cVar.a(g10.d0(), this);
                if (a12 != null) {
                    com.android.tools.r8.graph.H0 l10 = a12.l();
                    l10.getClass();
                    if (l10 instanceof com.android.tools.r8.graph.H5) {
                        AbstractC11516y1 abstractC11516y1 = this.f57407v;
                        com.android.tools.r8.graph.H5 H10 = a12.l().H();
                        abstractC11516y1.getClass();
                    }
                    abstractC4481h3 = new com.android.tools.r8.graph.T5(a12.l(), cVar);
                }
                abstractC4481h3 = new C4427e6(cVar);
            } else {
                com.android.tools.r8.graph.H0 a13 = com.android.tools.r8.graph.H0.a(cVar.f37021c, cVar.f37022d);
                C4516j1 c10 = g10.c(a13.getReference());
                com.android.tools.r8.graph.H0 a14 = c10 != null ? com.android.tools.r8.graph.H0.a(g10, c10) : null;
                if (a14 != null && Z4.c.a(a13.d(), a14.d())) {
                    abstractC4481h3 = new com.android.tools.r8.graph.T5(a14, cVar);
                } else {
                    abstractC4481h3 = new C4427e6(cVar);
                }
            }
            if (abstractC4481h3 != null) {
                if (abstractC4481h3 instanceof com.android.tools.r8.graph.T5) {
                    return abstractC4481h3.a().f36831b;
                }
                return null;
            }
            if (g10.v1()) {
                this.f57393H.a(a10, a22);
                return null;
            }
            com.android.tools.r8.graph.E0 d10 = cVar.d();
            if (d10.isInterface() && d10.e0()) {
                if (!this.f57405t.b(d10.d0())) {
                    AbstractC4709t5 abstractC4709t5 = this.f57405t;
                    com.android.tools.r8.graph.H2 d02 = d10.d0();
                    abstractC4709t5.getClass();
                    if (d02.isInterface()) {
                        if (d02.f36246f.H()) {
                        }
                    }
                }
                this.f57393H.a(a10, a22);
                return null;
            }
            if (!abstractC10330xt.e() || (g11 = g(abstractC10330xt.b().E())) == null || ((h22 = g11.d0()) != null && !c(h22.f36245e, a10))) {
                h22 = null;
            }
            H4.a a15 = cVar.a(h52.getHolder(), c4798y, g10.d0(), h22).a();
            if (a15 != null && !a15.g()) {
                if (!a15.g()) {
                    if (a15.f36409b.size() + a15.f36408a.size() <= 1) {
                        if (a15.f36408a.size() == 1) {
                            i42 = (com.android.tools.r8.graph.I4) a15.f36408a.values().iterator().next();
                        } else if (a15.f36409b.size() == 1) {
                            i42 = (com.android.tools.r8.graph.I4) a15.f36409b.get(0);
                        }
                        if (i42 != null && i42.f()) {
                            h02 = i42.e().l();
                        }
                    }
                }
                i42 = null;
                if (i42 != null) {
                    h02 = i42.e().l();
                }
            }
            if (!abstractC10330xt.e()) {
                this.f57393H.a(a10, a22, h02);
            }
            return h02;
        }
        return this.f57393H.a(a10, a22, a11);
    }

    public final void a(Consumer consumer) {
        a().a().f37230l.forEach(consumer);
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, Consumer consumer, Consumer consumer2) {
        this.f57405t.a(m22, consumer, consumer2, this);
    }
}
