package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4420e;
import com.android.tools.r8.graph.AbstractC4481h3;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.C4804y5;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.ir.optimize.C10696a;
import com.android.tools.r8.kotlin.C10824n0;
import com.android.tools.r8.kotlin.InterfaceC10835p;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class GD {

    public static final boolean f40431p = true;

    public final C4798y f40432a;

    public final C7215fB f40433b;

    public final C4724u1 f40434c;

    public final com.android.tools.r8.ir.optimize.W f40435d;

    public final AbstractC6931dX f40436e;

    public final com.android.tools.r8.graph.H5 f40437f;

    public final AbstractC10561zE f40438g;

    public C10340xw0 f40439h;

    public com.android.tools.r8.graph.H2 f40440i;

    public Q30 f40441j;

    public final IdentityHashMap f40442k = new IdentityHashMap();

    public final AbstractC8374m80 f40443l = AbstractC8374m80.c();

    public final IdentityHashMap f40444m = new IdentityHashMap();

    public final ArrayList f40445n = new ArrayList();

    public final C6613bd f40446o;

    public GD(C4798y c4798y, C7215fB c7215fB, com.android.tools.r8.ir.optimize.W w10, AbstractC6931dX abstractC6931dX, com.android.tools.r8.graph.H5 h52, AbstractC10561zE abstractC10561zE) {
        this.f40432a = c4798y;
        this.f40433b = c7215fB;
        this.f40434c = c4798y.b();
        this.f40435d = w10;
        this.f40437f = h52;
        this.f40438g = abstractC10561zE;
        this.f40436e = abstractC6931dX;
        this.f40446o = new C6613bd(abstractC10561zE.d());
    }

    public final boolean a(final VJ vj2, final com.android.tools.r8.graph.H5 h52, final Set set) {
        for (int i10 = 0; i10 < vj2.f54321f.size(); i10++) {
            C10340xw0 b10 = vj2.b(i10);
            if (this.f40446o.f46804a.contains(b10)) {
                if (!b(vj2, h52, i10, set)) {
                    return false;
                }
            } else {
                final int i11 = i10;
                this.f40446o.a(b10, new BooleanSupplier() {
                    @Override
                    public final boolean getAsBoolean() {
                        return GD.this.b(vj2, h52, i11, set);
                    }
                });
            }
        }
        return true;
    }

    public final void b(C7215fB c7215fB, C10696a c10696a) {
        Set c10 = AbstractC5513Ll0.c();
        Set<AbstractC10561zE> b02 = this.f40439h.b0();
        IdentityHashMap identityHashMap = new IdentityHashMap();
        for (AbstractC10561zE abstractC10561zE : b02) {
            if (abstractC10561zE.f54317b != null) {
                W5 b10 = abstractC10561zE.b();
                if (c10.add(b10)) {
                    Y5 I10 = b10.I();
                    while (I10.hasNext()) {
                        AbstractC10561zE next = I10.next();
                        if (b02.contains(next)) {
                            next.getClass();
                            if (next instanceof C6558bE) {
                                if (next.f1()) {
                                    C6558bE c11 = next.c();
                                    C4554l1 field = c11.getField();
                                    C4798y c4798y = this.f40432a;
                                    com.android.tools.r8.graph.M2 s02 = field.s0();
                                    com.android.tools.r8.graph.H5 h52 = this.f40437f;
                                    c4798y.getClass();
                                    com.android.tools.r8.graph.E0 holder = h52.getHolder();
                                    if (s02 != holder.f36245e) {
                                        holder = c4798y.a(s02);
                                    }
                                    C4460g1 b11 = field.b(holder);
                                    if (b11 != null) {
                                        Q30 q30 = this.f40441j;
                                        q30.getClass();
                                        F1 a10 = q30.a(b11.getReference());
                                        if (a10.e0()) {
                                            AbstractC4935Bm0 L10 = a10.L();
                                            if (L10.b(this.f40432a, this.f40437f)) {
                                                AbstractC10561zE[] a11 = L10.a(this.f40432a, c7215fB.j(), c7215fB, c11);
                                                AbstractC10561zE abstractC10561zE2 = (AbstractC10561zE) X3.b(a11);
                                                if (a11.length == 1) {
                                                    I10.a(abstractC10561zE2, c10696a);
                                                } else {
                                                    identityHashMap.put(c11, a11);
                                                }
                                            } else {
                                                a(c11);
                                                throw null;
                                            }
                                        } else {
                                            a(c11);
                                            throw null;
                                        }
                                    } else {
                                        a(c11);
                                        throw null;
                                    }
                                } else {
                                    I10.i();
                                }
                            } else if (next.i()) {
                                I10.i();
                            } else {
                                throw new C5417Jv0("Unexpected usage left in method `" + this.f40437f.r() + "` after inlining: " + ((Object) abstractC10561zE));
                            }
                        }
                    }
                } else {
                    continue;
                }
            }
        }
        if (identityHashMap.isEmpty()) {
            return;
        }
        Z5 u10 = c7215fB.u();
        while (u10.f46159b.hasNext()) {
            W5 w52 = (W5) u10.f46159b.next();
            u10.f46160c = w52;
            EE I11 = w52.I();
            while (I11.hasNext()) {
                AbstractC10561zE next2 = I11.next();
                AbstractC10561zE[] abstractC10561zEArr = (AbstractC10561zE[]) identityHashMap.get(next2);
                if (abstractC10561zEArr != null) {
                    if (!f40431p && abstractC10561zEArr.length <= 1) {
                        throw new AssertionError();
                    }
                    next2.d().a(((AbstractC10561zE) X3.b(abstractC10561zEArr)).d(), c10696a);
                    I11.i();
                    I11 = I11.a(c7215fB, u10, abstractC10561zEArr, this.f40432a.E());
                }
            }
        }
    }

    public final void c(C7215fB c7215fB, C10696a c10696a) {
        boolean z10 = false;
        for (AbstractC10561zE abstractC10561zE : this.f40439h.b0()) {
            abstractC10561zE.getClass();
            if (abstractC10561zE instanceof C8391mE) {
                C8391mE Y10 = abstractC10561zE.Y();
                W5 b10 = abstractC10561zE.b();
                AbstractC10561zE Y02 = Y10.Y0();
                b10.getClass();
                new Y5(b10, Y02).a(c7215fB, C8704o7.a(((C11245i) this.f40432a.f()).c(this.f40440i.getType(), Y10.f50246k)));
            } else {
                if (abstractC10561zE.P1()) {
                    VJ e02 = abstractC10561zE.e0();
                    if (abstractC10561zE.O1() && this.f40438g.c2() && e02.B2() == this.f40434c.f37859F4.f38228f) {
                        a(e02);
                    } else if (!abstractC10561zE.R1()) {
                        com.android.tools.r8.graph.H0 e10 = e02.e(this.f40432a, this.f40437f);
                        if (e10 != null && (e10 instanceof com.android.tools.r8.graph.A4) && this.f40432a.f38433z.a(e02, e10.Z()) && (!e02.e1() || !e02.d().w())) {
                            a(e02);
                        }
                    } else {
                        if (!f40431p && e02.B2() != this.f40434c.f37852E4.f37354f) {
                            throw new AssertionError();
                        }
                        a(e02);
                    }
                }
                if (abstractC10561zE.H1()) {
                    EB V10 = abstractC10561zE.V();
                    boolean z11 = f40431p;
                    if (!z11 && !V10.x2()) {
                        throw new AssertionError((Object) ("Unexpected usage in non-zero-test IF instruction: " + ((Object) abstractC10561zE)));
                    }
                    W5 b11 = abstractC10561zE.b();
                    NB nb2 = V10.f39789l;
                    if (!z11 && nb2 != NB.f42527b && nb2 != NB.f42532g) {
                        throw new AssertionError((Object) ("Unexpected type in zero-test IF instruction: " + ((Object) abstractC10561zE)));
                    }
                    NB nb3 = NB.f42527b;
                    W5 u22 = nb2 == nb3 ? V10.u2() : V10.v2();
                    W5 v22 = nb2 == nb3 ? V10.v2() : V10.u2();
                    if (!z11 && u22 == v22) {
                        throw new AssertionError();
                    }
                    b11.b(v22, u22);
                    v22.getClass();
                    v22.a(b11, (C10696a) null, C6628bi.b(), EnumC6871d70.f47287c);
                    if (!z11 && !b11.i().G1()) {
                        throw new AssertionError();
                    }
                    if (!z11 && R5.a(b11) != u22) {
                        throw new AssertionError();
                    }
                    z10 = true;
                } else if (!(abstractC10561zE instanceof C6558bE) && !abstractC10561zE.i()) {
                    if (abstractC10561zE instanceof WX) {
                        a(abstractC10561zE);
                    } else {
                        if (!(abstractC10561zE instanceof C5924So0)) {
                            throw new C5417Jv0("Unexpected usage left in method `" + this.f40437f.r() + "` after inlining: " + ((Object) abstractC10561zE));
                        }
                        a(abstractC10561zE);
                    }
                }
            }
        }
        if (z10) {
            C10696a c10696a2 = new C10696a();
            c7215fB.a(c10696a2, C6628bi.b());
            c10696a.f54829b.addAll(c10696a2);
        }
    }

    public static void a(final AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.f54321f.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                GD.a(AbstractC10561zE.this, (C10340xw0) obj);
            }
        });
        abstractC10561zE.b().f45293f.b(abstractC10561zE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final FE a(C9420sR c9420sR) {
        C4460g1 q10;
        com.android.tools.r8.graph.H0 e10;
        com.android.tools.r8.ir.optimize.T t10;
        com.android.tools.r8.graph.H5 e11;
        if (this.f40439h.B()) {
            C10340xw0 c10340xw0 = this.f40439h;
            if (C10340xw0.f53884o || !c10340xw0.f53889f.isEmpty()) {
                return (C7201f60) c10340xw0.f53889f.getFirst();
            }
            throw new AssertionError();
        }
        Set<AbstractC10561zE> b02 = this.f40439h.b0();
        while (!b02.isEmpty()) {
            Set<AbstractC10561zE> c10 = AbstractC5513Ll0.c();
            for (AbstractC10561zE abstractC10561zE : b02) {
                abstractC10561zE.getClass();
                if (!(abstractC10561zE instanceof C4) && !abstractC10561zE.t1()) {
                    if (abstractC10561zE instanceof C6558bE) {
                        com.android.tools.r8.graph.D3 c11 = ((C11245i) this.f40432a.f()).c(abstractC10561zE.S().getField());
                        if (c11.y() && !c11.a(this.f40437f, this.f40432a).b() && (q10 = c11.q()) != null && !q10.w0()) {
                            AbstractC10561zE abstractC10561zE2 = this.f40438g;
                            abstractC10561zE2.getClass();
                            if ((abstractC10561zE2 instanceof C5576Mo0) && !this.f40441j.a(this.f40432a, q10, this.f40437f, new Predicate() {
                                @Override
                                public final boolean test(Object obj) {
                                    return ((AbstractC5746Pm0) obj).e0();
                                }
                            })) {
                            }
                        }
                        return abstractC10561zE;
                    }
                    if (abstractC10561zE.i()) {
                        AbstractC10561zE abstractC10561zE3 = this.f40438g;
                        abstractC10561zE3.getClass();
                        if (!(abstractC10561zE3 instanceof C5576Mo0)) {
                            C6613bd c6613bd = this.f40446o;
                            C10340xw0 value = abstractC10561zE.m().value();
                            if (c6613bd.f46804a.contains(value)) {
                                return abstractC10561zE;
                            }
                            c6613bd.f46805b.add(value);
                            c6613bd.f46806c.remove(value);
                            C4460g1 q11 = ((C11245i) this.f40432a.f()).c(abstractC10561zE.S().getField()).q();
                            if (q11 != null && !q11.w0()) {
                            }
                        }
                        return abstractC10561zE;
                    }
                    if (abstractC10561zE.P1()) {
                        VJ e02 = abstractC10561zE.e0();
                        Z4.c<?> o10 = ((C11245i) this.f40432a.f()).b(e02.B2(), e02.A2()).o();
                        if (o10 != null && !o10.a(this.f40437f, this.f40432a).b() && (e10 = e02.e(this.f40432a, this.f40437f)) != null) {
                            if (e10 instanceof com.android.tools.r8.graph.A4) {
                                com.android.tools.r8.graph.A4 Z10 = e10.Z();
                                if (this.f40432a.f38433z.a(e02, Z10)) {
                                    if (e02.e1() && e02.d().w()) {
                                    }
                                } else if (Z10.getReference() == this.f40434c.f37852E4.f37354f) {
                                    if (e02.e1() && e02.d().w()) {
                                    }
                                }
                            }
                            com.android.tools.r8.graph.H5 H10 = e10.H();
                            if (a(H10)) {
                                boolean z10 = f40431p;
                                if (!z10) {
                                    com.android.tools.r8.graph.H2 holder = H10.getHolder();
                                    com.android.tools.r8.graph.H5 h52 = this.f40437f;
                                    C4798y c4798y = this.f40432a;
                                    if (!AbstractC4420e.a(holder, h52, c4798y, (C4514j) c4798y.f()).d()) {
                                        throw new AssertionError();
                                    }
                                }
                                if (abstractC10561zE.a(this.f40434c)) {
                                    QJ c02 = abstractC10561zE.c0();
                                    if (this.f40438g.c2() && this.f40438g.d() == c02.C2()) {
                                        if (!z10 && !this.f40434c.a(c02.B2())) {
                                            throw new AssertionError();
                                        }
                                        if (!z10 && !a(H10)) {
                                            throw new AssertionError();
                                        }
                                        if (this.f40446o.f46804a.contains(c02.C2())) {
                                            ArrayList arrayList = c02.f54321f;
                                            int i10 = 1;
                                            while (true) {
                                                if (i10 < arrayList.size()) {
                                                    C6613bd c6613bd2 = this.f40446o;
                                                    C10340xw0 c10340xw02 = (C10340xw0) arrayList.get(i10);
                                                    if (c6613bd2.f46804a.contains(c10340xw02)) {
                                                        break;
                                                    }
                                                    c6613bd2.f46805b.add(c10340xw02);
                                                    c6613bd2.f46806c.remove(c10340xw02);
                                                    i10++;
                                                } else {
                                                    com.android.tools.r8.graph.A2 B22 = c02.B2();
                                                    if (!this.f40432a.E().e() ? this.f40440i.getType() == B22.s0() : ((C11245i) this.f40432a.f()).c(this.f40440i.getType(), B22.s0())) {
                                                        C4516j1 d10 = H10.d();
                                                        d10.L0();
                                                        AbstractC7224fE a10 = d10.f37320m.a(c02);
                                                        if (a10.g()) {
                                                            if (G2.a(this.f40432a, this.f40437f, H10)) {
                                                                com.android.tools.r8.graph.A2 c12 = a10.c();
                                                                while (c12 != this.f40434c.f37859F4.f38228f) {
                                                                    if (c12 != null) {
                                                                        C4798y c4798y2 = this.f40432a;
                                                                        com.android.tools.r8.graph.H5 h53 = this.f40437f;
                                                                        c4798y2.getClass();
                                                                        com.android.tools.r8.graph.M2 m22 = c12.f38297f;
                                                                        com.android.tools.r8.graph.E0 holder2 = h53.getHolder();
                                                                        if (m22 != holder2.f36245e) {
                                                                            holder2 = c4798y2.a(m22);
                                                                        }
                                                                        com.android.tools.r8.graph.H2 a11 = com.android.tools.r8.graph.H2.a(holder2);
                                                                        if (a11 != null && (e11 = a11.e(c12)) != null && !this.f40436e.a(e11)) {
                                                                            C4516j1 d11 = e11.d();
                                                                            if (d11.a(this.f40432a, this.f40437f, C6686c10.f46935a)) {
                                                                                if (G2.a(this.f40432a, this.f40437f, e11)) {
                                                                                    d11.L0();
                                                                                    c12 = d11.f37320m.m().c();
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                                t10 = new com.android.tools.r8.ir.optimize.T(this.f40440i, H10);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        t10 = null;
                                        if (t10 != null) {
                                            this.f40442k.put(e02, t10);
                                        }
                                    }
                                } else if (((e02.O1() && !e02.a(this.f40434c)) || (e02 instanceof TJ) || e02.R1() || e02.T1()) && ((!e02.Q1() || !e02.f0().C2().u().B().e()) && ((com.android.tools.r8.ir.optimize.Y) c9420sR.a(c9420sR.f52359b)).a(this.f40433b, o10, H10, C6686c10.f46935a) && a(e02, H10, c10))) {
                                    this.f40442k.put(e02, new com.android.tools.r8.ir.optimize.T(null, H10));
                                    if (!z10 && this.f40436e.a(H10)) {
                                        throw new AssertionError();
                                    }
                                    InterfaceC10835p interfaceC10835p = H10.getHolder().f36369x;
                                    if (interfaceC10835p.l()) {
                                        C10824n0 g10 = interfaceC10835p.g();
                                        if (g10.f55385b != null && g10.f55387d != 3) {
                                        }
                                    }
                                    this.f40444m.put(e02, H10);
                                }
                            }
                        }
                        return abstractC10561zE;
                    }
                    if (abstractC10561zE.H1()) {
                        EB V10 = abstractC10561zE.V();
                        NB nb2 = V10.f39789l;
                        if (V10.x2()) {
                            if (nb2 != NB.f42527b && nb2 != NB.f42532g) {
                            }
                        }
                    }
                    if (!(abstractC10561zE instanceof C5924So0)) {
                        return abstractC10561zE;
                    }
                } else {
                    if (abstractC10561zE.t1()) {
                        C7942jc D10 = abstractC10561zE.D();
                        if (D10.f49274k.I0()) {
                            if (!((C11245i) this.f40432a.f()).c(this.f40440i.f36245e, D10.f49274k)) {
                            }
                        }
                        return abstractC10561zE;
                    }
                    C10340xw0 d12 = abstractC10561zE.d();
                    if (this.f40446o.f46804a.contains(d12)) {
                        continue;
                    } else {
                        if (d12.B()) {
                            if (C10340xw0.f53884o || !d12.f53889f.isEmpty()) {
                                return (C7201f60) d12.f53889f.getFirst();
                            }
                            throw new AssertionError();
                        }
                        if (!this.f40446o.a(d12)) {
                            return abstractC10561zE;
                        }
                        c10.addAll(d12.b0());
                    }
                }
            }
            b02 = c10;
        }
        return null;
    }

    public final void b() {
        for (AbstractC10561zE abstractC10561zE : this.f40439h.b0()) {
            if (abstractC10561zE.i()) {
                if (!f40431p && !this.f40438g.c2()) {
                    throw new AssertionError();
                }
                if (((C11245i) this.f40432a.f()).a(this.f40440i, abstractC10561zE.m().getField()).q() != null) {
                    a(abstractC10561zE);
                } else {
                    throw new C5417Jv0("Unexpected field write left in method `" + this.f40437f.r() + "` after field reads removed: " + ((Object) abstractC10561zE));
                }
            } else {
                throw new C5417Jv0("Unexpected usage left in method `" + this.f40437f.r() + "` after field reads removed: " + ((Object) abstractC10561zE));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x009e, code lost:
    
        if (r5.getReference().a(r13.f40434c.f37859F4.f38228f) == false) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x00ab, code lost:
    
        if (r5.d().j1() == false) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x00bd, code lost:
    
        if (r5.d().a(r13.f40432a, r13.f40437f, com.android.tools.r8.internal.C6686c10.f46935a) == false) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x00bf, code lost:
    
        r13.f40442k.put(r4, new com.android.tools.r8.ir.optimize.T(r13.f40440i, r5.H()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x00e8, code lost:
    
        if (r13.f40442k.isEmpty() != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x00ea, code lost:
    
        r4 = r13.f40435d;
        r4.a(new com.android.tools.r8.ir.optimize.K(r4.f54814a, r13.f40442k), r13.f40437f, r14, r16, r17, r13.f40436e, com.android.tools.r8.internal.C8659ns0.c());
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x010b, code lost:
    
        if (r13.f40442k.isEmpty() == false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x00d5, code lost:
    
        throw new com.android.tools.r8.internal.FD();
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x00db, code lost:
    
        throw new com.android.tools.r8.internal.FD();
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x00e1, code lost:
    
        throw new com.android.tools.r8.internal.FD();
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x010d, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0042, code lost:
    
        if (r13.f40438g.c2() != false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0044, code lost:
    
        r13.f40442k.clear();
        r1 = r13.f40439h.b0().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0057, code lost:
    
        if (r1.hasNext() == false) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0059, code lost:
    
        r4 = r1.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0063, code lost:
    
        if (r4.O1() == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0065, code lost:
    
        r4 = r4.c0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0073, code lost:
    
        if (r4.C2().i() == r13.f40439h) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0076, code lost:
    
        r5 = r4.f(r13.f40432a, r14.j()).o();
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0084, code lost:
    
        if (r5 == null) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0086, code lost:
    
        r5 = com.android.tools.r8.graph.H0.a(r5.f37021c, r5.f37022d);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(C7215fB c7215fB, C10696a c10696a, AbstractC8028k40 abstractC8028k40, JD jd2) {
        boolean z10;
        AbstractC4481h3 a10;
        if (!f40431p) {
            C10340xw0 c10340xw0 = this.f40439h;
            if (c10340xw0 != c10340xw0.i()) {
                throw new AssertionError();
            }
        }
        boolean z11 = true;
        if (this.f40442k.isEmpty()) {
            z10 = false;
        } else {
            com.android.tools.r8.ir.optimize.W w10 = this.f40435d;
            w10.a(new com.android.tools.r8.ir.optimize.K(w10.f54814a, this.f40442k), this.f40437f, c7215fB, abstractC8028k40, jd2, this.f40436e, C8659ns0.c());
        }
        if (this.f40443l.f45165b.isEmpty()) {
            z11 = false;
        } else {
            IdentityHashMap identityHashMap = new IdentityHashMap();
            Set<AbstractC10561zE> b02 = this.f40439h.b0();
            while (!b02.isEmpty()) {
                Set<AbstractC10561zE> c10 = AbstractC5513Ll0.c();
                for (AbstractC10561zE abstractC10561zE : b02) {
                    abstractC10561zE.getClass();
                    if (!(abstractC10561zE instanceof C4) && !abstractC10561zE.t1()) {
                        if (abstractC10561zE.Q1()) {
                            WJ f02 = abstractC10561zE.f0();
                            C10340xw0 C22 = f02.C2();
                            D4 d42 = D4.f39431a;
                            C22.getClass();
                            if (C22.a(d42, EnumC6871d70.f47287c) == this.f40439h) {
                                Z4.c<?> o10 = f02.b(this.f40432a).o();
                                if (o10 != null) {
                                    if (o10.q().getReference().a(this.f40434c.f37859F4.f38228f)) {
                                        continue;
                                    } else {
                                        if (!f02.O1() && !(f02 instanceof C7572hK)) {
                                            C6949de b10 = C6949de.b(this.f40440i.getType(), C8854p10.b(), (C4798y<? extends C4514j>) this.f40432a);
                                            boolean z12 = AbstractC10330xt.f53865a;
                                            a10 = o10.a(this.f40432a, f02, new C8166kv(b10), this.f40437f);
                                        } else {
                                            a10 = o10.a(this.f40432a, (VJ) f02, this.f40437f);
                                        }
                                        if (a10 instanceof com.android.tools.r8.graph.T5) {
                                            com.android.tools.r8.graph.H5 H10 = a10.a().f36831b.H();
                                            if (H10 != null && this.f40443l.f45165b.containsKey(H10.getReference())) {
                                                identityHashMap.put(f02, new com.android.tools.r8.ir.optimize.T(null, H10));
                                            } else {
                                                throw new FD();
                                            }
                                        } else {
                                            throw new FD();
                                        }
                                    }
                                } else {
                                    throw new FD();
                                }
                            } else {
                                continue;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        c10.addAll(abstractC10561zE.d().b0());
                    }
                }
                b02 = c10;
            }
            if (!identityHashMap.isEmpty()) {
                com.android.tools.r8.ir.optimize.W w11 = this.f40435d;
                w11.a(new com.android.tools.r8.ir.optimize.K(w11.f54814a, identityHashMap), this.f40437f, c7215fB, abstractC8028k40, jd2, this.f40436e, C8659ns0.c());
            }
        }
        boolean z13 = z10 | z11;
        a();
        c(c7215fB, c10696a);
        if (this.f40438g.c2()) {
            a(c7215fB, c10696a);
        } else {
            if (!f40431p) {
                AbstractC10561zE abstractC10561zE2 = this.f40438g;
                abstractC10561zE2.getClass();
                if (!(abstractC10561zE2 instanceof C5576Mo0)) {
                    throw new AssertionError();
                }
            }
            b(c7215fB, c10696a);
        }
        b();
        a(this.f40438g);
        return z13;
    }

    public static void a(AbstractC10561zE abstractC10561zE, C10340xw0 c10340xw0) {
        c10340xw0.f53887d.remove(abstractC10561zE);
        c10340xw0.f53888e = null;
    }

    public final void a() {
        C10340xw0 c10340xw0 = this.f40439h;
        Set<C10340xw0> c10 = AbstractC5513Ll0.c();
        c10.add(c10340xw0);
        Set<C7201f60> c11 = AbstractC5513Ll0.c();
        final C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        this.f40439h.b0().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6286Yx0.this.b((C6286Yx0) obj);
            }
        });
        this.f40439h.a0().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6286Yx0.this.b((C6286Yx0) obj);
            }
        });
        while (c6286Yx0.b()) {
            FE fe2 = (FE) c6286Yx0.c();
            if (fe2.j()) {
                C7201f60 l10 = fe2.l();
                c11.add(l10);
                l10.b0().forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C6286Yx0.this.b((C6286Yx0) obj);
                    }
                });
                l10.a0().forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C6286Yx0.this.b((C6286Yx0) obj);
                    }
                });
            } else {
                AbstractC10561zE k10 = fe2.k();
                k10.getClass();
                if ((k10 instanceof C4) || k10.t1()) {
                    c10.add(k10.d());
                    k10.d().b0().forEach(new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            C6286Yx0.this.b((C6286Yx0) obj);
                        }
                    });
                    k10.d().a0().forEach(new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            C6286Yx0.this.b((C6286Yx0) obj);
                        }
                    });
                }
            }
        }
        for (C7201f60 c7201f60 : c11) {
            for (C10340xw0 c10340xw02 : c7201f60.c0()) {
                D4 d42 = D4.f39431a;
                c10340xw02.getClass();
                C10340xw0 a10 = c10340xw02.a(d42, EnumC6871d70.f47287c);
                if (a10.j() && !c11.contains(a10.l())) {
                    throw new C6570bJ("Unexpected non-trivial phi in method eligible for class inlining");
                }
                if (!a10.j() && !c10.contains(a10)) {
                    throw new C6570bJ("Unexpected non-trivial phi in method eligible for class inlining");
                }
            }
            c7201f60.f(this.f40439h);
            c7201f60.f0();
        }
        for (C10340xw0 c10340xw03 : c10) {
            if (c10340xw03 != this.f40439h) {
                if (!f40431p) {
                    AbstractC10561zE abstractC10561zE = c10340xw03.f53886c;
                    abstractC10561zE.getClass();
                    if (!(abstractC10561zE instanceof C4) && !c10340xw03.f53886c.t1()) {
                        throw new AssertionError();
                    }
                }
                c10340xw03.f(this.f40439h);
                a(c10340xw03.f53886c);
            }
        }
        boolean z10 = f40431p;
        if (!z10) {
            C10340xw0 c10340xw04 = this.f40439h;
            c10340xw04.getClass();
            C9132qj c9132qj = C9132qj.f51861a;
            Set c12 = AbstractC5513Ll0.c();
            C10340xw0.a(c9132qj, c10340xw04, c12);
            if (!c12.stream().noneMatch(new C10231xF0())) {
                throw new AssertionError();
            }
        }
        if (z10) {
            return;
        }
        C10340xw0 c10340xw05 = this.f40439h;
        c10340xw05.getClass();
        C9132qj c9132qj2 = C9132qj.f51861a;
        Set c13 = AbstractC5513Ll0.c();
        C10340xw0.a(c9132qj2, c10340xw05, c13);
        if (!c13.stream().noneMatch(new C10398yF0())) {
            throw new AssertionError();
        }
    }

    public final void a(C7215fB c7215fB, C10696a c10696a) {
        ArrayList arrayList = new ArrayList();
        for (AbstractC10561zE abstractC10561zE : this.f40439h.b0()) {
            abstractC10561zE.getClass();
            if (abstractC10561zE instanceof C6558bE) {
                if (abstractC10561zE.f1()) {
                    arrayList.add(abstractC10561zE.c());
                } else {
                    a(abstractC10561zE);
                }
            } else if (abstractC10561zE.i()) {
                if (!f40431p && !this.f40438g.c2()) {
                    throw new AssertionError();
                }
            } else {
                throw new C5417Jv0("Unexpected usage left in method `" + this.f40437f.r() + "` after inlining: " + ((Object) abstractC10561zE));
            }
        }
        arrayList.sort(Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C6558bE) obj).d();
            }
        }));
        IdentityHashMap identityHashMap = new IdentityHashMap();
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            a(c7215fB, (C6558bE) obj, c10696a, identityHashMap);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(final C7215fB c7215fB, C6558bE c6558bE, C10696a c10696a, IdentityHashMap identityHashMap) {
        C4804y5 c4804y5;
        C10340xw0 d10 = c6558bE.d();
        F40 f40 = null;
        if (d10 != null) {
            C5997Tw c5997Tw = (C5997Tw) identityHashMap.computeIfAbsent(c6558bE.getField(), new Function() {
                @Override
                public final Object apply(Object obj) {
                    return GD.this.a(c7215fB, (C4554l1) obj);
                }
            });
            W5 b10 = c6558bE.b();
            c5997Tw.getClass();
            C10340xw0 a10 = c5997Tw.a(b10, c6558bE);
            if (a10 == null) {
                a10 = c5997Tw.a(b10);
            }
            com.android.tools.r8.graph.F3 m10 = ((C11245i) this.f40432a.f()).a(this.f40440i, c6558bE.getField()).m();
            if (!f40431p && m10 == null) {
                throw new AssertionError();
            }
            if (m10 != null && (c4804y5 = m10.r().d().f37204i) != null) {
                C10340xw0 a11 = c7215fB.a(a10.u(), a10.s());
                f40 = new F40(c4804y5, a11, a10);
                a10 = a11;
            }
            d10.f(a10);
            for (C5997Tw c5997Tw2 : identityHashMap.values()) {
                for (Map.Entry entry : c5997Tw2.f44621f.entrySet()) {
                    if (entry.getValue() == d10) {
                        entry.setValue(a10);
                    }
                }
                for (Map.Entry entry2 : c5997Tw2.f44622g.entrySet()) {
                    if (entry2.getValue() == d10) {
                        entry2.setValue(a10);
                    }
                }
            }
            if (!f40431p && d10.w()) {
                throw new AssertionError();
            }
            c10696a.f54829b.add(a10);
            c10696a.f54829b.addAll(a10.a());
        }
        if (f40 != null) {
            c6558bE.f54317b.l().a(c6558bE, f40, c10696a);
        } else {
            a((AbstractC10561zE) c6558bE);
        }
    }

    public final C5997Tw a(C7215fB c7215fB, C4554l1 c4554l1) {
        return new C5997Tw(c4554l1, c7215fB, this.f40438g, this.f40432a);
    }

    public final void a(C6558bE c6558bE) {
        throw this.f40432a.E().f50691j.b("Unexpected usage left in method `" + this.f40437f.r() + "` after inlining: " + c6558bE.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:0x0257, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0212, code lost:
    
        if (r11.f42124e == false) goto L119;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0219 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0250 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.android.tools.r8.graph.b1, com.android.tools.r8.graph.E0] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean b(VJ vj2, com.android.tools.r8.graph.H5 h52, int i10, Set set) {
        AbstractC9530t40 abstractC9530t40;
        boolean z10;
        boolean z11;
        boolean a10;
        C10340xw0 d10;
        C4516j1 d11 = h52.d();
        d11.L0();
        InterfaceC6297Zc l10 = d11.f37320m.l();
        if (this.f40438g.c2()) {
            if (!l10.a(i10, this.f40432a, this.f40440i)) {
                return false;
            }
        } else {
            if (!f40431p) {
                AbstractC10561zE abstractC10561zE = this.f40438g;
                abstractC10561zE.getClass();
                if (!(abstractC10561zE instanceof C5576Mo0)) {
                    throw new AssertionError();
                }
            }
            if (!l10.a(this.f40432a, this.f40440i, i10, this.f40441j, this.f40437f)) {
                return false;
            }
        }
        AbstractC9533t50 a11 = l10.a(i10);
        C4516j1 d12 = h52.d();
        d12.L0();
        if (d12.f37320m.l().a(i10).d()) {
            C4516j1 d13 = h52.d();
            d13.L0();
            if (d13.f37320m.G()) {
                if (!f40431p) {
                    C4516j1 d14 = h52.d();
                    d14.L0();
                    if (d14.f37320m.t() != i10) {
                        throw new AssertionError();
                    }
                }
                abstractC9530t40 = AbstractC9530t40.f52517a;
            } else {
                abstractC9530t40 = AbstractC9530t40.f52519c;
            }
        } else {
            abstractC9530t40 = AbstractC9530t40.f52518b;
        }
        if (!abstractC9530t40.a() && (d10 = vj2.d()) != null && d10.w()) {
            if (!d10.B() && !d10.y() && !abstractC9530t40.e()) {
                if (!f40431p && !abstractC9530t40.d()) {
                    throw new AssertionError();
                }
                if (this.f40446o.a(d10)) {
                    set.addAll(d10.b0());
                }
            }
            return false;
        }
        a11.getClass();
        if (!(a11 instanceof C9538t7)) {
            Iterator it = a11.b().f42122c.iterator();
            while (true) {
                AC ac2 = (AC) it;
                if (!ac2.hasNext()) {
                    break;
                }
                com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) ac2.next();
                Z4.c<?> o10 = ((C11245i) this.f40432a.f()).h(this.f40440i, a22).o();
                if (o10 == null || !o10.d().e0()) {
                    break;
                }
                com.android.tools.r8.graph.H5 H10 = com.android.tools.r8.graph.H0.a(o10.f37021c, o10.f37022d).H();
                if (a(H10) && !H10.d().k1().d()) {
                    boolean z12 = f40431p;
                    if (!z12 && !a(H10)) {
                        throw new AssertionError();
                    }
                    com.android.tools.r8.graph.Z4 f10 = ((C11245i) this.f40432a.f()).f(this.f40440i, a22);
                    if ((!f10.w() || f10.s().n1()) && H10.d().n1() && this.f40437f.d() != H10.d()) {
                        C4516j1 d15 = H10.d();
                        d15.L0();
                        InterfaceC6297Zc l11 = d15.f37320m.l();
                        if (this.f40438g.c2()) {
                            a10 = l11.a(0, this.f40432a, this.f40440i);
                        } else {
                            if (!z12) {
                                AbstractC10561zE abstractC10561zE2 = this.f40438g;
                                abstractC10561zE2.getClass();
                                if (!(abstractC10561zE2 instanceof C5576Mo0)) {
                                    throw new AssertionError();
                                }
                            }
                            a10 = l11.a(this.f40432a, this.f40440i, 0, this.f40441j, this.f40437f);
                        }
                    } else {
                        a10 = false;
                    }
                    if (a10) {
                        C4516j1 d16 = H10.d();
                        d16.L0();
                        AbstractC9533t50 a12 = d16.f37320m.l().a(0);
                        if (!z12) {
                            a12.getClass();
                            if (a12 instanceof C9836uv0) {
                                throw new AssertionError();
                            }
                        }
                        a12.getClass();
                        if (!(a12 instanceof C9538t7)) {
                            M00 b10 = a12.b();
                            if (b10.f42122c.isEmpty()) {
                            }
                        }
                        z10 = true;
                        if (z10) {
                            return false;
                        }
                        if (!f40431p && this.f40436e.a(H10)) {
                            throw new AssertionError();
                        }
                        InterfaceC10835p interfaceC10835p = H10.getHolder().f36369x;
                        if (interfaceC10835p.l()) {
                            C10824n0 g10 = interfaceC10835p.g();
                            if (g10.f55385b != null && g10.f55387d != 3) {
                                z11 = true;
                                if (z11) {
                                    this.f40445n.add(H10);
                                }
                                this.f40443l.add((AbstractC8374m80) H10);
                            }
                        }
                        z11 = false;
                        if (z11) {
                        }
                        this.f40443l.add((AbstractC8374m80) H10);
                    }
                }
                z10 = false;
                if (z10) {
                }
            }
        }
        return true;
    }

    public final boolean a(com.android.tools.r8.graph.H5 h52) {
        boolean booleanValue;
        if (h52 == null || this.f40436e.a(h52)) {
            return false;
        }
        com.android.tools.r8.graph.H2 holder = h52.getHolder();
        com.android.tools.r8.graph.H5 h53 = this.f40437f;
        C4798y c4798y = this.f40432a;
        if (AbstractC4420e.a(h52, holder, h53, c4798y, (C4514j) c4798y.f()).b()) {
            return false;
        }
        com.android.tools.r8.shaking.I1 a10 = this.f40432a.a(h52);
        if (!a10.c(this.f40432a.E()) || !a10.f56554m || !((C4516j1) h52.d()).a(this.f40432a, this.f40437f, C6686c10.f46935a)) {
            return false;
        }
        com.android.tools.r8.graph.H5 h54 = this.f40437f;
        C4798y c4798y2 = this.f40432a;
        c4798y2.E().getClass();
        if (h54.getHolder().isInterface()) {
            com.android.tools.r8.ir.optimize.G g10 = new com.android.tools.r8.ir.optimize.G(c4798y2, h54);
            h52.a(g10);
            booleanValue = g10.f37241e.booleanValue();
        } else {
            booleanValue = false;
        }
        return !booleanValue;
    }
}
