package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.AbstractC4420e;
import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.D3;
import com.android.tools.r8.graph.F5;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC4895Av0;
import com.android.tools.r8.internal.AbstractC5167Fm0;
import com.android.tools.r8.internal.AbstractC5746Pm0;
import com.android.tools.r8.internal.AbstractC7224fE;
import com.android.tools.r8.internal.AbstractC7670hw;
import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C10394yE;
import com.android.tools.r8.internal.C4;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5576Mo0;
import com.android.tools.r8.internal.C5634No0;
import com.android.tools.r8.internal.C5731Pf0;
import com.android.tools.r8.internal.C5924So0;
import com.android.tools.r8.internal.C6382aB;
import com.android.tools.r8.internal.C6558bE;
import com.android.tools.r8.internal.C6600bY;
import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.internal.C7201f60;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C7405gK;
import com.android.tools.r8.internal.C7957jh;
import com.android.tools.r8.internal.C8391mE;
import com.android.tools.r8.internal.C8458mh;
import com.android.tools.r8.internal.C8625nh;
import com.android.tools.r8.internal.C8769oZ;
import com.android.tools.r8.internal.C8887pC0;
import com.android.tools.r8.internal.C9115qd0;
import com.android.tools.r8.internal.C9225rE;
import com.android.tools.r8.internal.C9278rc0;
import com.android.tools.r8.internal.C9389sD;
import com.android.tools.r8.internal.C9603tZ;
import com.android.tools.r8.internal.C9820uq;
import com.android.tools.r8.internal.C9951ve;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.internal.F1;
import com.android.tools.r8.internal.InterfaceC10118we;
import com.android.tools.r8.internal.M1;
import com.android.tools.r8.internal.N3;
import com.android.tools.r8.internal.OJ;
import com.android.tools.r8.internal.P3;
import com.android.tools.r8.internal.Q30;
import com.android.tools.r8.internal.QJ;
import com.android.tools.r8.internal.SD;
import com.android.tools.r8.internal.T3;
import com.android.tools.r8.internal.TU;
import com.android.tools.r8.internal.W5;
import com.android.tools.r8.internal.WX;
import com.android.tools.r8.internal.XJ;
import com.android.tools.r8.internal.Y5;
import com.android.tools.r8.internal.YV;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11382q1;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.Supplier;

public final class s0 {

    public static final boolean f54930j = true;

    public final H5 f54931a;

    public final C7215fB f54932b;

    public final int f54933c;

    public C10721m0 f54936f;

    public final t0 f54939i;

    public final C10696a f54934d = new C10696a();

    public final C10723n0 f54935e = new C10723n0();

    public final IdentityHashMap f54937g = new IdentityHashMap();

    public boolean f54938h = false;

    public s0(t0 t0Var, C7215fB c7215fB) {
        this.f54939i = t0Var;
        this.f54931a = c7215fB.j();
        this.f54932b = c7215fB;
        this.f54933c = Math.max(50, 10000 / c7215fB.f47897d.size());
        if (!f54930j && t0Var.f52646a.E().f50690i1) {
            throw new AssertionError();
        }
    }

    public static void a(List list, C10340xw0 c10340xw0) {
        if (c10340xw0.j()) {
            list.add(c10340xw0.l());
        }
    }

    public final void b() {
        this.f54937g.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                com.android.tools.r8.ir.optimize.s0.this.a((W5) obj, (Set) obj2);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x01b0, code lost:
    
        continue;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:291:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:423:0x05ef A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C9951ve c() {
        C10721m0 c10721m0;
        AbstractC10561zE h10;
        LinkedHashMap linkedHashMap;
        LinkedHashMap linkedHashMap2;
        LinkedHashSet linkedHashSet;
        LinkedHashMap linkedHashMap3;
        LinkedHashMap linkedHashMap4;
        LinkedHashMap linkedHashMap5;
        LinkedHashSet linkedHashSet2;
        LinkedHashMap linkedHashMap6;
        LinkedHashMap linkedHashMap7;
        LinkedHashSet linkedHashSet3;
        LinkedHashMap linkedHashMap8;
        LinkedHashMap linkedHashMap9;
        int i10;
        com.android.tools.r8.graph.F0 c10;
        LinkedHashMap linkedHashMap10;
        AbstractC5167Fm0 N10;
        H5 r10;
        C9115qd0 c9115qd0 = new C9115qd0();
        Iterator<W5> it = this.f54932b.f47897d.iterator();
        while (it.hasNext()) {
            W5 next = it.next();
            if (next.M() != 1) {
                c9115qd0.b(next.M(), next);
            }
        }
        AbstractC4895Av0 it2 = this.f54932b.B().iterator();
        while (it2.hasNext()) {
            W5 w52 = (W5) it2.next();
            if (!w52.B() || w52.x().M() != 1) {
                C10723n0 c10723n0 = this.f54935e;
                int i11 = this.f54933c;
                c10723n0.getClass();
                if (w52.u().isEmpty()) {
                    c10721m0 = new C10721m0(i11);
                } else {
                    List<W5> u10 = w52.u();
                    Iterator<W5> it3 = u10.iterator();
                    C10721m0 c10721m02 = new C10721m0(i11, (C10721m0) c10723n0.f54906a.get(it3.next()));
                    while (true) {
                        if (it3.hasNext()) {
                            C10721m0 c10721m03 = (C10721m0) c10723n0.f54906a.get(it3.next());
                            if (c10721m03 == null) {
                                c10721m0 = new C10721m0(i11);
                                break;
                            }
                            LinkedHashMap linkedHashMap11 = c10721m02.f54894a;
                            if (linkedHashMap11 == null || (linkedHashMap5 = c10721m03.f54894a) == null) {
                                c10721m02.f54894a = null;
                            } else {
                                C10721m0.a(linkedHashMap11, linkedHashMap5);
                            }
                            LinkedHashMap linkedHashMap12 = c10721m02.f54895b;
                            if (linkedHashMap12 == null || (linkedHashMap4 = c10721m03.f54895b) == null) {
                                c10721m02.f54895b = null;
                            } else {
                                C10721m0.a(linkedHashMap12, linkedHashMap4);
                            }
                            LinkedHashMap linkedHashMap13 = c10721m02.f54896c;
                            if (linkedHashMap13 == null || (linkedHashMap3 = c10721m03.f54896c) == null) {
                                c10721m02.f54896c = null;
                            } else {
                                C10721m0.a(linkedHashMap13, linkedHashMap3);
                            }
                            LinkedHashSet linkedHashSet4 = c10721m02.f54897d;
                            if (linkedHashSet4 == null || (linkedHashSet = c10721m03.f54897d) == null) {
                                c10721m02.f54897d = null;
                            } else {
                                C10721m0.a(linkedHashSet4, linkedHashSet);
                            }
                            LinkedHashMap linkedHashMap14 = c10721m02.f54898e;
                            if (linkedHashMap14 == null || (linkedHashMap2 = c10721m03.f54898e) == null) {
                                c10721m02.f54898e = null;
                            } else {
                                C10721m0.a(linkedHashMap14, linkedHashMap2);
                            }
                            LinkedHashMap linkedHashMap15 = c10721m02.f54899f;
                            if (linkedHashMap15 == null || (linkedHashMap = c10721m03.f54899f) == null) {
                                c10721m02.f54899f = null;
                            } else {
                                C10721m0.a(linkedHashMap15, linkedHashMap);
                            }
                            boolean z10 = C10721m0.f54893k;
                            if (!z10 && c10721m02.f54900g != null) {
                                throw new AssertionError();
                            }
                            if (!z10 && c10721m02.f54901h != null) {
                                throw new AssertionError();
                            }
                            if (!z10 && c10721m02.f54902i != null) {
                                throw new AssertionError();
                            }
                        } else {
                            for (W5 w53 : u10) {
                                if (w53.b(w52) && (h10 = w53.h()) != null) {
                                    if (h10.E1()) {
                                        AbstractC7670hw S10 = h10.S();
                                        C4554l1 field = S10.getField();
                                        if (S10 instanceof C6558bE) {
                                            o0 o0Var = new o0(field, S10.c().n().i());
                                            LinkedHashMap linkedHashMap16 = c10721m02.f54895b;
                                            if (linkedHashMap16 != null) {
                                                linkedHashMap16.remove(o0Var);
                                            }
                                            LinkedHashMap linkedHashMap17 = c10721m02.f54898e;
                                            if (linkedHashMap17 != null) {
                                                linkedHashMap17.remove(o0Var);
                                            }
                                            LinkedHashMap linkedHashMap18 = c10721m02.f54901h;
                                            if (linkedHashMap18 != null) {
                                                linkedHashMap18.remove(o0Var);
                                            }
                                        } else if (S10 instanceof C5576Mo0) {
                                            LinkedHashMap linkedHashMap19 = c10721m02.f54896c;
                                            if (linkedHashMap19 != null) {
                                                linkedHashMap19.remove(field);
                                            }
                                            LinkedHashMap linkedHashMap20 = c10721m02.f54899f;
                                            if (linkedHashMap20 != null) {
                                                linkedHashMap20.remove(field);
                                            }
                                            LinkedHashMap linkedHashMap21 = c10721m02.f54902i;
                                            if (linkedHashMap21 != null) {
                                                linkedHashMap21.remove(field);
                                            }
                                        }
                                    } else if (h10.I1()) {
                                        C9389sD W10 = h10.W();
                                        LinkedHashSet linkedHashSet5 = c10721m02.f54897d;
                                        if (linkedHashSet5 != null) {
                                            linkedHashSet5.remove(W10.f52317k);
                                        }
                                    }
                                }
                            }
                            c10721m0 = c10721m02;
                        }
                    }
                }
                this.f54936f = c10721m0;
                C10723n0 c10723n02 = this.f54935e;
                c10723n02.getClass();
                for (W5 w54 : w52.u()) {
                    if (w54.C()) {
                        C10721m0 c10721m04 = (C10721m0) c10723n02.f54906a.remove(w54);
                        if (c10721m04 != null) {
                            int c11 = c10721m04.c();
                            if (!C10723n0.f54905c && c11 <= 0) {
                                throw new AssertionError();
                            }
                            c10723n02.f54907b += c11;
                        } else {
                            continue;
                        }
                    } else {
                        int size = w54.f45289b.size() - w54.M();
                        while (true) {
                            if (size >= w54.f45289b.size()) {
                                break;
                            }
                            if (w54.f45289b.get(size) == w52) {
                                int b10 = c9115qd0.b(w54) - 1;
                                if (b10 == 0) {
                                    c9115qd0.c(w54);
                                    C10721m0 c10721m05 = (C10721m0) c10723n02.f54906a.remove(w54);
                                    if (c10721m05 != null) {
                                        int c12 = c10721m05.c();
                                        if (!C10723n0.f54905c && c12 <= 0) {
                                            throw new AssertionError();
                                        }
                                        c10723n02.f54907b += c12;
                                    } else {
                                        continue;
                                    }
                                } else {
                                    c9115qd0.b(b10, w54);
                                }
                            } else {
                                size++;
                            }
                        }
                    }
                }
                W5 w55 = null;
                do {
                    Y5 I10 = w52.I();
                    while (I10.hasNext()) {
                        AbstractC10561zE next2 = I10.next();
                        if (next2.m1()) {
                            if (next2.n1()) {
                                N3 y10 = next2.y();
                                C4798y c4798y = this.f54939i.f52646a;
                                H5 h52 = this.f54931a;
                                y10.getClass();
                                M1.a(c4798y, h52);
                                int v22 = y10.v2();
                                if (v22 < 0 || y10.b(v22) < 0) {
                                    this.f54936f.a();
                                }
                                if (!y10.u2().z() && !y10.d().z()) {
                                    AbstractC10715j0 a10 = AbstractC10715j0.a(y10.f42487k, y10.u2().i(), ((C10340xw0) y10.f54321f.get(1)).i());
                                    LinkedHashMap linkedHashMap22 = this.f54936f.f54894a;
                                    p0 p0Var = linkedHashMap22 != null ? (p0) linkedHashMap22.get(a10) : null;
                                    if (p0Var != null) {
                                        AbstractC8999pu0 u11 = y10.d().u();
                                        if (p0Var.a(this.f54939i.f52646a, u11).a(u11, this.f54939i.f52646a)) {
                                            p0Var.a(I10, y10);
                                        }
                                    } else {
                                        C10721m0 c10721m06 = this.f54936f;
                                        q0 q0Var = new q0(this, y10.d());
                                        c10721m06.b();
                                        if (c10721m06.f54894a == null) {
                                            c10721m06.f54894a = new LinkedHashMap();
                                        }
                                        c10721m06.f54894a.put(a10, q0Var);
                                    }
                                }
                            } else {
                                if (!f54930j && !next2.o1()) {
                                    throw new AssertionError();
                                }
                                T3 A10 = next2.A();
                                int b11 = A10.b(Integer.MAX_VALUE);
                                if (b11 == -1) {
                                    b11 = -1;
                                }
                                YV yv = A10.f44380k;
                                C4798y c4798y2 = this.f54939i.f52646a;
                                H5 h53 = this.f54931a;
                                if (A10.a(c4798y2, h53, M1.a(c4798y2, h53), C10394yE.f53978a)) {
                                    this.f54936f.a();
                                }
                                if (b11 < 0) {
                                    this.f54936f.a(yv);
                                } else {
                                    this.f54936f.a(yv, b11);
                                }
                                AbstractC10715j0 a11 = AbstractC10715j0.a(yv, A10.u2().i(), ((C10340xw0) A10.f54321f.get(1)).i());
                                q0 q0Var2 = new q0(this, A10.value());
                                C10721m0 c10721m07 = this.f54936f;
                                c10721m07.b();
                                if (c10721m07.f54894a == null) {
                                    c10721m07.f54894a = new LinkedHashMap();
                                }
                                c10721m07.f54894a.put(a11, q0Var2);
                            }
                        } else if (next2.E1()) {
                            C4554l1 field2 = next2.S().getField();
                            if (this.f54939i.f52646a.m()) {
                                D3.a<?> l10 = this.f54939i.f52646a.f().m().c(field2).l();
                                if (l10 != null) {
                                    c10 = com.android.tools.r8.graph.F0.a(l10.f36224c, l10.f36225d);
                                    if (c10 != null || AbstractC4458g.d(c10.d().f37202g.f37197c, 64)) {
                                        a();
                                    } else if (next2 instanceof C6558bE) {
                                        C6558bE c13 = next2.c();
                                        if (c13.d().z()) {
                                            C4798y c4798y3 = this.f54939i.f52646a;
                                            H5 h54 = this.f54931a;
                                            if (c13.a(c4798y3, h54, M1.a(c4798y3, h54), C10394yE.f53978a)) {
                                                this.f54936f.a();
                                            } else {
                                                this.f54936f.a(c10.getReference());
                                            }
                                        } else {
                                            o0 o0Var2 = new o0(c10.getReference(), c13.n().i());
                                            C10721m0 c10721m08 = this.f54936f;
                                            LinkedHashMap linkedHashMap23 = c10721m08.f54898e;
                                            p0 p0Var2 = linkedHashMap23 != null ? (p0) linkedHashMap23.get(o0Var2) : null;
                                            if (p0Var2 == null) {
                                                LinkedHashMap linkedHashMap24 = c10721m08.f54895b;
                                                p0Var2 = linkedHashMap24 != null ? (p0) linkedHashMap24.get(o0Var2) : null;
                                            }
                                            if (p0Var2 != null) {
                                                if (this.f54939i.f52646a.m() && (c10 instanceof F5)) {
                                                    C11382q1 a12 = this.f54939i.f52646a.a((F5) c10);
                                                    this.f54939i.f52646a.E();
                                                    if (a12.f57712m) {
                                                    }
                                                }
                                                p0Var2.a(I10, c13);
                                            } else {
                                                this.f54936f.a(o0Var2, new q0(this, c13.f54320e));
                                                C10721m0 c10721m09 = this.f54936f;
                                                C9389sD c9389sD = c10721m09.f54900g;
                                                c10721m09.f54900g = null;
                                                C4798y c4798y4 = this.f54939i.f52646a;
                                                H5 h55 = this.f54931a;
                                                if (c13.a(c4798y4, h55, M1.a(c4798y4, h55), C10394yE.f53978a)) {
                                                    this.f54936f.a();
                                                } else {
                                                    this.f54936f.a(c10.getReference());
                                                }
                                            }
                                        }
                                    } else if (next2.i()) {
                                        a(next2.m(), c10);
                                    } else if (next2 instanceof C5576Mo0) {
                                        AbstractC10561zE K02 = next2.K0();
                                        a(c10.p());
                                        if (K02.d().z()) {
                                            a(K02);
                                            C4798y c4798y5 = this.f54939i.f52646a;
                                            H5 h56 = this.f54931a;
                                            if (K02.a(c4798y5, h56, M1.a(c4798y5, h56), C10394yE.f53978a)) {
                                                this.f54936f.a();
                                            } else {
                                                C10721m0 c10721m010 = this.f54936f;
                                                C4554l1 reference = c10.getReference();
                                                LinkedHashMap linkedHashMap25 = c10721m010.f54902i;
                                                if (linkedHashMap25 != null) {
                                                    linkedHashMap25.remove(reference);
                                                }
                                            }
                                        } else {
                                            C10721m0 c10721m011 = this.f54936f;
                                            C4554l1 reference2 = c10.getReference();
                                            LinkedHashMap linkedHashMap26 = c10721m011.f54899f;
                                            p0 p0Var3 = linkedHashMap26 != null ? (p0) linkedHashMap26.get(reference2) : null;
                                            if (p0Var3 == null) {
                                                LinkedHashMap linkedHashMap27 = c10721m011.f54896c;
                                                p0Var3 = linkedHashMap27 != null ? (p0) linkedHashMap27.get(reference2) : null;
                                            }
                                            if (p0Var3 != null) {
                                                p0Var3.a(I10, K02);
                                            } else {
                                                a(K02);
                                                C4798y c4798y6 = this.f54939i.f52646a;
                                                H5 h57 = this.f54931a;
                                                if (K02.a(c4798y6, h57, M1.a(c4798y6, h57), C10394yE.f53978a)) {
                                                    this.f54936f.a();
                                                } else {
                                                    C10721m0 c10721m012 = this.f54936f;
                                                    C4554l1 reference3 = c10.getReference();
                                                    LinkedHashMap linkedHashMap28 = c10721m012.f54902i;
                                                    if (linkedHashMap28 != null) {
                                                        linkedHashMap28.remove(reference3);
                                                    }
                                                }
                                                q0 q0Var3 = new q0(this, K02.f54320e);
                                                if (c10.b(this.f54939i.f52646a)) {
                                                    C10721m0 c10721m013 = this.f54936f;
                                                    C4554l1 reference4 = c10.getReference();
                                                    c10721m013.b();
                                                    if (c10721m013.f54896c == null) {
                                                        c10721m013.f54896c = new LinkedHashMap();
                                                    }
                                                    c10721m013.f54896c.put(reference4, q0Var3);
                                                } else {
                                                    C10721m0 c10721m014 = this.f54936f;
                                                    C4554l1 reference5 = c10.getReference();
                                                    c10721m014.b();
                                                    if (!C10721m0.f54893k && (linkedHashMap10 = c10721m014.f54899f) != null && linkedHashMap10.containsKey(reference5)) {
                                                        throw new AssertionError();
                                                    }
                                                    if (c10721m014.f54899f == null) {
                                                        c10721m014.f54899f = new LinkedHashMap();
                                                    }
                                                    c10721m014.f54899f.put(reference5, q0Var3);
                                                }
                                                if (this.f54939i.f52646a.f().i() && (N10 = c10.d().f37207l.f().N()) != null) {
                                                    a(K02.d(), N10.U());
                                                }
                                                b(c10.p());
                                                C10721m0 c10721m015 = this.f54936f;
                                                C9389sD c9389sD2 = c10721m015.f54900g;
                                                c10721m015.f54900g = null;
                                            }
                                        }
                                    } else if (next2.e()) {
                                        a(next2.L0(), c10);
                                    }
                                }
                                c10 = null;
                                if (c10 != null) {
                                }
                                a();
                            } else {
                                if (field2.s0().a(this.f54931a.p())) {
                                    c10 = this.f54931a.getHolder().c(field2);
                                    if (c10 != null) {
                                    }
                                    a();
                                }
                                c10 = null;
                                if (c10 != null) {
                                }
                                a();
                            }
                        } else if (next2.I1()) {
                            C9389sD W11 = next2.W();
                            if (!f54930j && W11.d().w()) {
                                throw new AssertionError();
                            }
                            a(W11);
                            C4798y c4798y7 = this.f54939i.f52646a;
                            H5 h58 = this.f54931a;
                            M1.a(c4798y7, h58);
                            if (!C9389sD.f52316l && !c4798y7.m()) {
                                throw new AssertionError();
                            }
                            C4798y<C11245i> M10 = c4798y7.M();
                            com.android.tools.r8.graph.E0 g10 = c4798y7.g(W11.f52317k);
                            if (g10 == null || AbstractC4420e.a(g10, h58, M10, M10.f()).b() || W11.f52317k.a(c4798y7, h58)) {
                                this.f54936f.a();
                            }
                            if (a(W11.f52317k)) {
                                this.f54936f.f54900g = W11;
                            } else {
                                I10.i();
                                this.f54938h = true;
                            }
                        } else if (next2 instanceof WX) {
                            if (next2.X1()) {
                                a();
                            }
                        } else if (next2.O1()) {
                            a(next2.c0());
                        } else if (next2.R1()) {
                            C7405gK i02 = next2.i0();
                            if (this.f54939i.f52646a.f().h() && (r10 = this.f54939i.f52646a.f().l().f(i02.B2()).r()) != null) {
                                a(r10.p());
                                b(r10.p());
                            }
                            a();
                        } else if (next2.P1() || (next2 instanceof OJ)) {
                            a();
                        } else if (next2.c2()) {
                            C9603tZ w02 = next2.w0();
                            a(w02.u2());
                            b(w02.u2());
                            if (w02.u2().a(this.f54939i.f52646a, this.f54931a)) {
                                a();
                            }
                        } else {
                            boolean z11 = f54930j;
                            if (!z11 && next2.a(this.f54939i.f52646a, this.f54931a)) {
                                throw new AssertionError();
                            }
                            C4798y c4798y8 = this.f54939i.f52646a;
                            H5 h59 = this.f54931a;
                            if (next2.a(c4798y8, h59, M1.a(c4798y8, h59), C10394yE.f53978a)) {
                                this.f54936f.a();
                                C10721m0 c10721m016 = this.f54936f;
                                C9389sD c9389sD3 = c10721m016.f54900g;
                                c10721m016.f54900g = null;
                            }
                            if (!z11 && !next2.k1() && !(next2 instanceof P3) && !(next2 instanceof C4) && !next2.s1() && !next2.t1() && !(next2 instanceof C7957jh) && !(next2 instanceof C8458mh) && !(next2 instanceof C8625nh) && !next2.w1() && !(next2 instanceof C5731Pf0) && !next2.x1() && !next2.A1() && !(next2 instanceof C9820uq) && !next2.G1() && !next2.H1() && !(next2 instanceof C8391mE) && !(next2 instanceof XJ) && !next2.a2() && !(next2 instanceof C6600bY) && !(next2 instanceof C8769oZ) && !next2.b2() && !next2.g2() && !next2.l2() && !next2.m2() && !next2.n2() && !(next2 instanceof C9278rc0) && !(next2 instanceof C5924So0)) {
                                throw new AssertionError((Object) ("Unexpected instruction of type " + next2.getClass().getTypeName()));
                            }
                        }
                    }
                    if (w52.M() == 1 && w52.w().u().size() == 1) {
                        w52 = w52.w();
                    } else {
                        w55 = w52;
                        w52 = null;
                    }
                } while (w52 != null);
                if (!f54930j && w55 == null) {
                    throw new AssertionError();
                }
                C10723n0 c10723n03 = this.f54935e;
                C10721m0 c10721m017 = this.f54936f;
                boolean z12 = C10723n0.f54905c;
                if (z12) {
                    c10723n03.getClass();
                } else if (c10723n03.f54906a.containsKey(w55)) {
                    throw new AssertionError();
                }
                LinkedHashMap linkedHashMap29 = c10721m017.f54894a;
                if ((linkedHashMap29 != null && !linkedHashMap29.isEmpty()) || (((linkedHashSet2 = c10721m017.f54897d) != null && !linkedHashSet2.isEmpty()) || (((linkedHashMap6 = c10721m017.f54895b) != null && !linkedHashMap6.isEmpty()) || (((linkedHashMap7 = c10721m017.f54896c) != null && !linkedHashMap7.isEmpty()) || (((linkedHashSet3 = c10721m017.f54897d) != null && !linkedHashSet3.isEmpty()) || (((linkedHashMap8 = c10721m017.f54898e) != null && !linkedHashMap8.isEmpty()) || ((linkedHashMap9 = c10721m017.f54899f) != null && !linkedHashMap9.isEmpty()))))))) {
                    if (!w55.D()) {
                        c10721m017.a();
                        c10721m017.f54900g = null;
                    }
                    int c14 = c10721m017.c();
                    if (!z12 && c14 > c10721m017.f54903j) {
                        throw new AssertionError();
                    }
                    int i12 = c14 - c10723n03.f54907b;
                    if (i12 > 0) {
                        Iterator it4 = c10723n03.f54906a.entrySet().iterator();
                        while (true) {
                            i10 = 0;
                            if (!it4.hasNext() || i12 <= 0) {
                                break;
                            }
                            C10721m0 c10721m018 = (C10721m0) ((Map.Entry) it4.next()).getValue();
                            int c15 = c10721m018.c();
                            if (!C10723n0.f54905c && c15 <= 0) {
                                throw new AssertionError();
                            }
                            if (c15 <= i12) {
                                it4.remove();
                                c10723n03.f54907b += c15;
                                i12 -= c15;
                            } else {
                                c10721m018.a(i12);
                                c10723n03.f54907b += i12;
                                i12 = 0;
                            }
                        }
                        if (i12 > 0) {
                            c10721m017.a(i12);
                        }
                        if (!C10723n0.f54905c) {
                            int i13 = c10723n03.f54907b;
                            Iterator it5 = c10723n03.f54906a.values().iterator();
                            while (it5.hasNext()) {
                                int c16 = ((C10721m0) it5.next()).c();
                                if (!C10723n0.f54905c && c16 <= 0) {
                                    throw new AssertionError();
                                }
                                i10 += c16;
                            }
                            if (i13 != 10000 - i10) {
                                throw new AssertionError();
                            }
                        }
                    }
                    c10723n03.f54906a.put(w55, c10721m017);
                    int c17 = c10723n03.f54907b - c10721m017.c();
                    c10723n03.f54907b = c17;
                    if (!C10723n0.f54905c && c17 < 0) {
                        throw new AssertionError();
                    }
                }
            }
        }
        b();
        final ArrayList arrayList = new ArrayList(this.f54934d.f54829b.size());
        this.f54934d.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.ir.optimize.s0.a(List.this, (C10340xw0) obj);
            }
        });
        arrayList.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.ir.optimize.s0.this.a((C7201f60) obj);
            }
        });
        C10696a c10696a = this.f54934d;
        C4798y c4798y9 = this.f54939i.f52646a;
        C7215fB c7215fB = this.f54932b;
        c10696a.getClass();
        c10696a.a(c4798y9, c7215fB, C6628bi.b());
        if (this.f54938h) {
            this.f54932b.x();
        }
        return this.f54938h ? InterfaceC10118we.f53548b : InterfaceC10118we.f53547a;
    }

    public final void b(M2 m22) {
        C9389sD c9389sD = this.f54936f.f54900g;
        if (c9389sD == null || !c9389sD.f52317k.a(m22)) {
            return;
        }
        ((Set) this.f54937g.computeIfAbsent(c9389sD.b(), TU.a(new C8887pC0()))).add(c9389sD);
    }

    public final void a(C7201f60 c7201f60) {
        C10696a c10696a = this.f54934d;
        c7201f60.getClass();
        c7201f60.a((C6382aB) null, c10696a, C6628bi.b(), EnumC6871d70.f47287c);
    }

    public final void a(final W5 w52, Set set) {
        if (!f54930j && !set.stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return com.android.tools.r8.ir.optimize.s0.a(W5.this, (AbstractC10561zE) obj);
            }
        })) {
            throw new AssertionError();
        }
        Y5 I10 = w52.I();
        while (I10.hasNext()) {
            AbstractC10561zE next = I10.next();
            if (!f54930j && next.U1()) {
                throw new AssertionError();
            }
            if (set.contains(next)) {
                I10.i();
                this.f54938h = true;
                set.remove(next);
                if (set.isEmpty()) {
                    return;
                }
            }
        }
    }

    public static boolean a(W5 w52, AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.b() == w52;
    }

    public final void a(final QJ qj2) {
        if (!this.f54939i.f52646a.f().i()) {
            a();
            return;
        }
        final C4798y<C11245i> M10 = this.f54939i.f52646a.M();
        com.android.tools.r8.graph.H0 e10 = qj2.e(this.f54939i.f52646a, this.f54931a);
        if (e10 != null && e10.d().j1()) {
            C4516j1 d10 = e10.d();
            d10.L0();
            AbstractC7224fE a10 = d10.f37320m.a(qj2);
            if (a10.e()) {
                a();
            }
            a10.b().b(this.f54939i.f52646a, new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    com.android.tools.r8.ir.optimize.s0.this.a(M10, qj2, (com.android.tools.r8.graph.F0) obj, (SD) obj2);
                }
            });
            return;
        }
        a();
    }

    public final void a(C4798y c4798y, QJ qj2, com.android.tools.r8.graph.F0 f02, SD sd2) {
        f02.getClass();
        if (f02 instanceof F5) {
            F5 W10 = f02.W();
            if (!this.f54939i.f52646a.a(W10).a(c4798y, W10)) {
                return;
            }
        }
        if (sd2.s()) {
            C10340xw0 b10 = qj2.b(sd2.q().f43848a);
            o0 o0Var = new o0(f02.getReference(), qj2.C2().i());
            if (f02.b(c4798y)) {
                C10721m0 c10721m0 = this.f54936f;
                q0 q0Var = new q0(this, b10);
                c10721m0.b();
                if (c10721m0.f54895b == null) {
                    c10721m0.f54895b = new LinkedHashMap();
                }
                c10721m0.f54895b.put(o0Var, q0Var);
                return;
            }
            this.f54936f.a(o0Var, new q0(this, b10));
            return;
        }
        if (sd2.r()) {
            AbstractC5746Pm0 w10 = sd2.w();
            if (w10.i0() && w10.b(c4798y, this.f54931a)) {
                o0 o0Var2 = new o0(f02.getReference(), qj2.C2().i());
                if (f02.b(c4798y)) {
                    C10721m0 c10721m02 = this.f54936f;
                    r0 r0Var = new r0(this, w10);
                    c10721m02.b();
                    if (c10721m02.f54895b == null) {
                        c10721m02.f54895b = new LinkedHashMap();
                    }
                    c10721m02.f54895b.put(o0Var2, r0Var);
                    return;
                }
                this.f54936f.a(o0Var2, new r0(this, w10));
                return;
            }
            return;
        }
        if (!f54930j && !sd2.h()) {
            throw new AssertionError();
        }
    }

    public final boolean a(M2 m22) {
        C10721m0 c10721m0 = this.f54936f;
        c10721m0.b();
        if (c10721m0.f54897d == null) {
            c10721m0.f54897d = new LinkedHashSet();
        }
        return c10721m0.f54897d.add(m22);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(C9225rE c9225rE, com.android.tools.r8.graph.F0 f02) {
        this.f54936f.b(f02.getReference());
        C4798y c4798y = this.f54939i.f52646a;
        H5 h52 = this.f54931a;
        c9225rE.getClass();
        if (c9225rE.a(c4798y, h52, M1.a(c4798y, h52), C10394yE.f53978a)) {
            this.f54936f.a();
        }
        o0 o0Var = new o0(f02.getReference(), c9225rE.n().i());
        q0 q0Var = new q0(this, c9225rE.value());
        if (f02.b(this.f54939i.f52646a)) {
            if (!f54930j && f02.d().f37202g.e() && !this.f54931a.d().j1() && !this.f54939i.f52648c.L().f50768b) {
                throw new AssertionError();
            }
            C10721m0 c10721m0 = this.f54936f;
            c10721m0.b();
            if (c10721m0.f54895b == null) {
                c10721m0.f54895b = new LinkedHashMap();
            }
            c10721m0.f54895b.put(o0Var, q0Var);
        } else {
            this.f54936f.a(o0Var, q0Var);
        }
        C10721m0 c10721m02 = this.f54936f;
        c10721m02.b();
        if (c10721m02.f54901h == null) {
            c10721m02.f54901h = new LinkedHashMap();
        }
        C9225rE c9225rE2 = (C9225rE) c10721m02.f54901h.put(o0Var, c9225rE);
        if (c9225rE2 != null) {
            ((Set) this.f54937g.computeIfAbsent(c9225rE2.b(), TU.a(new C8887pC0()))).add(c9225rE2);
        }
        C10721m0 c10721m03 = this.f54936f;
        C9389sD c9389sD = c10721m03.f54900g;
        c10721m03.f54900g = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(C5634No0 c5634No0, final com.android.tools.r8.graph.F0 f02) {
        LinkedHashMap linkedHashMap;
        a(f02.p());
        a(c5634No0);
        C4798y c4798y = this.f54939i.f52646a;
        H5 h52 = this.f54931a;
        if (c5634No0.a(c4798y, h52, M1.a(c4798y, h52), C10394yE.f53978a)) {
            this.f54936f.a();
        }
        q0 q0Var = new q0(this, c5634No0.value());
        if (f02.b(this.f54939i.f52646a)) {
            if (!f54930j && !this.f54939i.f52646a.a(new Supplier() {
                @Override
                public final Object get() {
                    return com.android.tools.r8.ir.optimize.s0.this.a(f02);
                }
            })) {
                throw new AssertionError();
            }
            C10721m0 c10721m0 = this.f54936f;
            C4554l1 reference = f02.getReference();
            c10721m0.b();
            if (c10721m0.f54896c == null) {
                c10721m0.f54896c = new LinkedHashMap();
            }
            c10721m0.f54896c.put(reference, q0Var);
        } else {
            C10721m0 c10721m02 = this.f54936f;
            C4554l1 reference2 = f02.getReference();
            c10721m02.b();
            if (!C10721m0.f54893k && (linkedHashMap = c10721m02.f54899f) != null && linkedHashMap.containsKey(reference2)) {
                throw new AssertionError();
            }
            if (c10721m02.f54899f == null) {
                c10721m02.f54899f = new LinkedHashMap();
            }
            c10721m02.f54899f.put(reference2, q0Var);
            C10721m0 c10721m03 = this.f54936f;
            C4554l1 reference3 = f02.getReference();
            c10721m03.b();
            if (c10721m03.f54902i == null) {
                c10721m03.f54902i = new LinkedHashMap();
            }
            C5634No0 c5634No02 = (C5634No0) c10721m03.f54902i.put(reference3, c5634No0);
            if (c5634No02 != null) {
                ((Set) this.f54937g.computeIfAbsent(c5634No02.b(), TU.a(new C8887pC0()))).add(c5634No02);
            }
        }
        b(f02.p());
        C10721m0 c10721m04 = this.f54936f;
        C9389sD c9389sD = c10721m04.f54900g;
        c10721m04.f54900g = null;
    }

    public final Boolean a(com.android.tools.r8.graph.F0 f02) {
        return Boolean.valueOf(!f02.d().f37202g.e() || this.f54931a.d().f1());
    }

    public final void a(final C10340xw0 c10340xw0, Q30 q30) {
        final C4798y<C11245i> M10 = this.f54939i.f52646a.M();
        q30.a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                com.android.tools.r8.ir.optimize.s0.this.a(M10, c10340xw0, (C4554l1) obj, (com.android.tools.r8.internal.F1) obj2);
            }
        });
    }

    public final void a(C4798y c4798y, C10340xw0 c10340xw0, C4554l1 c4554l1, F1 f12) {
        if (f12.r()) {
            com.android.tools.r8.graph.F0 a10 = c4798y.a(c4554l1);
            boolean z10 = F5.f36288f;
            F5 W10 = a10 != null ? a10.W() : null;
            if (W10 == null || this.f54939i.f52646a.a(W10).a(c4798y, W10)) {
                AbstractC5746Pm0 w10 = f12.w();
                if (w10.i0() && w10.b(c4798y, this.f54931a)) {
                    C10721m0 c10721m0 = this.f54936f;
                    o0 o0Var = new o0(c4554l1, c10340xw0);
                    r0 r0Var = new r0(this, w10);
                    c10721m0.b();
                    if (c10721m0.f54895b == null) {
                        c10721m0.f54895b = new LinkedHashMap();
                    }
                    c10721m0.f54895b.put(o0Var, r0Var);
                }
            }
        }
    }

    public final void a() {
        C10721m0 c10721m0 = this.f54936f;
        c10721m0.f54894a = null;
        c10721m0.f54898e = null;
        c10721m0.f54899f = null;
        c10721m0.a();
        C10721m0 c10721m02 = this.f54936f;
        C9389sD c9389sD = c10721m02.f54900g;
        c10721m02.f54900g = null;
    }

    public final void a(AbstractC10561zE abstractC10561zE) {
        if (!f54930j && !abstractC10561zE.I1() && !abstractC10561zE.h2()) {
            throw new AssertionError();
        }
        if (abstractC10561zE.e()) {
            if (abstractC10561zE.a(this.f54939i.f52646a, this.f54931a)) {
                C10721m0 c10721m0 = this.f54936f;
                c10721m0.f54899f = null;
                c10721m0.a();
                return;
            } else {
                C10721m0 c10721m02 = this.f54936f;
                C4554l1 field = abstractC10561zE.L0().getField();
                LinkedHashMap linkedHashMap = c10721m02.f54899f;
                if (linkedHashMap != null) {
                    linkedHashMap.remove(field);
                    return;
                }
                return;
            }
        }
        if (!abstractC10561zE.I1() && !(abstractC10561zE instanceof C5576Mo0)) {
            if (abstractC10561zE instanceof C6558bE) {
                throw new C5417Jv0();
            }
        } else if (abstractC10561zE.a(this.f54939i.f52646a, this.f54931a)) {
            C10721m0 c10721m03 = this.f54936f;
            c10721m03.f54899f = null;
            c10721m03.a();
        }
    }
}
