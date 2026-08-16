package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C7256fT extends AbstractC7757iT {

    public static final C7119ef0 f47978n;

    public static final boolean f47979o = true;

    public final C4798y f47980c;

    public final com.android.tools.r8.graph.H5 f47981d;

    public final com.android.tools.r8.graph.A2 f47982e;

    public final AbstractC5308Hz f47983f;

    public final AbstractC5308Hz f47984g;

    public final RR f47985h;

    public final boolean f47986i;

    public int f47987j;

    public AbstractCollection f47988k;

    public IdentityHashMap f47989l;

    public boolean f47990m;

    static {
        int i10 = QC.f43505c;
        f47978n = C7119ef0.f47742j;
    }

    public C7256fT(C4798y c4798y, WS ws, com.android.tools.r8.graph.H5 h52, RR rr) {
        super(ws);
        boolean z10 = false;
        this.f47987j = 0;
        this.f47988k = f47978n;
        this.f47989l = null;
        this.f47990m = false;
        this.f47980c = c4798y;
        this.f47981d = h52;
        this.f47982e = h52.getReference();
        AbstractC5308Hz v10 = c4798y.v();
        this.f47983f = v10;
        this.f47984g = h52.d().Q0().a(c4798y);
        this.f47985h = rr;
        R00 a10 = v10.l() ? v10.d().a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C7256fT.this.a((R00) obj);
            }
        }) : null;
        if (a10 != null && (a10 instanceof V00)) {
            z10 = true;
        }
        this.f47986i = z10;
    }

    @Override
    public final int a() {
        return -1;
    }

    @Override
    public final void b(C4554l1 c4554l1, Object obj) {
        b(c4554l1);
    }

    @Override
    public final void c(com.android.tools.r8.graph.A2 a22, ArrayList arrayList, boolean z10) {
        a(a22, EnumC8071kK.f49583g, z10);
    }

    public final boolean a(WS ws) {
        VS vs = this.f48952a.f45410l;
        final VS vs2 = ws.f45410l;
        return vs.a(new InterfaceC6401aI() {
            @Override
            public final boolean a(int i10, Object obj) {
                return C7256fT.a(VS.this, i10, (N8) obj);
            }
        });
    }

    public final void b(C4554l1 c4554l1) {
        C10215xA b10 = this.f47983f.b();
        if (b10 != null) {
            if (b10.f(this.f47984g, c4554l1).f49119d == null) {
                return;
            }
        } else {
            C6840cx0 e10 = this.f47983f.e();
            if (e10 == null) {
                return;
            }
            if (!e10.f47215n.f51121b.containsKey(c4554l1.getType())) {
                return;
            }
        }
        this.f47990m = true;
    }

    @Override
    public final void c(com.android.tools.r8.graph.A2 a22, ArrayList arrayList) {
        a(a22, EnumC8071kK.f49584h, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v7, types: [java.util.AbstractCollection, java.util.Set] */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.android.tools.r8.internal.YS[], java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.lang.Object[]] */
    public final WS c(WS ws) {
        EnumC8071kK enumC8071kK;
        if (this.f47987j == 0 && this.f47988k.isEmpty()) {
            return ws;
        }
        C9115qd0 c9115qd0 = new C9115qd0();
        final YS[] ysArr = ws.f45405g;
        int length = ysArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            YS ys = ysArr[i10];
            if (ys instanceof com.android.tools.r8.graph.A2) {
                c9115qd0.b(i10, (com.android.tools.r8.graph.A2) ys);
            }
        }
        X7 x72 = new X7();
        C10092wT c10092wT = new C10092wT(x72);
        final ArrayList arrayList = new ArrayList(this.f47987j);
        C7089eT it = ws.iterator();
        while (true) {
            if (it.hasNext()) {
                InterfaceC6923dT next = it.next();
                int a10 = next.a();
                if (C8089kT.e(a10)) {
                    c10092wT.a(a10);
                } else {
                    if (AbstractC7423gT.b(a10)) {
                        if (!f47979o && !AbstractC7423gT.b(a10)) {
                            throw new AssertionError();
                        }
                        if (this.f47988k.isEmpty() && ((!this.f47984g.j() || !AbstractC7423gT.b(a10)) && a10 != 182 && a10 != 185 && (!this.f47986i || (a10 != 205 && a10 != 206 && a10 != 185 && a10 != 207 && a10 != 208 && a10 != 182)))) {
                            AbstractC5308Hz abstractC5308Hz = this.f47983f;
                            abstractC5308Hz.getClass();
                            if (abstractC5308Hz instanceof C6840cx0) {
                                if (a10 != 204 && a10 != 207) {
                                }
                            }
                        }
                        if (!AbstractC7423gT.f48266a && !AbstractC7423gT.b(a10)) {
                            throw new AssertionError();
                        }
                        if (a10 != 182) {
                            if (a10 != 184) {
                                if (a10 != 185) {
                                    switch (a10) {
                                        case 204:
                                            break;
                                        case 205:
                                        case 206:
                                            enumC8071kK = EnumC8071kK.f49580d;
                                            break;
                                        case 207:
                                        case 208:
                                            enumC8071kK = EnumC8071kK.f49583g;
                                            break;
                                        default:
                                            throw new C5417Jv0();
                                    }
                                } else {
                                    enumC8071kK = EnumC8071kK.f49581e;
                                }
                            }
                            enumC8071kK = EnumC8071kK.f49582f;
                        } else {
                            enumC8071kK = EnumC8071kK.f49584h;
                        }
                        EnumC8071kK enumC8071kK2 = enumC8071kK;
                        boolean a11 = AbstractC7423gT.a(a10);
                        int o10 = next.o();
                        com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) ws.f45405g[o10];
                        AbstractC5308Hz abstractC5308Hz2 = this.f47983f;
                        com.android.tools.r8.graph.A2 reference = this.f47981d.getReference();
                        AbstractC5308Hz abstractC5308Hz3 = this.f47984g;
                        abstractC5308Hz2.getClass();
                        NW a12 = abstractC5308Hz2.a(a22, reference, enumC8071kK2, abstractC5308Hz3, AbstractC9530t40.a(a11));
                        int a13 = a12.f42623d.a(a(a22, a10, a12));
                        if (a13 != a10 || this.f47988k.contains(a22)) {
                            o10 = ((Integer) c9115qd0.computeIfAbsent((com.android.tools.r8.graph.A2) a12.f41111a, new Function() {
                                @Override
                                public final Object apply(Object obj) {
                                    return C7256fT.a(List.this, ysArr, (com.android.tools.r8.graph.A2) obj);
                                }
                            })).intValue();
                            this.f47987j -= C8704o7.a(a13 != a10);
                        }
                        int i11 = o10;
                        boolean z10 = C8707o8.f51173a;
                        int m10 = next.m();
                        c10092wT.a(a13, m10 + 4);
                        C8707o8.a(i11, (InterfaceC9041q8) new TQ0(c10092wT));
                        while (true) {
                            int i12 = m10 - 1;
                            if (m10 > 0) {
                                c10092wT.b(next.j());
                                m10 = i12;
                            }
                        }
                    }
                    int m11 = next.m();
                    c10092wT.a(a10, m11);
                    while (true) {
                        int i13 = m11 - 1;
                        if (m11 > 0) {
                            c10092wT.b(next.j());
                            m11 = i13;
                        }
                    }
                }
            } else {
                if (!f47979o && this.f47987j != 0) {
                    throw new AssertionError();
                }
                YS[] ysArr2 = ws.f45405g;
                boolean z11 = X3.f45604a;
                if (!arrayList.isEmpty()) {
                    if (arrayList.size() == 1) {
                        ysArr2 = X3.b(ysArr2, arrayList.get(0));
                    } else {
                        int length2 = ysArr2.length;
                        ysArr2 = Arrays.copyOf((Object[]) ysArr2, arrayList.size() + length2);
                        for (int i14 = 0; i14 < arrayList.size(); i14++) {
                            ysArr2[length2 + i14] = arrayList.get(i14);
                        }
                    }
                }
                return new WS(ysArr2, ws.f45406h, ws.f45407i, x72.f45623a.toByteArray(), ws.f45409k, ws.f45410l, ws.f45411m, ws.f45403e, ws.f45404f, ws.f45412n);
            }
        }
    }

    public final boolean a(R00 r00) {
        r00.getClass();
        return (r00 instanceof V00) || r00 == this.f47984g;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0087  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(com.android.tools.r8.graph.A2 a22, EnumC8071kK enumC8071kK, boolean z10) {
        boolean z11;
        boolean z12;
        AbstractC5308Hz abstractC5308Hz = this.f47983f;
        com.android.tools.r8.graph.A2 a23 = this.f47982e;
        AbstractC5308Hz abstractC5308Hz2 = this.f47984g;
        abstractC5308Hz.getClass();
        NW a10 = abstractC5308Hz.a(a22, a23, enumC8071kK, abstractC5308Hz2, AbstractC9530t40.a(z10));
        AbstractC5308Hz abstractC5308Hz3 = this.f47983f;
        abstractC5308Hz3.getClass();
        if (abstractC5308Hz3 instanceof C10215xA) {
            z12 = a10.f42624e.c();
        } else {
            AbstractC5308Hz abstractC5308Hz4 = this.f47983f;
            abstractC5308Hz4.getClass();
            if (abstractC5308Hz4 instanceof C4847Aa0) {
                com.android.tools.r8.graph.proto.d dVar = a10.f42624e.f37623b.f37606c;
                dVar.getClass();
                z12 = dVar instanceof com.android.tools.r8.graph.proto.f;
            } else {
                C6840cx0 e10 = this.f47983f.e();
                if (e10 != null) {
                    if (a10.f42624e.c()) {
                        for (int i10 = 0; i10 < a22.a(enumC8071kK.c()); i10++) {
                            if (!e10.f47215n.f51121b.containsKey(a22.a(i10, enumC8071kK.c()))) {
                            }
                        }
                    }
                    z11 = true;
                    if (z11) {
                        this.f47990m = true;
                        return;
                    }
                    int a11 = enumC8071kK.a(z10);
                    com.android.tools.r8.graph.A2 a24 = (com.android.tools.r8.graph.A2) a10.f41111a;
                    EnumC8071kK enumC8071kK2 = a10.f42623d;
                    int a12 = enumC8071kK2.a(a(a22, a11, a10));
                    boolean z13 = f47979o;
                    if (!z13 && a24.w0() != a22.w0() && !enumC8071kK2.c()) {
                        throw new AssertionError();
                    }
                    if (a12 != a11) {
                        if (!z13 && enumC8071kK != enumC8071kK2) {
                            if ((!(enumC8071kK == EnumC8071kK.f49580d) || (!enumC8071kK2.b() && !enumC8071kK2.c() && !enumC8071kK2.e())) && ((!enumC8071kK.b() || (!enumC8071kK2.c() && !enumC8071kK2.e())) && ((!enumC8071kK.d() || (!enumC8071kK2.c() && !enumC8071kK2.e())) && (!enumC8071kK.e() || (!enumC8071kK2.b() && !enumC8071kK2.c()))))) {
                                throw new AssertionError((Object) (((Object) enumC8071kK) + " -> " + ((Object) enumC8071kK2)));
                            }
                        }
                        this.f47987j++;
                        return;
                    }
                    a(a22, a24);
                    return;
                }
                if (!f47979o && !a10.f42624e.c()) {
                    throw new AssertionError();
                }
                z11 = false;
                if (z11) {
                }
            }
        }
        z11 = !z12;
        if (z11) {
        }
    }

    @Override
    public final void b(com.android.tools.r8.graph.A2 a22, ArrayList arrayList, boolean z10) {
        a(a22, EnumC8071kK.f49582f, z10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x00db, code lost:
    
        if ((r0 instanceof com.android.tools.r8.internal.C6840cx0) == false) goto L55;
     */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00ef  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final WS b(WS ws) {
        C7089eT it;
        YS[] ysArr = ws.f45405g;
        int length = ysArr.length;
        int i10 = 0;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        while (true) {
            boolean z13 = true;
            if (i10 < length) {
                YS ys = ysArr[i10];
                if (ys instanceof com.android.tools.r8.graph.M2) {
                    com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) ys;
                    a((YS) m22, this.f47983f.c(this.f47984g, m22));
                } else if (ys instanceof C4554l1) {
                    C4554l1 c4554l1 = (C4554l1) ys;
                    C7835iw f10 = this.f47983f.f(this.f47984g, c4554l1);
                    boolean z14 = f47979o;
                    if (!z14 && f10.b()) {
                        AbstractC5308Hz abstractC5308Hz = this.f47983f;
                        abstractC5308Hz.getClass();
                        if (!(abstractC5308Hz instanceof C10215xA)) {
                            throw new AssertionError();
                        }
                    }
                    if (!z14 && f10.f49119d != null) {
                        AbstractC5308Hz abstractC5308Hz2 = this.f47983f;
                        abstractC5308Hz2.getClass();
                        if (!(abstractC5308Hz2 instanceof C10215xA)) {
                            throw new AssertionError();
                        }
                    }
                    a((YS) c4554l1, f10.f41111a);
                    z10 = true;
                } else if (ys instanceof com.android.tools.r8.graph.D0) {
                    com.android.tools.r8.graph.D0 d02 = (com.android.tools.r8.graph.D0) ys;
                    a((YS) d02, this.f47985h.a(d02, this.f47981d));
                } else if (ys instanceof MS) {
                    MS ms = (MS) ys;
                    ZY a10 = ms.f42298b.a(this.f47983f, this.f47984g);
                    a((YS) ms, a10 != ms.f42298b ? new MS(a10) : ms);
                    z11 = true;
                } else if (ys instanceof com.android.tools.r8.graph.C2) {
                    com.android.tools.r8.graph.C2 c22 = (com.android.tools.r8.graph.C2) ys;
                    RR rr = this.f47985h;
                    com.android.tools.r8.graph.H5 h52 = this.f47981d;
                    rr.getClass();
                    a((YS) c22, rr.a(c22, 2, h52.getReference()));
                } else if (ys instanceof com.android.tools.r8.graph.I2) {
                    com.android.tools.r8.graph.I2 i22 = (com.android.tools.r8.graph.I2) ys;
                    a((YS) i22, this.f47985h.a(i22));
                } else if (!z12 && (ys instanceof com.android.tools.r8.graph.A2)) {
                    z12 = true;
                }
                i10++;
            } else {
                if (z10) {
                    AbstractC5308Hz abstractC5308Hz3 = this.f47983f;
                    abstractC5308Hz3.getClass();
                    if (!(abstractC5308Hz3 instanceof C10215xA)) {
                    }
                    if (!z11 || z13 || z12) {
                        it = ws.iterator();
                        while (it.hasNext()) {
                            it.next().a(this);
                            if (this.f47990m) {
                                return null;
                            }
                        }
                    }
                    if (this.f47989l != null) {
                        YS[] ysArr2 = (YS[]) X3.a((Object[]) ws.f45405g, new Function() {
                            @Override
                            public final Object apply(Object obj) {
                                return C7256fT.this.a((YS) obj);
                            }
                        }, (Object[]) new YS[0]);
                        if (ws.f45405g != ysArr2) {
                            return new WS(ysArr2, ws.f45406h, ws.f45407i, ws.f45408j, ws.f45409k, ws.f45410l, ws.f45411m, ws.f45403e, ws.f45404f, ws.f45412n);
                        }
                    }
                    return ws;
                }
                z13 = false;
                if (!z11) {
                }
                it = ws.iterator();
                while (it.hasNext()) {
                }
                if (this.f47989l != null) {
                }
                return ws;
            }
        }
    }

    public final YS a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, YS ys, YS ys2) {
        if (ys2 == null || ys2 == a22) {
            return a22;
        }
        if (this.f47988k == f47978n) {
            this.f47988k = new HashSet();
        }
        this.f47988k.add(a23);
        return a23;
    }

    public final void a(YS ys, YS ys2) {
        if (ys == ys2) {
            return;
        }
        if (this.f47989l == null) {
            this.f47989l = new IdentityHashMap(Math.min(this.f48952a.f45405g.length, 32));
        }
        YS ys3 = (YS) this.f47989l.put(ys, ys2);
        if (ys3 == null || ys3 == ys2) {
            return;
        }
        throw new C5417Jv0("Unexpected rewriting of item: " + ((Object) ys) + " to two distinct items: " + ((Object) ys2) + " and " + ((Object) ys3));
    }

    public final void a(final com.android.tools.r8.graph.A2 a22, final com.android.tools.r8.graph.A2 a23) {
        if (this.f47989l == null) {
            this.f47989l = new IdentityHashMap(Math.min(this.f48952a.f45405g.length, 32));
        }
        this.f47989l.compute(a22, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C7256fT.this.a(a23, a22, (YS) obj, (YS) obj2);
            }
        });
    }

    @Override
    public final void a(com.android.tools.r8.graph.J2 j22, ZY zy) {
        a((YS) j22, (YS) this.f47983f.a(j22, this.f47984g));
    }

    @Override
    public final void a(C4554l1 c4554l1, Object obj) {
        C10215xA b10 = this.f47983f.b();
        if (b10 != null ? b10.f(this.f47984g, c4554l1).b() : false) {
            this.f47990m = true;
        }
    }

    @Override
    public final void a(C4554l1 c4554l1) {
        C10215xA b10 = this.f47983f.b();
        if (b10 != null ? b10.f(this.f47984g, c4554l1).b() : false) {
            this.f47990m = true;
        }
    }

    @Override
    public final void a(C4554l1 c4554l1, Object obj, Object obj2) {
        b(c4554l1);
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22, ArrayList arrayList, boolean z10) {
        a(a22, EnumC8071kK.f49580d, z10);
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22, ArrayList arrayList) {
        a(a22, EnumC8071kK.f49581e, true);
    }

    public static boolean a(VS vs, int i10, N8 n82) {
        return n82.size() > ((N8) vs.f45060b.get(i10)).size();
    }

    public final YS a(YS ys) {
        return (YS) this.f47989l.getOrDefault(ys, ys);
    }

    public static Integer a(List list, YS[] ysArr, com.android.tools.r8.graph.A2 a22) {
        list.add(a22);
        return Integer.valueOf((list.size() + ysArr.length) - 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002e, code lost:
    
        if (r1.f47983f.e().f47215n.f51121b.containsKey(r2.s0()) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(com.android.tools.r8.graph.A2 a22, int i10, NW nw) {
        if (!this.f47984g.j() || a22.a((com.android.tools.r8.graph.A2) nw.f41111a)) {
            AbstractC5308Hz abstractC5308Hz = this.f47983f;
            abstractC5308Hz.getClass();
            if (abstractC5308Hz instanceof C6840cx0) {
            }
            if (!nw.f42622c.e()) {
                return nw.f42622c.d();
            }
            return AbstractC7423gT.a(i10);
        }
        com.android.tools.r8.graph.M2 s02 = ((com.android.tools.r8.graph.A2) nw.f41111a).s0();
        C4798y c4798y = this.f47980c;
        boolean a10 = AbstractC7423gT.a(i10);
        s02.getClass();
        com.android.tools.r8.graph.E0 g10 = c4798y.g(s02);
        return g10 != null ? g10.isInterface() : a10;
    }
}
