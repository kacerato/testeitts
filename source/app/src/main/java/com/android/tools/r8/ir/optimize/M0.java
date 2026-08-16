package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.I2;
import com.android.tools.r8.graph.L4;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC5139Fb;
import com.android.tools.r8.internal.AbstractC7103ea;
import com.android.tools.r8.internal.AbstractC7264fX;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC9694u30;
import com.android.tools.r8.internal.C10106wa;
import com.android.tools.r8.internal.C10564zF;
import com.android.tools.r8.internal.C4965Cb;
import com.android.tools.r8.internal.C5035Df;
import com.android.tools.r8.internal.C5313Ib;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C6607bb;
import com.android.tools.r8.internal.C7437ga;
import com.android.tools.r8.internal.C8103ka;
import com.android.tools.r8.internal.C8106kb;
import com.android.tools.r8.internal.C8938pa;
import com.android.tools.r8.internal.EnumC5477Kw0;
import com.android.tools.r8.internal.G9;
import com.android.tools.r8.internal.InterfaceC8008jy;
import com.android.tools.r8.internal.NB;
import com.android.tools.r8.internal.O9;
import com.android.tools.r8.internal.W9;
import com.android.tools.r8.synthesis.S;
import java.lang.constant.ConstantDescs;
import java.util.function.Consumer;

public abstract class M0 {
    public static void a(C4798y c4798y, final C4724u1 c4724u1, I2 i22, com.android.tools.r8.synthesis.N n10) {
        n10.f58119i = L4.b(4105, false);
        n10.f58116f = C5313Ib.f41138i;
        com.android.tools.r8.androidapi.f fVar = c4798y.f38405T;
        n10.f58123m = fVar;
        n10.f58124n = fVar;
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(A2 a22) {
                return com.android.tools.r8.ir.optimize.M0.a(C4724u1.this, a22);
            }
        };
        n10.f58115e = i22;
    }

    public static L0 b(final C4798y c4798y, AbstractC7264fX abstractC7264fX, C5035Df c5035Df) {
        final C4724u1 b10 = c4798y.b();
        final I2 a10 = b10.a(b10.f37905M1, b10.f38068i2);
        H5 b11 = c4798y.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58155H;
                return bVar;
            }
        }, c5035Df.a(), c4798y, new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.ir.optimize.M0.b(C4798y.this, b10, a10, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        abstractC7264fX.o(b11, c5035Df.f39582c);
        return new L0(b11);
    }

    public static L0 c(final C4798y c4798y, AbstractC7264fX abstractC7264fX, C5035Df c5035Df) {
        final C4724u1 b10 = c4798y.b();
        final I2 a10 = b10.a(b10.f37905M1, b10.f38068i2);
        H5 b11 = c4798y.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58154G;
                return bVar;
            }
        }, c5035Df.a(), c4798y, new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.ir.optimize.M0.g(C4798y.this, b10, a10, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        abstractC7264fX.m(b11, c5035Df.f39582c);
        return new L0(b11);
    }

    public static void d(C4798y c4798y, final C4724u1 c4724u1, I2 i22, com.android.tools.r8.synthesis.N n10) {
        n10.f58119i = L4.b(4105, false);
        n10.f58116f = C5313Ib.f41138i;
        com.android.tools.r8.androidapi.f fVar = c4798y.f38405T;
        n10.f58123m = fVar;
        n10.f58124n = fVar;
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(A2 a22) {
                return com.android.tools.r8.ir.optimize.M0.d(C4724u1.this, a22);
            }
        };
        n10.f58115e = i22;
    }

    public static void e(C4798y c4798y, final C4724u1 c4724u1, I2 i22, com.android.tools.r8.synthesis.N n10) {
        n10.f58119i = L4.b(4105, false);
        n10.f58116f = C5313Ib.f41138i;
        com.android.tools.r8.androidapi.f fVar = c4798y.f38405T;
        n10.f58123m = fVar;
        n10.f58124n = fVar;
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(A2 a22) {
                return com.android.tools.r8.ir.optimize.M0.e(C4724u1.this, a22);
            }
        };
        n10.f58115e = i22;
    }

    public static void f(C4798y c4798y, final C4724u1 c4724u1, I2 i22, com.android.tools.r8.synthesis.N n10) {
        n10.f58119i = L4.b(4105, false);
        n10.f58116f = C5313Ib.f41138i;
        com.android.tools.r8.androidapi.f fVar = c4798y.f38405T;
        n10.f58123m = fVar;
        n10.f58124n = fVar;
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(A2 a22) {
                return com.android.tools.r8.ir.optimize.M0.f(C4724u1.this, a22);
            }
        };
        n10.f58115e = i22;
    }

    public static void g(C4798y c4798y, final C4724u1 c4724u1, I2 i22, com.android.tools.r8.synthesis.N n10) {
        n10.f58119i = L4.b(4105, false);
        n10.f58116f = C5313Ib.f41138i;
        com.android.tools.r8.androidapi.f fVar = c4798y.f38405T;
        n10.f58123m = fVar;
        n10.f58124n = fVar;
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(A2 a22) {
                return com.android.tools.r8.ir.optimize.M0.g(C4724u1.this, a22);
            }
        };
        n10.f58115e = i22;
    }

    public static void c(C4798y c4798y, final C4724u1 c4724u1, I2 i22, com.android.tools.r8.synthesis.N n10) {
        n10.f58119i = L4.b(4105, false);
        n10.f58116f = C5313Ib.f41138i;
        com.android.tools.r8.androidapi.f fVar = c4798y.f38405T;
        n10.f58123m = fVar;
        n10.f58124n = fVar;
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(A2 a22) {
                return com.android.tools.r8.ir.optimize.M0.c(C4724u1.this, a22);
            }
        };
        n10.f58115e = i22;
    }

    public static L0 a(final C4798y c4798y, AbstractC7264fX abstractC7264fX, C5035Df c5035Df) {
        final C4724u1 b10 = c4798y.b();
        final I2 a10 = b10.a(b10.f37849E1, b10.f38068i2);
        H5 b11 = c4798y.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58156I;
                return bVar;
            }
        }, c5035Df.a(), c4798y, new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.ir.optimize.M0.a(C4798y.this, b10, a10, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        abstractC7264fX.o(b11, c5035Df.f39582c);
        return new L0(b11);
    }

    public static AbstractC4497i0 b(C4724u1 c4724u1, A2 a22) {
        C8103ka c8103ka = new C8103ka();
        C8103ka c8103ka2 = new C8103ka();
        C8103ka c8103ka3 = new C8103ka();
        C8103ka c8103ka4 = new C8103ka();
        M2 m22 = a22.f38297f;
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
        AbstractC7552hC a10 = AbstractC7552hC.a(c8103ka, new C8938pa(enumC5477Kw0, 0), new O9(NB.f42527b, enumC5477Kw0, c8103ka3), c8103ka2, new C10106wa(c4724u1.d("Ljava/lang/ClassCastException;")), new C8106kb(C8106kb.a.Dup), new C7437ga(183, c4724u1.a(c4724u1.d("Ljava/lang/ClassCastException;"), c4724u1.a(c4724u1.f37905M1, new M2[0]), c4724u1.b(ConstantDescs.INIT_NAME)), false), new C4965Cb(), c8103ka3, new G9(new C10564zF(new int[]{0}, new InterfaceC8008jy[]{InterfaceC8008jy.b(c4724u1.f38068i2)})), new C6607bb(), c8103ka4, new W9[0]);
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        return new com.android.tools.r8.graph.G(m22, 2, 1, a10, c6190Xe0, c6190Xe0);
    }

    public static AbstractC4497i0 d(C4724u1 c4724u1, A2 a22) {
        C8103ka c8103ka = new C8103ka();
        M2 m22 = a22.f38297f;
        AbstractC7552hC a10 = AbstractC7552hC.a(c8103ka, new C10106wa(c4724u1.d("Ljava/lang/IncompatibleClassChangeError;")), new C8106kb(C8106kb.a.Dup), new C7437ga(183, c4724u1.a(c4724u1.d("Ljava/lang/IncompatibleClassChangeError;"), c4724u1.a(c4724u1.f37905M1, new M2[0]), c4724u1.b(ConstantDescs.INIT_NAME)), false), new C4965Cb());
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        return new com.android.tools.r8.graph.G(m22, 2, 0, a10, c6190Xe0, c6190Xe0);
    }

    public static AbstractC4497i0 e(C4724u1 c4724u1, A2 a22) {
        C8103ka c8103ka = new C8103ka();
        M2 m22 = a22.f38297f;
        AbstractC7552hC a10 = AbstractC7552hC.a(c8103ka, new C10106wa(c4724u1.d("Ljava/lang/NoSuchMethodError;")), new C8106kb(C8106kb.a.Dup), new C7437ga(183, c4724u1.a(c4724u1.d("Ljava/lang/NoSuchMethodError;"), c4724u1.a(c4724u1.f37905M1, new M2[0]), c4724u1.b(ConstantDescs.INIT_NAME)), false), new C4965Cb());
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        return new com.android.tools.r8.graph.G(m22, 2, 0, a10, c6190Xe0, c6190Xe0);
    }

    public static AbstractC4497i0 f(C4724u1 c4724u1, A2 a22) {
        C8103ka c8103ka = new C8103ka();
        C8103ka c8103ka2 = new C8103ka();
        M2 m22 = a22.f38297f;
        AbstractC7552hC a10 = AbstractC7552hC.a(c8103ka, new C10106wa(c4724u1.d("Ljava/lang/RuntimeException;")), new C8106kb(C8106kb.a.Dup), new C8938pa(EnumC5477Kw0.f41824b, 0), new C7437ga(183, c4724u1.a(c4724u1.d("Ljava/lang/RuntimeException;"), c4724u1.a(c4724u1.f37905M1, c4724u1.f38052g2), c4724u1.b(ConstantDescs.INIT_NAME)), false), new C4965Cb(), c8103ka2);
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        return new com.android.tools.r8.graph.G(m22, 3, 1, a10, c6190Xe0, c6190Xe0);
    }

    public static AbstractC4497i0 g(C4724u1 c4724u1, A2 a22) {
        C8103ka c8103ka = new C8103ka();
        C8103ka c8103ka2 = new C8103ka();
        C8103ka c8103ka3 = new C8103ka();
        C8103ka c8103ka4 = new C8103ka();
        M2 m22 = a22.f38297f;
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
        Object[] a10 = AbstractC9694u30.a(11, new Object[]{c8103ka, new C8938pa(enumC5477Kw0, 0), new O9(NB.f42527b, enumC5477Kw0, c8103ka3), c8103ka2, new C8938pa(enumC5477Kw0, 0), new C7437ga(182, c4724u1.a(c4724u1.f38068i2, c4724u1.a(c4724u1.f38052g2, new M2[0]), c4724u1.b("toString")), false), new C8106kb(C8106kb.a.Pop), c8103ka3, new G9(new C10564zF(new int[]{0}, new InterfaceC8008jy[]{InterfaceC8008jy.b(c4724u1.f38068i2)})), new C6607bb(), c8103ka4});
        AbstractC7552hC b10 = AbstractC7552hC.b(a10.length, a10);
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        return new com.android.tools.r8.graph.G(m22, 1, 1, b10, c6190Xe0, c6190Xe0);
    }

    public static AbstractC4497i0 c(C4724u1 c4724u1, A2 a22) {
        C8103ka c8103ka = new C8103ka();
        M2 m22 = a22.f38297f;
        AbstractC7552hC a10 = AbstractC7552hC.a(c8103ka, new C10106wa(c4724u1.d("Ljava/lang/IllegalAccessError;")), new C8106kb(C8106kb.a.Dup), new C7437ga(183, c4724u1.a(c4724u1.d("Ljava/lang/IllegalAccessError;"), c4724u1.a(c4724u1.f37905M1, new M2[0]), c4724u1.b(ConstantDescs.INIT_NAME)), false), new C4965Cb());
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        return new com.android.tools.r8.graph.G(m22, 2, 0, a10, c6190Xe0, c6190Xe0);
    }

    public static AbstractC4497i0 a(C4724u1 c4724u1, A2 a22) {
        return AbstractC5139Fb.a(c4724u1, a22);
    }

    public static L0 a(final C4798y c4798y, N0 n02, C5035Df c5035Df) {
        final C4724u1 b10 = c4798y.b();
        final I2 a10 = b10.a(b10.f38197y3, new M2[0]);
        H5 b11 = c4798y.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58157J;
                return bVar;
            }
        }, c5035Df.a(), c4798y, new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.ir.optimize.M0.c(C4798y.this, b10, a10, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        n02.r(b11, c5035Df.f39582c);
        return new L0(b11);
    }

    public static void b(C4798y c4798y, final C4724u1 c4724u1, I2 i22, com.android.tools.r8.synthesis.N n10) {
        n10.f58119i = L4.b(4105, false);
        n10.f58116f = C5313Ib.f41138i;
        com.android.tools.r8.androidapi.f fVar = c4798y.f38405T;
        n10.f58123m = fVar;
        n10.f58124n = fVar;
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(A2 a22) {
                return com.android.tools.r8.ir.optimize.M0.b(C4724u1.this, a22);
            }
        };
        n10.f58115e = i22;
    }

    public static L0 c(final C4798y c4798y, N0 n02, C5035Df c5035Df) {
        final C4724u1 b10 = c4798y.b();
        final I2 a10 = b10.a(b10.f37843D3, new M2[0]);
        H5 b11 = c4798y.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58159L;
                return bVar;
            }
        }, c5035Df.a(), c4798y, new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.ir.optimize.M0.e(C4798y.this, b10, a10, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        n02.n(b11, c5035Df.f39582c);
        return new L0(b11);
    }

    public static L0 a(final C4798y c4798y, AbstractC7103ea abstractC7103ea, C5035Df c5035Df) {
        final C4724u1 b10 = c4798y.b();
        final I2 a10 = b10.a(b10.f38157t3, b10.f38052g2);
        H5 b11 = c4798y.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58160M;
                return bVar;
            }
        }, c5035Df.a(), c4798y, new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.ir.optimize.M0.f(C4798y.this, b10, a10, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        abstractC7103ea.k(b11, c5035Df.f39582c);
        return new L0(b11);
    }

    public static L0 b(final C4798y c4798y, N0 n02, C5035Df c5035Df) {
        final C4724u1 b10 = c4798y.b();
        final I2 a10 = b10.a(b10.f37827B3, new M2[0]);
        H5 b11 = c4798y.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58158K;
                return bVar;
            }
        }, c5035Df.a(), c4798y, new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.ir.optimize.M0.d(C4798y.this, b10, a10, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        n02.p(b11, c5035Df.f39582c);
        return new L0(b11);
    }
}
