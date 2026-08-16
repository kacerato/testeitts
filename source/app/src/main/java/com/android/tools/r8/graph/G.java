package com.android.tools.r8.graph;

import com.android.tools.r8.C11699z2;
import com.android.tools.r8.graph.G;
import com.android.tools.r8.internal.A30;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.AbstractC9723uD;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C10523z10;
import com.android.tools.r8.internal.C5023Db;
import com.android.tools.r8.internal.C5313Ib;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5541Ma;
import com.android.tools.r8.internal.C5563Mi;
import com.android.tools.r8.internal.C6063Va;
import com.android.tools.r8.internal.C6382aB;
import com.android.tools.r8.internal.C6501av0;
import com.android.tools.r8.internal.C6607bb;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C7607hb;
import com.android.tools.r8.internal.C8103ka;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C9374s8;
import com.android.tools.r8.internal.C9438sa;
import com.android.tools.r8.internal.C9547tA;
import com.android.tools.r8.internal.C9708u8;
import com.android.tools.r8.internal.C9970vk0;
import com.android.tools.r8.internal.EW;
import com.android.tools.r8.internal.EX;
import com.android.tools.r8.internal.GG;
import com.android.tools.r8.internal.IJ;
import com.android.tools.r8.internal.InterfaceC5407Jq0;
import com.android.tools.r8.internal.InterfaceC5426Ka;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import com.android.tools.r8.internal.InterfaceC7166ev;
import com.android.tools.r8.internal.RG;
import com.android.tools.r8.internal.RR;
import com.android.tools.r8.internal.SG;
import com.android.tools.r8.internal.XQ;
import com.android.tools.r8.naming.AbstractC10992r0;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.shaking.C11245i;
import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;

public class G extends AbstractC4497i0 implements P, InterfaceC5580Mq0<G> {

    public static final boolean f36301n = true;

    public final M2 f36302e;

    public int f36303f;

    public int f36304g;

    public List f36305h;

    public final List f36306i;

    public final List f36307j;

    public int f36308k;

    public final Position f36309l;

    public final C9708u8 f36310m;

    public G(M2 m22, int i10, int i11, List list, List list2, List list3) {
        this(m22, i10, i11, list, list2, list3, Position.UNKNOWN, C9708u8.f52785b);
    }

    @Override
    public final int A() {
        return 1;
    }

    @Override
    public final G E() {
        return this;
    }

    public List<com.android.tools.r8.internal.W9> E0() {
        return Collections.unmodifiableList(this.f36305h);
    }

    public List<a> F0() {
        return Collections.unmodifiableList(this.f36307j);
    }

    public int G0() {
        return this.f36303f;
    }

    public final B60 H0() {
        for (com.android.tools.r8.internal.W9 w92 : this.f36305h) {
            w92.getClass();
            if (!(w92 instanceof C8103ka)) {
                if (!(w92 instanceof C5541Ma)) {
                    return null;
                }
                B60 V10 = w92.q().V();
                if (V10.f() == 0) {
                    return V10;
                }
                return null;
            }
        }
        return null;
    }

    public List<C5023Db> I0() {
        return this.f36306i;
    }

    @Override
    public final G V() {
        return this;
    }

    @Override
    public final int k(int i10) {
        Iterator it = this.f36305h.iterator();
        int i11 = 0;
        while (it.hasNext() && (!((com.android.tools.r8.internal.W9) it.next()).A() || (i11 = i11 + 1) <= i10)) {
        }
        if (i11 <= i10) {
            return i11;
        }
        return -1;
    }

    @Override
    public final int k0() {
        throw new C6501av0();
    }

    @Override
    public final P l0() {
        return this;
    }

    @Override
    public final InterfaceC5638Nq0<G> m() {
        throw new C5417Jv0();
    }

    @Override
    public final int q0() {
        return k(Integer.MAX_VALUE) * 5;
    }

    @Override
    public final boolean s0() {
        Iterator<com.android.tools.r8.internal.W9> it = E0().iterator();
        while (it.hasNext()) {
            if (it.next() instanceof C9438sa) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final boolean t0() {
        return true;
    }

    @Override
    public String toString() {
        return new C6063Va(this, null, C9970vk0.f53318b).toString();
    }

    @Override
    public final boolean u0() {
        return true;
    }

    @Override
    public final boolean x0() {
        for (com.android.tools.r8.internal.W9 w92 : this.f36305h) {
            if (!(w92 instanceof C6607bb) && !(w92 instanceof C8103ka) && !(w92 instanceof C5541Ma)) {
                return false;
            }
        }
        return true;
    }

    public final void b(C4798y c4798y, H5 h52) {
        int a10 = a(c4798y, h52);
        this.f36308k = a10;
        if (a10 == 4 || a10 == 2) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.f36305h);
        arrayList.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((com.android.tools.r8.internal.W9) obj).K();
            }
        });
        a(arrayList);
    }

    @Override
    public final boolean c(Object obj) {
        throw new C6501av0();
    }

    public static class a {

        public static final boolean f36311e = true;

        public final int f36312a;

        public final C4515j0 f36313b;

        public final C8103ka f36314c;

        public C8103ka f36315d;

        public a(int i10, C4515j0 c4515j0, C8103ka c8103ka) {
            this.f36312a = i10;
            this.f36313b = c4515j0;
            this.f36314c = c8103ka;
        }

        public final void a(C8103ka c8103ka) {
            boolean z10 = f36311e;
            if (!z10 && this.f36315d != null) {
                throw new AssertionError();
            }
            if (!z10 && c8103ka == null) {
                throw new AssertionError();
            }
            this.f36315d = c8103ka;
        }

        public int b() {
            return this.f36312a;
        }

        public C4515j0 c() {
            return this.f36313b;
        }

        public C8103ka d() {
            return this.f36314c;
        }

        public final String toString() {
            return this.f36312a + " => " + ((Object) this.f36313b);
        }

        public C8103ka a() {
            return this.f36315d;
        }

        public a(int i10, C4515j0 c4515j0, C8103ka c8103ka, C8103ka c8103ka2) {
            this.f36312a = i10;
            this.f36313b = c4515j0;
            this.f36314c = c8103ka;
            a(c8103ka2);
        }

        public final int a(a aVar, AbstractC8953pf abstractC8953pf, final O o10) {
            return abstractC8953pf.a(this, aVar, (InterfaceC5638Nq0<a>) new InterfaceC5638Nq0() {
                @Override
                public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                    G.a.a(O.this, abstractC5754Pq0);
                }
            });
        }

        public static void a(O o10, AbstractC5754Pq0 abstractC5754Pq0) {
            AbstractC5754Pq0 a10 = abstractC5754Pq0.a(new ToIntFunction() {
                @Override
                public final int applyAsInt(Object obj) {
                    return ((G.a) obj).b();
                }
            });
            Function function = new Function() {
                @Override
                public final Object apply(Object obj) {
                    return ((G.a) obj).d();
                }
            };
            InterfaceC5407Jq0 a11 = o10.a();
            AbstractC5754Pq0 a12 = a10.a(function, a11, a11);
            Function function2 = new Function() {
                @Override
                public final Object apply(Object obj) {
                    return ((G.a) obj).a();
                }
            };
            InterfaceC5407Jq0 a13 = o10.a();
            a12.a(function2, a13, a13).e(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return ((G.a) obj).c();
                }
            });
        }
    }

    public static void a(AbstractC9213rA abstractC9213rA, com.android.tools.r8.internal.W9 w92) {
        ((C9547tA) abstractC9213rA).f52553a.a(w92.C());
        w92.a(abstractC9213rA);
    }

    public G(M2 m22, int i10, int i11, List list, List list2, List list3, Position position, C9708u8 c9708u8) {
        this.f36308k = 1;
        this.f36302e = m22;
        this.f36304g = i10;
        this.f36303f = i11;
        this.f36305h = list;
        this.f36306i = list2;
        this.f36307j = list3;
        this.f36309l = position;
        this.f36310m = c9708u8;
    }

    @Override
    public G a(A2 a22, boolean z10, A2 a23, boolean z11, C4724u1 c4724u1) {
        C8103ka c8103ka;
        B60.c a10;
        B60.c.a a11 = B60.c.t().a(0).a(a22);
        a11.f38816e = z10;
        B60.c a12 = a11.a();
        ArrayList arrayList = new ArrayList(this.f36305h.size() + 2);
        com.android.tools.r8.internal.W9 w92 = (com.android.tools.r8.internal.W9) this.f36305h.get(0);
        w92.getClass();
        if (w92 instanceof C8103ka) {
            c8103ka = ((com.android.tools.r8.internal.W9) this.f36305h.get(0)).m();
        } else {
            c8103ka = new C8103ka();
            arrayList.add(c8103ka);
        }
        boolean z12 = false;
        for (com.android.tools.r8.internal.W9 w93 : this.f36305h) {
            w93.getClass();
            if (w93 instanceof C5541Ma) {
                C5541Ma q10 = w93.q();
                arrayList.add(new C5541Ma(q10.f42320c, AbstractC4497i0.a(a12, q10.V(), z11)));
                z12 = true;
            } else {
                if (!(w93 instanceof C8103ka) && !z12) {
                    if (z11) {
                        a10 = a12;
                    } else {
                        B60.c.a a13 = B60.c.t().a(a23);
                        a13.f38814c = a12;
                        a10 = a13.a(0).a();
                    }
                    arrayList.add(new C5541Ma(c8103ka, a10));
                    z12 = true;
                }
                arrayList.add(w93);
            }
        }
        return new G(this.f36302e, this.f36304g, this.f36303f, arrayList, this.f36306i, this.f36307j);
    }

    @Override
    public final C9374s8 a(InterfaceC5426Ka interfaceC5426Ka) {
        return (C9374s8) this.f36310m.f52787a.get(interfaceC5426Ka.r());
    }

    public void a(List<com.android.tools.r8.internal.W9> list) {
        this.f36305h = list;
    }

    @Override
    public final void a(final AbstractC9213rA abstractC9213rA) {
        C9547tA c9547tA = (C9547tA) abstractC9213rA;
        c9547tA.f52553a.a(this.f36305h.size());
        c9547tA.f52553a.a(this.f36306i.size());
        c9547tA.f52553a.a(this.f36307j.size());
        this.f36305h.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                G.a(AbstractC9213rA.this, (com.android.tools.r8.internal.W9) obj);
            }
        });
    }

    @Override
    public final int a(G g10, AbstractC8953pf abstractC8953pf) {
        final O o10 = new O(this, g10);
        return abstractC8953pf.a(this, g10, (InterfaceC5638Nq0<G>) new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                G.a(O.this, abstractC5754Pq0);
            }
        });
    }

    public static void a(O o10, AbstractC5754Pq0 abstractC5754Pq0) {
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                Collection collection;
                collection = ((G) obj).f36305h;
                return collection;
            }
        };
        o10.getClass();
        abstractC5754Pq0.a(function, (InterfaceC5407Jq0) new L(o10)).a(new Function() {
            @Override
            public final Object apply(Object obj) {
                Collection collection;
                collection = ((G) obj).f36306i;
                return collection;
            }
        }, (InterfaceC5407Jq0) new M(o10)).a(new Function() {
            @Override
            public final Object apply(Object obj) {
                Collection collection;
                collection = ((G) obj).f36307j;
                return collection;
            }
        }, (InterfaceC5407Jq0) new N(o10));
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x008a, code lost:
    
        if (r2.f57407v.a(r3, r2.j(), r2) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d8, code lost:
    
        if (r8.B().f().f56586r == false) goto L54;
     */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01a9  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(H5 h52, C5313Ib c5313Ib, C4798y c4798y, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        C8103ka c8103ka;
        C5313Ib c5313Ib2;
        boolean z10;
        B60 b60;
        C8570nJ c8570nJ;
        AbstractC9723uD abstractC9723uD;
        int a10;
        AbstractC5308Hz v10 = c4798y.v();
        AbstractC5308Hz a11 = a(c4798y);
        boolean z11 = f36301n;
        if (!z11 && (a10 = a(c4798y, h52)) != 4 && a10 != 2) {
            throw new AssertionError((Object) "Could not validate stack map frames");
        }
        C4724u1 b10 = c4798y.b();
        AbstractC9723uD abstractC9723uD2 = c4798y.f38417j;
        C8570nJ E10 = c4798y.E();
        C4516j1 d10 = h52.d();
        if (!c4798y.E().M() && !c4798y.E().f50690i1 && !c4798y.a(d10)) {
            if (!z11 && !this.f36307j.isEmpty()) {
                throw new AssertionError();
            }
            if (d10.f37326s != C4516j1.f37312w) {
                if (c4798y.f().i()) {
                    C11245i m10 = c4798y.f().m();
                }
                C8103ka c8103ka2 = new C8103ka();
                ex.a(c8103ka2.V());
                c8103ka = c8103ka2;
                c5313Ib2 = C5313Ib.f41136g;
                if (!c5313Ib.b(c5313Ib2)) {
                    if (c4798y.m() && c5313Ib.isEqualTo(c5313Ib2)) {
                        if (!C8570nJ.f50581h2 && !E10.f50644U1 && E10.B() == null) {
                            throw new AssertionError();
                        }
                        if (!E10.f50644U1) {
                        }
                    }
                    z10 = false;
                    B60 H02 = H0();
                    boolean z12 = H02 == null && (H02 instanceof B60.c);
                    boolean z13 = z12;
                    for (com.android.tools.r8.internal.W9 w92 : this.f36305h) {
                        if (z10 && w92.K()) {
                            b60 = H02;
                            c8570nJ = E10;
                            abstractC9723uD = abstractC9723uD2;
                        } else {
                            if (z13) {
                                w92.getClass();
                                if (w92 instanceof C5541Ma) {
                                    B60 V10 = w92.q().V();
                                    V10.getClass();
                                    if (InterfaceC7166ev.a(V10, H02)) {
                                        z13 = false;
                                    }
                                }
                            }
                            b60 = H02;
                            c8570nJ = E10;
                            abstractC9723uD = abstractC9723uD2;
                            w92.a(c4798y, h52, b10, v10, a11, abstractC9723uD2, abstractC10992r0, rr, ex);
                        }
                        E10 = c8570nJ;
                        H02 = b60;
                        abstractC9723uD2 = abstractC9723uD;
                    }
                    C8570nJ c8570nJ2 = E10;
                    ex.c(this.f36304g, this.f36303f);
                    for (C5023Db c5023Db : this.f36306i) {
                        XQ V11 = c5023Db.f39556a.V();
                        XQ V12 = c5023Db.f39557b.V();
                        for (int i10 = 0; i10 < c5023Db.f39558c.size(); i10++) {
                            M2 c10 = v10.c(a11, c5023Db.f39558c.get(i10));
                            ex.a(V11, V12, c5023Db.f39559d.get(i10).V(), c10 == c8570nJ2.f50660a.f38173v3 ? null : abstractC10992r0.d(c10));
                        }
                    }
                    if (c8103ka != null) {
                        if (!f36301n && !this.f36307j.isEmpty()) {
                            throw new AssertionError();
                        }
                        A30 it = h52.d().f37326s.c().iterator();
                        while (it.hasNext()) {
                            RG rg2 = (RG) it.next();
                            C4515j0 c4515j0 = (C4515j0) rg2.getValue();
                            int a12 = rg2.a();
                            M2 c11 = v10.c(a11, c4515j0.f37308c);
                            String l22 = c4515j0.f37307b.toString();
                            String l23 = abstractC10992r0.c(c11).toString();
                            L2 l24 = c4515j0.f37309d;
                            ex.a(l22, l23, l24 == null ? null : l24.toString(), c8103ka.V(), c8103ka.V(), a12);
                        }
                        return;
                    }
                    for (a aVar : this.f36307j) {
                        C4515j0 c4515j02 = aVar.f36313b;
                        C8103ka c8103ka3 = aVar.f36314c;
                        C8103ka c8103ka4 = aVar.f36315d;
                        int i11 = aVar.f36312a;
                        M2 c12 = v10.c(a11, c4515j02.f37308c);
                        String l25 = c4515j02.f37307b.toString();
                        String l26 = abstractC10992r0.c(c12).toString();
                        L2 l27 = c4515j02.f37309d;
                        ex.a(l25, l26, l27 == null ? null : l27.toString(), c8103ka3.V(), c8103ka4.V(), i11);
                    }
                    return;
                }
                z10 = true;
                B60 H022 = H0();
                if (H022 == null) {
                }
                boolean z132 = z12;
                while (r21.hasNext()) {
                }
                C8570nJ c8570nJ22 = E10;
                ex.c(this.f36304g, this.f36303f);
                while (r1.hasNext()) {
                }
                if (c8103ka != null) {
                }
            }
        }
        c8103ka = null;
        c5313Ib2 = C5313Ib.f41136g;
        if (!c5313Ib.b(c5313Ib2)) {
        }
        z10 = true;
        B60 H0222 = H0();
        if (H0222 == null) {
        }
        boolean z1322 = z12;
        while (r21.hasNext()) {
        }
        C8570nJ c8570nJ222 = E10;
        ex.c(this.f36304g, this.f36303f);
        while (r1.hasNext()) {
        }
        if (c8103ka != null) {
        }
    }

    @Override
    public final C7215fB a(H5 h52, C4798y c4798y, EW.a aVar) {
        b(c4798y, h52);
        AbstractC5308Hz abstractC5308Hz = c4798y.f38414g;
        h52.getClass();
        if (c4798y.H().f50905s0 || (!c4798y.E().f50690i1 && !h52.getHolder().I1())) {
            return a(Collections.EMPTY_LIST, h52, h52, c4798y, abstractC5308Hz, null, null, null, aVar);
        }
        try {
            return a(Collections.unmodifiableList(this.f36307j), h52, h52, c4798y, abstractC5308Hz, null, null, null, aVar);
        } catch (IJ e10) {
            c4798y.E().a(h52, e10);
            return a(Collections.EMPTY_LIST, h52, h52, c4798y, abstractC5308Hz, null, null, null, aVar);
        }
    }

    @Override
    public final C7215fB a(H5 h52, H5 h53, C4798y c4798y, AbstractC5308Hz abstractC5308Hz, C10523z10 c10523z10, B60 b60, com.android.tools.r8.graph.proto.j jVar) {
        boolean z10 = f36301n;
        if (!z10 && c10523z10 == null) {
            throw new AssertionError();
        }
        if (!z10 && b60 == null) {
            throw new AssertionError();
        }
        if (!z10 && jVar == null) {
            throw new AssertionError();
        }
        b(c4798y, h53);
        EW.a d10 = EW.d();
        h53.getClass();
        if (c4798y.H().f50905s0 || (!c4798y.E().f50690i1 && !h53.getHolder().I1())) {
            return a(Collections.EMPTY_LIST, h52, h53, c4798y, abstractC5308Hz, c10523z10, b60, jVar, d10);
        }
        try {
            return a(Collections.unmodifiableList(this.f36307j), h52, h53, c4798y, abstractC5308Hz, c10523z10, b60, jVar, d10);
        } catch (IJ e10) {
            c4798y.E().a(h53, e10);
            return a(Collections.EMPTY_LIST, h52, h53, c4798y, abstractC5308Hz, c10523z10, b60, jVar, d10);
        }
    }

    public final C7215fB a(List list, H5 h52, H5 h53, C4798y c4798y, AbstractC5308Hz abstractC5308Hz, C10523z10 c10523z10, B60 b60, com.android.tools.r8.graph.proto.j jVar, EW.a aVar) {
        C6382aB c6382aB;
        C7607hb c7607hb = new C7607hb(this, list, h53, b60, c4798y);
        if (c10523z10 == null) {
            if (!f36301n && jVar != null) {
                throw new AssertionError();
            }
            c6382aB = C6382aB.a(h53, c4798y, c7607hb);
        } else {
            c6382aB = new C6382aB(h53, c4798y, abstractC5308Hz, c7607hb, jVar, c10523z10);
        }
        return c6382aB.a(h52, aVar);
    }

    @Override
    public final void a(H5 h52, AbstractC4446f6 abstractC4446f6) {
        if (!f36301n && !abstractC4446f6.f37178c.d()) {
            throw new AssertionError();
        }
        ListIterator listIterator = this.f36305h.listIterator();
        while (listIterator.hasNext()) {
            ((com.android.tools.r8.internal.W9) listIterator.next()).a(abstractC4446f6, listIterator);
            if (abstractC4446f6.f37178c.c()) {
                return;
            }
        }
        Iterator it = this.f36306i.iterator();
        while (it.hasNext()) {
            ((C5023Db) it.next()).a(abstractC4446f6);
            if (abstractC4446f6.f37178c.c()) {
                return;
            }
        }
    }

    @Override
    public final void a(C4421e0 c4421e0, final C5563Mi c5563Mi) {
        ListIterator listIterator = this.f36305h.listIterator();
        while (listIterator.hasNext()) {
            ((com.android.tools.r8.internal.W9) listIterator.next()).a(c5563Mi, listIterator);
        }
        this.f36306i.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                G.a(AbstractC4446f6.this, (C5023Db) obj);
            }
        });
    }

    public static void a(final AbstractC4446f6 abstractC4446f6, C5023Db c5023Db) {
        List<M2> list = c5023Db.f39558c;
        Objects.requireNonNull(abstractC4446f6);
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC4446f6.this.f((M2) obj);
            }
        });
    }

    @Override
    public final SG a(C4798y c4798y, C4516j1 c4516j1) {
        C8103ka c8103ka;
        int i10;
        Iterator it = this.f36305h.iterator();
        while (true) {
            if (!it.hasNext()) {
                c8103ka = null;
                break;
            }
            com.android.tools.r8.internal.W9 w92 = (com.android.tools.r8.internal.W9) it.next();
            if (w92 instanceof C8103ka) {
                c8103ka = (C8103ka) w92;
                break;
            }
        }
        if (c8103ka == null) {
            return C4516j1.f37312w;
        }
        if (c4798y.E().f50688i != null && c4798y.E().B().u()) {
            if (c4798y.f().i()) {
                C11245i m10 = c4798y.f().m();
                if (!m10.f57407v.a(c4516j1, m10.j(), m10)) {
                    return C4516j1.f37312w;
                }
            }
            BitSet bitSet = new BitSet(0);
            if (c4516j1.w0()) {
                i10 = 0;
            } else {
                bitSet.set(0);
                i10 = 1;
            }
            for (M2 m22 : c4516j1.getReference().f36127i.f36441f.f36675b) {
                bitSet.set(i10);
                i10 += (m22.M0() || m22.J0()) ? 2 : 1;
            }
            GG gg2 = new GG(bitSet.cardinality());
            for (a aVar : this.f36307j) {
                if (aVar.f36314c == c8103ka && bitSet.get(aVar.f36312a) && !gg2.a(aVar.f36312a)) {
                    int i11 = aVar.f36312a;
                    C4515j0 c4515j0 = aVar.f36313b;
                    gg2.a(i11, new C4515j0(c4515j0.f37307b, c4515j0.f37308c, c4515j0.f37309d));
                }
            }
            return gg2;
        }
        return C4516j1.f37312w;
    }

    @Override
    public final String a(C4516j1 c4516j1, C9970vk0 c9970vk0) {
        return new C6063Va(this, c4516j1, c9970vk0).toString();
    }

    public final void a(C4724u1 c4724u1) {
        List list = this.f36307j;
        if (list == null || list.isEmpty()) {
            return;
        }
        int i10 = -1;
        int i11 = 0;
        for (int i12 = 0; i12 < this.f36307j.size(); i12++) {
            a aVar = (a) this.f36307j.get(i12);
            i11 = Math.max(i11, J0.a(c4724u1, aVar.f36313b.f37307b));
            if (aVar.f36313b.f37307b.toString().equals("this")) {
                i10 = i12;
            }
        }
        if (i10 < 0) {
            return;
        }
        C4515j0 c4515j0 = new C4515j0(c4724u1.b(C11699z2.a(ConstantDescs.DEFAULT_NAME, i11 + 1) + "this"), this.f36302e, null);
        a aVar2 = (a) this.f36307j.get(i10);
        this.f36307j.set(i10, new a(aVar2.f36312a, c4515j0, aVar2.f36314c, aVar2.f36315d));
    }

    public final int a(C4798y c4798y, H5 h52) {
        int i10 = this.f36308k;
        if (i10 != 0) {
            if (i10 == 1) {
                this.f36308k = new com.android.tools.r8.internal.J9(c4798y, this, new com.android.tools.r8.internal.K9(c4798y, this, h52), new F(c4798y), h52).a();
            }
            return this.f36308k;
        }
        throw null;
    }

    @Override
    public final void a(A2 a22, boolean z10, Consumer consumer) {
        for (com.android.tools.r8.internal.W9 w92 : E0()) {
            w92.getClass();
            if (w92 instanceof C5541Ma) {
                consumer.accept(w92.q().V());
            }
        }
    }
}
