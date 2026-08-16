package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.G;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.G9;
import com.android.tools.r8.ir.optimize.AbstractC10713i0;
import com.android.tools.r8.ir.optimize.C10696a;
import com.android.tools.r8.ir.optimize.C10711h0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.function.Function;

public final class C7543h9 {

    public static final boolean f48455t = true;

    public final C4798y f48456a;

    public final com.android.tools.r8.graph.H5 f48457b;

    public final C7215fB f48458c;

    public HashMap f48459d;

    public HashSet f48460e;

    public ArrayList f48461f;

    public C6234Ya f48462g;

    public B60 f48463h = B60.s();

    public B60 f48464i = null;

    public final C6899dH f48465j = new C6899dH(16);

    public C6899dH f48466k = null;

    public boolean f48467l = false;

    public W5 f48468m = null;

    public final ArrayList f48469n = new ArrayList();

    public final C6899dH f48470o = new C6899dH(16);

    public HashMap f48471p;

    public ArrayList f48472q;

    public HashMap f48473r;

    public final C9541t8 f48474s;

    public C7543h9(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C7215fB c7215fB, C9875v8 c9875v8) {
        this.f48456a = c4798y;
        this.f48457b = h52;
        this.f48458c = c7215fB;
        C9708u8 c9708u8 = C9708u8.f52785b;
        this.f48474s = new C9541t8(c9875v8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:177:0x066f, code lost:
    
        if (com.android.tools.r8.internal.C7543h9.f48455t != false) goto L282;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0679, code lost:
    
        if (r3.i().g2() == false) goto L282;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x067b, code lost:
    
        if (r15 != 0) goto L362;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x0683, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x0684, code lost:
    
        if (r12 == false) goto L284;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x0686, code lost:
    
        r12 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x0687, code lost:
    
        if (r4 != null) goto L355;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x068f, code lost:
    
        if (r20.f48470o.isEmpty() != false) goto L291;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x0691, code lost:
    
        r1 = com.android.tools.r8.internal.AbstractC7774ib.a(r20.f48461f);
        r3 = new com.android.tools.r8.internal.C6732cH(((com.android.tools.r8.internal.VG) r20.f48470o.values()).f45009b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x06aa, code lost:
    
        if (r3.hasNext() == false) goto L392;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x06ac, code lost:
    
        r2 = (com.android.tools.r8.graph.G.a) r3.f47013h.f47341c[r3.a()];
        r2.a(r1);
        r20.f48469n.add(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x06c1, code lost:
    
        r1 = com.android.tools.r8.position.Position.UNKNOWN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x06d3, code lost:
    
        if (r20.f48457b.d().Q0().t0() == false) goto L294;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x06d5, code lost:
    
        r1 = r20.f48457b.d().Q0().V().f36309l;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x06e7, code lost:
    
        r16 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x06ef, code lost:
    
        if (r20.f48463h.o() == false) goto L317;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x06f1, code lost:
    
        r1 = r20.f48464i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x06f3, code lost:
    
        if (r1 == null) goto L317;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x06f9, code lost:
    
        if (r1.k() != false) goto L301;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x06fc, code lost:
    
        r1 = ((com.android.tools.r8.internal.W9) com.android.tools.r8.internal.AT.a(r20.f48461f)).m();
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x0708, code lost:
    
        if (r1 == null) goto L304;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x070a, code lost:
    
        r6 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x070d, code lost:
    
        r2 = new java.util.ArrayList(r20.f48461f.size() + r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x0719, code lost:
    
        if (r1 == null) goto L308;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x071b, code lost:
    
        r3 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x0722, code lost:
    
        r2.add(r3);
        r2.add(new com.android.tools.r8.internal.C5541Ma(r3, r20.f48464i));
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x072f, code lost:
    
        if (r1 != null) goto L312;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x0731, code lost:
    
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x073a, code lost:
    
        if (r6 >= r20.f48461f.size()) goto L393;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x073c, code lost:
    
        r2.add((com.android.tools.r8.internal.W9) r20.f48461f.get(r6));
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x074a, code lost:
    
        r20.f48461f = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x0733, code lost:
    
        r6 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x071d, code lost:
    
        r3 = new com.android.tools.r8.internal.C8103ka();
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x070c, code lost:
    
        r6 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x074c, code lost:
    
        r10 = r20.f48457b.p();
        r12 = r20.f48462g.f46031l + 1;
        r13 = r20.f48461f;
        r15 = r20.f48469n;
        r2 = r20.f48474s;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x0767, code lost:
    
        if (r2.f52542b.isEmpty() == false) goto L320;
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x0769, code lost:
    
        r17 = com.android.tools.r8.internal.C9708u8.f52785b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x0777, code lost:
    
        r1 = new com.android.tools.r8.graph.G(r10, r11, r12, r13, r14, r15, r16, r17);
        r22.d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x0780, code lost:
    
        if (com.android.tools.r8.internal.C7543h9.f48455t != false) goto L341;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x0782, code lost:
    
        r2 = r20.f48456a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x078c, code lost:
    
        if (r2.E().f50599F1.f50838Q == false) goto L326;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x078f, code lost:
    
        r4 = r1.E0().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x079b, code lost:
    
        if (r4.hasNext() == false) goto L396;
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x079d, code lost:
    
        r5 = r4.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x07a5, code lost:
    
        if ((r5 instanceof com.android.tools.r8.internal.C7437ga) == false) goto L402;
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x07a7, code lost:
    
        r5 = (com.android.tools.r8.internal.C7437ga) r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x07b3, code lost:
    
        if (r5.V().f38297f.I0() == false) goto L403;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x07b5, code lost:
    
        r6 = r2.g(r5.V().f38297f);
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x07c1, code lost:
    
        if (com.android.tools.r8.internal.C7543h9.f48455t != false) goto L404;
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x07c3, code lost:
    
        if (r6 == null) goto L405;
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x07cd, code lost:
    
        if (r6.isInterface() != r5.X()) goto L400;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x07d5, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x07d8, code lost:
    
        if (com.android.tools.r8.internal.C7543h9.f48455t != false) goto L354;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x07da, code lost:
    
        r2 = r1.a(r20.f48456a, r20.f48457b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x07e3, code lost:
    
        if (r2 == 4) goto L349;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x07e6, code lost:
    
        if (r2 != 2) goto L348;
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x07e9, code lost:
    
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x07ec, code lost:
    
        if (r7 == false) goto L352;
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x07f4, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x07eb, code lost:
    
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x07f5, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x076e, code lost:
    
        r17 = new com.android.tools.r8.internal.C9708u8(r2.f52542b);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:164:0x052c  */
    /* JADX WARN: Removed duplicated region for block: B:351:0x066d A[EDGE_INSN: B:351:0x066d->B:176:0x066d BREAK  A[LOOP:10: B:162:0x0526->B:314:0x066a], SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r17v11 */
    /* JADX WARN: Type inference failed for: r17v12, types: [int] */
    /* JADX WARN: Type inference failed for: r17v14 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v23 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final com.android.tools.r8.graph.G a(com.android.tools.r8.ir.optimize.F f10, C8659ns0 c8659ns0, String str) {
        Set<C7668hv0> c10;
        Z5 z52;
        Y5 it;
        boolean z10;
        B60 b60;
        boolean z11;
        S60 a10;
        boolean z12;
        InterfaceC8008jy a11;
        S60 a12;
        boolean z13;
        final C7215fB c7215fB = this.f48458c;
        Objects.requireNonNull(c7215fB);
        c8659ns0.a("Trace blocks", new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                C7215fB.this.C();
            }
        });
        c8659ns0.a("Compute Initializers", new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                C7543h9.this.a();
            }
        });
        c8659ns0.b("Compute verification types");
        C5473Ku0 c5473Ku0 = new C5473Ku0(this.f48456a, this.f48458c);
        c5473Ku0.a();
        c8659ns0.d();
        if (!f48455t) {
            f10.b(this.f48458c);
        }
        c8659ns0.a("Rewrite nots", new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                C7543h9.this.c();
            }
        });
        c8659ns0.b("Insert loads and stores");
        C4798y c4798y = this.f48456a;
        C7215fB c7215fB2 = this.f48458c;
        NT nt = new NT(c4798y, c7215fB2, c5473Ku0);
        nt.f42606d = new IdentityHashMap();
        nt.f42607e = c7215fB2.u();
        while (nt.f42607e.f46159b.hasNext()) {
            Z5 z53 = nt.f42607e;
            W5 w52 = (W5) z53.f46159b.next();
            z53.f46160c = w52;
            nt.f42608f = w52.I();
            while (nt.f42608f.hasNext()) {
                nt.f42608f.next().a(nt);
            }
            nt.f42606d.clear();
        }
        nt.f42606d = null;
        nt.f42607e = null;
        c8659ns0.d();
        String a13 = C8048kB.a(this.f48458c, "After load/store insertion", str, this.f48456a.E());
        boolean z14 = true;
        if (this.f48456a.E().f50613K0) {
            c8659ns0.b("Load store optimizations (BasicBlockMunching)");
            AbstractC10713i0.a(this.f48458c);
            boolean z15 = false;
            while (!z15) {
                C7215fB c7215fB3 = this.f48458c;
                C8570nJ E10 = this.f48456a.E();
                AbstractC6367a6.a(c7215fB3, AbstractC7552hC.a(new C7952jf0(), new C6766cY(), new C5750Po0()), E10);
                AbstractC6367a6.a(c7215fB3, AbstractC7552hC.a(new C5866Ro0(), new C5750Po0(), new KT(), new C9829ut(), new C5808Qo0()), E10);
                z15 = !AbstractC10713i0.a(this.f48458c);
            }
            c8659ns0.d();
        }
        this.f48458c.x();
        if (!f48455t) {
            this.f48458c.b(false);
        }
        String a14 = C8048kB.a(this.f48458c, "After load/store optimization", a13, this.f48456a.E());
        c8659ns0.b("Insert uninitialized local reads");
        if (!this.f48457b.getReference().b(this.f48456a.b())) {
            c10 = Collections.EMPTY_SET;
        } else {
            c10 = AbstractC5513Ll0.c();
            Iterator<W5> it2 = this.f48458c.f47897d.iterator();
            while (it2.hasNext()) {
                W5 next = it2.next();
                if (next.i().m2() && !next.z()) {
                    CE l10 = next.l();
                    AbstractC10561zE b10 = l10.b();
                    if (!f48455t && !b10.m2()) {
                        throw new AssertionError();
                    }
                    C7668hv0 c7668hv0 = new C7668hv0(this.f48458c.m());
                    c7668hv0.b(b10.getPosition());
                    c10.add(c7668hv0);
                    l10.a(c7668hv0, b10);
                }
            }
        }
        c8659ns0.d();
        c8659ns0.b("Register allocation");
        C6234Ya c6234Ya = new C6234Ya(this.f48456a, this.f48458c, c5473Ku0);
        this.f48462g = c6234Ya;
        c6234Ya.b();
        c8659ns0.d();
        c8659ns0.b("Remove uninitialized local reads");
        if (!c10.isEmpty()) {
            for (C7668hv0 c7668hv02 : c10) {
                c7668hv02.b().f45293f.b(c7668hv02);
            }
        }
        c8659ns0.d();
        c8659ns0.b("Insert phi moves");
        nt.a(this.f48462g);
        c8659ns0.d();
        C8328lt0 c8328lt0 = new C8328lt0(this.f48456a);
        c8659ns0.b("BasicBlock peephole optimizations");
        for (int i10 = 0; i10 < 2; i10++) {
            c8328lt0.a(this.f48458c, c8659ns0);
            C10711h0.a(this.f48458c, this.f48462g);
            C10711h0.a(this.f48458c, this.f48462g, 30);
        }
        c8659ns0.d();
        c8659ns0.a("Rewrite Iinc patterns", new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                C7543h9.this.b();
            }
        });
        c8328lt0.a(this.f48458c, c8659ns0);
        c8659ns0.b("Remove redundant debug positions");
        C5458Kn.a(this.f48456a, this.f48458c);
        c8659ns0.d();
        C8048kB.a(this.f48458c, "Before CF building", a14, this.f48456a.E());
        c8659ns0.b("Build CF Code");
        ArrayList arrayList = new ArrayList();
        this.f48459d = new HashMap(this.f48458c.f47897d.size());
        this.f48460e = new HashSet(this.f48458c.f47897d.size());
        this.f48473r = new HashMap(this.f48471p.size());
        this.f48461f = new ArrayList();
        Z5 u10 = this.f48458c.u();
        W5 next2 = u10.next();
        N8 n82 = N8.f42508f;
        C8103ka c8103ka = null;
        ?? r92 = 0;
        int i11 = 0;
        boolean z16 = true;
        while (true) {
            N8 j10 = next2.j();
            if (!n82.equals(j10)) {
                if (!n82.isEmpty()) {
                    C8103ka a15 = a(next2);
                    boolean z17 = C5023Db.f39555e;
                    AbstractC7552hC abstractC7552hC = n82.f42510b;
                    ArrayList arrayList2 = new ArrayList(n82.f42511c.size());
                    Iterator it3 = n82.f42511c.iterator();
                    while (it3.hasNext()) {
                        arrayList2.add(a((W5) it3.next()));
                    }
                    arrayList.add(new C5023Db(c8103ka, a15, abstractC7552hC, arrayList2));
                    if (!this.f48460e.contains(a15)) {
                        this.f48460e.add(a15);
                        this.f48461f.add(a15);
                    }
                }
                if (!j10.isEmpty()) {
                    c8103ka = a(next2);
                    if (!this.f48460e.contains(c8103ka)) {
                        this.f48460e.add(c8103ka);
                        this.f48461f.add(c8103ka);
                    }
                }
                n82 = j10;
            }
            W5 next3 = u10.hasNext() ? u10.next() : null;
            if (next2.u().size() > r92) {
                this.f48468m = next2;
                C8103ka a16 = a(next2);
                if (!this.f48460e.contains(a16)) {
                    this.f48460e.add(a16);
                    this.f48461f.add(a16);
                }
            }
            AbstractC9408sL i12 = next2.i();
            boolean z18 = ((i12.G1() && i12.U().v2() == next3) || (i12.H1() && i12.u2() == next3)) ? z14 : false;
            C6899dH c6899dH = next2.f45288a;
            if (c6899dH == null) {
                if (!f48455t && this.f48466k != null) {
                    throw new AssertionError();
                }
            } else {
                C6899dH c6899dH2 = new C6899dH(c6899dH.f47346h);
                c6899dH2.putAll(c6899dH);
                this.f48466k = c6899dH2;
                this.f48467l = z14;
            }
            ArrayList arrayList3 = this.f48462g.a(next2).f45750b;
            int size = arrayList3.size();
            int i13 = 0;
            int i14 = 0;
            while (i13 < size) {
                Object obj = arrayList3.get(i13);
                i13++;
                com.android.tools.r8.graph.M2 a17 = ((InterfaceC5415Ju0) obj).a();
                i14 += (a17.J0() || a17.M0()) ? 2 : z14;
            }
            if (!AbstractC7376g9.f48195a && i14 > i11) {
                throw new AssertionError();
            }
            if (this.f48468m != null) {
                Y5 it4 = next2.l().iterator();
                while (it4.hasNext()) {
                    AbstractC10561zE next4 = it4.next();
                    if (!next4.k1() && !((z13 = next4 instanceof C6600bY))) {
                        if (!(next4 instanceof C7297fj) && !z13 && (!next4.G1() || next4.U().v2() != next3)) {
                            z11 = true;
                            break;
                        }
                    }
                }
                z11 = false;
                boolean z19 = f48455t;
                if (!z19 && !z11 && next3 == null) {
                    throw new AssertionError();
                }
                if (z11) {
                    W5 w53 = this.f48468m;
                    ArrayList arrayList4 = this.f48462g.a(w53).f45750b;
                    G9.a V10 = G9.V();
                    AbstractC10561zE a18 = w53.f45293f.a();
                    a18.getClass();
                    if (a18 instanceof C6600bY) {
                        if (!z19 && !arrayList4.isEmpty()) {
                            throw new AssertionError();
                        }
                        InterfaceC5415Ju0 interfaceC5415Ju0 = ((C8146ko0) w53.f45293f.a().d()).f49763q;
                        if (interfaceC5415Ju0 instanceof C5241Gu0) {
                            a12 = InterfaceC8008jy.a(((C5241Gu0) interfaceC5415Ju0).f40618a);
                        } else {
                            AbstractC6668bv0 a19 = a(w53, interfaceC5415Ju0);
                            a12 = a19 != null ? a19 : InterfaceC8008jy.a(interfaceC5415Ju0.a());
                        }
                        V10.a(a12);
                    } else {
                        V10.a(arrayList4.size());
                        int size2 = arrayList4.size();
                        int i15 = 0;
                        while (i15 < size2) {
                            Object obj2 = arrayList4.get(i15);
                            i15++;
                            int i16 = size2;
                            InterfaceC5415Ju0 interfaceC5415Ju02 = (InterfaceC5415Ju0) obj2;
                            Z5 z54 = u10;
                            if (interfaceC5415Ju02 instanceof C5241Gu0) {
                                a10 = InterfaceC8008jy.a(((C5241Gu0) interfaceC5415Ju02).f40618a);
                            } else {
                                AbstractC6668bv0 a20 = a(w53, interfaceC5415Ju02);
                                a10 = a20 != null ? a20 : InterfaceC8008jy.a(interfaceC5415Ju02.a());
                            }
                            V10.a(a10);
                            u10 = z54;
                            size2 = i16;
                        }
                    }
                    z52 = u10;
                    WG wg2 = new WG(((C6399aH) this.f48462g.a(w53).f45749a.c()).f46484b);
                    while (wg2.hasNext()) {
                        RG rg2 = (RG) wg2.next();
                        int a21 = rg2.a();
                        InterfaceC5415Ju0 interfaceC5415Ju03 = (InterfaceC5415Ju0) rg2.getValue();
                        if (interfaceC5415Ju03 instanceof C5241Gu0) {
                            a11 = InterfaceC8008jy.a(((C5241Gu0) interfaceC5415Ju03).f40618a);
                        } else {
                            AbstractC6668bv0 a22 = a(w53, interfaceC5415Ju03);
                            a11 = a22 != null ? a22 : InterfaceC8008jy.a(interfaceC5415Ju03.a());
                        }
                        V10.a(a21, a11);
                    }
                    G9 a23 = V10.a();
                    if (this.f48467l) {
                        z12 = !C4515j0.a(this.f48465j, this.f48466k);
                        this.f48467l = z12;
                    } else {
                        z12 = false;
                    }
                    if (z12) {
                        a(AbstractC7774ib.a(this.f48461f));
                    }
                    this.f48461f.add(a23);
                    this.f48468m = null;
                    it = next2.l().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            break;
                        }
                        AbstractC10561zE next5 = it.next();
                        if (z18 && next5.G1()) {
                            if (!f48455t && next2.i() != next5) {
                                throw new AssertionError();
                            }
                        } else {
                            for (int size3 = next5.f54321f.size() - 1; size3 >= 0; size3--) {
                                if (((C10340xw0) next5.f54321f.get(size3)).Q()) {
                                    C10340xw0 c10340xw0 = (C10340xw0) next5.f54321f.get(size3);
                                    if (!AbstractC7376g9.f48195a && !c10340xw0.Q()) {
                                        throw new AssertionError();
                                    }
                                    i14 -= c10340xw0.f53896m.C();
                                }
                            }
                            if (next5.d() != null) {
                                C10340xw0 d10 = next5.d();
                                if (d10 instanceof C8146ko0) {
                                    if (!AbstractC7376g9.f48195a) {
                                        d10.getClass();
                                        if (!(d10 instanceof C8146ko0)) {
                                            throw new AssertionError();
                                        }
                                    }
                                    i14 += d10.f53896m.C();
                                    i11 = Math.max(i11, i14);
                                }
                                if (d10 instanceof C8313lo0) {
                                    for (C8146ko0 c8146ko0 : ((C8313lo0) d10).f50108p) {
                                        if (!AbstractC7376g9.f48195a) {
                                            c8146ko0.getClass();
                                        }
                                        i14 += c8146ko0.f53896m.C();
                                        i11 = Math.max(i11, i14);
                                    }
                                }
                            }
                            if (next5 instanceof C7297fj) {
                                if (next5.M().a(this.f48466k)) {
                                    this.f48467l = true;
                                }
                            } else {
                                if (next5.c2()) {
                                    this.f48473r.put(next5.w0(), AbstractC7774ib.a(this.f48461f));
                                }
                                B60 position = next5.getPosition();
                                if (this.f48464i == null) {
                                    this.f48464i = position;
                                }
                                if (this.f48467l) {
                                    z10 = !C4515j0.a(this.f48465j, this.f48466k);
                                    this.f48467l = z10;
                                } else {
                                    z10 = false;
                                }
                                boolean z20 = (position.o() || position == (b60 = this.f48463h) || (b60.o() && (position instanceof B60.c) && !position.k()) || (!this.f48456a.E().f50690i1 && !next5.o())) ? false : true;
                                if (z10 || z20) {
                                    C8103ka a24 = AbstractC7774ib.a(this.f48461f);
                                    if (z10) {
                                        a(a24);
                                    }
                                    if (z20) {
                                        this.f48461f.add(new C5541Ma(a24, position));
                                        this.f48463h = position;
                                    }
                                }
                                next5.a(this);
                            }
                        }
                    }
                }
            }
            z52 = u10;
            it = next2.l().iterator();
            while (true) {
                if (it.hasNext()) {
                }
            }
            next2 = next3;
            u10 = z52;
            z14 = true;
            r92 = z18;
        }
    }

    public final void b() {
        JT m02;
        C9126qh J10;
        AbstractC10561zE Y02;
        int u22;
        B60 position;
        Iterator<W5> it = this.f48458c.f47897d.iterator();
        while (it.hasNext()) {
            CE l10 = it.next().l();
            for (AbstractC10561zE a10 = l10.a(); a10 != null; a10 = a10.Y0()) {
                boolean z10 = a10 instanceof JT;
                if (z10 || a10.w1()) {
                    AbstractC10561zE Y03 = a10.Y0();
                    if (z10) {
                        m02 = a10.m0();
                        J10 = Y03.J();
                    } else {
                        m02 = Y03.m0();
                        J10 = a10.J();
                    }
                    if (m02 != null && J10 != null && J10.a() == AbstractC8999pu0.k()) {
                        AbstractC10561zE Y04 = Y03.Y0();
                        if (Y04 != null && (Y02 = Y04.Y0()) != null) {
                            if (Y04.h1() && (Y02 instanceof C5692Oo0) && (u22 = J10.u2()) >= -128 && 127 >= u22) {
                                C10340xw0 c10340xw0 = (C10340xw0) m02.f54321f.get(0);
                                this.f48462g.getClass();
                                int a11 = C6234Ya.a(c10340xw0);
                                C10340xw0 d10 = Y02.d();
                                this.f48462g.getClass();
                                if (a11 == C6234Ya.a(d10) && (position = Y04.getPosition()) == m02.getPosition() && position == J10.getPosition() && position == Y02.getPosition()) {
                                    C7054eD c7054eD = new C7054eD(Y02.d(), (C10340xw0) m02.f54321f.get(0), u22);
                                    c7054eD.b(position);
                                    l10.a(c7054eD, Y02);
                                    m02.f54317b.l().b(m02);
                                    J10.f54317b.l().b(J10);
                                    Y04.f54317b.l().b(Y04);
                                    Y02.f54317b.l().b(Y02);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public final void c() {
        Iterator<W5> it = this.f48458c.f47897d.iterator();
        while (it.hasNext()) {
            Y5 I10 = it.next().I();
            while (I10.hasNext()) {
                AbstractC10561zE abstractC10561zE = (AbstractC10561zE) I10.next();
                abstractC10561zE.getClass();
                if (abstractC10561zE instanceof C7019e10) {
                    C10340xw0 c10340xw0 = (C10340xw0) abstractC10561zE.f54321f.get(0);
                    I10.previous();
                    C10340xw0 a10 = this.f48458c.a(c10340xw0.u(), (C4515j0) null);
                    C9126qh c9126qh = new C9126qh(a10, -1L);
                    c9126qh.b(abstractC10561zE.getPosition());
                    I10.add(c9126qh);
                    I10.next();
                    C7343fy0 c7343fy0 = new C7343fy0(abstractC10561zE.y0().f47579k, abstractC10561zE.d(), c10340xw0, a10);
                    c7343fy0.x2();
                    I10.a(c7343fy0, (C10696a) null);
                }
            }
        }
    }

    public static C8103ka b(W5 w52) {
        return new C8103ka();
    }

    public final void a() {
        boolean z10 = f48455t;
        if (!z10 && this.f48471p != null) {
            throw new AssertionError();
        }
        if (!z10 && this.f48472q != null) {
            throw new AssertionError();
        }
        this.f48471p = new HashMap();
        boolean b10 = this.f48457b.getReference().b(this.f48456a.b());
        Iterator<W5> it = this.f48458c.f47897d.iterator();
        while (it.hasNext()) {
            Y5 it2 = it.next().l().iterator();
            while (it2.hasNext()) {
                AbstractC10561zE next = it2.next();
                if (next.c2()) {
                    this.f48471p.put(next.w0(), a(next.d()));
                } else if (next.k1() && b10 && next.d().f53893j) {
                    this.f48472q = a(next.d());
                }
            }
        }
        if (!f48455t && b10 && this.f48472q == null) {
            throw new AssertionError();
        }
    }

    public final ArrayList a(C10340xw0 c10340xw0) {
        ArrayList arrayList = new ArrayList();
        for (AbstractC10561zE abstractC10561zE : c10340xw0.b0()) {
            if ((abstractC10561zE instanceof QJ) && abstractC10561zE.f54321f.get(0) == c10340xw0) {
                QJ qj2 = (QJ) abstractC10561zE;
                if (qj2.B2().f38298g == this.f48456a.b().f38067i1) {
                    arrayList.add(qj2);
                }
            }
        }
        return arrayList;
    }

    public final void a(C8103ka c8103ka) {
        C6899dH c6899dH = this.f48465j;
        C6899dH c6899dH2 = this.f48466k;
        int i10 = C4515j0.f37306e;
        DG dg2 = new DG();
        A30 it = ((C6399aH) c6899dH.c()).iterator();
        while (it.hasNext()) {
            RG rg2 = (RG) it.next();
            int a10 = rg2.a();
            C4515j0 c4515j0 = (C4515j0) rg2.getValue();
            if (c6899dH2.get(a10) != c4515j0) {
                dg2.a(a10, c4515j0);
            }
        }
        C6899dH c6899dH3 = this.f48465j;
        C6899dH c6899dH4 = this.f48466k;
        DG dg3 = new DG();
        A30 it2 = ((C6399aH) c6899dH4.c()).iterator();
        while (it2.hasNext()) {
            RG rg3 = (RG) it2.next();
            int a11 = rg3.a();
            C4515j0 c4515j02 = (C4515j0) rg3.getValue();
            if (c6899dH3.get(a11) != c4515j02) {
                dg3.a(a11, c4515j02);
            }
        }
        if (!f48455t && dg2.isEmpty() && dg3.isEmpty()) {
            throw new AssertionError();
        }
        C9065qG c9065qG = new C9065qG(((C8564nG) dg2.c()).f50573c);
        while (c9065qG.hasNext()) {
            C8898pG a12 = c9065qG.a();
            int a13 = a12.a();
            G.a aVar = (G.a) this.f48470o.remove(a13);
            aVar.a(c8103ka);
            this.f48469n.add(aVar);
            C4515j0 c4515j03 = (C4515j0) this.f48465j.remove(a13);
            if (!f48455t && c4515j03 != a12.getValue()) {
                throw new AssertionError();
            }
        }
        if (!dg3.isEmpty()) {
            C9065qG c9065qG2 = new C9065qG(((C8564nG) dg3.c()).f50573c);
            while (c9065qG2.hasNext()) {
                C8898pG a14 = c9065qG2.a();
                int a15 = a14.a();
                boolean z10 = f48455t;
                if (!z10 && this.f48465j.a(a15)) {
                    throw new AssertionError();
                }
                if (!z10 && this.f48470o.a(a15)) {
                    throw new AssertionError();
                }
                this.f48470o.a(a15, new G.a(a15, (C4515j0) a14.getValue(), c8103ka));
                this.f48465j.a(a15, (C4515j0) a14.getValue());
            }
        }
        this.f48467l = false;
    }

    public final AbstractC6668bv0 a(W5 w52, InterfaceC5415Ju0 interfaceC5415Ju0) {
        AbstractC10561zE abstractC10561zE;
        AbstractC6668bv0 abstractC6668bv0;
        if (interfaceC5415Ju0 instanceof C5299Hu0) {
            C5299Hu0 c5299Hu0 = (C5299Hu0) interfaceC5415Ju0;
            abstractC10561zE = c5299Hu0.f40910a;
            C8103ka c8103ka = (C8103ka) this.f48473r.get(abstractC10561zE);
            com.android.tools.r8.graph.M2 m22 = c5299Hu0.f40910a.f52627k;
            int i10 = InterfaceC8008jy.f49436a;
            abstractC6668bv0 = new C7167ev0(m22, c8103ka);
        } else if (interfaceC5415Ju0 instanceof C5357Iu0) {
            abstractC10561zE = ((C5357Iu0) interfaceC5415Ju0).f41248b;
            int i11 = InterfaceC8008jy.f49436a;
            abstractC6668bv0 = C7501gv0.f48381c;
        } else {
            throw new C5417Jv0("Unexpected type info: " + ((Object) interfaceC5415Ju0));
        }
        W5 b10 = abstractC10561zE.b();
        if (!f48455t && b10 == w52) {
            throw new AssertionError();
        }
        HashSet hashSet = new HashSet();
        Iterator it = (abstractC10561zE.k1() ? this.f48472q : (List) this.f48471p.get(abstractC10561zE.w0())).iterator();
        while (true) {
            if (it.hasNext()) {
                W5 b11 = ((QJ) it.next()).b();
                if (b11 == w52) {
                    break;
                }
                hashSet.add(b11);
            } else {
                C6286Yx0 c10 = C6286Yx0.c((Iterable) w52.u());
                while (c10.b()) {
                    W5 w53 = (W5) c10.c();
                    if (hashSet.contains(w53)) {
                        return null;
                    }
                    if (w53 != b10) {
                        c10.b((Iterable) w53.u());
                    }
                }
            }
        }
        return abstractC6668bv0;
    }

    public final C8103ka a(W5 w52) {
        return (C8103ka) this.f48459d.computeIfAbsent(w52, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C7543h9.b((W5) obj);
            }
        });
    }

    public final void a(W9 w92, AbstractC10561zE abstractC10561zE) {
        C9541t8 c9541t8 = this.f48474s;
        C9374s8 c9374s8 = (C9374s8) c9541t8.f52541a.f53018a.get(abstractC10561zE);
        if (c9374s8 != null) {
            c9541t8.f52542b.put(w92, c9374s8);
        }
        this.f48461f.add(w92);
    }
}
