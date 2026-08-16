package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.B60;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;

public final class C8692o3 {

    public static final boolean f51139h = true;

    public final M1 f51140a;

    public final C7215fB f51141b;

    public final com.android.tools.r8.graph.H5 f51142c;

    public final AbstractC6931dX f51143d;

    public final S50 f51144e;

    public C5499Lf f51145f;

    public final C8859p3 f51146g;

    public C8692o3(C8859p3 c8859p3, M1 m12, C7215fB c7215fB, com.android.tools.r8.graph.H5 h52, AbstractC6931dX abstractC6931dX, S50 s50) {
        this.f51146g = c8859p3;
        this.f51140a = m12;
        this.f51141b = c7215fB;
        this.f51142c = h52;
        this.f51143d = abstractC6931dX;
        this.f51144e = s50;
    }

    public final void a(final InterfaceC10172ww interfaceC10172ww, final com.android.tools.r8.graph.F5 f52, final C8659ns0 c8659ns0) {
        c8659ns0.b("Add field state");
        this.f51146g.f51424h.a(f52, new Supplier() {
            @Override
            public final Object get() {
                return C8692o3.this.b(interfaceC10172ww, f52, c8659ns0);
            }
        }, c8659ns0, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C8692o3.this.a(f52, (AbstractC10458yg) obj, (AbstractC10458yg) obj2);
            }
        }, new InterfaceC6522b2() {
            @Override
            public final void a() {
                C8692o3.this.a(f52);
            }
        });
        c8659ns0.d();
    }

    public final Q00 b(InterfaceC10172ww interfaceC10172ww, com.android.tools.r8.graph.F5 f52, C8659ns0 c8659ns0) {
        c8659ns0.b("Compute field state for field-put");
        C10340xw0 value = interfaceC10172ww.value();
        Q00 b10 = b(value, f52, value);
        c8659ns0.d();
        return b10;
    }

    public final Q00 a(com.android.tools.r8.graph.F5 f52, AbstractC10458yg abstractC10458yg, AbstractC10458yg abstractC10458yg2) {
        return a(f52, abstractC10458yg.a(this.f51146g.f51417a, abstractC10458yg2, null, f52.getReference().getType(), AbstractC4939Bo0.f39020a, InterfaceC6522b2.f46683a));
    }

    public final Q00 b(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.G5 g52, C10340xw0 c10340xw0, C10340xw0 c10340xw02, com.android.tools.r8.graph.H5 h52, Function function) {
        boolean z10 = f51139h;
        if (!z10 && c10340xw0 != c10340xw02 && !c10340xw02.i().j()) {
            throw new AssertionError();
        }
        ZC a10 = a(m22, g52, c10340xw0, c10340xw02, h52, function);
        if (a10 != null && !a10.isUnknown()) {
            if (!z10 && !a10.d() && !a10.a() && !a10.t() && !a10.n() && !a10.v()) {
                throw new AssertionError();
            }
            if (m22.E0()) {
                HashSet hashSet = new HashSet(1);
                hashSet.add(a10);
                return new C7788ig(C8854p10.a(), hashSet);
            }
            if (m22.I0()) {
                HashSet hashSet2 = new HashSet(1);
                hashSet2.add(a10);
                return new C8288lg(hashSet2);
            }
            if (!AbstractC10458yg.f54101d && !m22.P0()) {
                throw new AssertionError();
            }
            HashSet hashSet3 = new HashSet(1);
            hashSet3.add(a10);
            int i10 = F1.f40064a;
            return new C9790ug(A7.f38535b, hashSet3);
        }
        if (c10340xw0.j()) {
            return a(c10340xw0.l(), m22, h52, function);
        }
        return null;
    }

    public final void a(com.android.tools.r8.graph.F5 f52) {
        this.f51146g.f51425i.a(f52);
    }

    public final Q00 b(final C10340xw0 c10340xw0, final com.android.tools.r8.graph.F5 f52, final C10340xw0 c10340xw02) {
        boolean z10 = f51139h;
        if (!z10 && c10340xw0 != c10340xw02 && !c10340xw02.i().j()) {
            throw new AssertionError();
        }
        if (!c10340xw0.u().a(f52.getReference().getType().b(this.f51146g.f51417a), this.f51146g.f51417a)) {
            return C10671zv0.f54579b;
        }
        Q00 b10 = b(f52.getReference().getType(), f52, c10340xw0, c10340xw02, this.f51142c, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C8692o3.this.b(c10340xw02, f52, (C10340xw0) obj);
            }
        });
        if (b10 != null) {
            return b10;
        }
        if (f52.getReference().getType().E0()) {
            return C7788ig.a(c10340xw0.u().B());
        }
        F1 a10 = this.f51140a.a(c10340xw0);
        if (a10.isUnknown()) {
            Supplier supplier = new Supplier() {
                @Override
                public final Object get() {
                    return C8692o3.this.a(c10340xw0);
                }
            };
            if (f52.b(this.f51146g.f51417a) && f52.getAccessFlags().n()) {
                G1 g12 = this.f51146g.f51417a.f38427t;
                C4554l1 reference = f52.getReference();
                Q30 q30 = (Q30) supplier.get();
                g12.getClass();
                if (q30.e()) {
                    a10 = new C5630Nm0(reference);
                } else {
                    a10 = new C5572Mm0(reference, q30);
                }
            } else {
                int i10 = F1.f40064a;
                a10 = C10504yv0.f54195b;
            }
        }
        if (f52.getReference().getType().I0()) {
            C4798y c4798y = this.f51146g.f51417a;
            return C8288lg.a(a10, AbstractC5363Ix0.a(c4798y, c10340xw0.a(c4798y), f52.getReference().getType(), C8854p10.h()), Collections.EMPTY_SET);
        }
        if (z10 || f52.getReference().getType().P0()) {
            return C9790ug.a(a10);
        }
        throw new AssertionError();
    }

    public final Q30 a(C10340xw0 c10340xw0) {
        return R30.b(this.f51146g.f51417a, this.f51142c, c10340xw0);
    }

    public final Q5 a(com.android.tools.r8.graph.M2 m22, C10340xw0 c10340xw0, com.android.tools.r8.graph.H5 h52) {
        C10340xw0 i10 = c10340xw0.i();
        if (i10.H()) {
            C6431aX a10 = this.f51146g.f51420d.a(h52, i10.r().v().b(true));
            if (a(m22, a10, h52).isUnknown()) {
                return null;
            }
            return a10;
        }
        if (!i10.d(new Zn1())) {
            return null;
        }
        com.android.tools.r8.graph.F5 o10 = ((AbstractC7670hw) i10.r().R()).c(this.f51146g.f51417a, h52).o();
        if (o10 == null) {
            return null;
        }
        C5765Pw a11 = this.f51146g.f51419c.a(o10);
        if (a(m22, a11, h52).isUnknown()) {
            return null;
        }
        return a11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ZC a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.G5 g52, C10340xw0 c10340xw0, C10340xw0 c10340xw02, com.android.tools.r8.graph.H5 h52, Function function) {
        Q5 a10;
        if (c10340xw0 != c10340xw02) {
            if (f51139h || c10340xw02.i().j()) {
                return a(m22, c10340xw0, h52);
            }
            throw new AssertionError();
        }
        D4 d42 = D4.f39431a;
        c10340xw0.getClass();
        C10340xw0 a11 = c10340xw0.a(d42, EnumC6871d70.f47287c);
        if (a11.H()) {
            return a(a(m22, this.f51146g.f51420d.a(h52, a11.r().v().b(true)), h52), c10340xw0);
        }
        if (a11.d(new Zn1())) {
            InterfaceC7169ew R10 = a11.r().R();
            com.android.tools.r8.graph.F5 o10 = ((AbstractC7670hw) R10).c(this.f51146g.f51417a, h52).o();
            if (o10 == null) {
                return null;
            }
            if ((((AbstractC10561zE) R10) instanceof C6558bE) && (a10 = a(m22, R10.c().n(), h52)) != null && a10.equals(a(m22, a10, h52))) {
                return new XD(a10, o10.getReference());
            }
            return a(a(m22, this.f51146g.f51419c.a(o10), h52), c10340xw0);
        }
        if (c10340xw0.j()) {
            return a(c10340xw0.l(), function);
        }
        if (g52 != null && this.f51146g.f51417a.p().a(g52)) {
            if (this.f51145f == null) {
                C4798y c4798y = this.f51146g.f51417a;
                com.android.tools.r8.graph.H5 j10 = this.f51141b.j();
                C8859p3 c8859p3 = this.f51146g;
                this.f51145f = new C5499Lf(c4798y, j10, c8859p3.f51419c, c8859p3.f51420d, this.f51144e);
            }
            final InterfaceC6078Vf a12 = this.f51145f.a(c10340xw0);
            if (!a12.i() && !AbstractC6495at0.a(0, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    InterfaceC6078Vf.this.a((Function) obj);
                }
            })) {
                this.f51146g.f51427k.f46470a.put(a12, B60.b.t().a(this.f51141b.j().getReference()).a(c10340xw0.t()).a());
                return a12;
            }
        }
        return null;
    }

    public final FB a(C7201f60 c7201f60, Function function) {
        FB fb2;
        if (c7201f60.c0().size() == 2 && c7201f60.e(new C6648bo1())) {
            C9289rg d10 = this.f51144e.a(c7201f60.f47862p.u().get(0)).d();
            C9289rg d11 = this.f51144e.a(c7201f60.f47862p.u().get(1)).d();
            if (d10 != null && d11 != null) {
                InterfaceC6078Vf a10 = d10.a(d11);
                if (a10.y() == null) {
                    return null;
                }
                Q00 q00 = (Q00) function.apply((C10340xw0) c7201f60.f47863q.get(0));
                Q00 q002 = (Q00) function.apply((C10340xw0) c7201f60.f47863q.get(1));
                q00.getClass();
                if (q00 instanceof C10671zv0) {
                    q002.getClass();
                    if (q002 instanceof C10671zv0) {
                        return null;
                    }
                }
                R50 r50 = (R50) d10.f52098b.get(a10);
                boolean z10 = C9289rg.f52097c;
                if (!z10 && r50 == null) {
                    throw new AssertionError();
                }
                if (!z10 && r50 == R50.f43797d) {
                    throw new AssertionError();
                }
                if (r50 == R50.f43796c) {
                    fb2 = new FB(a10, q002, q00);
                } else {
                    fb2 = new FB(a10, q00, q002);
                }
                C6388aD c6388aD = this.f51146g.f51427k;
                c6388aD.f46471b.put(fb2, B60.b.t().a(this.f51141b.j().getReference()).a(c7201f60.t()).a());
                return fb2;
            }
        }
        return null;
    }

    public static ZC a(ZC zc2, C10340xw0 c10340xw0) {
        if (!zc2.isUnknown()) {
            if (!f51139h && !zc2.d()) {
                throw new AssertionError();
            }
            C10340xw0 i10 = c10340xw0.i();
            if (i10.d(new C10398yF0())) {
                return new K8(zc2.b(), i10.r().D().f49274k);
            }
        }
        return zc2;
    }

    /* JADX WARN: Type inference failed for: r7v22, types: [java.util.Map, java.lang.Object] */
    public final ZC a(com.android.tools.r8.graph.M2 m22, Q5 q52, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.A2 reference;
        boolean isUnknown;
        if (q52.x()) {
            C8859p3 c8859p3 = this.f51146g;
            com.android.tools.r8.graph.F5 W10 = c8859p3.f51417a.a(q52.D().f43410a).W();
            if ((c8859p3.f51424h.a(W10) instanceof C10671zv0) && W10.getReference().getType().a(m22) && !c8859p3.f51425i.f47879b.containsKey(W10.getReference())) {
                int i10 = F1.f40064a;
                return C10504yv0.f54195b;
            }
        } else {
            if (!f51139h && !q52.o()) {
                throw new AssertionError();
            }
            C8859p3 c8859p32 = this.f51146g;
            C6431aX C10 = q52.C();
            c8859p32.getClass();
            boolean z10 = C8859p3.f51416l;
            if (!z10 && !C10.f46550a.a(h52.getReference())) {
                throw new AssertionError();
            }
            if (C10.f46550a.a(C10.f46551b, C10.f46552c).a(m22)) {
                C10601zX c10601zX = c8859p32.f51426j;
                if (!h52.d().f37314g.D() && !c8859p32.a(h52)) {
                    reference = (com.android.tools.r8.graph.A2) c8859p32.f51423g.get(h52.getReference());
                } else {
                    reference = h52.getReference();
                }
                InterfaceC10100wX a10 = c10601zX.a(reference);
                if (a10.c()) {
                    a10 = a10.j().a(AbstractC10330xt.m());
                }
                if (a10.f()) {
                    C8622ng b10 = a10.b();
                    AbstractC5361Iw0 abstractC5361Iw0 = (AbstractC5361Iw0) b10.f51020c.get(C10.f46551b);
                    abstractC5361Iw0.getClass();
                    isUnknown = abstractC5361Iw0 instanceof C10671zv0;
                } else {
                    if (!z10 && !a10.g() && !a10.isUnknown()) {
                        throw new AssertionError();
                    }
                    isUnknown = a10.isUnknown();
                }
            } else {
                isUnknown = false;
            }
            if (isUnknown) {
                int i11 = F1.f40064a;
                return C10504yv0.f54195b;
            }
        }
        return q52;
    }

    public final Q00 a(C7201f60 c7201f60, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52, Function function) {
        Q00 c9790ug;
        final Set c10 = AbstractC5513Ll0.c();
        final Set c11 = AbstractC5513Ll0.c();
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((C6286Yx0) c7201f60);
        c6286Yx0.a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C8692o3.a(Set.this, c11, (C7201f60) obj, (C6286Yx0) obj2);
            }
        });
        if (c10.isEmpty()) {
            return null;
        }
        HashSet hashSet = new HashSet(c10.size());
        Iterator it = c10.iterator();
        while (it.hasNext()) {
            hashSet.add(this.f51146g.f51420d.a(h52, ((C8024k3) it.next()).b(true)));
        }
        if (m22.E0()) {
            c9790ug = new C7788ig(C8854p10.a(), hashSet);
        } else if (m22.I0()) {
            c9790ug = new C8288lg(hashSet);
        } else {
            if (!AbstractC10458yg.f54101d && !m22.P0()) {
                throw new AssertionError();
            }
            int i10 = F1.f40064a;
            c9790ug = new C9790ug(A7.f38535b, hashSet);
        }
        Comparator comparingInt = Comparator.comparingInt(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return ((C10340xw0) obj).t();
            }
        });
        boolean z10 = AT.f38618a;
        ArrayList arrayList = new ArrayList(c11);
        arrayList.sort(comparingInt);
        int size = arrayList.size();
        int i11 = 0;
        Q00 q00 = c9790ug;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            q00 = q00.a(this.f51146g.f51417a, (AbstractC5361Iw0) function.apply((C10340xw0) obj), null, m22, AbstractC4939Bo0.f39021b, InterfaceC6522b2.f46683a);
            q00.getClass();
            if (q00 instanceof C10671zv0) {
                break;
            }
        }
        return q00;
    }

    public static void a(Set set, Set set2, C7201f60 c7201f60, C6286Yx0 c6286Yx0) {
        for (C10340xw0 c10340xw0 : c7201f60.c0()) {
            if (c10340xw0.j()) {
                c6286Yx0.b((C6286Yx0) c10340xw0.l());
            } else if (c10340xw0.H()) {
                set.add(c10340xw0.r().v());
            } else {
                set2.add(c10340xw0);
            }
        }
    }

    public final Q00 a(com.android.tools.r8.graph.F5 f52, Q00 q00) {
        F1 f12;
        AbstractC10330xt m10;
        Supplier supplier = new Supplier() {
            @Override
            public final Object get() {
                return Q30.b();
            }
        };
        if (f52.b(this.f51146g.f51417a) && f52.getAccessFlags().n()) {
            G1 g12 = this.f51146g.f51417a.f38427t;
            C4554l1 reference = f52.getReference();
            Q30 q30 = (Q30) supplier.get();
            g12.getClass();
            if (q30.e()) {
                f12 = new C5630Nm0(reference);
            } else {
                f12 = new C5572Mm0(reference, q30);
            }
        } else {
            int i10 = F1.f40064a;
            f12 = C10504yv0.f54195b;
        }
        if (f12.isUnknown() || !q00.a(this.f51146g.f51417a).isUnknown() || f52.getReference().getType().E0()) {
            return q00;
        }
        if (f52.getReference().getType().I0()) {
            if (q00.l()) {
                m10 = q00.g().z();
            } else {
                m10 = AbstractC10330xt.m();
            }
            return new C8288lg(f12, m10, Collections.EMPTY_SET);
        }
        if (f51139h || f52.getReference().getType().P0()) {
            return new C9790ug(f12, Collections.EMPTY_SET);
        }
        throw new AssertionError();
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.tools.r8.graph.b1, com.android.tools.r8.graph.E0] */
    public final void a(VJ vj2, C8659ns0 c8659ns0) {
        Z4.c<?> o10;
        if (vj2.B2().s0().E0()) {
            return;
        }
        if ((this.f51146g.f51417a.E().f50599F1.f50873f && vj2.Q1() && vj2.f0().C2().c(this.f51146g.f51417a)) || (o10 = vj2.f(this.f51146g.f51417a, this.f51142c).o()) == null || !o10.d().e0()) {
            return;
        }
        com.android.tools.r8.graph.H5 r10 = o10.r();
        if (r10.d().k1().c()) {
            if (!f51139h && !r10.d().k1().d()) {
                throw new AssertionError();
            }
            return;
        }
        int size = vj2.f54321f.size();
        C4516j1 d10 = r10.d();
        if (size == d10.getReference().a(d10.w0()) && vj2.R1() == r10.getAccessFlags().n()) {
            if (!(vj2 instanceof TJ) || o10.f37020b.isInterface()) {
                if (vj2 instanceof C7572hK) {
                    com.android.tools.r8.graph.H0 c10 = o10.c(this.f51142c.getHolder(), this.f51146g.f51417a);
                    if (c10 == null) {
                        return;
                    }
                    if (c10 instanceof com.android.tools.r8.graph.H5) {
                        r10 = c10.H();
                    } else {
                        throw new C5417Jv0("Expected super target of a non-library override to be a program method (resolved program method: " + ((Object) r10) + ", super non-program method: " + ((Object) c10) + ")");
                    }
                }
                a(vj2, r10, c8659ns0);
            }
        }
    }

    public final void a(final VJ vj2, final com.android.tools.r8.graph.H5 h52, final C8659ns0 c8659ns0) {
        c8659ns0.b("Add method state");
        C8859p3 c8859p3 = this.f51146g;
        c8859p3.f51426j.a(c8859p3.f51417a, a(h52, vj2), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C8692o3.this.a(vj2, h52, c8659ns0, (InterfaceC10100wX) obj);
            }
        }, c8659ns0);
        c8659ns0.d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final InterfaceC10100wX a(VJ vj2, com.android.tools.r8.graph.H5 h52, C8659ns0 c8659ns0, InterfaceC10100wX interfaceC10100wX) {
        InterfaceC10100wX a10;
        InterfaceC10100wX interfaceC10100wX2;
        boolean z10 = f51139h;
        if (!z10 && interfaceC10100wX.isUnknown()) {
            throw new AssertionError();
        }
        c8659ns0.b("Compute method state for invoke");
        if (!h52.d().f37314g.D()) {
            if (!this.f51146g.f51421e.contains(a(h52, vj2))) {
                if (!z10 && !interfaceC10100wX.g() && !interfaceC10100wX.c()) {
                    throw new AssertionError();
                }
                WJ f02 = vj2.f0();
                InterfaceC10100wX i10 = interfaceC10100wX.i();
                C10664zt a11 = f02.C2().a(this.f51146g.f51417a);
                if (a11.k()) {
                    if (!z10 && !this.f51146g.f51417a.H().f50834O) {
                        throw new AssertionError((Object) "b/250634405");
                    }
                    a10 = C9371s7.f52282a;
                } else {
                    com.android.tools.r8.graph.H5 d10 = f02.d(this.f51146g.f51417a, this.f51142c);
                    C10664zt a12 = a(h52, d10, a11);
                    AbstractC10267xX abstractC10267xX = (AbstractC10267xX) i10;
                    abstractC10267xX.getClass();
                    if (abstractC10267xX instanceof C9456sg) {
                        interfaceC10100wX2 = i10.j().a(a12);
                    } else {
                        interfaceC10100wX2 = C9371s7.f52282a;
                    }
                    if (interfaceC10100wX2.c()) {
                        if (z10) {
                            a10 = C9669tv0.f52729a;
                        } else {
                            throw new AssertionError();
                        }
                    } else if (interfaceC10100wX2.isUnknown()) {
                        a10 = C9371s7.f52282a;
                    } else {
                        InterfaceC8956pg a13 = a(f02, h52, d10, interfaceC10100wX2.h(), a11);
                        if (a12.l() && (((AbstractC10267xX) a13) instanceof C9669tv0)) {
                            a10 = C9669tv0.f52729a;
                        } else {
                            a10 = new C9456sg(a12, a13);
                        }
                    }
                }
                c8659ns0.d();
                return a10;
            }
        }
        if (!z10 && !interfaceC10100wX.g() && !interfaceC10100wX.f()) {
            throw new AssertionError();
        }
        a10 = a(vj2, h52, vj2.d(this.f51146g.f51417a, this.f51142c), interfaceC10100wX.h(), vj2.Q1() ? vj2.b(0).a(this.f51146g.f51417a) : null);
        c8659ns0.d();
        return a10;
    }

    public final C10664zt a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53, C10664zt c10664zt) {
        C10664zt a10;
        if (h53 != null) {
            C6949de b10 = h53.p().b(this.f51146g.f51417a).b();
            boolean z10 = AbstractC10330xt.f53865a;
            a10 = new C8166kv(b10);
        } else {
            a10 = c10664zt.a(C8854p10.h());
        }
        boolean z11 = f51139h;
        if (!z11 && !a10.n().B().f()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) this.f51146g.f51423g.get(h52.getReference());
        if (a22 == null) {
            if (!z11) {
                throw new AssertionError((Object) ("Unexpected virtual method without root: " + ((Object) h52)));
            }
        } else if (a10.equals(AbstractC10330xt.a(this.f51146g.f51417a, a22.s0().b(this.f51146g.f51417a).b()))) {
            return AbstractC10330xt.m();
        }
        return a10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final InterfaceC8956pg a(VJ vj2, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53, InterfaceC8789og interfaceC8789og, C10664zt c10664zt) {
        C7765iX c7765iX;
        int i10;
        Q00 c10124wg;
        ArrayList arrayList = new ArrayList(vj2.f54321f.size());
        if (h53 != null) {
            c7765iX = (C7765iX) this.f51146g.f51422f.f39428b.getOrDefault(h53.getReference(), C7765iX.f48960b);
        } else {
            c7765iX = C7765iX.f48960b;
        }
        boolean z10 = true;
        if (!vj2.Q1()) {
            i10 = 0;
        } else {
            if (!f51139h && c10664zt == null) {
                throw new AssertionError();
            }
            AbstractC9366s50 abstractC9366s50 = (AbstractC9366s50) c7765iX.f48962a.getOrDefault(0, C8856p2.f51414a);
            AbstractC10267xX abstractC10267xX = (AbstractC10267xX) interfaceC8789og;
            abstractC10267xX.getClass();
            if (abstractC10267xX instanceof C8622ng) {
                AbstractC5361Iw0 abstractC5361Iw0 = (AbstractC5361Iw0) interfaceC8789og.b().f51020c.get(0);
                abstractC5361Iw0.getClass();
                if (abstractC5361Iw0 instanceof C10671zv0) {
                    c10124wg = C10671zv0.f54579b;
                    arrayList.add(c10124wg);
                    i10 = 1;
                }
            }
            if (!abstractC9366s50.a()) {
                c10124wg = C10671zv0.f54579b;
            } else if (AbstractC5363Ix0.a(this.f51146g.f51417a, c10664zt, h52.p(), C8854p10.b()).l()) {
                c10124wg = C10671zv0.f54579b;
            } else {
                c10124wg = new C10124wg(c10664zt, Collections.EMPTY_SET);
            }
            arrayList.add(c10124wg);
            i10 = 1;
        }
        while (i10 < vj2.f54321f.size()) {
            C10340xw0 b10 = vj2.b(i10);
            arrayList.add(b(vj2, h53, i10, b10, interfaceC8789og, b10));
            i10++;
        }
        if (!vj2.v2().S0() && !vj2.f1()) {
            z10 = false;
        }
        if (C8622ng.a(arrayList, z10)) {
            return C9669tv0.f52729a;
        }
        return new C8622ng(arrayList, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Q00 b(final VJ vj2, final com.android.tools.r8.graph.H5 h52, final int i10, C10340xw0 c10340xw0, final InterfaceC8789og interfaceC8789og, final C10340xw0 c10340xw02) {
        boolean z10;
        InterfaceC6078Vf a10;
        boolean z11 = f51139h;
        if (!z11 && !vj2.R1() && i10 <= 0) {
            throw new AssertionError();
        }
        if (!z11 && c10340xw0 != c10340xw02 && !c10340xw02.i().j()) {
            throw new AssertionError();
        }
        AbstractC10267xX abstractC10267xX = (AbstractC10267xX) interfaceC8789og;
        abstractC10267xX.getClass();
        if (abstractC10267xX instanceof C8622ng) {
            AbstractC5361Iw0 abstractC5361Iw0 = (AbstractC5361Iw0) interfaceC8789og.b().f51020c.get(i10);
            abstractC5361Iw0.getClass();
            if (abstractC5361Iw0 instanceof C10671zv0) {
                return C10671zv0.f54579b;
            }
        }
        com.android.tools.r8.graph.M2 a11 = vj2.B2().a(i10, vj2.R1());
        if (h52 != null) {
            C8859p3 c8859p3 = this.f51146g;
            AbstractC6931dX abstractC6931dX = this.f51143d;
            c8859p3.getClass();
            if (abstractC6931dX.a(h52)) {
                int i11 = F1.f40064a;
                a10 = C10504yv0.f54195b;
            } else {
                a10 = c8859p3.f51418b.a(c8859p3.f51420d.a(h52, i10));
            }
            if (!a10.isUnknown()) {
                C4798y c4798y = this.f51146g.f51417a;
                z10 = a10.a(c4798y, new C5709Ox(h52, vj2, c4798y, this.f51142c)).h0();
                if (!z10) {
                    if (a11.E0()) {
                        return C7337fw0.f48140b;
                    }
                    if (a11.I0()) {
                        return C7504gw0.f48390b;
                    }
                    if (AbstractC5361Iw0.f41252a || a11.P0()) {
                        return C7671hw0.f48740b;
                    }
                    throw new AssertionError();
                }
                Q00 b10 = b(a11, h52, c10340xw0, c10340xw02, this.f51142c, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return C8692o3.this.b(vj2, h52, i10, c10340xw02, interfaceC8789og, (C10340xw0) obj);
                    }
                });
                if (b10 != null) {
                    return b10;
                }
                if (a11.E0()) {
                    return C7788ig.a(c10340xw0.u().B());
                }
                F1 a12 = this.f51140a.a(c10340xw0);
                if (a11.I0()) {
                    return C8288lg.a(a12, AbstractC5363Ix0.a(this.f51146g.f51417a, c10340xw0.a(this.f51146g.f51417a), a11, C8854p10.h()), Collections.EMPTY_SET);
                }
                if (z11 || a11.P0()) {
                    return C9790ug.a(a12);
                }
                throw new AssertionError();
            }
        }
        z10 = false;
        if (!z10) {
        }
    }

    public final com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.H5 h52, VJ vj2) {
        if (h52.d().f37314g.D()) {
            return h52.getReference();
        }
        if (this.f51146g.a(h52)) {
            return h52.getReference();
        }
        vj2.getClass();
        if (vj2 instanceof TJ) {
            if (f51139h || !this.f51146g.a(h52)) {
                return (com.android.tools.r8.graph.A2) this.f51146g.f51423g.get(h52.getReference());
            }
            throw new AssertionError();
        }
        boolean z10 = f51139h;
        if (!z10 && !(vj2 instanceof C7572hK) && !vj2.T1()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) this.f51146g.f51423g.get(h52.getReference());
        if (!z10 && a22 == null) {
            throw new AssertionError();
        }
        if (z10 || !this.f51146g.a(h52) || h52.getReference().a(a22)) {
            return a22;
        }
        throw new AssertionError();
    }
}
