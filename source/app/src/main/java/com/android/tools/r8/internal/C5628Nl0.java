package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8106kb;
import com.android.tools.r8.internal.V8;
import com.android.tools.r8.synthesis.S;
import java.lang.constant.ConstantDescs;
import java.util.function.Consumer;

public final class C5628Nl0 extends AbstractC5877Ru {

    public final com.android.tools.r8.graph.H2 f42690b;

    public final com.android.tools.r8.graph.H5 f42691c;

    public C5628Nl0(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H2 h23, com.android.tools.r8.graph.H5 h52) {
        super(h23);
        this.f42690b = h22;
        this.f42691c = h52;
    }

    public static AbstractC4497i0 d(C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        C8103ka c8103ka = new C8103ka();
        C8103ka c8103ka2 = new C8103ka();
        C8103ka c8103ka3 = new C8103ka();
        C8103ka c8103ka4 = new C8103ka();
        com.android.tools.r8.graph.M2 m22 = a22.f38297f;
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41825c;
        C8938pa c8938pa = new C8938pa(enumC5477Kw0, 0);
        O9 o92 = new O9(NB.f42527b, enumC5477Kw0, c8103ka2);
        C8938pa c8938pa2 = new C8938pa(enumC5477Kw0, 1);
        O9 o93 = new O9(NB.f42532g, enumC5477Kw0, c8103ka3);
        int i10 = InterfaceC8008jy.f49436a;
        NH nh2 = NH.f42550c;
        AbstractC7552hC a10 = AbstractC7552hC.a(c8103ka, c8938pa, o92, c8938pa2, o93, c8103ka2, new G9(new C10564zF(new int[]{0, 1}, new InterfaceC8008jy[]{nh2, nh2})), new C10106wa(c4724u1.d("Ljava/lang/NullPointerException;")), new C8106kb(C8106kb.a.Dup), new C7437ga(183, c4724u1.a(c4724u1.d("Ljava/lang/NullPointerException;"), c4724u1.a(c4724u1.f37905M1, new com.android.tools.r8.graph.M2[0]), c4724u1.b(ConstantDescs.INIT_NAME)), false), new C4965Cb(), c8103ka3, new G9(new C10564zF(new int[]{0, 1}, new InterfaceC8008jy[]{nh2, nh2})), new C8938pa(enumC5477Kw0, 0), new C8938pa(enumC5477Kw0, 1), new V8(V8.a.f44968c, T10.f44369e), new C6440ab(enumC5477Kw0), c8103ka4);
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        return new com.android.tools.r8.graph.G(m22, 2, 2, a10, c6190Xe0, c6190Xe0);
    }

    @Override
    public final void a(C4798y c4798y) {
        c(c4798y);
        d(c4798y);
        e(c4798y);
        f(c4798y);
        g(c4798y);
        h(c4798y);
        b(c4798y);
    }

    public final com.android.tools.r8.graph.H5 b(C4798y c4798y) {
        final C4724u1 b10 = c4798y.b();
        return a(c4798y, b10.b("boxedOrdinalOrNull"), b10.a(b10.f38004a2, b10.f37884J1), new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                AbstractC4497i0 a10;
                a10 = AbstractC5529Lu.a(C4724u1.this, a22);
                return a10;
            }
        });
    }

    public final com.android.tools.r8.graph.H5 c(C4798y c4798y) {
        final C4724u1 b10 = c4798y.b();
        return a(c4798y, b10.b("checkNotZero"), b10.a(b10.f37905M1, b10.f37884J1), new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return C5628Nl0.b(C4724u1.this, a22);
            }
        });
    }

    public final com.android.tools.r8.graph.H5 e(C4798y c4798y) {
        final C4724u1 b10 = c4798y.b();
        com.android.tools.r8.graph.L2 t02 = b10.f37943R4.f36488g.t0();
        com.android.tools.r8.graph.M2 m22 = b10.f37884J1;
        return a(c4798y, t02, b10.a(m22, m22, m22), new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return C5628Nl0.d(C4724u1.this, a22);
            }
        });
    }

    public final com.android.tools.r8.graph.H5 f(C4798y c4798y) {
        final C4724u1 b10 = c4798y.b();
        com.android.tools.r8.graph.L2 t02 = b10.f37943R4.f36490i.t0();
        com.android.tools.r8.graph.M2 m22 = b10.f37849E1;
        com.android.tools.r8.graph.M2 m23 = b10.f37884J1;
        return a(c4798y, t02, b10.a(m22, m23, m23), new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                AbstractC4497i0 b11;
                b11 = AbstractC5529Lu.b(C4724u1.this, a22);
                return b11;
            }
        });
    }

    public final com.android.tools.r8.graph.H5 g(C4798y c4798y) {
        final C4724u1 b10 = c4798y.b();
        com.android.tools.r8.graph.L2 b11 = b10.b("objects$equals");
        com.android.tools.r8.graph.M2 m22 = b10.f37849E1;
        com.android.tools.r8.graph.M2 m23 = b10.f37884J1;
        return a(c4798y, b11, b10.a(m22, m23, m23), new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                AbstractC4497i0 a10;
                C4724u1 c4724u1 = C4724u1.this;
                a10 = AbstractC5529Lu.a(a22);
                return a10;
            }
        });
    }

    public final com.android.tools.r8.graph.H5 h(C4798y c4798y) {
        final C4724u1 b10 = c4798y.b();
        com.android.tools.r8.graph.L2 t02 = b10.f37943R4.f36485d.t0();
        com.android.tools.r8.graph.M2 m22 = b10.f37884J1;
        return a(c4798y, t02, b10.a(m22, m22), new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return C5628Nl0.g(C4724u1.this, a22);
            }
        });
    }

    public static AbstractC4497i0 b(C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        C8103ka c8103ka = new C8103ka();
        C8103ka c8103ka2 = new C8103ka();
        C8103ka c8103ka3 = new C8103ka();
        C8103ka c8103ka4 = new C8103ka();
        com.android.tools.r8.graph.M2 m22 = a22.f38297f;
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41825c;
        C8938pa c8938pa = new C8938pa(enumC5477Kw0, 0);
        O9 o92 = new O9(NB.f42532g, enumC5477Kw0, c8103ka3);
        C10106wa c10106wa = new C10106wa(c4724u1.d("Ljava/lang/NullPointerException;"));
        C8106kb c8106kb = new C8106kb(C8106kb.a.Dup);
        C7437ga c7437ga = new C7437ga(183, c4724u1.a(c4724u1.d("Ljava/lang/NullPointerException;"), c4724u1.a(c4724u1.f37905M1, new com.android.tools.r8.graph.M2[0]), c4724u1.b(ConstantDescs.INIT_NAME)), false);
        C4965Cb c4965Cb = new C4965Cb();
        int i10 = InterfaceC8008jy.f49436a;
        AbstractC7552hC a10 = AbstractC7552hC.a(c8103ka, c8938pa, o92, c8103ka2, c10106wa, c8106kb, c7437ga, c4965Cb, c8103ka3, new G9(new C10564zF(new int[]{0}, new InterfaceC8008jy[]{NH.f42550c})), new C6607bb(), c8103ka4, new W9[0]);
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        return new com.android.tools.r8.graph.G(m22, 2, 1, a10, c6190Xe0, c6190Xe0);
    }

    public static AbstractC4497i0 c(C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        C8103ka c8103ka = new C8103ka();
        C8103ka c8103ka2 = new C8103ka();
        C8103ka c8103ka3 = new C8103ka();
        C8103ka c8103ka4 = new C8103ka();
        com.android.tools.r8.graph.M2 m22 = a22.f38297f;
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41825c;
        C8938pa c8938pa = new C8938pa(enumC5477Kw0, 0);
        O9 o92 = new O9(NB.f42532g, enumC5477Kw0, c8103ka3);
        C10106wa c10106wa = new C10106wa(c4724u1.d("Ljava/lang/NullPointerException;"));
        C8106kb c8106kb = new C8106kb(C8106kb.a.Dup);
        C8938pa c8938pa2 = new C8938pa(EnumC5477Kw0.f41824b, 1);
        C7437ga c7437ga = new C7437ga(183, c4724u1.a(c4724u1.d("Ljava/lang/NullPointerException;"), c4724u1.a(c4724u1.f37905M1, c4724u1.f38052g2), c4724u1.b(ConstantDescs.INIT_NAME)), false);
        C4965Cb c4965Cb = new C4965Cb();
        int i10 = InterfaceC8008jy.f49436a;
        AbstractC7552hC a10 = AbstractC7552hC.a(c8103ka, c8938pa, o92, c8103ka2, c10106wa, c8106kb, c8938pa2, c7437ga, c4965Cb, c8103ka3, new G9(new C10564zF(new int[]{0, 1}, new InterfaceC8008jy[]{NH.f42550c, InterfaceC8008jy.b(c4724u1.f38052g2)})), new C6607bb(), c8103ka4);
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        return new com.android.tools.r8.graph.G(m22, 3, 2, a10, c6190Xe0, c6190Xe0);
    }

    public static AbstractC4497i0 g(C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        C8103ka c8103ka = new C8103ka();
        C8103ka c8103ka2 = new C8103ka();
        C8103ka c8103ka3 = new C8103ka();
        C8103ka c8103ka4 = new C8103ka();
        com.android.tools.r8.graph.M2 m22 = a22.f38297f;
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41825c;
        C8938pa c8938pa = new C8938pa(enumC5477Kw0, 0);
        O9 o92 = new O9(NB.f42532g, enumC5477Kw0, c8103ka3);
        C10106wa c10106wa = new C10106wa(c4724u1.d("Ljava/lang/NullPointerException;"));
        C8106kb c8106kb = new C8106kb(C8106kb.a.Dup);
        C7437ga c7437ga = new C7437ga(183, c4724u1.a(c4724u1.d("Ljava/lang/NullPointerException;"), c4724u1.a(c4724u1.f37905M1, new com.android.tools.r8.graph.M2[0]), c4724u1.b(ConstantDescs.INIT_NAME)), false);
        C4965Cb c4965Cb = new C4965Cb();
        int i10 = InterfaceC8008jy.f49436a;
        AbstractC7552hC a10 = AbstractC7552hC.a(c8103ka, c8938pa, o92, c8103ka2, c10106wa, c8106kb, c7437ga, c4965Cb, c8103ka3, new G9(new C10564zF(new int[]{0}, new InterfaceC8008jy[]{NH.f42550c})), new C8938pa(enumC5477Kw0, 0), new C10546z9(1L, enumC5477Kw0), new V8(V8.a.f44968c, T10.f44369e), new C6440ab(enumC5477Kw0), c8103ka4);
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        return new com.android.tools.r8.graph.G(m22, 2, 1, a10, c6190Xe0, c6190Xe0);
    }

    public static void a(C4798y c4798y, com.android.tools.r8.synthesis.M m10, com.android.tools.r8.synthesis.N n10) {
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        com.android.tools.r8.androidapi.f fVar = c4798y.f38405T;
        n10.f58123m = fVar;
        n10.f58124n = fVar;
        n10.f58117g = m10;
        n10.f58116f = C5313Ib.f41136g;
    }

    public final com.android.tools.r8.graph.H5 d(C4798y c4798y) {
        final C4724u1 b10 = c4798y.b();
        return a(c4798y, b10.b("checkNotZero"), b10.a(b10.f37905M1, b10.f37884J1, b10.f38052g2), new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return C5628Nl0.c(C4724u1.this, a22);
            }
        });
    }

    @Override
    public final com.android.tools.r8.graph.H2 a() {
        return this.f42690b;
    }

    public final com.android.tools.r8.graph.H5 a(final C4798y c4798y, com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.I2 i22, final com.android.tools.r8.synthesis.M m10) {
        com.android.tools.r8.synthesis.J g10 = c4798y.f38408a.g();
        com.android.tools.r8.synthesis.I i10 = new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58182i;
                return bVar;
            }
        };
        com.android.tools.r8.graph.H2 h22 = this.f44016a;
        Consumer b10 = C6628bi.b();
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5628Nl0.a(C4798y.this, m10, (com.android.tools.r8.synthesis.N) obj);
            }
        };
        g10.getClass();
        return g10.a(l22, i22, i10, h22, c4798y, b10, consumer, C6628bi.b());
    }
}
