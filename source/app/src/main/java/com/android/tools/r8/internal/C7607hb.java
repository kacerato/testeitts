package com.android.tools.r8.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.G;
import com.android.tools.r8.internal.C7201f60;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;

public final class C7607hb implements InterfaceC8811on0 {

    public static final boolean f48590v = true;

    public VA f48591a;

    public final boolean f48593c;

    public final C9775ub f48596f;

    public final List f48597g;

    public final com.android.tools.r8.graph.G f48598h;

    public final com.android.tools.r8.graph.H5 f48599i;

    public final C4798y f48600j;

    public C7440gb f48602l;

    public C7273fb f48603m;

    public int f48604n;

    public int f48605o;

    public boolean f48606p;

    public Q f48607q;

    public SG f48608r;

    public final J8 f48610t;

    public final EnumC9738uJ f48611u;

    public boolean f48592b = false;

    public int f48594d = 5;

    public WX f48595e = null;

    public final C9115qd0 f48601k = new C9115qd0();

    public final C6899dH f48609s = new C6899dH(16);

    public C7607hb(com.android.tools.r8.graph.G g10, List list, com.android.tools.r8.graph.H5 h52, B60 b60, C4798y c4798y) {
        boolean z10 = false;
        this.f48598h = g10;
        this.f48597g = list;
        this.f48599i = h52;
        this.f48600j = c4798y;
        int i10 = 0;
        for (int i11 = 0; i11 < g10.E0().size(); i11++) {
            W9 w92 = g10.E0().get(i11);
            if (w92 instanceof C8103ka) {
                this.f48601k.b(i11, (C8103ka) w92);
            }
            if (w92 instanceof C5541Ma) {
                i10++;
            }
        }
        this.f48596f = new C9775ub();
        this.f48610t = new J8(b60, i10, h52.getReference(), h52.d().F0(), g10.H0());
        EnumC9738uJ w10 = c4798y.E().w();
        this.f48611u = w10;
        if (!this.f48599i.d().o1() && w10 != EnumC9738uJ.f52835d && this.f48599i.d().f37314g.L()) {
            z10 = true;
        }
        this.f48593c = z10;
    }

    @Override
    public final void a(int i10, int i11, int i12, C6382aB c6382aB) {
    }

    @Override
    public final boolean b(int i10) {
        return true;
    }

    @Override
    public final int c(int i10) {
        return i10;
    }

    @Override
    public final void clear() {
    }

    @Override
    public final void d() {
    }

    @Override
    public final C4515j0 e(int i10) {
        if (this.f48594d != 5) {
            return null;
        }
        return (C4515j0) this.f48607q.get(i10);
    }

    @Override
    public final int f(int i10) {
        return 100000;
    }

    @Override
    public final int g(int i10) {
        return i10;
    }

    public final C7273fb h(int i10) {
        C7273fb c7273fb = this.f48603m;
        if (c7273fb == null || c7273fb.f48003a > i10 || i10 >= c7273fb.f48004b) {
            List<G.a> list = this.f48597g;
            C9115qd0 c9115qd0 = this.f48601k;
            int i11 = Integer.MIN_VALUE;
            int i12 = Integer.MAX_VALUE;
            SG sg2 = null;
            for (G.a aVar : list) {
                int b10 = c9115qd0.b(aVar.d());
                int b11 = c9115qd0.b(aVar.a());
                if (b10 > i10) {
                    i12 = Math.min(i12, b10);
                } else if (i10 >= b11) {
                    i11 = Math.max(i11, b11);
                } else {
                    if (sg2 == null) {
                        sg2 = new C6899dH(16);
                    }
                    i11 = Math.max(i11, b10);
                    i12 = Math.min(i12, b11);
                    sg2.a(aVar.b(), aVar.c());
                }
            }
            if (sg2 == null) {
                sg2 = AbstractC10402yH.f53985a;
            }
            this.f48603m = new C7273fb(i11, i12, sg2);
        }
        return this.f48603m;
    }

    public final int[] i(int i10) {
        W9 w92 = this.f48598h.E0().get(i10);
        boolean z10 = f48590v;
        if (!z10 && !a(w92)) {
            throw new AssertionError();
        }
        C8103ka D10 = w92.D();
        if (w92.S() || (w92 instanceof C4965Cb)) {
            if (z10 || D10 == null) {
                return new int[0];
            }
            throw new AssertionError();
        }
        if (!z10 && !(w92 instanceof C4907Bb) && D10 == null) {
            throw new AssertionError((Object) ("getTargets(): Non-control flow instruction " + ((Object) w92.getClass())));
        }
        if (!(w92 instanceof C4907Bb)) {
            int b10 = this.f48601k.b(D10);
            if (w92 instanceof M9) {
                return new int[]{b10};
            }
            if (z10 || w92.G()) {
                return new int[]{b10, i10 + 1};
            }
            throw new AssertionError();
        }
        C4907Bb c4907Bb = (C4907Bb) w92;
        ArrayList arrayList = c4907Bb.f38946f;
        int[] iArr = new int[arrayList.size() + 1];
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            iArr[i11] = this.f48601k.b(arrayList.get(i11));
        }
        iArr[arrayList.size()] = this.f48601k.b(c4907Bb.f38944d);
        return iArr;
    }

    @Override
    public final void a(int i10, int i11, C6382aB c6382aB) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.android.tools.r8.internal.aB] */
    /* JADX WARN: Type inference failed for: r1v14, types: [com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r1v19, types: [java.util.Map, com.android.tools.r8.internal.SG, com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.Q] */
    @Override
    public final void b(C6382aB c6382aB) {
        C10235xH c10235xH;
        int i10;
        if (!f48590v && this.f48606p) {
            throw new AssertionError();
        }
        this.f48606p = true;
        C9775ub c9775ub = this.f48596f;
        B60 b60 = this.f48610t.f41304c;
        c9775ub.getClass();
        c9775ub.f52885a = new C8273lb(0, 0);
        c9775ub.f52886b = b60;
        ?? r12 = h(this.f48604n).f48005c;
        this.f48607q = r12;
        if (this.f48606p) {
            this.f48608r = r12;
        } else {
            if (!a(this.f48598h.E0().get(this.f48604n))) {
                c10235xH = h(this.f48604n + 1).f48005c;
            } else {
                c10235xH = AbstractC10402yH.f53985a;
            }
            this.f48608r = c10235xH;
        }
        C4516j1 d10 = this.f48599i.d();
        final C9775ub c9775ub2 = this.f48596f;
        Objects.requireNonNull(c9775ub2);
        c6382aB.a(0, d10, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C9775ub.this.a(((Integer) obj).intValue(), (com.android.tools.r8.graph.M2) obj2);
            }
        });
        ?? r13 = h(0).f48005c;
        if (!r13.isEmpty()) {
            int i11 = !this.f48599i.d().w0() ? 1 : 0;
            for (com.android.tools.r8.graph.M2 m22 : this.f48599i.d().X0().f36441f.f36675b) {
                i11 = (m22.M0() || m22.J0()) ? i11 + 2 : i11 + 1;
            }
            A30 it = r13.c().iterator();
            while (it.hasNext()) {
                RG rg2 = (RG) it.next();
                if (i11 <= rg2.a()) {
                    c6382aB.b(rg2.a(), (C4515j0) rg2.getValue());
                }
            }
        }
        boolean z10 = this.f48593c;
        if (z10) {
            boolean z11 = f48590v;
            if (!z11 && !z10) {
                throw new AssertionError();
            }
            if (!z11 && this.f48594d != 5) {
                throw new AssertionError();
            }
            this.f48594d = 1;
            com.android.tools.r8.graph.M2 p10 = this.f48599i.p();
            if (this.f48599i.d().w0()) {
                C9775ub c9775ub3 = this.f48596f;
                c9775ub3.getClass();
                i10 = c9775ub3.a(new C9108qb(p10)).f51280a;
                this.f48596f.a();
                c6382aB.a(i10, p10);
            } else {
                i10 = this.f48596f.f52885a.a(0).f51280a;
            }
            WX wx = new WX(XX.f45732b, c6382aB.b(i10, EnumC5592Mw0.f42461b));
            c6382aB.a(wx);
            this.f48595e = wx;
            if (!z11 && this.f48594d == 5) {
                throw new AssertionError();
            }
            this.f48594d = 5;
        }
        B60 a10 = a(0);
        B60 b602 = this.f48596f.f52886b;
        b602.getClass();
        if (!InterfaceC7166ev.a(b602, a10)) {
            C9775ub c9775ub4 = this.f48596f;
            c9775ub4.getClass();
            if (!C9775ub.f52884c && a10 == null) {
                throw new AssertionError();
            }
            c9775ub4.f52886b = a10;
            c6382aB.a(this.f48596f.f52886b);
        }
        a(0, this.f48596f.f52885a);
        this.f48606p = false;
    }

    @Override
    public final boolean c() {
        return false;
    }

    @Override
    public final C4515j0 d(int i10) {
        if (this.f48594d != 5) {
            return null;
        }
        if (this.f48606p) {
            return e(i10);
        }
        if (f48590v || !a(this.f48598h.E0().get(this.f48604n))) {
            return (C4515j0) this.f48608r.get(i10);
        }
        throw new AssertionError((Object) "Outgoing local is undefined for control-flow instructions");
    }

    @Override
    public final int f() {
        return this.f48598h.E0().size();
    }

    @Override
    public final B60 g() {
        return this.f48596f.f52886b;
    }

    public final void a(G9 g92) {
        InterfaceC7896jG interfaceC7896jG = g92.f40404c;
        int i10 = 0;
        final com.android.tools.r8.graph.M2[] m2Arr = new com.android.tools.r8.graph.M2[interfaceC7896jG.isEmpty() ? 0 : interfaceC7896jG.d() + 1];
        int size = g92.f40405d.size();
        com.android.tools.r8.graph.M2[] m2Arr2 = new com.android.tools.r8.graph.M2[size];
        ZH zh2 = new ZH() {
            @Override
            public final void a(int i11, Object obj) {
                C7607hb.this.a(m2Arr, i11, (InterfaceC8008jy) obj);
            }
        };
        InterfaceC9861v30 it = g92.f40404c.b().iterator();
        while (it.hasNext()) {
            EF ef2 = (EF) it.next();
            zh2.a(ef2.a(), (InterfaceC8008jy) ef2.getValue());
        }
        Iterator it2 = g92.f40405d.iterator();
        while (it2.hasNext()) {
            m2Arr2[i10] = a((S60) it2.next());
            i10++;
        }
        C9775ub c9775ub = this.f48596f;
        B60 a10 = a(this.f48604n);
        if (!C9775ub.f52884c) {
            AbstractC9441sb abstractC9441sb = c9775ub.f52885a;
            if (abstractC9441sb != null && abstractC9441sb.d() != size) {
                throw new AssertionError();
            }
        } else {
            c9775ub.getClass();
        }
        C8273lb c8273lb = new C8273lb(m2Arr, m2Arr2, a10);
        c9775ub.f52885a = c8273lb;
        if (!f48590v && this.f48609s.get(this.f48605o) == null) {
            throw new AssertionError();
        }
        for (int i11 = this.f48605o; i11 < this.f48604n; i11++) {
            W9 w92 = this.f48598h.E0().get(i11);
            w92.getClass();
            if (!(w92 instanceof C5541Ma) && !(w92 instanceof C8103ka)) {
                return;
            }
        }
        this.f48609s.a(this.f48605o, c8273lb);
    }

    public final void c(C6382aB c6382aB) {
        String str;
        if (!f48590v && this.f48607q.equals(this.f48608r)) {
            throw new AssertionError();
        }
        A30 it = this.f48608r.c().iterator();
        while (it.hasNext()) {
            RG rg2 = (RG) it.next();
            if (!((C4515j0) rg2.getValue()).equals(this.f48607q.get(rg2.a()))) {
                C8774ob a10 = this.f48596f.f52885a.a(rg2.a());
                if (a10 != null && a10.f51281b != EnumC5477Kw0.a(((C4515j0) rg2.getValue()).f37308c)) {
                    int i10 = AbstractC6940db.f47433a[a10.f51281b.ordinal()];
                    if (i10 == 1) {
                        str = "reference";
                    } else if (i10 == 2) {
                        str = "int";
                    } else if (i10 == 3) {
                        str = TypedValues.Custom.S_FLOAT;
                    } else if (i10 == 4) {
                        str = "long";
                    } else {
                        if (i10 != 5) {
                            throw new C5417Jv0();
                        }
                        str = "double";
                    }
                    throw new IJ("Attempt to define local of type " + str + " as " + ((C4515j0) rg2.getValue()).a(3));
                }
                c6382aB.b(rg2.a(), (C4515j0) rg2.getValue());
            }
        }
    }

    @Override
    public final N8 e() {
        C7440gb a10;
        if (this.f48606p) {
            return null;
        }
        int i10 = this.f48594d;
        if (i10 == 5) {
            a10 = a(this.f48604n, this.f48600j.b());
        } else {
            if (i10 != 3) {
                return null;
            }
            a10 = a(-2, this.f48600j.b());
        }
        if (!C7440gb.f48291e && a10.f48294c.isEmpty() != a10.f48295d.isEmpty()) {
            throw new AssertionError();
        }
        if (a10.f48294c.isEmpty()) {
            return null;
        }
        return new N8(a10.f48294c, a10.f48295d);
    }

    public final Iterable h() {
        return (Iterable) this.f48598h.E0().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C7607hb.b((W9) obj);
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                B60 V10;
                V10 = ((C5541Ma) ((W9) obj)).V();
                return V10;
            }
        }).collect(Collectors.toList());
    }

    @Override
    public final int a(int i10, C6382aB c6382aB) {
        W9 w92 = this.f48598h.E0().get(i10);
        if (!f48590v && (this.f48600j.E().f50697l instanceof ClassFileConsumer) != this.f48611u.a()) {
            throw new AssertionError();
        }
        if (w92.z()) {
            C7440gb a10 = a(i10, this.f48600j.b());
            if (!C7440gb.f48291e && a10.f48294c.isEmpty() != a10.f48295d.isEmpty()) {
                throw new AssertionError();
            }
            if (a10.f48294c.isEmpty()) {
                boolean z10 = w92 instanceof C4965Cb;
                this.f48592b |= z10;
                if (!z10) {
                    return -1;
                }
            } else {
                c6382aB.f(a10.f48292a);
                C6901dI c6901dI = new C6901dI(16);
                Iterator o10 = a10.f48295d.o(0);
                while (o10.hasNext()) {
                    int r10 = ((X) o10).r();
                    if (c6901dI.add(r10)) {
                        c6382aB.a(i10, r10, false);
                    }
                }
                if (!(w92 instanceof C4965Cb)) {
                    c6382aB.a(i10, i10 + 1, true);
                    return i10;
                }
            }
            return i10;
        }
        if (!a(w92)) {
            return -1;
        }
        for (int i11 : i(i10)) {
            c6382aB.a(i10, i11, true);
        }
        this.f48592b |= w92.S();
        return i10;
    }

    public final C7440gb a(int i10, C4724u1 c4724u1) {
        C7440gb c7440gb = this.f48602l;
        if (c7440gb == null || c7440gb.f48292a > i10 || i10 >= c7440gb.f48293b) {
            List<C5023Db> I02 = this.f48598h.I0();
            C9115qd0 c9115qd0 = this.f48601k;
            boolean z10 = this.f48593c;
            ArrayList arrayList = new ArrayList();
            CH ch2 = new CH(16);
            C5957Td0 c5957Td0 = new C5957Td0();
            int i11 = Integer.MAX_VALUE;
            int i12 = 0;
            boolean z11 = false;
            for (C5023Db c5023Db : I02) {
                int b10 = c9115qd0.b(c5023Db.f39556a);
                int b11 = c9115qd0.b(c5023Db.f39557b);
                if (b10 <= i10) {
                    if (i10 >= b11) {
                        i12 = Math.max(i12, b11);
                    } else {
                        i12 = Math.max(i12, b10);
                        i11 = Math.min(i11, b11);
                        for (int i13 = 0; i13 < c5023Db.f39558c.size() && !z11; i13++) {
                            com.android.tools.r8.graph.M2 m22 = c5023Db.f39558c.get(i13);
                            if (c5957Td0.add(m22)) {
                                arrayList.add(m22);
                                ch2.add(c9115qd0.b(c5023Db.f39559d.get(i13)));
                                z11 = m22 == c4724u1.f38173v3;
                            }
                        }
                        if (z11) {
                            break;
                        }
                    }
                } else {
                    i11 = Math.min(i11, b10);
                }
            }
            if (z10 && !z11) {
                arrayList.add(c4724u1.f38173v3);
                ch2.add(-2);
            }
            this.f48602l = new C7440gb(i12, i11, arrayList, ch2);
        }
        return this.f48602l;
    }

    @Override
    public final boolean b() {
        return this.f48594d != 5 || this.f48606p || this.f48598h.E0().get(this.f48604n).z();
    }

    public static boolean b(W9 w92) {
        return w92 instanceof C5541Ma;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v16, types: [com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r12v5, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r4v11, types: [com.android.tools.r8.internal.dH] */
    /* JADX WARN: Type inference failed for: r4v12, types: [java.util.Map, com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r4v19, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.util.Map, com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r5v11, types: [java.util.Map, com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r5v6, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.android.tools.r8.internal.hb] */
    @Override
    public final void a(final C6382aB c6382aB, int i10, boolean z10) {
        C10235xH c10235xH;
        if (i10 == -2 || i10 == -3) {
            boolean z11 = f48590v;
            if (!z11 && !this.f48593c) {
                throw new AssertionError();
            }
            if (!AbstractC7106eb.f47723a && i10 != -2 && i10 != -3) {
                throw new AssertionError();
            }
            int i11 = i10 == -2 ? 3 : 4;
            if (!z11 && this.f48594d != 5) {
                throw new AssertionError();
            }
            this.f48594d = i11;
            C9775ub c9775ub = this.f48596f;
            B60 a10 = a(i10);
            c9775ub.getClass();
            if (!C9775ub.f52884c && a10 == null) {
                throw new AssertionError();
            }
            c9775ub.f52886b = a10;
            if (i10 == -2) {
                c6382aB.a(new WX(XX.f45733c, (C10340xw0) this.f48595e.f54321f.get(0)));
                c6382aB.a(-3);
            } else {
                c6382aB.a(c6382aB.f46462u.g(), new C5698Or0(c6382aB.b(100000, EnumC5592Mw0.f42461b)));
                c6382aB.b();
            }
            if (!z11 && this.f48594d == 5) {
                throw new AssertionError();
            }
            this.f48594d = 5;
            return;
        }
        W9 w92 = this.f48598h.E0().get(i10);
        this.f48604n = i10;
        if (z10) {
            VA va2 = (VA) c6382aB.f46442a.get(i10);
            this.f48591a = va2;
            if (i10 == 0 && va2 == null) {
                this.f48591a = (VA) c6382aB.f46442a.get(-1);
            }
            C9775ub c9775ub2 = this.f48596f;
            AbstractC9441sb abstractC9441sb = (AbstractC9441sb) this.f48609s.get(i10);
            boolean z12 = i10 == 0;
            B60 a11 = a(i10);
            c9775ub2.getClass();
            if (!C9775ub.f52884c && z12 && abstractC9441sb == null) {
                throw new AssertionError((Object) "Must have snapshot for method entry.");
            }
            c9775ub2.f52885a = abstractC9441sb;
            c9775ub2.f52886b = a11;
            this.f48605o = this.f48604n;
        }
        if (!f48590v && this.f48591a == null) {
            throw new AssertionError();
        }
        ?? r12 = h(this.f48604n).f48005c;
        this.f48607q = r12;
        if (this.f48606p) {
            this.f48608r = r12;
        } else {
            if (!a(this.f48598h.E0().get(this.f48604n))) {
                c10235xH = h(this.f48604n + 1).f48005c;
            } else {
                c10235xH = AbstractC10402yH.f53985a;
            }
            this.f48608r = c10235xH;
        }
        if (w92.z()) {
            AbstractC9441sb abstractC9441sb2 = this.f48596f.f52885a;
            com.android.tools.r8.graph.M2 m22 = this.f48600j.b().f38173v3;
            C8273lb c8273lb = new C8273lb(abstractC9441sb2.b() + 1, 1);
            abstractC9441sb2.a(c8273lb);
            c8273lb.f50010d[0] = new C9108qb(m22);
            FH fh2 = this.f48591a.f44995e;
            fh2.getClass();
            EH eh2 = new EH(fh2);
            while (eh2.hasNext()) {
                a(eh2.r(), c8273lb);
            }
        }
        boolean equals = this.f48607q.equals(this.f48608r);
        int i12 = i10 + 1;
        boolean z13 = (i12 == this.f48598h.E0().size() || c6382aB.f46442a.a(i12)) ? false : true;
        if (w92.S() || (w92 instanceof C4965Cb)) {
            if (!f48590v && !this.f48591a.f44993c.isEmpty()) {
                throw new AssertionError();
            }
            if (this.f48591a.f44995e.isEmpty()) {
                ?? r42 = this.f48607q;
                Objects.requireNonNull(c6382aB);
                r42.forEach(new BiConsumer() {
                    @Override
                    public final void accept(Object obj, Object obj2) {
                        C6382aB.this.a(((Integer) obj).intValue(), (C4515j0) obj2);
                    }
                });
            } else if (!this.f48607q.isEmpty()) {
                ?? c6899dH = new C6899dH(16);
                FH fh3 = this.f48591a.f44995e;
                fh3.getClass();
                EH eh3 = new EH(fh3);
                while (eh3.hasNext()) {
                    c6899dH.putAll(h(eh3.r()).f48005c);
                }
                A30 it = this.f48607q.c().iterator();
                while (it.hasNext()) {
                    RG rg2 = (RG) it.next();
                    if (c6899dH.get(rg2.a()) != rg2.getValue()) {
                        c6382aB.a(rg2.a(), (C4515j0) rg2.getValue());
                    }
                }
            }
        } else if (!equals && z13) {
            if (!f48590v && this.f48607q.equals(this.f48608r)) {
                throw new AssertionError();
            }
            A30 it2 = this.f48607q.c().iterator();
            while (it2.hasNext()) {
                RG rg3 = (RG) it2.next();
                if (!((C4515j0) rg3.getValue()).equals(this.f48608r.get(rg3.a()))) {
                    c6382aB.a(rg3.a(), (C4515j0) rg3.getValue());
                }
            }
        }
        w92.a(c6382aB, this.f48596f, (C7607hb) this);
        if (z13) {
            if (equals) {
                return;
            }
            c(c6382aB);
            return;
        }
        AbstractC9441sb abstractC9441sb3 = this.f48596f.f52885a;
        if (a(w92)) {
            for (int i13 : i(i10)) {
                a(i13, abstractC9441sb3);
            }
            return;
        }
        a(i12, abstractC9441sb3);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        if (this.f48593c) {
            boolean z10 = f48590v;
            if (!z10 && this.f48594d != 5) {
                throw new AssertionError();
            }
            this.f48594d = 2;
            c6382aB.a(new WX(XX.f45733c, (C10340xw0) this.f48595e.f54321f.get(0)));
            if (!z10 && this.f48594d == 5) {
                throw new AssertionError();
            }
            this.f48594d = 5;
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.HG, com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r8v2, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.HG, com.android.tools.r8.internal.Q] */
    @Override
    public final void a(C6382aB c6382aB, int i10, int i11, boolean z10) {
        if (i10 == -1 || i11 == -2 || i11 == -3) {
            return;
        }
        C9775ub c9775ub = this.f48596f;
        B60 a10 = a(z10 ? i11 : i10);
        c9775ub.getClass();
        if (!C9775ub.f52884c && a10 == null) {
            throw new AssertionError();
        }
        c9775ub.f52886b = a10;
        ?? r02 = h(i10).f48005c;
        ?? r82 = h(i11).f48005c;
        if (!z10) {
            A30 it = r02.c().iterator();
            while (it.hasNext()) {
                RG rg2 = (RG) it.next();
                if (r82.get(rg2.a()) != rg2.getValue()) {
                    c6382aB.a(rg2.a(), (C4515j0) rg2.getValue());
                }
            }
        }
        A30 it2 = r82.c().iterator();
        while (it2.hasNext()) {
            RG rg3 = (RG) it2.next();
            if (r02.get(rg3.a()) != rg3.getValue()) {
                c6382aB.b(rg3.a(), (C4515j0) rg3.getValue());
            }
        }
        if (this.f48592b || !(this.f48598h.E0().get(i10) instanceof M9)) {
            return;
        }
        if (!f48590v && z10) {
            throw new AssertionError();
        }
        A30 it3 = r02.c().iterator();
        while (it3.hasNext()) {
            RG rg4 = (RG) it3.next();
            if (r82.get(rg4.a()) == rg4.getValue()) {
                c6382aB.a(rg4.a(), (C4515j0) rg4.getValue());
            }
        }
    }

    public final void a(int i10, AbstractC9441sb abstractC9441sb) {
        AbstractC9441sb abstractC9441sb2 = (AbstractC9441sb) this.f48609s.get(i10);
        com.android.tools.r8.graph.H5 h52 = this.f48599i;
        if (!C9775ub.f52884c && abstractC9441sb == null) {
            throw new AssertionError();
        }
        if (abstractC9441sb2 != null) {
            abstractC9441sb = C9775ub.a(abstractC9441sb2.a(), abstractC9441sb.a(), h52);
        }
        if (abstractC9441sb != abstractC9441sb2) {
            this.f48609s.a(i10, abstractC9441sb);
        }
    }

    public final int a(C8103ka c8103ka) {
        if (f48590v || this.f48601k.containsKey(c8103ka)) {
            return this.f48601k.b(c8103ka);
        }
        throw new AssertionError();
    }

    public final void a(com.android.tools.r8.graph.M2[] m2Arr, int i10, InterfaceC8008jy interfaceC8008jy) {
        m2Arr[i10] = a(interfaceC8008jy);
    }

    public final com.android.tools.r8.graph.M2 a(InterfaceC8008jy interfaceC8008jy) {
        if (interfaceC8008jy.F()) {
            if (interfaceC8008jy.d()) {
                interfaceC8008jy.G().getClass();
                return C4724u1.f37808E6;
            }
            if (f48590v || interfaceC8008jy.m()) {
                return interfaceC8008jy.b().f39470c;
            }
            throw new AssertionError();
        }
        if (interfaceC8008jy.isPrimitive()) {
            if (interfaceC8008jy.A()) {
                return interfaceC8008jy.l().a(this.f48600j.b());
            }
            if (f48590v || interfaceC8008jy.C()) {
                return interfaceC8008jy.e().J().a(this.f48600j.b());
            }
            throw new AssertionError();
        }
        if (interfaceC8008jy.y()) {
            int a10 = a(interfaceC8008jy.H());
            while (true) {
                a10++;
                if (a10 >= this.f48598h.E0().size()) {
                    break;
                }
                W9 w92 = this.f48598h.E0().get(a10);
                if (!(w92 instanceof C8103ka) && !(w92 instanceof G9) && !(w92 instanceof C5541Ma)) {
                    if (!f48590v && !(w92 instanceof C10106wa)) {
                        throw new AssertionError();
                    }
                }
            }
            W9 w93 = this.f48598h.E0().get(a10);
            if (f48590v || (w93 instanceof C10106wa)) {
                return ((C10106wa) w93).getType();
            }
            throw new AssertionError();
        }
        if (interfaceC8008jy.i()) {
            return this.f48599i.p();
        }
        if (f48590v || interfaceC8008jy.f()) {
            return null;
        }
        throw new AssertionError();
    }

    @Override
    public final C4515j0 a(int i10, int i11) {
        return (C4515j0) h(i11).f48005c.get(i10);
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(int i10, int i11, C7201f60.a aVar) {
        C8774ob a10;
        if (!f48590v) {
            com.android.tools.r8.graph.G g10 = this.f48598h;
            if (!com.android.tools.r8.graph.G.f36301n && g10.f36308k == 1) {
                throw new AssertionError();
            }
            if (g10.f36308k == 1) {
                throw new AssertionError();
            }
        }
        com.android.tools.r8.graph.G g11 = this.f48598h;
        if (!com.android.tools.r8.graph.G.f36301n && g11.f36308k == 1) {
            throw new AssertionError();
        }
        int i12 = g11.f36308k;
        if (i12 == 0) {
            throw null;
        }
        if (i12 == 3 || i12 == 2) {
            return null;
        }
        AbstractC9441sb abstractC9441sb = (AbstractC9441sb) this.f48609s.get(i11);
        if (abstractC9441sb == null) {
            this.f48600j.E().f50691j.warning(new com.android.tools.r8.graph.H(this.f48599i, "Could not find stack map for block at offset " + i11 + ". This is most likely due to invalid stack maps in input."));
            return null;
        }
        if (i10 >= 100000) {
            a10 = abstractC9441sb.b(C8774ob.a(i10));
        } else {
            a10 = abstractC9441sb.a(i10);
        }
        if (a10 == null) {
            if (aVar == C7201f60.a.f47868c) {
                C4515j0 c4515j0 = (C4515j0) h(i11).f48005c.get(i10);
                if (c4515j0 != null) {
                    return c4515j0.f37308c;
                }
                ArrayList arrayList = new ArrayList();
                for (G.a aVar2 : this.f48597g) {
                    if (aVar2.b() == i10) {
                        arrayList.add(aVar2);
                    }
                }
                if (arrayList.size() == 1) {
                    return ((G.a) arrayList.get(0)).c().f37308c;
                }
            }
            return null;
        }
        AbstractC9274rb abstractC9274rb = a10.f51283d;
        abstractC9274rb.getClass();
        if (abstractC9274rb instanceof C9108qb) {
            return a10.f51282c;
        }
        if (a10.f51281b.a()) {
            return this.f48600j.b().f38068i2;
        }
        return a10.f51281b.d().a(this.f48600j.b());
    }

    public static boolean a(W9 w92) {
        return w92.S() || w92.D() != null || (w92 instanceof C4907Bb) || (w92 instanceof C4965Cb);
    }

    @Override
    public final boolean a() {
        com.android.tools.r8.graph.G g10 = this.f48598h;
        if (com.android.tools.r8.graph.G.f36301n || g10.f36308k != 1) {
            return g10.f36308k == 4;
        }
        throw new AssertionError();
    }

    @Override
    public final B60 a(int i10) {
        if (i10 == -2 || i10 == -3) {
            return this.f48610t.a(this.f48600j.E().f50690i1, new Supplier() {
                @Override
                public final Object get() {
                    return C7607hb.this.h();
                }
            }, this.f48599i.getReference());
        }
        while (true) {
            int i11 = i10 + 1;
            if (i11 >= this.f48598h.E0().size()) {
                break;
            }
            W9 w92 = this.f48598h.E0().get(i10);
            if (!(w92 instanceof C8103ka) && !(w92 instanceof G9)) {
                break;
            }
            i10 = i11;
        }
        while (i10 >= 0 && !(this.f48598h.E0().get(i10) instanceof C5541Ma)) {
            i10--;
        }
        if (i10 < 0) {
            return this.f48610t.f41304c;
        }
        return this.f48610t.b(((C5541Ma) this.f48598h.E0().get(i10)).V());
    }
}
