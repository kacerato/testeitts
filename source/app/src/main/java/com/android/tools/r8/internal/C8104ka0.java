package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4613o3;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11144c0;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public final class C8104ka0 implements InterfaceC10438yZ, BZ, InterfaceC8005jx {

    public static final boolean f49662k = true;

    public final C4798y f49663a;

    public final C5256Hb0 f49664b;

    public final C9106qa0 f49665c;

    public final C5485La0 f49666d;

    public final IdentityHashMap f49667e = new IdentityHashMap();

    public final IdentityHashMap f49668f = new IdentityHashMap();

    public final IdentityHashMap f49669g = new IdentityHashMap();

    public final Set f49670h = AbstractC5513Ll0.c();

    public final AbstractC8374m80 f49671i = AbstractC8374m80.c();

    public final IdentityHashMap f49672j = new IdentityHashMap();

    public C8104ka0(C4798y c4798y) {
        C5658Oa0 c5658Oa0 = c4798y.f38388C;
        this.f49663a = c4798y;
        this.f49664b = c5658Oa0.f42922a;
        this.f49665c = c5658Oa0.f42923b;
        this.f49666d = c5658Oa0.f42929h;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(C8605na0 c8605na0) {
        com.android.tools.r8.graph.M2 m22;
        C8939pa0 c8939pa0 = c8605na0.f50986b;
        if (c8939pa0.f51557a == 50 || c8939pa0.f51558b) {
            return true;
        }
        if (!this.f49663a.E().a0().f50800d && ((c8939pa0 instanceof C5079Ea0) || c8939pa0.b())) {
            return false;
        }
        C9106qa0 c9106qa0 = this.f49665c;
        C8939pa0 c8939pa02 = c8605na0.f50986b;
        if (c8939pa02 instanceof C5079Ea0) {
            int i10 = c9106qa0.a(c8939pa02.a().e() - 51).f51557a;
            if (i10 == 17 || i10 == 9) {
                AbstractC4905Ba0 abstractC4905Ba0 = (AbstractC4905Ba0) c8605na0.f50988d.get(0);
                if (!C8605na0.f50984e) {
                    abstractC4905Ba0.getClass();
                    if (!(abstractC4905Ba0 instanceof C5716Pa0)) {
                        throw new AssertionError();
                    }
                }
                m22 = abstractC4905Ba0.d().f43271a;
                if (m22 != null) {
                    C9773ua0 a10 = a(m22);
                    if (a10 != null) {
                        return a(a10);
                    }
                    if (!f49662k) {
                        throw new AssertionError((Object) ("Unable to find proto message info for `" + ((Object) m22) + "`"));
                    }
                }
                return false;
            }
            m22 = null;
            if (m22 != null) {
            }
            return false;
        }
        int i11 = c8939pa02.f51557a;
        if (i11 == 9 || i11 == 17) {
            AbstractC4905Ba0 abstractC4905Ba02 = (AbstractC4905Ba0) c8605na0.f50988d.get(0);
            if (!C8605na0.f50984e) {
                abstractC4905Ba02.getClass();
                if (!(abstractC4905Ba02 instanceof HT)) {
                    throw new AssertionError();
                }
            }
            m22 = abstractC4905Ba02.a().f40770a.f37449i;
        } else {
            if (i11 == 27 || i11 == 49) {
                AbstractC4905Ba0 abstractC4905Ba03 = (AbstractC4905Ba0) c8605na0.f50988d.get(1);
                if (!C8605na0.f50984e) {
                    abstractC4905Ba03.getClass();
                    if (!(abstractC4905Ba03 instanceof C5716Pa0)) {
                        throw new AssertionError();
                    }
                }
                m22 = abstractC4905Ba03.d().f43271a;
            }
            m22 = null;
        }
        if (m22 != null) {
        }
        return false;
    }

    public final void b(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.shaking.L0 l02) {
        if (h22.l1()) {
            if (!f49662k && h22.f36245e != this.f49666d.f41993e) {
                throw new AssertionError();
            }
            return;
        }
        com.android.tools.r8.graph.H5 e10 = h22.e(this.f49666d.f41984F);
        if (e10 != null) {
            l02.a(h22, e10, 5, new com.android.tools.r8.shaking.T1(e10.d()));
            return;
        }
        if (f49662k) {
            return;
        }
        throw new AssertionError((Object) ("Expected class `" + h22.f36245e.j0() + "` to declare a dynamicMethod()"));
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.shaking.L0 l02) {
        if (!f49662k) {
            ((C4514j) this.f49663a.f()).h();
        }
        C4514j c4514j = (C4514j) this.f49663a.f();
        if (!C4514j.f37304i) {
            c4514j.c();
        } else {
            c4514j.getClass();
        }
        if (c4514j.b(h22.f36245e, this.f49666d.f41997i)) {
            b(h22, l02);
        }
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.D5 d52, com.android.tools.r8.shaking.N n10) {
        if (this.f49666d.c(h52.getReference())) {
            n10.d(C11144c0.f57206a, h52, com.android.tools.r8.shaking.I1.f56549D.d().y());
            this.f49671i.add((AbstractC8374m80) h52);
            return;
        }
        C5485La0 c5485La0 = this.f49666d;
        c5485La0.getClass();
        if (c5485La0.a(h52.getReference())) {
            com.android.tools.r8.graph.M2 p10 = h52.p();
            if (this.f49668f.containsKey(p10)) {
                this.f49667e.put(p10, (C9773ua0) this.f49668f.remove(p10));
            } else {
                if (!f49662k && this.f49667e.containsKey(p10)) {
                    throw new AssertionError();
                }
                a(h52, this.f49667e);
            }
        }
    }

    public final void a(com.android.tools.r8.graph.H5 h52, IdentityHashMap identityHashMap) {
        C9773ua0 c9773ua0;
        com.android.tools.r8.graph.M2 p10 = h52.p();
        if (!f49662k && identityHashMap.containsKey(p10)) {
            throw new AssertionError();
        }
        VJ a10 = C6845cz.a(h52.a(this.f49663a, EW.d()), this.f49666d);
        if (a10 != null) {
            C5256Hb0 c5256Hb0 = this.f49664b;
            if (!C5256Hb0.f40797c && !c5256Hb0.f40799b.a(a10)) {
                throw new AssertionError();
            }
            c9773ua0 = c5256Hb0.a(h52, C5832Ra0.a(a10, c5256Hb0.f40799b), AbstractC5708Ow0.a(C5832Ra0.b(a10, c5256Hb0.f40799b), a10));
        } else {
            c9773ua0 = null;
        }
        identityHashMap.put(p10, c9773ua0);
    }

    @Override
    public final void a(com.android.tools.r8.shaking.N n10, com.android.tools.r8.shaking.L0 l02, ExecutorService executorService, C8659ns0 c8659ns0) {
        com.android.tools.r8.graph.F5 c10;
        c8659ns0.b("[Proto] Extend fixpoint");
        a(n10);
        a(n10, l02);
        if (n10.f56806l == C8271la0.f50005r) {
            if (!f49662k && !n10.f56786b.a()) {
                throw new AssertionError();
            }
            if (l02.f56693b.isEmpty()) {
                for (C9773ua0 c9773ua0 : this.f49667e.values()) {
                    if (c9773ua0 != null && c9773ua0.a()) {
                        com.android.tools.r8.graph.H5 h52 = c9773ua0.f52879a;
                        if (this.f49670h.add(h52.d())) {
                            for (C8605na0 c8605na0 : c9773ua0.f52881c) {
                                ArrayList arrayList = c8605na0.f50988d;
                                if (!arrayList.isEmpty() && (c10 = c8605na0.c(this.f49663a, c9773ua0)) != null && n10.a(c10.d())) {
                                    int size = arrayList.size();
                                    int i10 = 0;
                                    while (i10 < size) {
                                        Object obj = arrayList.get(i10);
                                        i10++;
                                        AbstractC4905Ba0 abstractC4905Ba0 = (AbstractC4905Ba0) obj;
                                        abstractC4905Ba0.getClass();
                                        if (abstractC4905Ba0 instanceof C5021Da0) {
                                            l02.a(abstractC4905Ba0.c().f39553a, h52);
                                        } else if (abstractC4905Ba0 instanceof C5716Pa0) {
                                            l02.a(abstractC4905Ba0.d().f43271a, h52);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        c8659ns0.d();
    }

    public final void a(final com.android.tools.r8.shaking.N n10) {
        a().forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C8104ka0.this.a(n10, (com.android.tools.r8.graph.H2) obj, (C7207f80) obj2);
            }
        });
        this.f49671i.f45165b.clear();
    }

    public final IdentityHashMap a() {
        IdentityHashMap identityHashMap = new IdentityHashMap();
        Iterator it = this.f49671i.f45165b.values().iterator();
        while (it.hasNext()) {
            C7215fB a10 = ((com.android.tools.r8.graph.H5) it.next()).a(this.f49663a, EW.d());
            Set c10 = AbstractC5513Ll0.c();
            Iterator it2 = a10.a(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return ((W5) obj).E();
                }
            }).iterator();
            while (it2.hasNext()) {
                a(((W5) it2.next()).i().G0().w2(), c10, identityHashMap);
            }
        }
        return identityHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(C10340xw0 c10340xw0, Set set, IdentityHashMap identityHashMap) {
        C10340xw0 i10 = c10340xw0.i();
        if (i10.j()) {
            C7201f60 l10 = i10.l();
            if (set.add(l10)) {
                Iterator<C10340xw0> it = l10.c0().iterator();
                while (it.hasNext()) {
                    a(it.next(), set, identityHashMap);
                }
                return;
            }
            return;
        }
        if (i10.R()) {
            return;
        }
        AbstractC10561zE r10 = i10.r();
        r10.getClass();
        if (r10 instanceof C5576Mo0) {
            C5576Mo0 K02 = r10.K0();
            com.android.tools.r8.graph.F0 p10 = ((C4514j) this.f49663a.f()).c(K02.getField()).p();
            if (p10 == null) {
                if (!f49662k && !K02.getField().getType().a(this.f49666d.f41996h)) {
                    throw new AssertionError();
                }
                return;
            } else if (p10 instanceof com.android.tools.r8.graph.F5) {
                com.android.tools.r8.graph.F5 W10 = p10.W();
                ((C7207f80) identityHashMap.computeIfAbsent(W10.getHolder(), TU.a(new Supplier() {
                    @Override
                    public final Object get() {
                        return C7207f80.a();
                    }
                }))).a(W10);
                return;
            } else {
                if (!f49662k) {
                    throw new AssertionError();
                }
                return;
            }
        }
        boolean z10 = f49662k;
        if (z10) {
            return;
        }
        if (!z10 && !r10.P1()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.A2 B22 = r10.e0().B2();
        if (z10 || this.f49666d.c(B22)) {
            return;
        }
        C5485La0 c5485La0 = this.f49666d;
        c5485La0.getClass();
        if (B22.y0().a(c5485La0.f41983E)) {
            com.android.tools.r8.graph.L2 t02 = B22.t0();
            com.android.tools.r8.graph.L2 l22 = c5485La0.f42014z;
            t02.getClass();
            if (t02.b(l22.f36562f) && B22.s0().a(c5485La0.f41995g)) {
                return;
            }
        }
        throw new AssertionError();
    }

    /* JADX WARN: Type inference failed for: r7v1, types: [java.util.Map, java.lang.Object] */
    public final void a(com.android.tools.r8.shaking.N n10, com.android.tools.r8.graph.H2 h22, C7207f80 c7207f80) {
        com.android.tools.r8.graph.H5 h10 = h22.h(h22.L0());
        if (h10 == null) {
            if (!f49662k) {
                throw new AssertionError();
            }
            return;
        }
        C7040e80 a10 = AbstractC7716iB.a(this.f49663a, h10.a(this.f49663a, EW.d()), c7207f80);
        Iterator it = c7207f80.f47879b.values().iterator();
        while (it.hasNext()) {
            C5634No0 c5634No0 = (C5634No0) a10.f43368b.get(new C7333fv(C5573Mn.f42399a, (com.android.tools.r8.graph.F5) it.next()));
            if (c5634No0 == null) {
                if (!f49662k && !n10.f56786b.a()) {
                    throw new AssertionError();
                }
            } else {
                a(c5634No0);
            }
        }
    }

    public final void a(C5634No0 c5634No0) {
        AbstractC8999pu0 u10;
        AbstractC8999pu0 u11;
        C10340xw0 i10 = c5634No0.value().i();
        if (i10.j()) {
            return;
        }
        AbstractC10561zE abstractC10561zE = i10.f53886c;
        if (abstractC10561zE.c2()) {
            abstractC10561zE = AbstractC7716iB.a(this.f49663a.b(), abstractC10561zE.w0().d());
            if (abstractC10561zE == null) {
                if (!f49662k) {
                    throw new AssertionError();
                }
                return;
            }
        }
        if (abstractC10561zE.O1() || abstractC10561zE.R1()) {
            VJ e02 = abstractC10561zE.e0();
            com.android.tools.r8.graph.A2 B22 = e02.B2();
            C5485La0 c5485La0 = this.f49666d;
            C5369Ja0 c5369Ja0 = c5485La0.f42006r;
            if (B22 == c5369Ja0.f41425e) {
                u10 = ((C10340xw0) e02.f54321f.get(0)).u();
                u11 = ((C10340xw0) e02.f54321f.get(1)).u();
            } else if (B22 == c5369Ja0.f41426f) {
                u10 = ((C10340xw0) e02.f54321f.get(0)).u();
                u11 = ((C10340xw0) e02.f54321f.get(2)).u();
            } else {
                C5195Ga0 c5195Ga0 = c5485La0.f42005q;
                if (B22 != c5195Ga0.f40521a && B22 != c5195Ga0.f40522b) {
                    return;
                }
                u10 = ((C10340xw0) e02.f54321f.get(1)).u();
                u11 = ((C10340xw0) e02.f54321f.get(3)).u();
            }
            u11.getClass();
            if (u11 instanceof C6301Zd0) {
                return;
            }
            if (u10.s() && u11.s()) {
                ((Set) this.f49672j.computeIfAbsent(u10.b().E(), new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        Set c10;
                        c10 = AbstractC5513Ll0.c();
                        return c10;
                    }
                })).add(u11.b().E());
            } else if (!f49662k) {
                throw new AssertionError();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x00bf, code lost:
    
        if (a(r4) == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0077, code lost:
    
        if ((r7 & 32) != 0) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0115, code lost:
    
        if (r12.a(r4.d()) != false) goto L106;
     */
    /* JADX WARN: Removed duplicated region for block: B:114:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0188 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0027 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00d3 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(com.android.tools.r8.shaking.N n10, com.android.tools.r8.shaking.L0 l02) {
        boolean z10;
        boolean z11;
        for (C9773ua0 c9773ua0 : this.f49667e.values()) {
            if (c9773ua0 != null && c9773ua0.a()) {
                final com.android.tools.r8.graph.H5 h52 = c9773ua0.f52879a;
                Iterator<E> it = c9773ua0.f52881c.iterator();
                while (true) {
                    if (it.hasNext()) {
                        C8605na0 c8605na0 = (C8605na0) it.next();
                        com.android.tools.r8.graph.F5 c10 = c8605na0.c(this.f49663a, c9773ua0);
                        if (c10 != null) {
                            if (n10.a(c10.d())) {
                                C4613o3 c4613o3 = (C4613o3) n10.f56810n.f37507a.get(c10.getReference());
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
                                    l02.a(c10, h52);
                                }
                                C4613o3 c4613o32 = (C4613o3) n10.f56810n.f37507a.get(c10.getReference());
                                if (c4613o32 != null) {
                                    com.android.tools.r8.graph.H2 holder = c10.getHolder();
                                    holder.getClass();
                                    C4516j1 a10 = holder.a(com.android.tools.r8.graph.M2.f36589h);
                                    if (a10 != null) {
                                        if (c4613o32.f37539d.a(a10) || c4613o32.e() || c4613o32.g()) {
                                            z11 = true;
                                        }
                                    } else {
                                        z11 = c4613o32.f();
                                    }
                                    if (!z11) {
                                    }
                                    l02.a(c10, h52);
                                }
                                z11 = false;
                                if (!z11) {
                                }
                                l02.a(c10, h52);
                            } else if (a(c8605na0)) {
                                l02.a(c10, h52);
                            } else {
                                z10 = false;
                                if (!z10) {
                                    C8939pa0 c8939pa0 = c8605na0.f50986b;
                                    if (c8939pa0 instanceof C5079Ea0) {
                                        c10 = c8605na0.b(this.f49663a, c9773ua0);
                                    } else {
                                        int i11 = c9773ua0.f52880b;
                                        boolean z12 = C5832Ra0.f43938a;
                                        if (c8939pa0.a((i11 & 1) != 0)) {
                                            com.android.tools.r8.graph.F5 a11 = c8605na0.a(this.f49663a, c9773ua0);
                                            l02.a(c10, h52);
                                            c10 = a11;
                                        }
                                        c10 = null;
                                    }
                                    if (c10 == null) {
                                        Predicate predicate = new Predicate() {
                                            @Override
                                            public final boolean test(Object obj) {
                                                return C8104ka0.a(com.android.tools.r8.graph.H5.this, (com.android.tools.r8.graph.H5) obj);
                                            }
                                        };
                                        C4613o3 c4613o33 = (C4613o3) n10.f56810n.f37507a.get(c10.getReference());
                                        if (c4613o33 != null && c4613o33.f37539d.a(predicate)) {
                                            r5 = 1;
                                        }
                                        if (r5 != 0) {
                                            l02.b(c10, h52);
                                        }
                                        l02.c(c10, h52);
                                    }
                                } else {
                                    C8939pa0 c8939pa02 = c8605na0.f50986b;
                                    if (c8939pa02 instanceof C5079Ea0) {
                                        com.android.tools.r8.graph.F5 b10 = c8605na0.b(this.f49663a, c9773ua0);
                                        if (b10 != null) {
                                        }
                                        c10 = null;
                                        if (c10 == null) {
                                        }
                                    } else {
                                        int i12 = c9773ua0.f52880b;
                                        boolean z13 = C5832Ra0.f43938a;
                                        if (c8939pa02.a((i12 & 1) != 0)) {
                                            com.android.tools.r8.graph.F5 a12 = c8605na0.a(this.f49663a, c9773ua0);
                                            if (a12 != null && n10.a(a12.d())) {
                                                if (this.f49663a.E().f50588C && this.f49663a.f38389D) {
                                                    AbstractC10005vw abstractC10005vw = a12.d().f37207l;
                                                    if (!C8605na0.f50984e) {
                                                        if (!c8605na0.f50986b.a((c9773ua0.f52880b & 1) != 0)) {
                                                            throw new AssertionError();
                                                        }
                                                    }
                                                    if (!P6.c(abstractC10005vw.h(), (c8605na0.a() % 32) + 1)) {
                                                    }
                                                }
                                                if (c10 == null) {
                                                }
                                            }
                                        } else {
                                            c10 = null;
                                            if (c10 == null) {
                                            }
                                        }
                                    }
                                }
                            }
                            z10 = true;
                            if (!z10) {
                            }
                        }
                    } else {
                        LinkedList linkedList = c9773ua0.f52883e;
                        if ((linkedList != null ? linkedList.size() : 0) == 0) {
                            continue;
                        } else {
                            for (C5137Fa0 c5137Fa0 : c9773ua0.f52883e) {
                                AbstractC8772oa0 abstractC8772oa0 = c5137Fa0.f40252b;
                                abstractC8772oa0.getClass();
                                if (!(abstractC8772oa0 instanceof HT)) {
                                    if (!f49662k) {
                                        throw new AssertionError();
                                    }
                                } else {
                                    com.android.tools.r8.graph.D3 c11 = ((C4514j) this.f49663a.f()).c(abstractC8772oa0.a().f40770a);
                                    c11.getClass();
                                    if (!(c11 instanceof com.android.tools.r8.graph.F3)) {
                                        if (!f49662k) {
                                            throw new AssertionError();
                                        }
                                    } else {
                                        com.android.tools.r8.graph.F5 o10 = c11.o();
                                        if (o10 == null) {
                                            if (!f49662k) {
                                                throw new AssertionError();
                                            }
                                        } else {
                                            com.android.tools.r8.graph.H5 e10 = o10.getHolder().e(this.f49666d.f41984F);
                                            if (e10 == null) {
                                                if (!f49662k) {
                                                    throw new AssertionError();
                                                }
                                            } else if (n10.a(o10.d())) {
                                                AbstractC8772oa0 abstractC8772oa02 = c5137Fa0.f40251a;
                                                abstractC8772oa02.getClass();
                                                if (!(abstractC8772oa02 instanceof HT)) {
                                                    if (!f49662k) {
                                                        throw new AssertionError();
                                                    }
                                                } else {
                                                    com.android.tools.r8.graph.D3 c12 = ((C4514j) this.f49663a.f()).c(abstractC8772oa02.a().f40770a);
                                                    c12.getClass();
                                                    if (!(c12 instanceof com.android.tools.r8.graph.F3)) {
                                                        if (!f49662k) {
                                                            throw new AssertionError();
                                                        }
                                                    } else {
                                                        com.android.tools.r8.graph.F5 o11 = c12.o();
                                                        if (o11 != null && o11.getHolder() == o10.getHolder()) {
                                                            l02.c(o11, e10);
                                                        } else if (!f49662k) {
                                                            throw new AssertionError();
                                                        }
                                                    }
                                                }
                                            } else {
                                                continue;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public static boolean a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        com.android.tools.r8.graph.H2 holder = h52.getHolder();
        holder.getClass();
        return (holder.a(com.android.tools.r8.graph.M2.f36589h) == null || !h53.a((com.android.tools.r8.graph.H0) h52.getHolder().H1())) && !h53.a((com.android.tools.r8.graph.H0) h52);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean a(C9773ua0 c9773ua0) {
        if (!c9773ua0.a() && !this.f49672j.containsKey(c9773ua0.f52879a.p())) {
            return false;
        }
        AbstractC9530t40 abstractC9530t40 = (AbstractC9530t40) this.f49669g.getOrDefault(c9773ua0, AbstractC9530t40.f52519c);
        if (!abstractC9530t40.e()) {
            return abstractC9530t40.d();
        }
        this.f49669g.put(c9773ua0, AbstractC9530t40.a(false));
        if (c9773ua0.a()) {
            Iterator<E> it = c9773ua0.f52881c.iterator();
            while (it.hasNext()) {
                if (a((C8605na0) it.next())) {
                    this.f49669g.put(c9773ua0, AbstractC9530t40.a(true));
                    return true;
                }
            }
        }
        IdentityHashMap identityHashMap = this.f49672j;
        com.android.tools.r8.graph.M2 p10 = c9773ua0.f52879a.p();
        int i10 = QC.f43505c;
        Iterator it2 = ((Iterable) identityHashMap.getOrDefault(p10, C7119ef0.f47742j)).iterator();
        while (it2.hasNext()) {
            C9773ua0 a10 = a((com.android.tools.r8.graph.M2) it2.next());
            if (!f49662k && a10 == null) {
                throw new AssertionError();
            }
            if (a(a10)) {
                this.f49669g.put(c9773ua0, AbstractC9530t40.a(true));
                return true;
            }
        }
        return false;
    }

    public final C9773ua0 a(com.android.tools.r8.graph.M2 m22) {
        if (this.f49667e.containsKey(m22)) {
            return (C9773ua0) this.f49667e.get(m22);
        }
        if (this.f49668f.containsKey(m22)) {
            return (C9773ua0) this.f49668f.get(m22);
        }
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(this.f49663a.g(m22));
        if (a10 == null) {
            this.f49668f.put(m22, null);
            return null;
        }
        com.android.tools.r8.graph.H5 e10 = a10.e(this.f49666d.f41984F);
        if (e10 == null) {
            this.f49668f.put(m22, null);
            return null;
        }
        a(e10, this.f49668f);
        return (C9773ua0) this.f49668f.get(m22);
    }
}
