package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import com.android.tools.r8.ir.optimize.C10711h0;
import com.android.tools.r8.ir.optimize.C10732x;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

public final class C9550tB extends AbstractC8215lB {

    public static final boolean f52555d = true;

    public final com.android.tools.r8.ir.optimize.F f52556b;

    public final C8570nJ f52557c;

    public C9550tB(C4798y c4798y, com.android.tools.r8.ir.optimize.F f10) {
        super(c4798y);
        this.f52556b = f10;
        this.f52557c = c4798y.E();
    }

    /* JADX WARN: Removed duplicated region for block: B:313:0x03cd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:324:0x0307 A[SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC4497i0 a(C7215fB c7215fB, C9875v8 c9875v8, C8659ns0 c8659ns0, String str) {
        int i10;
        com.android.tools.r8.graph.A2 a22;
        C6899dH c6899dH;
        Iterator<W5> it;
        if (this.f52557c.i()) {
            C5621Ni.a(this.f49905a);
        }
        c7215fB.v();
        C8570nJ c8570nJ = this.f52557c;
        c8570nJ.getClass();
        C7297fj c7297fj = null;
        if (c8570nJ.a(C2.L)) {
            C4724u1 m10 = c8570nJ.m();
            Z5 u10 = c7215fB.u();
            while (u10.hasNext()) {
                W5 next = u10.next();
                Y5 I10 = next.I();
                while (I10.hasNext()) {
                    AbstractC10561zE next2 = I10.next();
                    if (next2.l1() || (next2 instanceof C7268fZ)) {
                        ArrayList arrayList = next2.f54321f;
                        int size = arrayList.size();
                        int i11 = 0;
                        while (i11 < size) {
                            Object obj = arrayList.get(i11);
                            i11++;
                            C10340xw0 c10340xw0 = (C10340xw0) obj;
                            if (!c10340xw0.j() && c10340xw0.f53886c.d2() && c10340xw0.f53886c.z0().f53402l == T10.f44372h) {
                                C7405gK c7405gK = new C7405gK(m10.f37901L4.f36435c, null, new C5920Sm0(c10340xw0));
                                c7405gK.b(next2.getPosition());
                                I10.previous();
                                W5 a10 = next.z() ? I10.a(c7215fB, u10) : next;
                                if (a10 != next) {
                                    Y5 b10 = next.b(next.l().size());
                                    b10.previous();
                                    b10.add(c7405gK);
                                    I10 = a10.I();
                                    next = a10;
                                } else {
                                    I10.add(c7405gK);
                                }
                                AbstractC10561zE next3 = I10.next();
                                if (!com.android.tools.r8.ir.optimize.w0.f54956a && next3 != next2) {
                                    throw new AssertionError();
                                }
                            }
                        }
                    }
                }
            }
        }
        C4798y c4798y = this.f49905a;
        C8570nJ E10 = c4798y.E();
        E10.getClass();
        int i12 = 1;
        if (E10.a(C2.N)) {
            Iterator<W5> it2 = c7215fB.f47897d.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (it2.next().z()) {
                        break;
                    }
                } else {
                    AbstractC10561zE abstractC10561zE = null;
                    int i13 = 0;
                    for (AbstractC10561zE abstractC10561zE2 : c7215fB.q()) {
                        if (abstractC10561zE2.P1() && abstractC10561zE2.e0().B2() == c7215fB.v().getReference()) {
                            i13++;
                            abstractC10561zE = abstractC10561zE2;
                        }
                    }
                    if (i13 > 4) {
                        if (!com.android.tools.r8.ir.optimize.w0.f54956a && abstractC10561zE == null) {
                            throw new AssertionError();
                        }
                        W5 b11 = abstractC10561zE.b();
                        b11.getClass();
                        W5 b12 = new Y5(b11, abstractC10561zE).b(c7215fB, 1);
                        com.android.tools.r8.graph.M2 m22 = c4798y.b().f38173v3;
                        B60 position = abstractC10561zE.getPosition();
                        AbstractC8999pu0 a11 = AbstractC8999pu0.a(m22, C8854p10.b(), (C4798y<?>) c4798y);
                        W5 w52 = new W5(c7215fB.f47902i);
                        C6600bY c6600bY = new C6600bY(c7215fB.a(a11, (C4515j0) null), m22, c4798y.E());
                        c6600bY.b(position);
                        C5698Or0 c5698Or0 = new C5698Or0(c6600bY.f54320e);
                        c5698Or0.b(position);
                        w52.f45293f.a(c6600bY, null);
                        w52.f45293f.a(c5698Or0, null);
                        w52.a((C6382aB) null);
                        w52.d(c7215fB.f47899f.a());
                        c7215fB.f47897d.add(w52);
                        b12.a(w52, m22);
                        c7215fB.x();
                    }
                }
            }
        }
        if (com.android.tools.r8.ir.optimize.w0.a(this.f49905a, c7215fB)) {
            this.f52556b.a(c7215fB, c8659ns0);
        }
        C4798y c4798y2 = this.f49905a;
        C8570nJ E11 = c4798y2.E();
        E11.getClass();
        if (E11.a(C2.K) && c7215fB.f47902i.e()) {
            new K7(c4798y2);
            Z5 u11 = c7215fB.u();
            boolean z10 = false;
            while (u11.hasNext()) {
                W5 next4 = u11.next();
                if (!com.android.tools.r8.ir.optimize.w0.f54956a && next4.i().k2()) {
                    throw new AssertionError();
                }
                if (next4.i().M1()) {
                    C9569tI Z10 = next4.i().Z();
                    if (Z10.f52578o[Z10.v2() - 1] == Integer.MAX_VALUE) {
                        if (Z10.v2() == 1) {
                            K7.a(c7215fB, next4, Z10);
                        } else {
                            CH ch2 = new CH(Z10.v2() - 1);
                            for (int i14 = 0; i14 < Z10.v2() - 1; i14++) {
                                ch2.add(Z10.f52578o[i14]);
                            }
                            CH ch3 = new CH(1);
                            ch3.add(Integer.MAX_VALUE);
                            int i15 = AbstractC7552hC.f48487c;
                            K7.a(c7215fB, u11, next4, Z10, new C5920Sm0(ch2), ch3);
                        }
                        z10 = true;
                    }
                }
            }
            if (z10) {
                c7215fB.z();
                c7215fB.x();
            }
        }
        com.android.tools.r8.ir.optimize.w0.a(c7215fB, this.f52557c);
        com.android.tools.r8.ir.optimize.w0.b(c7215fB, this.f52557c);
        C8570nJ c8570nJ2 = this.f52557c;
        if (!C8570nJ.f50581h2 && !c8570nJ2.P()) {
            throw new AssertionError();
        }
        if (!c8570nJ2.f50690i1 && c8570nJ2.a(C2.M)) {
            Iterator<W5> it3 = c7215fB.f47897d.iterator();
            while (it3.hasNext()) {
                W5 next5 = it3.next();
                if (next5.z()) {
                    for (W5 w53 : next5.j().a()) {
                        W5 g10 = w53.g();
                        if (g10 != null && g10.u().size() > 1 && g10.o().size() > 1 && g10.p().size() > 1) {
                            C7854j2 c7854j2 = new C7854j2();
                            c7854j2.b(w53.t());
                            w53.l().a(c7854j2);
                        }
                    }
                }
            }
        }
        C8570nJ c8570nJ3 = this.f52557c;
        C4798y<?> c4798y3 = this.f49905a;
        c8570nJ3.getClass();
        if (c8570nJ3.a(C2.U)) {
            C4724u1 b13 = c4798y3.b();
            C7549hB p10 = c7215fB.p();
            while (p10.hasNext()) {
                AbstractC10561zE next6 = p10.next();
                next6.getClass();
                if (next6 instanceof TJ) {
                    TJ d02 = next6.d0();
                    com.android.tools.r8.graph.A2 B22 = d02.B2();
                    com.android.tools.r8.graph.M2 s02 = B22.s0();
                    com.android.tools.r8.graph.E0 holder = c7215fB.j().getHolder();
                    if (s02 != holder.f36245e) {
                        holder = c4798y3.a(s02);
                    }
                    if (holder == null || holder.isInterface()) {
                        C4724u1.c cVar = b13.f37859F4;
                        cVar.getClass();
                        byte b14 = B22.t0().f36562f[0];
                        if (b14 == 101) {
                            if (B22.c(cVar.f38225c)) {
                                a22 = cVar.f38225c;
                                if (a22 != null) {
                                }
                            }
                            a22 = null;
                            if (a22 != null) {
                            }
                        } else if (b14 == 110) {
                            if (B22.c(cVar.f38231i)) {
                                a22 = cVar.f38231i;
                            } else {
                                if (B22.c(cVar.f38232j)) {
                                    a22 = cVar.f38232j;
                                }
                                a22 = null;
                            }
                            if (a22 != null) {
                            }
                        } else if (b14 == 116) {
                            if (B22.c(cVar.f38230h)) {
                                a22 = cVar.f38230h;
                                if (a22 != null) {
                                }
                            }
                            a22 = null;
                            if (a22 != null) {
                            }
                        } else if (b14 == 119) {
                            if (B22.c(cVar.f38233k)) {
                                a22 = cVar.f38233k;
                            } else if (B22.c(cVar.f38234l)) {
                                a22 = cVar.f38234l;
                            } else {
                                if (B22.c(cVar.f38235m)) {
                                    a22 = cVar.f38235m;
                                }
                                a22 = null;
                            }
                            if (a22 != null) {
                            }
                        } else if (b14 != 103) {
                            if (b14 == 104 && B22.c(cVar.f38227e)) {
                                a22 = cVar.f38227e;
                                if (a22 != null) {
                                    com.android.tools.r8.graph.E0 g11 = c4798y3.g(B22.s0());
                                    if ((g11 != null ? g11.a(B22) : null) == null) {
                                        p10.a(new C8405mK(a22, d02.d(), d02.f54321f), (C10696a) null);
                                    }
                                }
                            }
                            a22 = null;
                            if (a22 != null) {
                            }
                        } else {
                            if (B22.c(cVar.f38226d)) {
                                a22 = cVar.f38226d;
                                if (a22 != null) {
                                }
                            }
                            a22 = null;
                            if (a22 != null) {
                            }
                        }
                    }
                }
            }
            i10 = 0;
            if (!com.android.tools.r8.ir.optimize.w0.f54956a && !c7215fB.b(c4798y3)) {
                throw new AssertionError();
            }
        } else {
            i10 = 0;
        }
        com.android.tools.r8.ir.optimize.w0.a(c7215fB, this.f52557c, this.f49905a);
        boolean z11 = f52555d;
        if (!z11 && !c7215fB.b(this.f49905a)) {
            throw new AssertionError();
        }
        c7215fB.C();
        if (!z11) {
            this.f52556b.b(c7215fB);
        }
        c8659ns0.b("Allocate registers");
        C8421mS c8421mS = new C8421mS(this.f49905a, c7215fB, c8659ns0);
        c8421mS.b();
        c8659ns0.d();
        C8328lt0 c8328lt0 = new C8328lt0(this.f49905a);
        c8659ns0.b("Peephole optimize");
        for (int i16 = i10; i16 < 2; i16++) {
            c8328lt0.a(c7215fB, c8659ns0);
            C10711h0.a((C4798y<?>) this.f49905a, c7215fB, c8421mS);
        }
        c8659ns0.d();
        c8659ns0.b("Clean up");
        boolean z12 = C10732x.f54957b;
        if (c8421mS.f50292a.E().f50690i1) {
            Iterator<W5> it4 = c7215fB.f47897d.iterator();
            while (it4.hasNext()) {
                W5 next7 = it4.next();
                if (next7.v().isEmpty() && (c6899dH = next7.f45288a) != null && !c6899dH.isEmpty()) {
                    Y5 it5 = next7.l().iterator();
                    C7297fj c7297fj2 = c7297fj;
                    while (it5.hasNext()) {
                        AbstractC10561zE next8 = it5.next();
                        if (next8.f54322g != -1 || c7297fj2 != null) {
                            break;
                        }
                        c7297fj2 = next8.M();
                    }
                    if (c7297fj2 != null) {
                        C6899dH c6899dH2 = new C6899dH(c6899dH.f47346h);
                        c6899dH2.putAll(c6899dH);
                        if (c7297fj2.a(c6899dH2)) {
                            Set c10 = AbstractC5513Ll0.c();
                            C6901dI c6901dI = new C6901dI(16);
                            C6901dI c6901dI2 = new C6901dI(16);
                            AbstractC10561zE b15 = next7.f45293f.b();
                            int i17 = i10;
                            while (b15 != null) {
                                if (b15 == c7297fj2) {
                                    i17 = i12;
                                }
                                if (i17 != 0 && b15.Y1()) {
                                    C6433aY p02 = b15.p0();
                                    int b16 = c8421mS.b(p02.u2(), p02.f54322g);
                                    int b17 = c8421mS.b(p02.v2(), p02.f54322g);
                                    if (!c6901dI.h(b16) && !c6901dI2.h(b17)) {
                                        c10.add(p02);
                                        Iterator<W5> it6 = it4;
                                        b15 = b15.b1();
                                        it4 = it6;
                                        i12 = 1;
                                    }
                                }
                                if (b15.d() != null && b15.d().T()) {
                                    int b18 = c8421mS.b(b15.d(), b15.f54322g);
                                    c6901dI.remove(b18);
                                    c6901dI2.add(b18);
                                }
                                if (!b15.f54321f.isEmpty()) {
                                    ArrayList arrayList2 = b15.f54321f;
                                    int size2 = arrayList2.size();
                                    int i18 = 0;
                                    while (i18 < size2) {
                                        Object obj2 = arrayList2.get(i18);
                                        i18++;
                                        C10340xw0 c10340xw02 = (C10340xw0) obj2;
                                        if (c10340xw02.T()) {
                                            it = it4;
                                            c6901dI.add(c8421mS.b(c10340xw02, b15.f54322g));
                                        } else {
                                            it = it4;
                                        }
                                        it4 = it;
                                    }
                                }
                                Iterator<W5> it62 = it4;
                                b15 = b15.b1();
                                it4 = it62;
                                i12 = 1;
                            }
                            Iterator<W5> it7 = it4;
                            if (!c10.isEmpty()) {
                                C7561hF c7561hF = new C7561hF(16);
                                C7561hF c7561hF2 = new C7561hF(16);
                                Y5 I11 = next7.I();
                                C7561hF c7561hF3 = c7561hF;
                                C7561hF c7561hF4 = c7561hF2;
                                while (I11.hasNext()) {
                                    AbstractC10561zE next9 = I11.next();
                                    if (next9.Y1()) {
                                        C6433aY p03 = next9.p0();
                                        int b19 = c8421mS.b(p03.u2(), p03.f54322g);
                                        if (c10.contains(p03)) {
                                            int b20 = c8421mS.b(p03.v2(), p03.f54322g);
                                            c7561hF4.b(b19, ((Integer) c7561hF4.getOrDefault(Integer.valueOf(b20), Integer.valueOf(b20))).intValue());
                                            I11.s();
                                        } else {
                                            c7561hF4.remove(b19);
                                        }
                                    } else if (next9 instanceof C7297fj) {
                                        C7297fj M10 = next9.M();
                                        C10732x.a(c7561hF3, M10.f48076k);
                                        C10732x.a(c7561hF4, M10.f48077l);
                                        C7561hF c7561hF5 = new C7561hF(c7561hF4.f48514i);
                                        c7561hF5.putAll(c7561hF4);
                                        c7561hF3 = c7561hF4;
                                        c7561hF4 = c7561hF5;
                                    }
                                }
                            }
                            it4 = it7;
                            i12 = 1;
                            c7297fj = null;
                            i10 = 0;
                        }
                    }
                }
            }
        }
        c8328lt0.a(c7215fB, c8659ns0);
        c8659ns0.d();
        return new C5458Kn(c7215fB, c9875v8, c8421mS, this.f52557c, c7215fB.f47895b).b();
    }
}
