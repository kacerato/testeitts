package com.android.tools.r8.internal;

import com.android.tools.r8.errors.CheckEnumUnboxedDiagnostic;
import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.graph.C4462g3;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.ir.optimize.C10701c0;
import com.android.tools.r8.shaking.C11231h2;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11297l1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C10374y70 extends C8048kB {

    public static final boolean f53945J = true;

    public final C8659ns0 f53946I;

    public C10374y70(C4798y c4798y, C8659ns0 c8659ns0, boolean z10) {
        super(c4798y);
        this.f53946I = c8659ns0;
        if (z10) {
            this.f49524c.f52904a.add(new C10701c0(c4798y));
        }
    }

    public static AbstractC4780x0 a(AbstractC4780x0 abstractC4780x0, AbstractC4780x0 abstractC4780x02) {
        return abstractC4780x0;
    }

    public final void b(C4798y c4798y, ExecutorService executorService) {
        this.f53946I.b("Create IR");
        try {
            final C4462g3 a10 = a(c4798y.M(), executorService).a();
            c4798y.L().b(((C11245i) c4798y.f()).a(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C10374y70.a(AbstractC4780x0.this, (AbstractC4780x0) obj);
                }
            }));
        } finally {
            this.f53946I.d();
        }
    }

    public final AbstractC4780x0 a(final C4798y c4798y, final ExecutorService executorService) {
        C6224Xv c6224Xv;
        a(executorService);
        b("Primary optimization pass");
        AbstractC5308Hz v10 = c4798y.v();
        InterfaceC6160Wr0 interfaceC6160Wr0 = new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C10374y70.this.a(executorService, (C8191l3) obj);
            }
        };
        C8191l3 c8191l3 = c4798y.f38386A;
        if (c8191l3 != null) {
            interfaceC6160Wr0.accept(c8191l3);
        }
        this.f49539r.a(v10);
        this.f49540s.a(executorService, this.f53946I);
        this.f49523b.a(v10);
        C5937Sv c5937Sv = this.f49527f;
        if (c5937Sv != null && (c6224Xv = c5937Sv.f44334b) != null) {
            c6224Xv.f45860d.a(c6224Xv.f45858b);
            c6224Xv.f45861e.a(c6224Xv.f45858b);
            c6224Xv.a();
        }
        final C8195l40 c8195l40 = this.f49547z;
        final O60 o60 = new O60(v10);
        this.f53946I.b("Build primary method processor");
        C7097eX c7097eX = C7097eX.f47704c;
        M70 b10 = M70.b(c4798y);
        b10.getClass();
        AbstractC7264fX u70 = b10 instanceof C6520b10 ? c7097eX : new U70(b10.a(), c7097eX);
        C4798y<C11245i> M10 = c4798y.M();
        C8659ns0 c8659ns0 = this.f53946I;
        boolean z10 = C10209x8.f53698b;
        final C10207x70 c10207x70 = new C10207x70(M10, new C10543z8(M10).a(executorService, c8659ns0), u70);
        this.f53946I.d();
        this.f53946I.b("IR conversion phase 1");
        boolean z11 = f53945J;
        if (!z11 && c4798y.v() != v10) {
            throw new AssertionError();
        }
        c10207x70.a(new InterfaceC9706u70() {
            @Override
            public final C8659ns0 a(com.android.tools.r8.graph.H5 h52, C5035Df c5035Df) {
                return C10374y70.this.a(c8195l40, c10207x70, c4798y, h52, c5035Df);
            }
        }, new InterfaceC10040w70() {
            @Override
            public final void a(AbstractC8374m80 abstractC8374m80) {
                C10374y70.this.a(abstractC8374m80);
            }
        }, new InterfaceC9873v70() {
            @Override
            public final void a(AbstractC8374m80 abstractC8374m80, ExecutorService executorService2) {
                C10374y70.this.a(abstractC8374m80, executorService2);
            }
        }, this.f53946I, executorService);
        a(o60, executorService);
        u70.a(c4798y);
        if (!z11 && c4798y.v() != v10) {
            throw new AssertionError();
        }
        this.f53946I.d();
        new com.android.tools.r8.naming.D(c4798y).c(executorService);
        C11245i c11245i = (C11245i) c4798y.f();
        if (!C11245i.f57385J) {
            c11245i.c();
        } else {
            c11245i.getClass();
        }
        c11245i.f57404s.a();
        if (!z11) {
            c8195l40.b();
        }
        c4798y.f38389D = true;
        C8659ns0 c10 = C8659ns0.c();
        c10.b("Clear code rewritings");
        c4798y.a(new C8115ke(c4798y.L()));
        c4798y.a(VV.a(c4798y.L(), executorService));
        c10.d();
        if (c4798y.f38408a.g().b()) {
            c4798y.b(c4798y.e());
        }
        b("Post optimization pass");
        this.f49540s.getClass();
        this.f49523b.a();
        InterfaceC6160Wr0 interfaceC6160Wr02 = new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C10374y70.this.a(o60, executorService, (C8191l3) obj);
            }
        };
        C8191l3 c8191l32 = c4798y.f38386A;
        if (c8191l32 != null) {
            interfaceC6160Wr02.accept(c8191l32);
        }
        C11231h2 c11231h2 = this.f49528g;
        if (c11231h2 != null) {
            c11231h2.a();
        }
        if (!this.f49531j.f50690i1) {
            new C8161kt0(c4798y.M(), o60).a(executorService, c8195l40, this.f53946I);
        }
        this.f49540s.getClass();
        this.f49523b.a();
        this.f49539r.a(c4798y, this, o60, executorService, c8195l40, this.f53946I);
        C8664nu I10 = c4798y.I();
        I10.getClass();
        ArrayList arrayList = new ArrayList();
        for (com.android.tools.r8.graph.H2 h22 : ((C11245i) c4798y.f()).d()) {
            if (h22.o1()) {
                C11297l1 a10 = c4798y.r().a(h22);
                c4798y.E();
                if (a10.f57500r && !I10.b(h22.getType())) {
                    arrayList.add(h22);
                }
            }
        }
        if (arrayList.isEmpty()) {
            this.f49540s.getClass();
            this.f49523b.a();
            this.f49540s.a(o60, this.f53946I, executorService);
            AbstractC5308Hz v11 = c4798y.v();
            this.f49523b.a();
            AbstractC8932pX.a(c4798y, executorService, o60);
            this.f53946I.b("IR conversion phase 2");
            C7097eX c7097eX2 = C7097eX.f47704c;
            M70 b11 = M70.b(c4798y);
            b11.getClass();
            AbstractC7264fX u702 = b11 instanceof C6520b10 ? c7097eX2 : new U70(b11.a(), c7097eX2);
            final AbstractC7264fX abstractC7264fX = u702;
            final P60 p60 = (P60) this.f53946I.a("Build post method processor", new InterfaceC7158es0() {
                @Override
                public final Object get() {
                    return C10374y70.this.a(o60, c4798y, abstractC7264fX, executorService);
                }
            });
            if (p60 != null) {
                boolean z12 = f53945J;
                if (!z12 && c4798y.v() != v11) {
                    throw new AssertionError();
                }
                this.f53946I.b("Process code");
                p60.a(new InterfaceC9706u70() {
                    @Override
                    public final C8659ns0 a(com.android.tools.r8.graph.H5 h52, C5035Df c5035Df) {
                        return C10374y70.this.a(c8195l40, p60, c4798y, h52, c5035Df);
                    }
                }, this, c8195l40, c4798y.E().G(), executorService, this.f53946I);
                this.f53946I.d();
                C8659ns0 c8659ns02 = this.f53946I;
                Objects.requireNonNull(c8195l40);
                c8659ns02.a("Update visible optimization info", new InterfaceC5930Sr0() {
                    @Override
                    public final void a() {
                        C8195l40.this.c();
                    }
                });
                u702.a(c4798y);
                if (!z12 && c4798y.v() != v11) {
                    throw new AssertionError();
                }
            }
            this.f53946I.d();
            c4798y.f38422o = C9265rX.f52055b;
            C8659ns0 c11 = C8659ns0.c();
            c11.b("Clear code rewritings");
            c4798y.a(new C8115ke(c4798y.L()));
            c4798y.a(VV.a(c4798y.L(), executorService));
            c11.d();
            if (c4798y.f38408a.g().b()) {
                c4798y.b(c4798y.e());
            }
            c8195l40.c();
            this.f49523b.a(this, c8195l40, executorService, this.f53946I);
            a();
            com.android.tools.r8.naming.E e10 = this.f49536o;
            if (e10 != null) {
                e10.a(executorService);
            }
            if (!f53945J) {
                c8195l40.b();
            }
            return ((C11245i) c4798y.f()).a();
        }
        CheckEnumUnboxedDiagnostic a11 = CheckEnumUnboxedDiagnostic.builder().a(arrayList).a();
        C5094Ef0 c5094Ef0 = c4798y.E().f50691j;
        c5094Ef0.a(null, a11);
        throw c5094Ef0.f39969c;
    }

    public final void b(com.android.tools.r8.graph.H2 h22) {
        h22.g(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C4516j1) obj).s1();
            }
        });
    }

    public final void b(ExecutorService executorService) {
        if (this.f49517C.f36607c.isEmpty() && this.f49517C.f36611g.isEmpty()) {
            return;
        }
        C4798y c4798y = this.f49522a;
        com.android.tools.r8.graph.N5 n52 = this.f49517C;
        n52.f36605a = c4798y.e();
        c4798y.a(n52.a(), executorService, this.f53946I);
        this.f49517C.f36607c.clear();
        this.f49517C.f36611g.clear();
    }

    public final void a(ExecutorService executorService, C8191l3 c8191l3) {
        c8191l3.a(executorService, this.f53946I);
    }

    public final C8659ns0 a(C8195l40 c8195l40, C10207x70 c10207x70, C4798y c4798y, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df) {
        return a(h52, (AbstractC8028k40) c8195l40, (AbstractC7431gX) c10207x70, c5035Df, EW.b(c4798y), C8659ns0.a(this.f49531j, h52.r()));
    }

    public final void a(O60 o60, ExecutorService executorService, C8191l3 c8191l3) {
        c8191l3.a(this, o60, executorService, this.f53946I);
    }

    public final P60 a(O60 o60, C4798y c4798y, AbstractC7264fX abstractC7264fX, ExecutorService executorService) {
        return o60.a(c4798y, abstractC7264fX, executorService, this.f53946I);
    }

    public final C8659ns0 a(C8195l40 c8195l40, P60 p60, C4798y c4798y, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df) {
        return a(h52, (AbstractC8028k40) c8195l40, (AbstractC7431gX) p60, c5035Df, EW.b(c4798y), C8659ns0.a(this.f49531j, h52.r()));
    }

    public final void a() {
        this.f49522a.f().d().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10374y70.this.b((com.android.tools.r8.graph.H2) obj);
            }
        });
    }

    public final void a(AbstractC8374m80 abstractC8374m80) {
        this.f49516B = Collections.synchronizedList(new ArrayList());
    }

    public final void a(AbstractC8374m80 abstractC8374m80, ExecutorService executorService) {
        C6224Xv c6224Xv;
        this.f49547z.f49878b.a(this.f49522a.f().m());
        this.f49547z.c();
        C5937Sv c5937Sv = this.f49527f;
        if (c5937Sv != null && (c6224Xv = c5937Sv.f44334b) != null) {
            c6224Xv.a(abstractC8374m80, this.f49547z);
        }
        C4798y c4798y = this.f49522a;
        InterfaceC6160Wr0 interfaceC6160Wr0 = new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                ((C8191l3) obj).a();
            }
        };
        C8191l3 c8191l3 = c4798y.f38386A;
        if (c8191l3 != null) {
            interfaceC6160Wr0.accept(c8191l3);
        }
        if (this.f49522a.E().a0().a()) {
            C8438ma0 c8438ma0 = this.f49522a.f38388C.f42928g;
            c8438ma0.f50334b.putAll(c8438ma0.f50335c);
            c8438ma0.f50335c.clear();
        }
        this.f49539r.a();
        if (!f53945J) {
            this.f49547z.b();
        }
        List list = this.f49516B;
        if (list != null) {
            list.forEach(new C10016vz1());
            this.f49516B = null;
        }
    }

    public final void a(O60 o60, ExecutorService executorService) {
        b(executorService);
        this.f49527f = null;
        com.android.tools.r8.ir.optimize.W w10 = this.f49535n;
        if (w10 != null) {
            w10.a(o60, this.f53946I, executorService);
        }
        C8570nJ.p H10 = this.f49522a.H();
        C7296fi1 c7296fi1 = new C7296fi1(o60);
        C5629Nm a10 = H10.a();
        if (a10 != null) {
            c7296fi1.a(a10);
        }
    }
}
