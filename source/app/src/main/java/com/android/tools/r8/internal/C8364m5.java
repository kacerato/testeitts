package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.synthesis.S;
import java.util.LinkedHashMap;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Supplier;

public class C8364m5 {

    public static final boolean f50192e = true;

    public final C2 f50193a;

    public final C4724u1 f50194b;

    public final QC f50195c = a();

    public final QC f50196d = b();

    public C8364m5(C2 c22, C4724u1 c4724u1) {
        this.f50193a = c22;
        this.f50194b = c4724u1;
    }

    public final void a(IC ic2, com.android.tools.r8.graph.M2 m22) {
        if (m22.a(this.f50194b.f38126p4)) {
            return;
        }
        C4724u1 c4724u1 = this.f50194b;
        ic2.a(c4724u1.a(m22, c4724u1.a(c4724u1.f37905M1, new com.android.tools.r8.graph.M2[0]), this.f50194b.f38186x0));
    }

    public final void b(IC ic2, com.android.tools.r8.graph.M2 m22) {
        if (m22.a(this.f50194b.f38126p4)) {
            return;
        }
        ic2.a(m22);
    }

    public final QC b() {
        int i10 = QC.f43505c;
        final IC ic2 = new IC();
        a((Consumer<com.android.tools.r8.graph.M2>) new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8364m5.this.b(ic2, (com.android.tools.r8.graph.M2) obj);
            }
        }, this.f50193a, this.f50194b, false);
        return ic2.a();
    }

    public final void a(Consumer consumer, com.android.tools.r8.graph.M2 m22) {
        if (m22.a(this.f50194b.f38126p4)) {
            return;
        }
        C4724u1 c4724u1 = this.f50194b;
        consumer.accept(c4724u1.a(m22, c4724u1.a(c4724u1.f37905M1, new com.android.tools.r8.graph.M2[0]), this.f50194b.f38186x0));
    }

    public final com.android.tools.r8.graph.A2 b(final C4798y c4798y, final com.android.tools.r8.graph.H5 h52, final AbstractC7103ea abstractC7103ea, final C5035Df c5035Df) {
        final C4724u1 b10 = c4798y.b();
        final LinkedHashMap a10 = a(c4798y, h52, abstractC7103ea, c5035Df);
        com.android.tools.r8.graph.H5 b11 = c4798y.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58197x;
                return bVar;
            }
        }, c5035Df.a(), c4798y, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8364m5.this.a(b10, c4798y, h52, abstractC7103ea, c5035Df, a10, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        abstractC7103ea.u(b11, h52);
        return b11.getReference();
    }

    public final QC a() {
        int i10 = QC.f43505c;
        final IC ic2 = new IC();
        a((Consumer<com.android.tools.r8.graph.M2>) new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8364m5.this.a(ic2, (com.android.tools.r8.graph.M2) obj);
            }
        }, this.f50193a, this.f50194b, false);
        C4724u1 c4724u1 = this.f50194b;
        ic2.a(c4724u1.a(c4724u1.f37834C2, c4724u1.a(c4724u1.f37905M1, new com.android.tools.r8.graph.M2[0]), this.f50194b.f38186x0));
        return ic2.a();
    }

    public final void a(final C4798y c4798y, com.android.tools.r8.synthesis.N n10) {
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        C4724u1 c4724u1 = this.f50194b;
        n10.f58115e = c4724u1.a(c4724u1.f37905M1, c4724u1.f38068i2);
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return C8364m5.this.a(c4798y, a22);
            }
        };
    }

    public final void a(final C4724u1 c4724u1, final C4798y c4798y, final com.android.tools.r8.graph.H5 h52, final InterfaceC8197l5 interfaceC8197l5, final C5035Df c5035Df, final LinkedHashMap linkedHashMap, com.android.tools.r8.synthesis.N n10) {
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        n10.f58115e = c4724u1.a(c4724u1.f37905M1, c4724u1.f38068i2);
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return C8364m5.this.a(c4798y, h52, interfaceC8197l5, c5035Df, c4724u1, linkedHashMap, a22);
            }
        };
    }

    public final void a(com.android.tools.r8.synthesis.N n10) {
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        C4724u1 c4724u1 = this.f50194b;
        n10.f58115e = c4724u1.a(c4724u1.f37905M1, c4724u1.f38096l6);
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return C8364m5.this.a(a22);
            }
        };
    }

    public static void a(Consumer<com.android.tools.r8.graph.M2> consumer, C2 c22, C4724u1 c4724u1, boolean z10) {
        if (c22.e(C2.V)) {
            consumer.accept(c4724u1.f38096l6);
            consumer.accept(c4724u1.f38104m6);
            if (z10) {
                consumer.accept(c4724u1.d("Ljava/util/concurrent/ScheduledExecutorService;"));
                consumer.accept(c4724u1.d("Ljava/util/concurrent/AbstractExecutorService;"));
                consumer.accept(c4724u1.d("Ljava/util/concurrent/ThreadPoolExecutor;"));
                consumer.accept(c4724u1.d("Ljava/util/concurrent/ScheduledThreadPoolExecutor;"));
            }
        }
        if (c22.e(C2.R)) {
            consumer.accept(c4724u1.f38102m4);
        }
        if (c22.e(C2.P)) {
            consumer.accept(c4724u1.f38134q4);
        }
        if (c22.e(C2.O_MR1)) {
            consumer.accept(c4724u1.f38126p4);
        }
        if (c22.e(C2.M)) {
            consumer.accept(c4724u1.f38118o4);
            consumer.accept(c4724u1.f38110n4);
        }
    }

    public final LinkedHashMap a(final C4798y c4798y, final com.android.tools.r8.graph.H5 h52, final AbstractC7103ea abstractC7103ea, final C5035Df c5035Df) {
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        a((Consumer<com.android.tools.r8.graph.M2>) new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8364m5.this.a(linkedHashMap, c4798y, h52, abstractC7103ea, c5035Df, (com.android.tools.r8.graph.M2) obj);
            }
        }, this.f50193a, this.f50194b, false);
        return linkedHashMap;
    }

    public final void a(LinkedHashMap linkedHashMap, C4798y c4798y, com.android.tools.r8.graph.H5 h52, InterfaceC8197l5 interfaceC8197l5, C5035Df c5035Df, com.android.tools.r8.graph.M2 m22) {
        if (m22.a(this.f50194b.f38104m6)) {
            return;
        }
        Objects.requireNonNull(c5035Df);
        linkedHashMap.put(m22, a(c4798y, m22, h52, interfaceC8197l5, new C9950vd1(c5035Df)));
    }

    public final com.android.tools.r8.graph.A2 a(C4798y c4798y, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.D5 d52, InterfaceC8197l5 interfaceC8197l5, Supplier supplier) {
        boolean z10 = f50192e;
        if (!z10 && !this.f50196d.contains(m22)) {
            com.android.tools.r8.graph.M2 m23 = this.f50194b.f38126p4;
            if (!m23.a(m23)) {
                throw new AssertionError();
            }
        }
        if (!m22.a(this.f50194b.f38096l6) && !m22.a(this.f50194b.f38104m6)) {
            if (m22.a(this.f50194b.f38102m4)) {
                C4724u1 c4724u1 = this.f50194b;
                return c4724u1.a(m22, c4724u1.a(c4724u1.f37905M1, new com.android.tools.r8.graph.M2[0]), "recycle");
            }
            if (m22.a(this.f50194b.f38110n4)) {
                C4724u1 c4724u12 = this.f50194b;
                return c4724u12.a(m22, c4724u12.a(c4724u12.f37849E1, new com.android.tools.r8.graph.M2[0]), "release");
            }
            if (!z10) {
                C4724u1 c4724u13 = this.f50194b;
                if (!QC.a(3, 3, c4724u13.f38134q4, c4724u13.f38126p4, c4724u13.f38118o4).contains(m22)) {
                    throw new AssertionError();
                }
            }
            C4724u1 c4724u14 = this.f50194b;
            return c4724u14.a(m22, c4724u14.a(c4724u14.f37905M1, new com.android.tools.r8.graph.M2[0]), "release");
        }
        return a(c4798y, d52, interfaceC8197l5, supplier);
    }

    public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
        return I5.E(this.f50194b, a22);
    }

    public final AbstractC4497i0 a(C4798y c4798y, com.android.tools.r8.graph.A2 a22) {
        return new C5814Qr0(c4798y, a22.s0(), this.f50194b.f38205z3, null).b();
    }

    public final AbstractC4497i0 a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, InterfaceC8197l5 interfaceC8197l5, C5035Df c5035Df, C4724u1 c4724u1, LinkedHashMap linkedHashMap, com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.M2 s02 = a22.s0();
        Objects.requireNonNull(c5035Df);
        com.android.tools.r8.graph.A2 reference = a(c4798y, h52, interfaceC8197l5, (Supplier) new C9950vd1(c5035Df)).getReference();
        com.android.tools.r8.graph.M2 m22 = c4724u1.f37834C2;
        C4724u1 c4724u12 = this.f50194b;
        return new C6664bu(s02, reference, c4724u12.a(m22, c4724u12.a(c4724u12.f37905M1, new com.android.tools.r8.graph.M2[0]), this.f50194b.f38186x0), linkedHashMap, 2, c4798y).b();
    }

    public final void a(final Consumer consumer) {
        if (this.f50193a.b(C2.K)) {
            return;
        }
        a((Consumer<com.android.tools.r8.graph.M2>) new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8364m5.this.a(consumer, (com.android.tools.r8.graph.M2) obj);
            }
        }, this.f50193a, this.f50194b, false);
    }

    public final com.android.tools.r8.graph.H5 a(final C4798y c4798y, com.android.tools.r8.graph.H5 h52, InterfaceC8197l5 interfaceC8197l5, Supplier supplier) {
        com.android.tools.r8.graph.H5 b10 = c4798y.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58157J;
                return bVar;
            }
        }, (C5209Gf) supplier.get(), c4798y, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8364m5.this.a(c4798y, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        interfaceC8197l5.u(b10, h52);
        return b10;
    }

    public final com.android.tools.r8.graph.A2 a(C4798y c4798y, com.android.tools.r8.graph.D5 d52, InterfaceC8197l5 interfaceC8197l5, Supplier supplier) {
        com.android.tools.r8.graph.H5 b10 = c4798y.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58198y;
                return bVar;
            }
        }, (C5209Gf) supplier.get(), c4798y, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8364m5.this.a((com.android.tools.r8.synthesis.N) obj);
            }
        });
        interfaceC8197l5.a(d52, b10);
        return b10.getReference();
    }
}
