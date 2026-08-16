package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.EW;
import com.android.tools.r8.ir.optimize.C10696a;
import com.android.tools.r8.ir.optimize.C10734z;
import com.android.tools.r8.shaking.C11245i;
import java.util.Iterator;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Predicate;

public class ZS {

    public static final boolean f46238a = true;

    public static void a(final C4798y<C11245i> c4798y, ExecutorService executorService) throws ExecutionException {
        boolean z10 = f46238a;
        if (!z10) {
            c4798y.H().getClass();
            if (!c4798y.m()) {
                throw new AssertionError();
            }
        }
        if (!z10 && !c4798y.H().b()) {
            throw new AssertionError();
        }
        C8570nJ.p H10 = c4798y.H();
        if (!C8570nJ.p.f50805k1 && !H10.b()) {
            throw new AssertionError();
        }
        H10.f50887j1 = 2;
        final C9784ue c9784ue = new C9784ue(new C9459sh(c4798y), new C9654tq0(c4798y), new com.android.tools.r8.naming.E(c4798y));
        C5467Kr0.a(c4798y.f().d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((com.android.tools.r8.graph.H2) obj).h(new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        ZS.a(C4798y.this, r2, (com.android.tools.r8.graph.H5) obj2);
                    }
                }, new Predicate() {
                    @Override
                    public final boolean test(Object obj2) {
                        return ZS.a(C4798y.this, (C4516j1) obj2);
                    }
                });
            }
        }, c4798y.E().G(), executorService);
        c4798y.b().b();
    }

    public static void b(final C4798y c4798y, final C8659ns0 c8659ns0, final ExecutorService executorService) {
        a(c4798y, c8659ns0, executorService, new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                ZS.a(C4798y.this, executorService, c8659ns0);
            }
        });
    }

    public static void b(final C4798y c4798y, ExecutorService executorService) {
        final RR rr = new RR(c4798y, 0);
        C5467Kr0.a(((C4514j) c4798y.f()).d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((com.android.tools.r8.graph.H2) obj).h(new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        ZS.a(C4798y.this, r2, (com.android.tools.r8.graph.H5) obj2);
                    }
                }, new Predicate() {
                    @Override
                    public final boolean test(Object obj2) {
                        return ZS.a((C4516j1) obj2);
                    }
                });
            }
        }, c4798y.E().G(), executorService);
        c4798y.b().b();
    }

    public static boolean a(C4798y c4798y, C4516j1 c4516j1) {
        return c4516j1.b1() && !c4798y.a(c4516j1);
    }

    public static void a(C4798y c4798y, C9784ue c9784ue, com.android.tools.r8.graph.H5 h52) {
        if (!f46238a && h52.d().Q0().r0()) {
            throw new AssertionError();
        }
        C7215fB a10 = h52.a((C4798y<?>) c4798y, EW.b(c4798y));
        c9784ue.a(a10, null, null, C8659ns0.c(), null, c4798y.E());
        h52.a(UA.a(C9875v8.b(), a10, c4798y.E(), new C7702i60()), (C4798y<?>) c4798y);
    }

    public static void a(C4798y c4798y, ExecutorService executorService, C8659ns0 c8659ns0) {
        c4798y.getClass();
        c8659ns0.b("Clear code rewritings");
        c4798y.a(new C8115ke(c4798y.L()));
        c4798y.a(VV.a(c4798y.L(), executorService));
        c8659ns0.d();
    }

    public static void a(C4798y c4798y, C8659ns0 c8659ns0, ExecutorService executorService, InterfaceC5930Sr0 interfaceC5930Sr0) {
        boolean z10 = f46238a;
        if (!z10) {
            c4798y.H().getClass();
            if (!c4798y.m()) {
                throw new AssertionError();
            }
        }
        if (!z10 && !c4798y.H().c()) {
            throw new AssertionError();
        }
        if (!z10 && c4798y.f38408a.g().b()) {
            throw new AssertionError();
        }
        if (!z10) {
            a(c4798y);
        }
        AbstractC5308Hz v10 = c4798y.v();
        if (!z10 && !v10.l()) {
            throw new AssertionError();
        }
        if (!z10) {
            AbstractC5308Hz abstractC5308Hz = c4798y.f38414g;
            abstractC5308Hz.getClass();
            if (!(abstractC5308Hz instanceof C7358g3)) {
                AbstractC5308Hz abstractC5308Hz2 = c4798y.f38414g;
                abstractC5308Hz2.getClass();
                if (!(abstractC5308Hz2 instanceof C8115ke) && !c4798y.f38414g.j()) {
                    throw new AssertionError();
                }
            }
        }
        TV tv = (TV) v10.d().a(new com.android.tools.r8.graph.Eh());
        if (!z10 && tv == null) {
            throw new AssertionError();
        }
        if (v10 == tv) {
            AbstractC5308Hz abstractC5308Hz3 = tv.f43777d;
            abstractC5308Hz3.getClass();
            if (abstractC5308Hz3 instanceof C7358g3) {
                return;
            }
        }
        c8659ns0.b("LIR->LIR@" + v10.getClass().getName());
        b(c4798y, executorService);
        c8659ns0.d();
        interfaceC5930Sr0.a();
    }

    public static boolean a(C4516j1 c4516j1) {
        return c4516j1.b1() && c4516j1.Q0().A0();
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0219  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(C4798y c4798y, RR rr, com.android.tools.r8.graph.H5 h52) {
        boolean z10;
        boolean z11;
        WS<Integer> ws;
        VS a10;
        WS<Integer> o02 = h52.d().Q0().o0();
        o02.getClass();
        AbstractC5308Hz v10 = c4798y.v();
        if (!WS.f45402o && !v10.l()) {
            throw new AssertionError();
        }
        v10.getClass();
        if (v10 instanceof TV) {
            ws = o02;
        } else {
            C7256fT c7256fT = new C7256fT(c4798y, o02, h52, rr);
            if (o02.r0()) {
                if (!C7256fT.f47979o && o02.a(c4798y) != c7256fT.f47983f) {
                    throw new AssertionError();
                }
                ws = new WS<>(o02);
            } else {
                AbstractC5308Hz abstractC5308Hz = c7256fT.f47983f;
                abstractC5308Hz.getClass();
                if ((abstractC5308Hz instanceof C10215xA) || (abstractC5308Hz instanceof C6840cx0)) {
                    com.android.tools.r8.graph.proto.j f10 = c7256fT.f47983f.f(c7256fT.f47984g, h52.getReference());
                    if (!f10.a()) {
                        com.android.tools.r8.graph.proto.c cVar = f10.f37623b;
                        if (!cVar.f37607d) {
                            boolean z12 = C7256fT.f47979o;
                            if (!z12 && !cVar.b()) {
                                throw new AssertionError();
                            }
                            if (!z12 && f10.b()) {
                                throw new AssertionError();
                            }
                            C6840cx0 e10 = c7256fT.f47983f.e();
                            if (e10 != null) {
                                z10 = e10.f47215n.f51121b.containsKey(e10.d(c7256fT.f47982e).z0());
                                if (z10) {
                                    EW.a b10 = EW.b(c4798y);
                                    b10.f39889c = true;
                                    C7215fB a11 = h52.a((C4798y<?>) c4798y, b10);
                                    new QR(c4798y).a(h52, a11, (AbstractC6931dX) null);
                                    ws = new C9717uB(c4798y).a(a11, C9875v8.b(), C8659ns0.c());
                                } else {
                                    boolean z13 = C7256fT.f47979o;
                                    if (!z13 && c7256fT.f47990m) {
                                        throw new AssertionError();
                                    }
                                    WS b11 = c7256fT.b((WS) o02);
                                    if (c7256fT.f47990m) {
                                        EW.a b12 = EW.b(c4798y);
                                        b12.f39889c = true;
                                        C7215fB a12 = h52.a((C4798y<?>) c4798y, b12);
                                        new QR(c4798y).a(h52, a12, (AbstractC6931dX) null);
                                        ws = new C9717uB(c4798y).a(a12, C9875v8.b(), C8659ns0.c());
                                    } else {
                                        WS<Integer> c10 = c7256fT.c(b11);
                                        VS vs = c10.f45410l;
                                        if (vs != null && (a10 = vs.a(c7256fT.f47983f, c7256fT.f47984g)) != c10.f45410l) {
                                            c10 = new WS<>(c10.f45405g, c10.f45406h, c10.f45407i, c10.f45408j, c10.f45409k, a10, c10.f45411m, c10.f45403e, c10.f45404f, c10.f45412n);
                                        }
                                        if (o02.f45410l != null) {
                                            AbstractC5308Hz v11 = c4798y.v();
                                            v11.getClass();
                                            if (!((v11 instanceof C10215xA) || (v11 instanceof C6840cx0))) {
                                                if (!z13 && c7256fT.a((WS) c10)) {
                                                    throw new AssertionError();
                                                }
                                            } else {
                                                z11 = c7256fT.a((WS) c10);
                                                if (z11) {
                                                    ws = c10;
                                                } else {
                                                    C7215fB a13 = c10.a(h52, c4798y, EW.b(c4798y));
                                                    C10696a c10696a = new C10696a();
                                                    a13.a(c10696a, C6628bi.b());
                                                    c10696a.a(c4798y, a13, C6628bi.b());
                                                    new com.android.tools.r8.ir.optimize.F(c4798y).a(a13, C8659ns0.c());
                                                    ws = new C9717uB(c4798y).a(a13, C9875v8.b(), C8659ns0.c());
                                                }
                                                if (!z13 && ws.r0()) {
                                                    throw new AssertionError();
                                                }
                                            }
                                        }
                                        z11 = false;
                                        if (z11) {
                                        }
                                        if (!z13) {
                                            throw new AssertionError();
                                        }
                                    }
                                }
                            }
                        }
                    }
                    z10 = true;
                    if (z10) {
                    }
                }
                AbstractC5308Hz abstractC5308Hz2 = c7256fT.f47983f;
                abstractC5308Hz2.getClass();
                if (abstractC5308Hz2 instanceof C4847Aa0) {
                    com.android.tools.r8.graph.proto.j f11 = c7256fT.f47983f.f(c7256fT.f47984g, h52.getReference());
                    boolean z14 = C7256fT.f47979o;
                    if (!z14 && f11.a()) {
                        throw new AssertionError();
                    }
                    if (!z14 && f11.b()) {
                        throw new AssertionError();
                    }
                    com.android.tools.r8.graph.proto.d dVar = f11.f37623b.f37606c;
                    dVar.getClass();
                    z10 = !(dVar instanceof com.android.tools.r8.graph.proto.f);
                } else {
                    z10 = false;
                }
                if (z10) {
                }
            }
        }
        if (U30.a(o02, ws)) {
            h52.a(ws, (C4798y<?>) c4798y);
        }
    }

    public static void a(final C4798y c4798y, C8659ns0 c8659ns0, ExecutorService executorService) {
        boolean z10 = f46238a;
        if (!z10) {
            c4798y.H().getClass();
            if (!c4798y.m()) {
                throw new AssertionError();
            }
        }
        if (!z10 && !c4798y.H().c()) {
            throw new AssertionError();
        }
        if (!z10 && c4798y.f38408a.g().b()) {
            throw new AssertionError();
        }
        if (!z10) {
            a(c4798y);
        }
        C8570nJ.p H10 = c4798y.H();
        if (!C8570nJ.p.f50805k1 && !H10.c()) {
            throw new AssertionError();
        }
        H10.f50887j1 = 3;
        final com.android.tools.r8.ir.optimize.F f10 = new com.android.tools.r8.ir.optimize.F(c4798y);
        c8659ns0.b("LIR->IR->" + (c4798y.E().f50697l instanceof ClassFileConsumer ? "CF" : "DEX"));
        final C9784ue c9784ue = new C9784ue(new C6688c2(c4798y), new C9292rh(c4798y), new C5982To0(c4798y), new G40(c4798y), new C10322xq0(c4798y, c4798y.f().i() ? new com.android.tools.r8.naming.E(c4798y.M()) : null), new C10154wq(c4798y), new C9890vD(c4798y), new com.android.tools.r8.naming.N0(c4798y), new C6340Zw(c4798y));
        C5467Kr0.a(((C4514j) c4798y.f()).d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((com.android.tools.r8.graph.H2) obj).l(new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        ZS.a(com.android.tools.r8.ir.optimize.F.this, r2, r3, (com.android.tools.r8.graph.H5) obj2);
                    }
                });
            }
        }, c4798y.E().G(), executorService);
        c8659ns0.d();
        c4798y.b().b();
        if (z10) {
            return;
        }
        AbstractC5308Hz v10 = c4798y.v();
        v10.getClass();
        if (!(v10 instanceof TV) || c4798y.v().c().f43777d != c4798y.f38414g) {
            throw new AssertionError();
        }
    }

    public static void a(com.android.tools.r8.ir.optimize.F f10, C4798y c4798y, C9784ue c9784ue, com.android.tools.r8.graph.H5 h52) {
        if (h52.d().Q0() instanceof WS) {
            C8048kB.a(h52, "LIR before output format", c4798y.E());
            C8659ns0 c10 = C8659ns0.c();
            C7215fB a10 = h52.a((C4798y<?>) c4798y, EW.c(c4798y));
            boolean z10 = f46238a;
            if (!z10 && !a10.d(c4798y)) {
                throw new AssertionError();
            }
            C8699o50 a11 = c9784ue.a(a10, null, null, c10, C8048kB.a(a10, "IR from LIR", "", c4798y.E()), c4798y.E());
            boolean booleanValue = ((Boolean) a11.a()).booleanValue();
            String str = (String) a11.b();
            if (c4798y.E().P() && booleanValue) {
                new C10734z(c4798y, h52, a10).a();
            }
            C9875v8 b10 = C9875v8.b();
            f10.a(a10, c10);
            String a12 = C8048kB.a(a10, "IR before finalize", str, c4798y.E());
            EW.a aVar = a10.f47895b;
            if (!z10 && aVar.c()) {
                throw new AssertionError();
            }
            h52.a(aVar.a(c4798y, f10).a(a10, b10, c10, a12), (C4798y<?>) c4798y);
            C8048kB.a(h52, "Finalized output format", c4798y.E());
        }
    }

    public static void a(C4798y c4798y) {
        Iterator<com.android.tools.r8.graph.H2> it = ((C4514j) c4798y.f()).d().iterator();
        while (it.hasNext()) {
            for (C4516j1 c4516j1 : it.next().c(new u.P0())) {
                if (!f46238a && !c4516j1.Q0().A0() && !c4516j1.Q0().B0() && !(c4516j1.Q0() instanceof C7722iD) && !c4798y.a(c4516j1) && !c4798y.E().f50687h1) {
                    throw new AssertionError();
                }
            }
        }
    }
}
