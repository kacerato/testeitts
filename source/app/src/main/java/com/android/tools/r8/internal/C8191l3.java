package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C8191l3 {

    public static final boolean f49869f = true;

    public final C4798y f49870a;

    public Set f49871b;

    public C8859p3 f49872c;

    public C5122Et f49873d;

    public D3 f49874e;

    public C8191l3(C4798y c4798y) {
        boolean z10 = f49869f;
        if (!z10 && !c4798y.m()) {
            throw new AssertionError();
        }
        if (!z10 && !c4798y.E().T()) {
            throw new AssertionError();
        }
        if (!z10) {
            C8570nJ.b c10 = c4798y.E().c();
            if (!((C8570nJ.this.T() && C8570nJ.this.W()) ? c10.f50743a : false)) {
                throw new AssertionError();
            }
        }
        this.f49870a = c4798y;
    }

    public static C5058Dq a(Set set) {
        return new C5058Dq(new HashSet());
    }

    public final void a(ExecutorService executorService, C8659ns0 c8659ns0) {
        if (!f49869f && this.f49870a.f38408a.g().b()) {
            throw new AssertionError();
        }
        c8659ns0.b("Argument propagator");
        c8659ns0.b("Initialize code scanner");
        this.f49874e = new D3(this.f49870a);
        this.f49871b = ConcurrentHashMap.newKeySet();
        C5122Et c5122Et = new C5122Et(this.f49870a);
        this.f49873d = c5122Et;
        this.f49872c = new C8859p3(this.f49870a, c5122Et, this.f49874e);
        C4798y c4798y = this.f49870a;
        final C4387c4 a10 = C4387c4.a(c4798y, ((C4514j) c4798y.f()).d());
        C5467Kr0.a(new C6541b80(this.f49870a, a10).a(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8191l3.this.a(a10, (Set) obj);
            }
        }, this.f49870a.E().G(), executorService);
        c8659ns0.d();
        c8659ns0.d();
        C8570nJ.p H10 = this.f49870a.H();
        final C8859p3 c8859p3 = this.f49872c;
        Objects.requireNonNull(c8859p3);
        InterfaceC6160Wr0 interfaceC6160Wr0 = new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C8859p3.this.a((C5629Nm) obj);
            }
        };
        C5629Nm a11 = H10.a();
        if (a11 != null) {
            interfaceC6160Wr0.a(a11);
        }
    }

    public final void a(C4387c4 c4387c4, Set set) {
        C4798y c4798y = this.f49870a;
        C8859p3 c8859p3 = this.f49872c;
        G3 g32 = new G3(c4798y, c4387c4, c8859p3.f51424h, c8859p3.f51426j);
        g32.a(set);
        g32.b(set);
        C9842ux0 c9842ux0 = new C9842ux0(this.f49870a, c4387c4);
        C8859p3 c8859p32 = this.f49872c;
        c9842ux0.a(set);
        ArrayList arrayList = new ArrayList(c9842ux0.f53647h.f45165b.size() + c9842ux0.f53646g.f45165b.size());
        Iterator it = AbstractC6114Vx.b(c9842ux0.f53646g, c9842ux0.f53647h).iterator();
        while (true) {
            GK gk2 = (GK) it;
            if (gk2.hasNext()) {
                arrayList.add(((com.android.tools.r8.graph.H5) gk2.next()).getReference());
            } else {
                synchronized (c8859p32) {
                    c8859p32.f51421e.addAll(arrayList);
                }
                c8859p32.a(c9842ux0.f53648i);
                this.f49873d.a(set);
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:92:0x0191, code lost:
    
        if (r5.d().e0() == false) goto L77;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:85:0x015c. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v21, types: [com.android.tools.r8.graph.b1, com.android.tools.r8.graph.E0] */
    /* JADX WARN: Type inference failed for: r5v9, types: [com.android.tools.r8.graph.b1, com.android.tools.r8.graph.E0] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(final com.android.tools.r8.graph.H5 h52, C7215fB c7215fB, AbstractC6931dX abstractC6931dX, C8659ns0 c8659ns0) {
        Object z00;
        if (this.f49872c != null) {
            if (!f49869f && !abstractC6931dX.f()) {
                throw new AssertionError();
            }
            M1 m12 = new M1() {
                @Override
                public final F1 a(C10340xw0 c10340xw0) {
                    return C8191l3.this.a(h52, c10340xw0);
                }
            };
            C4798y c4798y = this.f49870a;
            C8859p3 c8859p3 = this.f49872c;
            S50 s50 = new S50(c4798y, c7215fB, c8859p3.f51419c, c8859p3.f51420d);
            C8692o3 c8692o3 = new C8692o3(c8859p3, m12, c7215fB, h52, abstractC6931dX, s50);
            c8659ns0.b("Argument propagation scanner");
            for (AbstractC10561zE abstractC10561zE : c7215fB.q()) {
                if (abstractC10561zE.F1()) {
                    InterfaceC10172ww T10 = abstractC10561zE.T();
                    com.android.tools.r8.graph.F5 o10 = ((AbstractC7670hw) T10).c(c8692o3.f51146g.f51417a, c8692o3.f51142c).o();
                    if (o10 != null) {
                        c8692o3.a(T10, o10, c8659ns0);
                    }
                } else if (abstractC10561zE.P1()) {
                    c8692o3.a(abstractC10561zE.e0(), c8659ns0);
                } else if (abstractC10561zE instanceof OJ) {
                    com.android.tools.r8.graph.C2 c22 = abstractC10561zE.b0().f42851l.f36214g;
                    Z4.c<?> o11 = ((C11245i) c8692o3.f51146g.f51417a.f()).b(c22.m0(), c22.f36192g).o();
                    if (o11 != null && o11.d().e0()) {
                        c8692o3.f51146g.f51426j.a(o11.r(), C9669tv0.f52729a);
                    }
                }
            }
            c8659ns0.d();
            boolean z10 = f49869f;
            if (!z10 && this.f49873d == null) {
                throw new AssertionError();
            }
            C5122Et c5122Et = this.f49873d;
            c5122Et.getClass();
            new C5064Dt(c5122Et, h52, c7215fB, s50).a();
            if (!z10 && this.f49874e == null) {
                throw new AssertionError();
            }
            D3 d32 = this.f49874e;
            d32.getClass();
            C6899dH c6899dH = new C6899dH(16);
            AE H10 = c7215fB.k().H();
            for (C8024k3 v10 = H10.next().v(); v10 != null; v10 = H10.next().v()) {
                if (v10.a().x()) {
                    z00 = C8856p2.f51414a;
                } else {
                    boolean w10 = v10.d().w();
                    boolean z11 = false;
                    C10340xw0 d10 = v10.d();
                    d10.getClass();
                    C9132qj c9132qj = C9132qj.f51861a;
                    Set<AbstractC10561zE> c10 = AbstractC5513Ll0.c();
                    C10340xw0.a(c9132qj, d10, c10);
                    for (AbstractC10561zE abstractC10561zE2 : c10) {
                        int r22 = abstractC10561zE2.r2();
                        if (r22 != 9 && r22 != 25 && r22 != 28 && r22 != 30 && r22 != 56 && r22 != 33) {
                            if (r22 != 34) {
                                switch (r22) {
                                    case 38:
                                        break;
                                    case 39:
                                    case 40:
                                        break;
                                    default:
                                        z11 = true;
                                        break;
                                }
                            }
                            WJ f02 = abstractC10561zE2.f0();
                            if (f02.C2().i() == v10.d()) {
                                Z4.c<?> o12 = ((C11245i) d32.f39427a.f()).f(f02.B2()).o();
                                if (o12 != null) {
                                }
                            }
                        }
                        if (w10 && z11 && w10) {
                            if (!w10 && z11 && w10) {
                                z00 = C8856p2.f51414a;
                            } else if (w10 && !z11 && !w10) {
                                z00 = C7522h2.f48415a;
                            } else {
                                z00 = new Z00(z11);
                            }
                        }
                    }
                    if (!w10) {
                    }
                    if (w10) {
                    }
                    z00 = new Z00(z11);
                }
                if (!(z00 instanceof C8856p2)) {
                    c6899dH.a(v10.b(true), z00);
                }
            }
            if (c6899dH.isEmpty()) {
                return;
            }
            d32.f39429c.put(h52.getReference(), new C7765iX(c6899dH));
            return;
        }
        boolean z12 = f49869f;
        if (!z12 && abstractC6931dX.f()) {
            throw new AssertionError();
        }
        if (!z12 && this.f49873d != null) {
            throw new AssertionError();
        }
        if (z12) {
            return;
        }
        abstractC6931dX.getClass();
        if ((abstractC6931dX instanceof P60) && this.f49874e != null) {
            throw new AssertionError();
        }
    }

    public final F1 a(com.android.tools.r8.graph.H5 h52, C10340xw0 c10340xw0) {
        return c10340xw0.a(this.f49870a, h52, M1.f42128a);
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.Map, java.lang.Object] */
    public final void a() {
        C8859p3 c8859p3 = this.f49872c;
        if (c8859p3 != null) {
            c8859p3.f51425i.f47879b.clear();
        }
        if (!f49869f && this.f49874e == null) {
            throw new AssertionError();
        }
        D3 d32 = this.f49874e;
        d32.f39428b.putAll(d32.f39429c);
        d32.f39429c.clear();
    }

    public final void a(C10374y70 c10374y70, O60 o60, ExecutorService executorService, C8659ns0 c8659ns0) {
        boolean z10 = f49869f;
        if (!z10 && this.f49870a.f38408a.g().b()) {
            throw new AssertionError();
        }
        if (!z10) {
            D3 d32 = this.f49874e;
            if (!D3.f39426d) {
                if (!d32.f39429c.isEmpty()) {
                    throw new AssertionError();
                }
            } else {
                d32.getClass();
            }
        }
        c8659ns0.b("Argument propagator");
        c8659ns0.b("Compute components");
        C4798y c4798y = this.f49870a;
        C4387c4 a10 = C4387c4.a(c4798y, ((C4514j) c4798y.f()).d());
        ArrayList a11 = new C6541b80(this.f49870a, a10).a();
        c8659ns0.d();
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        BiConsumer biConsumer = new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C8191l3.a(Map.this, (Set) obj, (com.android.tools.r8.graph.F2) obj2);
            }
        };
        if (!z10 && !this.f49870a.f38389D) {
            throw new AssertionError();
        }
        C8859p3 c8859p3 = this.f49872c;
        C5591Mw c5591Mw = c8859p3.f51424h;
        C10601zX c10601zX = c8859p3.f51426j;
        C6388aD c6388aD = c8859p3.f51427k;
        c6388aD.getClass();
        C6555bD c6555bD = new C6555bD(new HashMap(c6388aD.f46470a), new HashMap(c6388aD.f46471b));
        c8859p3.f51427k = null;
        this.f49870a.H().f50902r.a(c10601zX);
        this.f49872c = null;
        o60.a(this.f49870a);
        c8659ns0.b("Compute optimization info");
        new C10528z3(this.f49870a, c10374y70, a10, c5591Mw, c10601zX, c6555bD, a11, biConsumer).a(this.f49871b, executorService, c8659ns0);
        this.f49871b = null;
        C10361y3 c10361y3 = new C10361y3(this.f49870a, c10374y70, c5591Mw, c10601zX, o60);
        c8659ns0.b("Set optimization info");
        com.android.tools.r8.graph.O5 a12 = c10361y3.a(executorService);
        c8659ns0.d();
        if (!C10361y3.f53928g && !c10601zX.f54040a.isEmpty()) {
            throw new AssertionError();
        }
        c8659ns0.d();
        c8659ns0.b("Compute unused arguments");
        this.f49873d.a(a12);
        this.f49873d = null;
        c8659ns0.d();
        Set a13 = C4875Al0.a();
        C3 c32 = new C3(this.f49870a, a10, identityHashMap);
        Objects.requireNonNull(a13);
        C9693u3 a14 = c32.a(a11, new P01(a13), executorService, c8659ns0);
        C4798y c4798y2 = this.f49870a;
        C10194x3 c10194x3 = new C10194x3(c4798y2, this.f49874e);
        c8659ns0.b("Enqueue methods for reprocessing");
        c8659ns0.b("Rewrite methods to reprocess");
        o60.a(c4798y2);
        c8659ns0.d();
        c8659ns0.b("Enqueue methods with non-trivial info");
        c10194x3.a(a14, o60);
        c8659ns0.d();
        c8659ns0.b("Enqueue affected methods");
        if (a14 != null) {
            c10194x3.a(a14, o60, executorService);
        }
        c8659ns0.d();
        c8659ns0.b("Eliminate dead field accesses");
        c10194x3.a(executorService);
        c8659ns0.d();
        c8659ns0.d();
        this.f49874e = null;
        new C8525n3(this.f49870a, a14).a(a13, executorService, c8659ns0);
        c8659ns0.d();
        C8570nJ.p H10 = this.f49870a.H();
        C7296fi1 c7296fi1 = new C7296fi1(o60);
        C5629Nm a15 = H10.a();
        if (a15 != null) {
            c7296fi1.a(a15);
        }
        this.f49870a.getClass();
        this.f49870a.f38386A = null;
    }

    public static void a(Map map, Set set, com.android.tools.r8.graph.F2 f22) {
        ((C5058Dq) map.computeIfAbsent(set, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C8191l3.a((Set) obj);
            }
        })).f39661b.add(f22);
    }
}
