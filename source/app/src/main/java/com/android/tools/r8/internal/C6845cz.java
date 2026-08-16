package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4420e;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import com.android.tools.r8.shaking.C11144c0;
import com.android.tools.r8.shaking.C11245i;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.UnaryOperator;

public class C6845cz {

    public static final boolean f47235g = true;

    public final C4798y f47236a;

    public final C5256Hb0 f47237b;

    public final C5314Ib0 f47238c;

    public final C5485La0 f47239d;

    public final AbstractC8999pu0 f47240e;

    public final C6949de f47241f;

    public C6845cz(C4798y c4798y, C5256Hb0 c5256Hb0, C5485La0 c5485La0) {
        this.f47236a = c4798y;
        this.f47237b = c5256Hb0;
        this.f47238c = new C5314Ib0(c4798y.b());
        this.f47239d = c5485La0;
        this.f47240e = AbstractC8999pu0.a(c4798y.b().f38092l2, C8854p10.b(), (C4798y<?>) c4798y);
        this.f47241f = AbstractC8999pu0.a((C4798y<?>) c4798y, C8854p10.b());
    }

    public static boolean a(W5 w52, W5 w53) {
        return w53 == w52;
    }

    public final void a(C8048kB c8048kB, C6862d40 c6862d40, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df) {
        c8048kB.a(h52, (AbstractC8028k40) AbstractC8529n40.f50496b, (AbstractC7431gX) c6862d40, c5035Df, EW.b(this.f47236a), C8659ns0.c());
    }

    public final void a(final com.android.tools.r8.shaking.A a10) {
        com.android.tools.r8.graph.H2 a11 = com.android.tools.r8.graph.H2.a(this.f47236a.f().c(this.f47239d.f41997i));
        if (a11 != null) {
            com.android.tools.r8.graph.H5 e10 = a11.e(this.f47239d.f41984F);
            if (e10 != null) {
                a10.a(C11144c0.f57206a).a(e10.getReference()).d().t().v().x().y().z().B().E().F();
            }
            this.f47239d.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C6845cz.this.a(a10, (com.android.tools.r8.graph.A2) obj);
                }
            });
        }
        com.android.tools.r8.graph.H2 a12 = com.android.tools.r8.graph.H2.a(this.f47236a.f().c(this.f47239d.f42001m));
        if (a12 != null) {
            C4554l1 c4554l1 = this.f47239d.f41987I;
            c4554l1.p0();
            if (a12.c(c4554l1.l0()) != null) {
                a10.a(C11144c0.f57206a).a(c4554l1).h();
            }
            C4554l1 c4554l12 = this.f47239d.f41988J;
            c4554l12.p0();
            if (a12.c(c4554l12.l0()) != null) {
                a10.a(C11144c0.f57206a).a(c4554l12).h();
            }
        }
    }

    public final void a(com.android.tools.r8.shaking.C c10, com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(this.f47236a.g(a22.s0()));
        com.android.tools.r8.graph.H5 e10 = a10 != null ? a10.e(a22) : null;
        if (e10 != null) {
            c10.a(C11144c0.f57206a).a(e10.getReference()).d().t().v().x().y().z().B().E().F();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b4, code lost:
    
        if (((com.android.tools.r8.shaking.C11245i) r13.f()).b(r5, r12.f47239d.f41997i) != false) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(C4798y c4798y, C7215fB c7215fB) {
        com.android.tools.r8.graph.M2 m22;
        C10696a c10696a = new C10696a();
        Z5 u10 = c7215fB.u();
        while (u10.f46159b.hasNext()) {
            W5 w52 = (W5) u10.f46159b.next();
            u10.f46160c = w52;
            Y5 I10 = w52.I();
            while (I10.hasNext()) {
                AbstractC10561zE next = I10.next();
                if (next.Q1()) {
                    WJ f02 = next.f0();
                    com.android.tools.r8.graph.A2 B22 = f02.B2();
                    if (this.f47239d.a(B22) || this.f47239d.b(B22)) {
                        if (!f47235g && B22.k(0) != this.f47239d.f42003o) {
                            throw new AssertionError();
                        }
                        C5427Ka0 c5427Ka0 = this.f47239d.f42009u;
                        C10340xw0 z22 = f02.z2();
                        c5427Ka0.getClass();
                        C10340xw0 i10 = z22.i();
                        if (!i10.j()) {
                            AbstractC10561zE abstractC10561zE = i10.f53886c;
                            abstractC10561zE.getClass();
                            if ((abstractC10561zE instanceof C5576Mo0) && i10.f53886c.K0().getField() == c5427Ka0.f41703f) {
                                AbstractC8999pu0 b10 = f02.C2().b(c4798y);
                                if (b10.s()) {
                                    m22 = b10.b().E();
                                }
                            }
                        }
                    }
                }
                m22 = null;
                if (m22 != null) {
                    C4724u1 b11 = c4798y.b();
                    com.android.tools.r8.graph.A2 a10 = b11.a(m22, b11.a(b11.f37905M1, new com.android.tools.r8.graph.M2[0]), b11.f38067i1);
                    com.android.tools.r8.graph.H0 b12 = c4798y.b(a10);
                    boolean z10 = com.android.tools.r8.graph.H0.f36361e;
                    com.android.tools.r8.graph.H5 H10 = b12 != null ? b12.H() : null;
                    if (H10 != null && !AbstractC4420e.a(H10, H10.getHolder(), c7215fB.j(), c4798y, (C4514j) c4798y.f()).b()) {
                        boolean z11 = C9603tZ.f52626m;
                        C9436sZ c9436sZ = new C9436sZ();
                        c9436sZ.f52377d = m22;
                        c9436sZ.f52321a = c7215fB.a(AbstractC8999pu0.a(m22, C8854p10.b(), (C4798y<?>) c4798y), (C4515j0) null);
                        c9436sZ.f52322b = next.getPosition();
                        C9603tZ c9603tZ = new C9603tZ(c9436sZ.f52377d, c9436sZ.f52321a);
                        B60 b60 = c9436sZ.f52322b;
                        if (b60 != null) {
                            c9603tZ.b(b60);
                        }
                        I10.a(c9603tZ, c10696a);
                        boolean z12 = QJ.f43538p;
                        PJ pj2 = new PJ();
                        pj2.f44718d = a10;
                        PJ pj3 = (PJ) pj2.a(c9603tZ.d());
                        pj3.f52322b = next.getPosition();
                        QJ c10 = pj3.c();
                        if (w52.z()) {
                            final W5 a11 = I10.a(c7215fB, u10, c4798y.E(), (UnaryOperator<W5>) null);
                            Y5 I11 = a11.I();
                            I11.add(c10);
                            W5 w53 = (W5) AbstractC10241xK.a(u10, new Predicate() {
                                @Override
                                public final boolean test(Object obj) {
                                    return C6845cz.a(W5.this, (W5) obj);
                                }
                            });
                            if (!f47235g && w53 == null) {
                                throw new AssertionError();
                            }
                            u10.f46160c = (W5) u10.f46159b.next();
                            I10 = I11;
                        } else {
                            I10.add(c10);
                        }
                    }
                }
            }
        }
        c10696a.a(c4798y, c7215fB, C6628bi.b());
        if (!f47235g && !c7215fB.b((C4798y<?>) c4798y)) {
            throw new AssertionError();
        }
    }

    public final void a(final C8048kB c8048kB, ExecutorService executorService, C8659ns0 c8659ns0) {
        c8659ns0.b("[Proto] Post optimize dynamic methods");
        final C6862d40 c6862d40 = new C6862d40(C7097eX.f47704c, this.f47236a.k(), AbstractC8374m80.a(new InterfaceC6285Yx() {
            @Override
            public final void forEach(Consumer consumer) {
                C6845cz.this.a(consumer);
            }
        }));
        c6862d40.a(new InterfaceC6695c40() {
            @Override
            public final void a(com.android.tools.r8.graph.H5 h52, C5035Df c5035Df) {
                C6845cz.this.a(c8048kB, c6862d40, h52, c5035Df);
            }
        }, this.f47236a.E().G(), executorService);
        c8659ns0.d();
    }

    public final void a(final Consumer consumer) {
        final C4724u1 b10 = this.f47236a.b();
        C11245i h10 = this.f47236a.h();
        h10.f57405t.a(this.f47239d.f41997i, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6845cz.this.a(b10, consumer, (com.android.tools.r8.graph.H2) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6845cz.a((C8085kR) obj);
            }
        }, h10);
    }

    public final void a(C4724u1 c4724u1, Consumer consumer, com.android.tools.r8.graph.H2 h22) {
        com.android.tools.r8.graph.M2 m22 = h22.f36245e;
        C5485La0 c5485La0 = this.f47239d;
        com.android.tools.r8.graph.H5 e10 = h22.e(c4724u1.a(m22, c5485La0.f41982D, c5485La0.f42013y));
        if (e10 != null) {
            consumer.accept(e10);
        }
    }

    public static void a(C8085kR c8085kR) {
        if (!f47235g) {
            throw new AssertionError();
        }
    }

    public static VJ a(C7215fB c7215fB, C5485La0 c5485La0) {
        for (AbstractC10561zE abstractC10561zE : c7215fB.q()) {
            if (abstractC10561zE.P1()) {
                VJ e02 = abstractC10561zE.e0();
                if (c5485La0.a(e02)) {
                    return e02;
                }
            }
        }
        return null;
    }
}
