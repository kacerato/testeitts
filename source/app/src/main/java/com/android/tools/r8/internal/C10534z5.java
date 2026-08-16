package com.android.tools.r8.internal;

import android.app.Instrumentation;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8106kb;
import java.lang.constant.ConstantDescs;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.jar.Pack200;

public final class C10534z5 {

    public static final boolean f54278e = true;

    public final AbstractC8552nC f54279a;

    public final C4798y f54280b;

    public final IdentityHashMap f54281c = new IdentityHashMap();

    public final IdentityHashMap f54282d = new IdentityHashMap();

    public C10534z5(C4798y c4798y) {
        C8570nJ E10 = c4798y.E();
        C4724u1 m10 = E10.m();
        this.f54280b = c4798y;
        C8051kC c8051kC = new C8051kC(4);
        com.android.tools.r8.graph.M2 m22 = m10.f38132q2;
        C2 c22 = C2.K;
        c8051kC.a(m22, c22);
        com.android.tools.r8.graph.M2 m23 = m10.f38037e3;
        C2 c23 = C2.N;
        c8051kC.a(m23, c23);
        c8051kC.a(m10.f38013b3, c23);
        c8051kC.a(m10.f37956T3, C2.B);
        c8051kC.a(m10.f38069i3, c23);
        c8051kC.a(m10.f38005a3, c23);
        AbstractC8552nC b10 = c8051kC.b();
        if (!f54278e) {
            a(b10);
        }
        this.f54279a = b10;
        if (E10.f50616L0.b()) {
            if (E10.z().b(c22)) {
                b(m10);
                com.android.tools.r8.graph.M2 m24 = m10.f38132q2;
                if (!b(m24) || b(m24, c22)) {
                    c(m10);
                }
            }
            if (E10.z().b(c23)) {
                d(m10);
                com.android.tools.r8.graph.M2 m25 = m10.f38132q2;
                if (!b(m25) || b(m25, c23)) {
                    f(m10);
                    if (b(m10.f38005a3)) {
                        e(m10);
                    }
                }
            }
            if (E10.z().b(C2.O)) {
                g(m10);
                if (b(m10.f38005a3)) {
                    com.android.tools.r8.graph.M2 m26 = m10.f38077j3;
                    a(new G5(m10.a(m26, m10.a(m26, m10.f38005a3), m10.b("withInitial"))));
                }
            }
            if (E10.z().b(C2.P)) {
                a(new C9699u5(m10.f38071i5.f37695b, EV.a()));
            }
            if (E10.z().b(C2.Q)) {
                i(m10);
            }
            C2 z10 = E10.z();
            C2 c24 = C2.R;
            if (z10.b(c24)) {
                l(m10);
                com.android.tools.r8.graph.M2 m27 = m10.f38132q2;
                if (!b(m27) || b(m27, c24)) {
                    k(m10);
                    if (b(m10.f38005a3)) {
                        j(m10);
                    }
                }
            }
            if (E10.z().b(C2.S)) {
                m(m10);
                n(m10);
            }
            if (E10.z().b(C2.Sv2)) {
                o(m10);
            }
            C2 z11 = E10.z();
            C2 c25 = C2.T;
            if (z11.b(c25)) {
                p(m10);
                if (b(m10.f38037e3, c25)) {
                    h(m10);
                }
                if (b(m10.f38013b3, C2.f39079Q)) {
                    q(m10);
                }
            }
            if (E10.z().b(C2.U)) {
                if (b(m10.f38069i3, C2.f39079Q)) {
                    s(m10);
                }
                r(m10);
            }
            if (E10.z().b(C2.V)) {
                t(m10);
            }
            if (E10.z().b(C2.BAKLAVA)) {
                a(m10);
            }
        }
    }

    public static com.android.tools.r8.graph.G a(int i10, C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        return AbstractC5959Te.a(c4724u1, a22, i10, c4724u1.f37942R3);
    }

    public static com.android.tools.r8.graph.G b(int i10, C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        return AbstractC5959Te.a(c4724u1, a22, i10, c4724u1.f37956T3);
    }

    public final void c(C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2 m22 = c4724u1.f38132q2;
        com.android.tools.r8.graph.L2 b10 = c4724u1.b("compare");
        com.android.tools.r8.graph.M2 m23 = c4724u1.f37884J1;
        com.android.tools.r8.graph.M2 m24 = c4724u1.f38068i2;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(m23, m24, m24, c4724u1.f37997Z2), b10), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.b1(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.L2 b11 = c4724u1.b("deepEquals");
        com.android.tools.r8.graph.M2 m25 = c4724u1.f37849E1;
        com.android.tools.r8.graph.M2 m26 = c4724u1.f38068i2;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(m25, m26, m26), b11), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.c1(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.L2 b12 = c4724u1.b("equals");
        com.android.tools.r8.graph.M2 m27 = c4724u1.f37849E1;
        com.android.tools.r8.graph.M2 m28 = c4724u1.f38068i2;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(m27, m28, m28), b12), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.d1(c4724u12, a22);
            }
        }));
        a(new C9699u5(c4724u1.a(m22, c4724u1.a(c4724u1.f37884J1, c4724u1.f38092l2), c4724u1.b("hash")), Y30.a()));
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(c4724u1.f37884J1, c4724u1.f38068i2), c4724u1.b("hashCode")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.e1(c4724u12, a22);
            }
        }));
        a(new C9699u5(c4724u1.f37852E4.f37354f, new X30()));
        com.android.tools.r8.graph.A2 a22 = c4724u1.f37852E4.f37355g;
        com.android.tools.r8.graph.H0 b13 = this.f54280b.m() ? this.f54280b.b(a22) : null;
        if (b13 == null || !b13.A().y()) {
            a(new C9866v5(a22, new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a23) {
                    return I5.j1(c4724u12, a23);
                }
            }, 0));
        }
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(c4724u1.f38052g2, c4724u1.f38068i2), c4724u1.b("toString")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a23) {
                return I5.l1(c4724u12, a23);
            }
        }));
        com.android.tools.r8.graph.L2 b14 = c4724u1.b("toString");
        com.android.tools.r8.graph.M2 m29 = c4724u1.f38052g2;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(m29, c4724u1.f38068i2, m29), b14), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a23) {
                return I5.m1(c4724u12, a23);
            }
        }, 0));
    }

    public final void d(C4724u1 c4724u1) {
        a(new C9699u5(c4724u1.a(c4724u1.f37975W1, c4724u1.a(c4724u1.f37884J1, c4724u1.f37856F1), c4724u1.b("hashCode")), new Q10()));
        a(new C9699u5(c4724u1.a(c4724u1.f38020c2, c4724u1.a(c4724u1.f37884J1, c4724u1.f37898L1), c4724u1.b("hashCode")), new Q10()));
        com.android.tools.r8.graph.M2 m22 = c4724u1.f38004a2;
        com.android.tools.r8.graph.L2 b10 = c4724u1.b("hashCode");
        com.android.tools.r8.graph.M2 m23 = c4724u1.f37884J1;
        a(new C9699u5(c4724u1.a(m22, c4724u1.a(m23, m23), b10), new Q10()));
        com.android.tools.r8.graph.L2 b11 = c4724u1.b("max");
        com.android.tools.r8.graph.M2 m24 = c4724u1.f37884J1;
        a(new C9699u5(c4724u1.a(m22, c4724u1.a(m24, m24, m24), b11), R10.b()));
        com.android.tools.r8.graph.L2 b12 = c4724u1.b("min");
        com.android.tools.r8.graph.M2 m25 = c4724u1.f37884J1;
        a(new C9699u5(c4724u1.a(m22, c4724u1.a(m25, m25, m25), b12), R10.b()));
        com.android.tools.r8.graph.L2 b13 = c4724u1.b("sum");
        com.android.tools.r8.graph.M2 m26 = c4724u1.f37884J1;
        a(new C9699u5(c4724u1.a(m22, c4724u1.a(m26, m26, m26), b13), R10.a()));
        com.android.tools.r8.graph.M2 m27 = c4724u1.f37989Y1;
        a(new C9866v5(c4724u1.a(m27, c4724u1.a(c4724u1.f37884J1, c4724u1.f37870H1), c4724u1.b("hashCode")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.C(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.L2 b14 = c4724u1.b("max");
        com.android.tools.r8.graph.M2 m28 = c4724u1.f37870H1;
        a(new C9699u5(c4724u1.a(m27, c4724u1.a(m28, m28, m28), b14), R10.b()));
        com.android.tools.r8.graph.L2 b15 = c4724u1.b("min");
        com.android.tools.r8.graph.M2 m29 = c4724u1.f37870H1;
        a(new C9699u5(c4724u1.a(m27, c4724u1.a(m29, m29, m29), b15), R10.b()));
        com.android.tools.r8.graph.L2 b16 = c4724u1.b("sum");
        com.android.tools.r8.graph.M2 m210 = c4724u1.f37870H1;
        a(new C9699u5(c4724u1.a(m27, c4724u1.a(m210, m210, m210), b16), R10.a()));
        a(new C9866v5(c4724u1.a(m27, c4724u1.a(c4724u1.f37849E1, c4724u1.f37870H1), c4724u1.b("isFinite")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.D(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.M2 m211 = c4724u1.f37996Z1;
        a(new C9699u5(c4724u1.a(m211, c4724u1.a(c4724u1.f37884J1, c4724u1.f37877I1), c4724u1.b("hashCode")), AbstractC5130Ex.a()));
        com.android.tools.r8.graph.L2 b17 = c4724u1.b("max");
        com.android.tools.r8.graph.M2 m212 = c4724u1.f37877I1;
        a(new C9699u5(c4724u1.a(m211, c4724u1.a(m212, m212, m212), b17), R10.b()));
        com.android.tools.r8.graph.L2 b18 = c4724u1.b("min");
        com.android.tools.r8.graph.M2 m213 = c4724u1.f37877I1;
        a(new C9699u5(c4724u1.a(m211, c4724u1.a(m213, m213, m213), b18), R10.b()));
        com.android.tools.r8.graph.L2 b19 = c4724u1.b("sum");
        com.android.tools.r8.graph.M2 m214 = c4724u1.f37877I1;
        a(new C9699u5(c4724u1.a(m211, c4724u1.a(m214, m214, m214), b19), R10.a()));
        a(new C9866v5(c4724u1.a(m211, c4724u1.a(c4724u1.f37849E1, c4724u1.f37877I1), c4724u1.b("isFinite")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.F(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.M2 m215 = c4724u1.f37968V1;
        a(new C9866v5(c4724u1.a(m215, c4724u1.a(c4724u1.f37884J1, c4724u1.f37849E1), c4724u1.b("hashCode")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.j(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.L2 b20 = c4724u1.b("logicalAnd");
        com.android.tools.r8.graph.M2 m216 = c4724u1.f37849E1;
        a(new C9699u5(c4724u1.a(m215, c4724u1.a(m216, m216, m216), b20), AbstractC7537h7.a(EnumC9105qa.f51810e)));
        com.android.tools.r8.graph.L2 b21 = c4724u1.b("logicalOr");
        com.android.tools.r8.graph.M2 m217 = c4724u1.f37849E1;
        a(new C9699u5(c4724u1.a(m215, c4724u1.a(m217, m217, m217), b21), AbstractC7537h7.a(EnumC9105qa.f51811f)));
        com.android.tools.r8.graph.L2 b22 = c4724u1.b("logicalXor");
        com.android.tools.r8.graph.M2 m218 = c4724u1.f37849E1;
        a(new C9699u5(c4724u1.a(m215, c4724u1.a(m218, m218, m218), b22), AbstractC7537h7.a(EnumC9105qa.f51812g)));
        com.android.tools.r8.graph.M2 m219 = c4724u1.f38012b2;
        a(new C9866v5(c4724u1.a(m219, c4724u1.a(c4724u1.f37884J1, c4724u1.f37891K1), c4724u1.b("hashCode")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.U(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.L2 b23 = c4724u1.b("max");
        com.android.tools.r8.graph.M2 m220 = c4724u1.f37891K1;
        a(new C9699u5(c4724u1.a(m219, c4724u1.a(m220, m220, m220), b23), R10.b()));
        com.android.tools.r8.graph.L2 b24 = c4724u1.b("min");
        com.android.tools.r8.graph.M2 m221 = c4724u1.f37891K1;
        a(new C9699u5(c4724u1.a(m219, c4724u1.a(m221, m221, m221), b24), R10.b()));
        com.android.tools.r8.graph.L2 b25 = c4724u1.b("sum");
        com.android.tools.r8.graph.M2 m222 = c4724u1.f37891K1;
        a(new C9699u5(c4724u1.a(m219, c4724u1.a(m222, m222, m222), b25), R10.a()));
        a(new C9699u5(c4724u1.a(c4724u1.f37982X1, c4724u1.a(c4724u1.f37884J1, c4724u1.f37863G1), c4724u1.b("hashCode")), new Q10()));
        com.android.tools.r8.graph.M2[] m2Arr = {c4724u1.f38156t2, c4724u1.f38164u2};
        for (int i10 = 0; i10 < 2; i10++) {
            com.android.tools.r8.graph.M2 m223 = m2Arr[i10];
            com.android.tools.r8.graph.L2 b26 = c4724u1.b("addExact");
            com.android.tools.r8.graph.M2 m224 = c4724u1.f37884J1;
            a(new C9866v5(c4724u1.a(m223, c4724u1.a(m224, m224, m224), b26), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.f0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.L2 b27 = c4724u1.b("addExact");
            com.android.tools.r8.graph.M2 m225 = c4724u1.f37891K1;
            a(new C9866v5(c4724u1.a(m223, c4724u1.a(m225, m225, m225), b27), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.g0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.L2 b28 = c4724u1.b("floorDiv");
            com.android.tools.r8.graph.M2 m226 = c4724u1.f37884J1;
            a(new C9866v5(c4724u1.a(m223, c4724u1.a(m226, m226, m226), b28), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.z0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.L2 b29 = c4724u1.b("floorDiv");
            com.android.tools.r8.graph.M2 m227 = c4724u1.f37891K1;
            a(new C9866v5(c4724u1.a(m223, c4724u1.a(m227, m227, m227), b29), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.A0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.L2 b30 = c4724u1.b("floorMod");
            com.android.tools.r8.graph.M2 m228 = c4724u1.f37884J1;
            a(new C9866v5(c4724u1.a(m223, c4724u1.a(m228, m228, m228), b30), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.C0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.L2 b31 = c4724u1.b("floorMod");
            com.android.tools.r8.graph.M2 m229 = c4724u1.f37891K1;
            a(new C9866v5(c4724u1.a(m223, c4724u1.a(m229, m229, m229), b31), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.D0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.L2 b32 = c4724u1.b("multiplyExact");
            com.android.tools.r8.graph.M2 m230 = c4724u1.f37884J1;
            a(new C9866v5(c4724u1.a(m223, c4724u1.a(m230, m230, m230), b32), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.H0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.L2 b33 = c4724u1.b("multiplyExact");
            com.android.tools.r8.graph.M2 m231 = c4724u1.f37891K1;
            a(new C9866v5(c4724u1.a(m223, c4724u1.a(m231, m231, m231), b33), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.I0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.L2 b34 = c4724u1.b("nextDown");
            com.android.tools.r8.graph.M2 m232 = c4724u1.f37870H1;
            a(new C9866v5(c4724u1.a(m223, c4724u1.a(m232, m232), b34), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.O0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.L2 b35 = c4724u1.b("nextDown");
            com.android.tools.r8.graph.M2 m233 = c4724u1.f37877I1;
            a(new C9866v5(c4724u1.a(m223, c4724u1.a(m233, m233), b35), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.P0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.L2 b36 = c4724u1.b("subtractExact");
            com.android.tools.r8.graph.M2 m234 = c4724u1.f37884J1;
            a(new C9866v5(c4724u1.a(m223, c4724u1.a(m234, m234, m234), b36), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.Q0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.L2 b37 = c4724u1.b("subtractExact");
            com.android.tools.r8.graph.M2 m235 = c4724u1.f37891K1;
            a(new C9866v5(c4724u1.a(m223, c4724u1.a(m235, m235, m235), b37), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.R0(c4724u12, a22);
                }
            }, 0));
            a(new C9866v5(c4724u1.a(m223, c4724u1.a(c4724u1.f37884J1, c4724u1.f37891K1), c4724u1.b("toIntExact")), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.S0(c4724u12, a22);
                }
            }));
        }
        a(c4724u1, c4724u1.f38156t2);
        if (this.f54280b.E().c0()) {
            return;
        }
        a(new C9699u5(c4724u1.f38055g5.f37529b, new C6794ci()));
        a(new C9699u5(c4724u1.f38063h5.f37647b, AbstractC8327lt.a()));
    }

    public final void e(C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2 m22 = c4724u1.f38132q2;
        com.android.tools.r8.graph.L2 b10 = c4724u1.b("requireNonNull");
        com.android.tools.r8.graph.M2 m23 = c4724u1.f38068i2;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(m23, m23, c4724u1.f38005a3), b10), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.k1(c4724u12, a22);
            }
        }));
    }

    public final void f(C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2 m22 = c4724u1.f38132q2;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(c4724u1.f37849E1, c4724u1.f38068i2), c4724u1.b("isNull")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.f1(c4724u12, a22);
            }
        }));
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(c4724u1.f37849E1, c4724u1.f38068i2), c4724u1.b("nonNull")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.g1(c4724u12, a22);
            }
        }));
    }

    public final void g(C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2 m22 = c4724u1.f37975W1;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(c4724u1.f37884J1, c4724u1.f37856F1), c4724u1.b("toUnsignedInt")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.m(c4724u12, a22);
            }
        }));
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(c4724u1.f37891K1, c4724u1.f37856F1), c4724u1.b("toUnsignedLong")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.n(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.M2 m23 = c4724u1.f38020c2;
        a(new C9866v5(c4724u1.a(m23, c4724u1.a(c4724u1.f37884J1, c4724u1.f37898L1), c4724u1.b("toUnsignedInt")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.D1(c4724u12, a22);
            }
        }));
        a(new C9866v5(c4724u1.a(m23, c4724u1.a(c4724u1.f37891K1, c4724u1.f37898L1), c4724u1.b("toUnsignedLong")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.E1(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.M2 m24 = c4724u1.f38004a2;
        com.android.tools.r8.graph.L2 b10 = c4724u1.b("divideUnsigned");
        com.android.tools.r8.graph.M2 m25 = c4724u1.f37884J1;
        a(new C9866v5(c4724u1.a(m24, c4724u1.a(m25, m25, m25), b10), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.I(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.L2 b11 = c4724u1.b("remainderUnsigned");
        com.android.tools.r8.graph.M2 m26 = c4724u1.f37884J1;
        a(new C9866v5(c4724u1.a(m24, c4724u1.a(m26, m26, m26), b11), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.O(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.L2 b12 = c4724u1.b("compareUnsigned");
        com.android.tools.r8.graph.M2 m27 = c4724u1.f37884J1;
        a(new C9866v5(c4724u1.a(m24, c4724u1.a(m27, m27, m27), b12), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.H(c4724u12, a22);
            }
        }));
        a(new C9866v5(c4724u1.a(m24, c4724u1.a(c4724u1.f37891K1, c4724u1.f37884J1), c4724u1.b("toUnsignedLong")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.P(c4724u12, a22);
            }
        }));
        a(new C9866v5(c4724u1.a(m24, c4724u1.a(c4724u1.f37884J1, c4724u1.f38052g2), c4724u1.b("parseUnsignedInt")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.L(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.L2 b13 = c4724u1.b("parseUnsignedInt");
        com.android.tools.r8.graph.M2 m28 = c4724u1.f37884J1;
        a(new C9866v5(c4724u1.a(m24, c4724u1.a(m28, c4724u1.f38052g2, m28), b13), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.N(c4724u12, a22);
            }
        }, 0));
        a(new C9866v5(c4724u1.a(m24, c4724u1.a(c4724u1.f38052g2, c4724u1.f37884J1), c4724u1.b("toUnsignedString")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.Q(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.L2 b14 = c4724u1.b("toUnsignedString");
        com.android.tools.r8.graph.M2 m29 = c4724u1.f38052g2;
        com.android.tools.r8.graph.M2 m210 = c4724u1.f37884J1;
        a(new C9866v5(c4724u1.a(m24, c4724u1.a(m29, m210, m210), b14), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.R(c4724u12, a22);
            }
        }, 0));
        com.android.tools.r8.graph.M2 m211 = c4724u1.f38012b2;
        com.android.tools.r8.graph.L2 b15 = c4724u1.b("divideUnsigned");
        com.android.tools.r8.graph.M2 m212 = c4724u1.f37891K1;
        a(new C9866v5(c4724u1.a(m211, c4724u1.a(m212, m212, m212), b15), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.T(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.L2 b16 = c4724u1.b("remainderUnsigned");
        com.android.tools.r8.graph.M2 m213 = c4724u1.f37891K1;
        a(new C9866v5(c4724u1.a(m211, c4724u1.a(m213, m213, m213), b16), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.a0(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.L2 b17 = c4724u1.b("compareUnsigned");
        com.android.tools.r8.graph.M2 m214 = c4724u1.f37884J1;
        com.android.tools.r8.graph.M2 m215 = c4724u1.f37891K1;
        a(new C9866v5(c4724u1.a(m211, c4724u1.a(m214, m215, m215), b17), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.S(c4724u12, a22);
            }
        }));
        a(new C9866v5(c4724u1.a(m211, c4724u1.a(c4724u1.f37891K1, c4724u1.f38052g2), c4724u1.b("parseUnsignedLong")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.X(c4724u12, a22);
            }
        }));
        a(new C9866v5(c4724u1.a(m211, c4724u1.a(c4724u1.f37891K1, c4724u1.f38052g2, c4724u1.f37884J1), c4724u1.b("parseUnsignedLong")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.Z(c4724u12, a22);
            }
        }, 0));
        a(new C9866v5(c4724u1.a(m211, c4724u1.a(c4724u1.f38052g2, c4724u1.f37891K1), c4724u1.b("toUnsignedString")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.b0(c4724u12, a22);
            }
        }));
        a(new C9866v5(c4724u1.a(m211, c4724u1.a(c4724u1.f38052g2, c4724u1.f37891K1, c4724u1.f37884J1), c4724u1.b("toUnsignedString")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.c0(c4724u12, a22);
            }
        }, 0));
        com.android.tools.r8.graph.M2 m216 = c4724u1.f37826B2;
        a(new D5(c4724u1.a(m216, c4724u1.a(c4724u1.f37884J1, new com.android.tools.r8.graph.M2[0]), c4724u1.b("getParameterCount")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.U0(c4724u12, a22);
            }
        }, m216));
        com.android.tools.r8.graph.M2 m217 = c4724u1.f38052g2;
        a(new C9866v5(c4724u1.a(m217, c4724u1.a(c4724u1.f38052g2, c4724u1.f38036e2, c4724u1.f38044f2), c4724u1.b("join")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.H1(c4724u12, a22);
            }
        }, 0));
        a(new C9866v5(c4724u1.a(m217, c4724u1.a(c4724u1.f38052g2, c4724u1.f38036e2, c4724u1.f38148s2), c4724u1.b("join")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.I1(c4724u12, a22);
            }
        }, 0));
    }

    public final void h(C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2 m22 = c4724u1.f38037e3;
        com.android.tools.r8.graph.M2[] m2Arr = {m22, c4724u1.f38045f3, c4724u1.f38061h3, c4724u1.f38053g3};
        a(new D5(c4724u1.a(m22, c4724u1.a(m22, c4724u1.f38005a3), c4724u1.b("or")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.v1(c4724u12, a22);
            }
        }, m22));
        com.android.tools.r8.graph.M2[] m2Arr2 = {c4724u1.f38069i3, c4724u1.c(c4724u1.b("Ljava/util/stream/DoubleStream;")), c4724u1.c(c4724u1.b("Ljava/util/stream/LongStream;")), c4724u1.c(c4724u1.b("Ljava/util/stream/IntStream;"))};
        F5[] f5Arr = {new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.w1(c4724u12, a22);
            }
        }, new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.x1(c4724u12, a22);
            }
        }, new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.z1(c4724u12, a22);
            }
        }, new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.y1(c4724u12, a22);
            }
        }};
        com.android.tools.r8.graph.L2 b10 = c4724u1.b(Instrumentation.REPORT_KEY_STREAMRESULT);
        for (int i10 = 0; i10 < 4; i10++) {
            com.android.tools.r8.graph.M2 m23 = m2Arr[i10];
            a(new D5(c4724u1.a(m23, c4724u1.a(m2Arr2[i10], new com.android.tools.r8.graph.M2[0]), b10), f5Arr[i10], m23));
        }
        com.android.tools.r8.graph.M2[] m2Arr3 = {c4724u1.f38021c3, c4724u1.f38125p3, c4724u1.f38133q3, c4724u1.f38141r3};
        F5[] f5Arr2 = {new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.n1(c4724u12, a22);
            }
        }, new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.o1(c4724u12, a22);
            }
        }, new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.q1(c4724u12, a22);
            }
        }, new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.p1(c4724u12, a22);
            }
        }};
        for (int i11 = 0; i11 < 4; i11++) {
            com.android.tools.r8.graph.M2 m24 = m2Arr[i11];
            a(new D5(c4724u1.a(m24, c4724u1.a(c4724u1.f37905M1, m2Arr3[i11], c4724u1.f38029d3), c4724u1.b("ifPresentOrElse")), f5Arr2[i11], m24));
        }
        com.android.tools.r8.graph.M2[] m2Arr4 = {c4724u1.f38068i2, c4724u1.f37870H1, c4724u1.f37891K1, c4724u1.f37884J1};
        InterfaceC10033w5[] interfaceC10033w5Arr = {AbstractC9697u40.d(), AbstractC9697u40.a(), AbstractC9697u40.c(), AbstractC9697u40.b()};
        com.android.tools.r8.graph.L2 b11 = c4724u1.b("orElseThrow");
        for (int i12 = 0; i12 < 4; i12++) {
            a(new C9699u5(c4724u1.a(m2Arr[i12], c4724u1.a(m2Arr4[i12], new com.android.tools.r8.graph.M2[0]), b11), interfaceC10033w5Arr[i12]));
        }
        F5[] f5Arr3 = {new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.r1(c4724u12, a22);
            }
        }, new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.s1(c4724u12, a22);
            }
        }, new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.u1(c4724u12, a22);
            }
        }, new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.t1(c4724u12, a22);
            }
        }};
        com.android.tools.r8.graph.L2 b12 = c4724u1.b("isEmpty");
        for (int i13 = 0; i13 < 4; i13++) {
            a(new D5(c4724u1.a(m2Arr[i13], c4724u1.a(c4724u1.f37849E1, new com.android.tools.r8.graph.M2[0]), b12), f5Arr3[i13], m2Arr[i13]));
        }
    }

    public final void i(C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2 d10 = c4724u1.d("Ljava/math/BigDecimal;");
        a(new E5(c4724u1.a(d10, c4724u1.a(d10, new com.android.tools.r8.graph.M2[0]), "stripTrailingZeros"), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.h(c4724u12, a22);
            }
        }, d10));
        if (this.f54280b.E().c0()) {
            return;
        }
        a(new C9699u5(c4724u1.f38079j5.f37722b, FV.a()));
    }

    public final void j(C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2 m22 = c4724u1.f38132q2;
        com.android.tools.r8.graph.L2 b10 = c4724u1.b("requireNonNullElseGet");
        com.android.tools.r8.graph.M2 m23 = c4724u1.f38068i2;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(m23, m23, c4724u1.f38005a3), b10), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.i1(c4724u12, a22);
            }
        }));
    }

    public final void k(C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2 m22 = c4724u1.f38132q2;
        com.android.tools.r8.graph.L2 b10 = c4724u1.b("requireNonNullElse");
        com.android.tools.r8.graph.M2 m23 = c4724u1.f38068i2;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(m23, m23, m23), b10), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.h1(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.L2 b11 = c4724u1.b("checkIndex");
        com.android.tools.r8.graph.M2 m24 = c4724u1.f37884J1;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(m24, m24, m24), b11), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.Z0(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.L2 b12 = c4724u1.b("checkFromToIndex");
        com.android.tools.r8.graph.M2 m25 = c4724u1.f37884J1;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(m25, m25, m25, m25), b12), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.X0(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.L2 b13 = c4724u1.b("checkFromIndexSize");
        com.android.tools.r8.graph.M2 m26 = c4724u1.f37884J1;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(m26, m26, m26, m26), b13), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.V0(c4724u12, a22);
            }
        }));
    }

    public final void l(final C4724u1 c4724u1) {
        a(new C9699u5(c4724u1.f38103m5.f37012d, AbstractC6017Ue.f44815a));
        a(new C9699u5(c4724u1.f38111n5.f37091a, AbstractC6017Ue.f44816b));
        a(new C9699u5(c4724u1.f38119o5.f37114a, AbstractC6017Ue.f44817c));
        com.android.tools.r8.graph.M2 m22 = c4724u1.f37942R3;
        com.android.tools.r8.graph.L2 b10 = c4724u1.b("of");
        for (final int i10 = 1; i10 <= 10; i10++) {
            a(new C9866v5(c4724u1.a(m22, c4724u1.a(m22, Collections.nCopies(i10, c4724u1.f38068i2)), b10), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return C10534z5.a(i10, c4724u12, a22);
                }
            }));
        }
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(m22, c4724u1.f38092l2), b10), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.s(c4724u12, a22);
            }
        }, 0));
        com.android.tools.r8.graph.M2 m23 = c4724u1.f37956T3;
        com.android.tools.r8.graph.L2 b11 = c4724u1.b("of");
        for (final int i11 = 1; i11 <= 10; i11++) {
            a(new C9866v5(c4724u1.a(m23, c4724u1.a(m23, Collections.nCopies(i11, c4724u1.f38068i2)), b11), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return C10534z5.b(i11, c4724u12, a22);
                }
            }));
        }
        a(new C9866v5(c4724u1.a(m23, c4724u1.a(m23, c4724u1.f38092l2), b11), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.v(c4724u12, a22);
            }
        }, 0));
        com.android.tools.r8.graph.M2 m24 = c4724u1.f37949S3;
        com.android.tools.r8.graph.L2 b12 = c4724u1.b("of");
        for (final int i12 = 1; i12 <= 10; i12++) {
            a(new C9866v5(c4724u1.a(m24, c4724u1.a(m24, Collections.nCopies(i12 * 2, c4724u1.f38068i2)), b12), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return C10534z5.a(C4724u1.this, i12, c4724u12, a22);
                }
            }));
        }
        a(new C9866v5(c4724u1.a(m24, c4724u1.a(m24, c4724u1.a(1, c4724u1.f37976W2)), "ofEntries"), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.u(c4724u12, a22);
            }
        }, 0));
        com.android.tools.r8.graph.M2 m25 = c4724u1.f37949S3;
        com.android.tools.r8.graph.M2 m26 = c4724u1.f37976W2;
        com.android.tools.r8.graph.M2 m27 = c4724u1.f38068i2;
        a(new C9866v5(c4724u1.a(m25, c4724u1.a(m26, m27, m27), "entry"), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.t(c4724u12, a22);
            }
        }));
    }

    public final void m(C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2 m22 = c4724u1.f37975W1;
        com.android.tools.r8.graph.L2 b10 = c4724u1.b("compareUnsigned");
        com.android.tools.r8.graph.M2 m23 = c4724u1.f37884J1;
        com.android.tools.r8.graph.M2 m24 = c4724u1.f37856F1;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(m23, m24, m24), b10), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.l(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.M2 m25 = c4724u1.f38020c2;
        com.android.tools.r8.graph.L2 b11 = c4724u1.b("compareUnsigned");
        com.android.tools.r8.graph.M2 m26 = c4724u1.f37884J1;
        com.android.tools.r8.graph.M2 m27 = c4724u1.f37898L1;
        a(new C9866v5(c4724u1.a(m25, c4724u1.a(m26, m27, m27), b11), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.C1(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.M2[] m2Arr = {c4724u1.f38156t2, c4724u1.f38164u2};
        for (int i10 = 0; i10 < 2; i10++) {
            com.android.tools.r8.graph.M2 m28 = m2Arr[i10];
            com.android.tools.r8.graph.L2 b12 = c4724u1.b("multiplyExact");
            com.android.tools.r8.graph.M2 m29 = c4724u1.f37891K1;
            a(new C9866v5(c4724u1.a(m28, c4724u1.a(m29, m29, c4724u1.f37884J1), b12), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.J0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.L2 b13 = c4724u1.b("multiplyFull");
            com.android.tools.r8.graph.M2 m210 = c4724u1.f37891K1;
            com.android.tools.r8.graph.M2 m211 = c4724u1.f37884J1;
            a(new C9866v5(c4724u1.a(m28, c4724u1.a(m210, m211, m211), b13), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.K0(c4724u12, a22);
                }
            }));
            com.android.tools.r8.graph.L2 b14 = c4724u1.b("multiplyHigh");
            com.android.tools.r8.graph.M2 m212 = c4724u1.f37891K1;
            a(new C9866v5(c4724u1.a(m28, c4724u1.a(m212, m212, m212), b14), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.L0(c4724u12, a22);
                }
            }));
            com.android.tools.r8.graph.L2 b15 = c4724u1.b("floorDiv");
            com.android.tools.r8.graph.M2 m213 = c4724u1.f37891K1;
            a(new C9866v5(c4724u1.a(m28, c4724u1.a(m213, m213, c4724u1.f37884J1), b15), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.B0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.L2 b16 = c4724u1.b("floorMod");
            com.android.tools.r8.graph.M2 m214 = c4724u1.f37884J1;
            a(new C9866v5(c4724u1.a(m28, c4724u1.a(m214, c4724u1.f37891K1, m214), b16), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.E0(c4724u12, a22);
                }
            }, 0));
        }
        a(new C9699u5(c4724u1.f38039e5.f38370b, AbstractC9145qn0.a()));
        if (this.f54280b.E().c0()) {
            return;
        }
        a(new C9699u5(c4724u1.f38047f5.f37571b, AbstractC5530Lu0.a()));
    }

    public final void n(C4724u1 c4724u1) {
        a(new C9866v5(c4724u1.a(c4724u1.f37942R3, c4724u1.a(c4724u1.f37942R3, c4724u1.f37990Y2), c4724u1.b("copyOf")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.w(c4724u12, a22);
            }
        }, 0));
        a(new C9866v5(c4724u1.a(c4724u1.f37956T3, c4724u1.a(c4724u1.f37956T3, c4724u1.f37990Y2), c4724u1.b("copyOf")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.y(c4724u12, a22);
            }
        }, 0));
        com.android.tools.r8.graph.M2 m22 = c4724u1.f37949S3;
        com.android.tools.r8.graph.L2 b10 = c4724u1.b("copyOf");
        com.android.tools.r8.graph.M2 m23 = c4724u1.f37949S3;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(m23, m23), b10), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.x(c4724u12, a22);
            }
        }, 0));
    }

    public final void o(C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2 m22 = c4724u1.f38072i6;
        com.android.tools.r8.graph.L2 b10 = c4724u1.b("compareAndSwapObject");
        com.android.tools.r8.graph.M2 m23 = c4724u1.f37849E1;
        com.android.tools.r8.graph.M2 m24 = c4724u1.f38068i2;
        a(new E5(c4724u1.a(m22, c4724u1.a(m23, m24, c4724u1.f37891K1, m24, m24), b10), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.P1(c4724u12, a22);
            }
        }, m22));
        com.android.tools.r8.graph.M2 d10 = c4724u1.d("Ljava/util/concurrent/atomic/AtomicReference;");
        com.android.tools.r8.graph.L2 b11 = c4724u1.b("compareAndSet");
        com.android.tools.r8.graph.M2 m25 = c4724u1.f37849E1;
        com.android.tools.r8.graph.M2 m26 = c4724u1.f38068i2;
        a(new E5(c4724u1.a(d10, c4724u1.a(m25, m26, m26), b11), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.g(c4724u12, a22);
            }
        }, d10));
        com.android.tools.r8.graph.M2 d11 = c4724u1.d("Ljava/util/concurrent/atomic/AtomicReferenceArray;");
        com.android.tools.r8.graph.L2 b12 = c4724u1.b("compareAndSet");
        com.android.tools.r8.graph.M2 m27 = c4724u1.f37849E1;
        com.android.tools.r8.graph.M2 m28 = c4724u1.f37884J1;
        com.android.tools.r8.graph.M2 m29 = c4724u1.f38068i2;
        a(new E5(c4724u1.a(d11, c4724u1.a(m27, m28, m29, m29), b12), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.e(c4724u12, a22);
            }
        }, d11));
        com.android.tools.r8.graph.M2 d12 = c4724u1.d("Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;");
        com.android.tools.r8.graph.L2 b13 = c4724u1.b("compareAndSet");
        com.android.tools.r8.graph.M2 m210 = c4724u1.f37849E1;
        com.android.tools.r8.graph.M2 m211 = c4724u1.f38068i2;
        a(new E5(c4724u1.a(d12, c4724u1.a(m210, m211, m211, m211), b13), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.f(c4724u12, a22);
            }
        }, d12));
    }

    public final void p(C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2 m22 = c4724u1.f38004a2;
        com.android.tools.r8.graph.L2 b10 = c4724u1.b("parseInt");
        com.android.tools.r8.graph.M2 m23 = c4724u1.f37884J1;
        com.android.tools.r8.graph.A2 a10 = c4724u1.a(m22, c4724u1.a(m23, c4724u1.f38036e2, m23, m23, m23), b10);
        C8570nJ E10 = this.f54280b.E();
        E10.getClass();
        C2 c22 = C2.L;
        a(E10.c(c22) ? new C9866v5(a10, new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.J(c4724u12, a22);
            }
        }, 0) : new C9866v5(a10, new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.K(c4724u12, a22);
            }
        }, 0));
        com.android.tools.r8.graph.M2 m24 = c4724u1.f38004a2;
        com.android.tools.r8.graph.L2 b11 = c4724u1.b("parseUnsignedInt");
        com.android.tools.r8.graph.M2 m25 = c4724u1.f37884J1;
        a(new C9866v5(c4724u1.a(m24, c4724u1.a(m25, c4724u1.f38036e2, m25, m25, m25), b11), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.M(c4724u12, a22);
            }
        }, 0));
        com.android.tools.r8.graph.M2 m26 = c4724u1.f38012b2;
        com.android.tools.r8.graph.L2 b12 = c4724u1.b("parseLong");
        com.android.tools.r8.graph.M2 m27 = c4724u1.f37891K1;
        com.android.tools.r8.graph.M2 m28 = c4724u1.f38036e2;
        com.android.tools.r8.graph.M2 m29 = c4724u1.f37884J1;
        com.android.tools.r8.graph.A2 a11 = c4724u1.a(m26, c4724u1.a(m27, m28, m29, m29, m29), b12);
        C8570nJ E11 = this.f54280b.E();
        E11.getClass();
        a(E11.c(c22) ? new C9866v5(a11, new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.V(c4724u12, a22);
            }
        }, 0) : new C9866v5(a11, new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.W(c4724u12, a22);
            }
        }, 0));
        com.android.tools.r8.graph.M2 m210 = c4724u1.f38012b2;
        com.android.tools.r8.graph.L2 b13 = c4724u1.b("parseUnsignedLong");
        com.android.tools.r8.graph.M2 m211 = c4724u1.f37891K1;
        com.android.tools.r8.graph.M2 m212 = c4724u1.f38036e2;
        com.android.tools.r8.graph.M2 m213 = c4724u1.f37884J1;
        a(new C9866v5(c4724u1.a(m210, c4724u1.a(m211, m212, m213, m213, m213), b13), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.Y(c4724u12, a22);
            }
        }, 0));
        com.android.tools.r8.graph.M2 m214 = c4724u1.f38052g2;
        a(new D5(c4724u1.a(m214, c4724u1.a(c4724u1.f38052g2, c4724u1.f37884J1), c4724u1.b("repeat")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.J1(c4724u12, a22);
            }
        }, m214));
        com.android.tools.r8.graph.M2 m215 = c4724u1.f38052g2;
        a(new D5(c4724u1.a(m215, c4724u1.a(c4724u1.f37849E1, new com.android.tools.r8.graph.M2[0]), c4724u1.b("isBlank")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.G1(c4724u12, a22);
            }
        }, m215));
        com.android.tools.r8.graph.M2 m216 = c4724u1.f38052g2;
        a(new D5(c4724u1.a(m216, c4724u1.a(c4724u1.f38052g2, new com.android.tools.r8.graph.M2[0]), c4724u1.b(Pack200.Packer.STRIP)), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.K1(c4724u12, a22);
            }
        }, m216));
        com.android.tools.r8.graph.M2 m217 = c4724u1.f38052g2;
        a(new D5(c4724u1.a(m217, c4724u1.a(c4724u1.f38052g2, new com.android.tools.r8.graph.M2[0]), c4724u1.b("stripLeading")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.L1(c4724u12, a22);
            }
        }, m217));
        com.android.tools.r8.graph.M2 m218 = c4724u1.f38052g2;
        a(new D5(c4724u1.a(m218, c4724u1.a(c4724u1.f38052g2, new com.android.tools.r8.graph.M2[0]), c4724u1.b("stripTrailing")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.M1(c4724u12, a22);
            }
        }, m218));
    }

    public final void q(C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2 m22 = c4724u1.f38013b3;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(m22, m22), c4724u1.b("not")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.A1(c4724u12, a22);
            }
        }, 0));
    }

    public final void r(C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2 m22 = c4724u1.f38132q2;
        com.android.tools.r8.graph.L2 b10 = c4724u1.b("checkIndex");
        com.android.tools.r8.graph.M2 m23 = c4724u1.f37891K1;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(m23, m23, m23), b10), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.a1(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.L2 b11 = c4724u1.b("checkFromToIndex");
        com.android.tools.r8.graph.M2 m24 = c4724u1.f37891K1;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(m24, m24, m24, m24), b11), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.Y0(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.L2 b12 = c4724u1.b("checkFromIndexSize");
        com.android.tools.r8.graph.M2 m25 = c4724u1.f37891K1;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(m25, m25, m25, m25), b12), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.W0(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.M2 m26 = c4724u1.f38036e2;
        com.android.tools.r8.graph.L2 b13 = c4724u1.b("compare");
        com.android.tools.r8.graph.M2 m27 = c4724u1.f37884J1;
        com.android.tools.r8.graph.M2 m28 = c4724u1.f38036e2;
        a(new C9866v5(c4724u1.a(m26, c4724u1.a(m27, m28, m28), b13), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.o(c4724u12, a22);
            }
        }, 0));
        com.android.tools.r8.graph.M2[] m2Arr = {c4724u1.f38156t2, c4724u1.f38164u2};
        for (int i10 = 0; i10 < 2; i10++) {
            com.android.tools.r8.graph.M2 m29 = m2Arr[i10];
            com.android.tools.r8.graph.L2 b14 = c4724u1.b("absExact");
            com.android.tools.r8.graph.M2 m210 = c4724u1.f37884J1;
            a(new C9866v5(c4724u1.a(m29, c4724u1.a(m210, m210), b14), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.d0(c4724u12, a22);
                }
            }));
            com.android.tools.r8.graph.M2 m211 = c4724u1.f37891K1;
            a(new C9866v5(c4724u1.a(m29, c4724u1.a(m211, m211), b14), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.e0(c4724u12, a22);
                }
            }));
        }
        a(c4724u1, c4724u1.f38164u2);
    }

    public final void s(C4724u1 c4724u1) {
        a(new C9866v5(c4724u1.a(c4724u1.f38069i3, c4724u1.a(c4724u1.f38069i3, c4724u1.f38068i2), c4724u1.b("ofNullable")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.F1(c4724u12, a22);
            }
        }, 0));
    }

    public final void t(C4724u1 c4724u1) {
        a(new C9866v5(c4724u1.a(c4724u1.f37982X1, c4724u1.a(c4724u1.f38052g2, c4724u1.f37884J1), c4724u1.b("toString")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.q(c4724u12, a22);
            }
        }, 0));
        com.android.tools.r8.graph.M2[] m2Arr = {c4724u1.f38156t2, c4724u1.f38164u2};
        for (int i10 = 0; i10 < 2; i10++) {
            com.android.tools.r8.graph.M2 m22 = m2Arr[i10];
            com.android.tools.r8.graph.L2 b10 = c4724u1.b("clamp");
            com.android.tools.r8.graph.M2 m23 = c4724u1.f37884J1;
            a(new C9866v5(c4724u1.a(m22, c4724u1.a(m23, c4724u1.f37891K1, m23, m23), b10), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.r0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.M2 m24 = c4724u1.f37891K1;
            a(new C9866v5(c4724u1.a(m22, c4724u1.a(m24, m24, m24, m24), b10), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.s0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.M2 m25 = c4724u1.f37870H1;
            a(new C9866v5(c4724u1.a(m22, c4724u1.a(m25, m25, m25, m25), b10), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.p0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.M2 m26 = c4724u1.f37877I1;
            a(new C9866v5(c4724u1.a(m22, c4724u1.a(m26, m26, m26, m26), b10), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.q0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.L2 b11 = c4724u1.b("ceilDiv");
            com.android.tools.r8.graph.M2 m27 = c4724u1.f37884J1;
            a(new C9866v5(c4724u1.a(m22, c4724u1.a(m27, m27, m27), b11), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.j0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.M2 m28 = c4724u1.f37891K1;
            a(new C9866v5(c4724u1.a(m22, c4724u1.a(m28, m28, m28), b11), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.l0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.M2 m29 = c4724u1.f37891K1;
            a(new C9866v5(c4724u1.a(m22, c4724u1.a(m29, m29, c4724u1.f37884J1), b11), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.k0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.L2 b12 = c4724u1.b("ceilDivExact");
            com.android.tools.r8.graph.M2 m210 = c4724u1.f37884J1;
            a(new C9866v5(c4724u1.a(m22, c4724u1.a(m210, m210, m210), b12), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.h0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.M2 m211 = c4724u1.f37891K1;
            a(new C9866v5(c4724u1.a(m22, c4724u1.a(m211, m211, m211), b12), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.i0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.L2 b13 = c4724u1.b("ceilMod");
            com.android.tools.r8.graph.M2 m212 = c4724u1.f37884J1;
            a(new C9866v5(c4724u1.a(m22, c4724u1.a(m212, m212, m212), b13), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.m0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.M2 m213 = c4724u1.f37891K1;
            a(new C9866v5(c4724u1.a(m22, c4724u1.a(m213, m213, m213), b13), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.o0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.M2 m214 = c4724u1.f37884J1;
            a(new C9866v5(c4724u1.a(m22, c4724u1.a(m214, c4724u1.f37891K1, m214), b13), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.n0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.L2 b14 = c4724u1.b("divideExact");
            com.android.tools.r8.graph.M2 m215 = c4724u1.f37884J1;
            a(new C9866v5(c4724u1.a(m22, c4724u1.a(m215, m215, m215), b14), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.v0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.M2 m216 = c4724u1.f37891K1;
            a(new C9866v5(c4724u1.a(m22, c4724u1.a(m216, m216, m216), b14), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.w0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.L2 b15 = c4724u1.b("floorDivExact");
            com.android.tools.r8.graph.M2 m217 = c4724u1.f37884J1;
            a(new C9866v5(c4724u1.a(m22, c4724u1.a(m217, m217, m217), b15), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.x0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.M2 m218 = c4724u1.f37891K1;
            a(new C9866v5(c4724u1.a(m22, c4724u1.a(m218, m218, m218), b15), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.y0(c4724u12, a22);
                }
            }, 0));
            com.android.tools.r8.graph.L2 b16 = c4724u1.b("unsignedMultiplyHigh");
            com.android.tools.r8.graph.M2 m219 = c4724u1.f37891K1;
            a(new C9866v5(c4724u1.a(m22, c4724u1.a(m219, m219, m219), b16), new F5() {
                @Override
                public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                    return I5.T0(c4724u12, a22);
                }
            }, 0));
        }
    }

    public static com.android.tools.r8.graph.G a(C4724u1 c4724u1, int i10, C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
        int i11 = 1;
        com.android.tools.r8.graph.M2 a10 = c4724u1.a(1, c4724u1.f37976W2);
        com.android.tools.r8.graph.M2 m22 = c4724u1.f37983X2;
        com.android.tools.r8.graph.M2 m23 = c4724u1.f37905M1;
        com.android.tools.r8.graph.M2 m24 = c4724u1.f38068i2;
        com.android.tools.r8.graph.A2 a11 = c4724u1.a(m22, c4724u1.a(m23, m24, m24), ConstantDescs.INIT_NAME);
        C7051eC c7051eC = new C7051eC();
        W9[] w9Arr = {new C10546z9(i10, EnumC5477Kw0.f41825c), new C10273xa(a10)};
        AbstractC9694u30.a(2, w9Arr);
        c7051eC.a(2, w9Arr);
        int i12 = 0;
        while (i12 < i10) {
            C8106kb.a aVar = C8106kb.a.Dup;
            C8106kb c8106kb = new C8106kb(aVar);
            C10546z9 c10546z9 = new C10546z9(i12, EnumC5477Kw0.f41825c);
            C10106wa c10106wa = new C10106wa(m22);
            C8106kb c8106kb2 = new C8106kb(aVar);
            EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
            int i13 = i12 * 2;
            com.android.tools.r8.graph.M2 m25 = m22;
            W9[] w9Arr2 = {c8106kb, c10546z9, c10106wa, c8106kb2, new C8938pa(enumC5477Kw0, i13), new C8938pa(enumC5477Kw0, i13 + i11), new C7437ga(183, a11, false), new Z8(YV.f45995b)};
            AbstractC9694u30.a(8, w9Arr2);
            c7051eC.a(8, w9Arr2);
            i11 = 1;
            i12++;
            m22 = m25;
        }
        com.android.tools.r8.graph.M2 m26 = c4724u1.f37949S3;
        W9[] w9Arr3 = {new C7437ga(184, c4724u1.a(m26, c4724u1.a(m26, a10), c4724u1.b("ofEntries")), false), new C6440ab(EnumC5477Kw0.f41824b)};
        AbstractC9694u30.a(2, w9Arr3);
        c7051eC.a(2, w9Arr3);
        AbstractC7552hC a12 = c7051eC.a();
        List list = Collections.EMPTY_LIST;
        return new com.android.tools.r8.graph.G(a22.f38297f, 7, i10 * 2, a12, list, list);
    }

    public final boolean b(com.android.tools.r8.graph.M2 m22, C2 c22) {
        if (a(m22)) {
            if (c22.c(C2.N)) {
                C10261xU a10 = X2.a(this.f54280b);
                int i10 = a10.f53767d;
                if (i10 == -1) {
                    i10 = C8304ll0.a((String) AT.b(C10656zq0.a(a10.f53765b.c(), ':'))).a();
                    a10.f53767d = i10;
                }
                if (!(i10 >= 2)) {
                    return true;
                }
            }
            return false;
        }
        if (this.f54280b.E().z().d((C2) this.f54279a.get(m22))) {
            return this.f54280b.E().z().b(c22);
        }
        return false;
    }

    public final boolean b(com.android.tools.r8.graph.M2 m22) {
        return this.f54280b.E().z().d((C2) this.f54279a.get(m22)) || a(m22);
    }

    public final void b(Consumer consumer) {
        this.f54282d.o().forEach(consumer);
    }

    public final void b(C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2 m22 = c4724u1.f37975W1;
        com.android.tools.r8.graph.L2 b10 = c4724u1.b("compare");
        com.android.tools.r8.graph.M2 m23 = c4724u1.f37884J1;
        com.android.tools.r8.graph.M2 m24 = c4724u1.f37856F1;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(m23, m24, m24), b10), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.k(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.M2 m25 = c4724u1.f38020c2;
        com.android.tools.r8.graph.L2 b11 = c4724u1.b("compare");
        com.android.tools.r8.graph.M2 m26 = c4724u1.f37884J1;
        com.android.tools.r8.graph.M2 m27 = c4724u1.f37898L1;
        a(new C9866v5(c4724u1.a(m25, c4724u1.a(m26, m27, m27), b11), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.B1(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.M2 m28 = c4724u1.f38004a2;
        com.android.tools.r8.graph.L2 b12 = c4724u1.b("compare");
        com.android.tools.r8.graph.M2 m29 = c4724u1.f37884J1;
        a(new C9866v5(c4724u1.a(m28, c4724u1.a(m29, m29, m29), b12), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.G(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.M2 m210 = c4724u1.f38012b2;
        com.android.tools.r8.graph.L2 b13 = c4724u1.b("compare");
        com.android.tools.r8.graph.M2 m211 = c4724u1.f37884J1;
        com.android.tools.r8.graph.M2 m212 = c4724u1.f37891K1;
        a(new C9699u5(c4724u1.a(m210, c4724u1.a(m211, m212, m212), b13), AbstractC9426sU.a()));
        com.android.tools.r8.graph.M2 m213 = c4724u1.f37968V1;
        com.android.tools.r8.graph.L2 b14 = c4724u1.b("compare");
        com.android.tools.r8.graph.M2 m214 = c4724u1.f37884J1;
        com.android.tools.r8.graph.M2 m215 = c4724u1.f37849E1;
        a(new C9866v5(c4724u1.a(m213, c4724u1.a(m214, m215, m215), b14), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.i(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.M2 m216 = c4724u1.f37982X1;
        com.android.tools.r8.graph.L2 b15 = c4724u1.b("compare");
        com.android.tools.r8.graph.M2 m217 = c4724u1.f37884J1;
        com.android.tools.r8.graph.M2 m218 = c4724u1.f37863G1;
        a(new C9866v5(c4724u1.a(m216, c4724u1.a(m217, m218, m218), b15), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.p(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.M2 m219 = c4724u1.f38140r2;
        a(new C9866v5(c4724u1.a(m219, c4724u1.a(c4724u1.f38024c6, new com.android.tools.r8.graph.M2[0]), c4724u1.b("emptyEnumeration")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.z(c4724u12, a22);
            }
        }));
        a(new C9866v5(c4724u1.a(m219, c4724u1.a(c4724u1.f37907M3, new com.android.tools.r8.graph.M2[0]), c4724u1.b("emptyIterator")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.A(c4724u12, a22);
            }
        }));
        a(new C9866v5(c4724u1.a(m219, c4724u1.a(c4724u1.f38016b6, new com.android.tools.r8.graph.M2[0]), c4724u1.b("emptyListIterator")), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.B(c4724u12, a22);
            }
        }));
    }

    public final void a(AbstractC8552nC abstractC8552nC) {
        abstractC8552nC.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10534z5.this.a((com.android.tools.r8.graph.M2) obj, (C2) obj2);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.M2 m22, C2 c22) {
        com.android.tools.r8.androidapi.a aVar = this.f54280b.f38404S;
        int i10 = com.android.tools.r8.androidapi.f.f35602a;
        com.android.tools.r8.androidapi.f a10 = aVar.a(m22, com.android.tools.r8.androidapi.h.f35609b);
        if (a10.q()) {
            C2 a11 = a10.F().a();
            if (a(m22)) {
                if (!f54278e && !a11.equals(this.f54280b.E().z())) {
                    throw new AssertionError();
                }
                return;
            }
            com.android.tools.r8.graph.E0 D10 = this.f54280b.f().f(m22).D();
            if (f54278e || a11.equals(c22.c(this.f54280b.E().z()))) {
                return;
            }
            if (D10 == null || D10.f0()) {
                throw new AssertionError();
            }
        }
    }

    public final boolean a(com.android.tools.r8.graph.M2 m22) {
        WR x10 = this.f54280b.E().x();
        return x10.b().a(m22) || x10.a().f53766c.g().containsKey(m22) || x10.a().i().contains(m22);
    }

    public final void a(Consumer consumer) {
        this.f54281c.o().forEach(consumer);
    }

    public final void a(C4724u1 c4724u1, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.L2 b10 = c4724u1.b("decrementExact");
        com.android.tools.r8.graph.M2 m23 = c4724u1.f37884J1;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(m23, m23), b10), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.t0(c4724u12, a22);
            }
        }, 0));
        com.android.tools.r8.graph.L2 b11 = c4724u1.b("decrementExact");
        com.android.tools.r8.graph.M2 m24 = c4724u1.f37891K1;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(m24, m24), b11), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.u0(c4724u12, a22);
            }
        }, 0));
        com.android.tools.r8.graph.L2 b12 = c4724u1.b("incrementExact");
        com.android.tools.r8.graph.M2 m25 = c4724u1.f37884J1;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(m25, m25), b12), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.F0(c4724u12, a22);
            }
        }, 0));
        com.android.tools.r8.graph.L2 b13 = c4724u1.b("incrementExact");
        com.android.tools.r8.graph.M2 m26 = c4724u1.f37891K1;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(m26, m26), b13), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.G0(c4724u12, a22);
            }
        }, 0));
        com.android.tools.r8.graph.L2 b14 = c4724u1.b("negateExact");
        com.android.tools.r8.graph.M2 m27 = c4724u1.f37884J1;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(m27, m27), b14), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.M0(c4724u12, a22);
            }
        }, 0));
        com.android.tools.r8.graph.L2 b15 = c4724u1.b("negateExact");
        com.android.tools.r8.graph.M2 m28 = c4724u1.f37891K1;
        a(new C9866v5(c4724u1.a(m22, c4724u1.a(m28, m28), b15), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.N0(c4724u12, a22);
            }
        }, 0));
    }

    public final void a(C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2 m22 = c4724u1.f38030d4;
        com.android.tools.r8.graph.L2 b10 = c4724u1.b("getMajorSdkVersion");
        com.android.tools.r8.graph.M2 m23 = c4724u1.f37884J1;
        a(new C10367y5(c4724u1.a(m22, c4724u1.a(m23, m23), b10), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.a(c4724u12, a22);
            }
        }));
        com.android.tools.r8.graph.L2 b11 = c4724u1.b("getMinorSdkVersion");
        com.android.tools.r8.graph.M2 m24 = c4724u1.f37884J1;
        a(new C10367y5(c4724u1.a(m22, c4724u1.a(m24, m24), b11), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.b(c4724u12, a22);
            }
        }));
        C4554l1 a10 = c4724u1.a(c4724u1.f38038e4, c4724u1.f37884J1, c4724u1.b("SDK_INT_FULL"));
        AbstractC10200x5 abstractC10200x5 = (AbstractC10200x5) this.f54282d.put(a10, new A5(a10, new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.c(c4724u12, a22);
            }
        }));
        if (!f54278e && abstractC10200x5 != null) {
            throw new AssertionError();
        }
        Object[][] objArr = {new Object[]{"BASE", 100000}, new Object[]{"BASE_1_1", 200000}, new Object[]{"CUPCAKE", 300000}, new Object[]{"DONUT", 400000}, new Object[]{"ECLAIR", 500000}, new Object[]{"ECLAIR_0_1", 600000}, new Object[]{"ECLAIR_MR1", 700000}, new Object[]{"FROYO", 800000}, new Object[]{"GINGERBREAD", 900000}, new Object[]{"GINGERBREAD_MR1", 1000000}, new Object[]{"HONEYCOMB", 1100000}, new Object[]{"HONEYCOMB_MR1", 1200000}, new Object[]{"HONEYCOMB_MR2", 1300000}, new Object[]{"ICE_CREAM_SANDWICH", 1400000}, new Object[]{"ICE_CREAM_SANDWICH_MR1", 1500000}, new Object[]{"JELLY_BEAN", 1600000}, new Object[]{"JELLY_BEAN_MR1", 1700000}, new Object[]{"JELLY_BEAN_MR2", 1800000}, new Object[]{"KITKAT", 1900000}, new Object[]{"KITKAT_WATCH", Integer.valueOf(W8.a.f27324a)}, new Object[]{"LOLLIPOP", 2100000}, new Object[]{"LOLLIPOP_MR1", 2200000}, new Object[]{"M", 2300000}, new Object[]{"N", 2400000}, new Object[]{"N_MR1", 2500000}, new Object[]{"O", 2600000}, new Object[]{"O_MR1", 2700000}, new Object[]{"P", 2800000}, new Object[]{"Q", 2900000}, new Object[]{"R", 3000000}, new Object[]{"S", 3100000}, new Object[]{"S_V2", 3200000}, new Object[]{"TIRAMISU", 3300000}, new Object[]{"UPSIDE_DOWN_CAKE", 3400000}, new Object[]{"VANILLA_ICE_CREAM", 3500000}, new Object[]{"BAKLAVA", 3600000}};
        com.android.tools.r8.graph.M2 d10 = c4724u1.d("Landroid/os/Build$VERSION_CODES_FULL;");
        for (int i10 = 0; i10 < 36; i10++) {
            Object[] objArr2 = objArr[i10];
            C4554l1 a11 = c4724u1.a(d10, c4724u1.f37884J1, c4724u1.b((String) objArr2[0]));
            AbstractC10200x5 abstractC10200x52 = (AbstractC10200x5) this.f54282d.put(a11, new C5(a11, I2.a(((Integer) objArr2[1]).intValue())));
            if (!f54278e && abstractC10200x52 != null) {
                throw new AssertionError();
            }
        }
        if (this.f54280b.E().c0()) {
            return;
        }
        com.android.tools.r8.graph.M2 d11 = c4724u1.d("Ljava/util/concurrent/ExecutorService;");
        a(new D5(c4724u1.a(d11, c4724u1.a(c4724u1.f37905M1, new com.android.tools.r8.graph.M2[0]), c4724u1.f38186x0), new F5() {
            @Override
            public final com.android.tools.r8.graph.G a(C4724u1 c4724u12, com.android.tools.r8.graph.A2 a22) {
                return I5.E(c4724u12, a22);
            }
        }, d11));
    }

    public final void a(AbstractC10200x5 abstractC10200x5) {
        AbstractC10200x5 abstractC10200x52 = (AbstractC10200x5) this.f54281c.put((com.android.tools.r8.graph.A2) abstractC10200x5.f53683a, abstractC10200x5);
        if (!f54278e && abstractC10200x52 != null) {
            throw new AssertionError();
        }
    }
}
