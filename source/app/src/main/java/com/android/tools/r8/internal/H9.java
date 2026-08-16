package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.G9;
import java.util.function.BiFunction;
import java.util.function.UnaryOperator;

public abstract class H9 extends D1 {

    public static final boolean f40696b = true;

    public static H9 a(H9 h92, S60 s60) {
        return h92;
    }

    public abstract H9 a(int i10, S60 s60, O8 o82);

    public abstract H9 a(com.android.tools.r8.graph.A2 a22, O8 o82);

    public abstract H9 a(C4798y c4798y, com.android.tools.r8.graph.M2 m22, O8 o82, BiFunction biFunction);

    public abstract H9 a(C4798y c4798y, O8 o82, int i10, EnumC5477Kw0 enumC5477Kw0, BiFunction biFunction);

    public abstract H9 a(C4798y c4798y, O8 o82, com.android.tools.r8.graph.M2... m2Arr);

    public abstract H9 a(C5020Da c5020Da, com.android.tools.r8.graph.M2 m22);

    public abstract H9 a(O8 o82, com.android.tools.r8.graph.M2 m22);

    public abstract H9 a(O8 o82, G9 g92);

    public abstract H9 a(O8 o82, S60 s60);

    public abstract H9 a(O8 o82, AbstractC8999pu0 abstractC8999pu0);

    public abstract H9 a(AbstractC6668bv0 abstractC6668bv0, com.android.tools.r8.graph.M2 m22);

    public abstract H9 a(BiFunction biFunction);

    public abstract H9 b(O8 o82, G9 g92);

    @Override
    public final D1 c() {
        return this;
    }

    public abstract H9 c(O8 o82, G9 g92);

    public C8121kg d() {
        return null;
    }

    public C7667hv e() {
        return null;
    }

    public abstract H9 f();

    public abstract H9 g();

    public final H9 h() {
        return c(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return H9.a((H9) obj, (S60) obj2);
            }
        });
    }

    @Override
    public final boolean a() {
        return this instanceof C7667hv;
    }

    public final H9 b(final BiFunction biFunction) {
        return a(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return H9.a(BiFunction.this, (H9) obj, (S60) obj2);
            }
        });
    }

    public final H9 c(final BiFunction biFunction) {
        return a(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return H9.b(BiFunction.this, (H9) obj, (S60) obj2);
            }
        });
    }

    @Override
    public final boolean a(C4798y c4798y, D1 d12) {
        H9 h92 = (H9) d12;
        if (this == h92) {
            return true;
        }
        if (!f40696b && !c4798y.f().h()) {
            throw new AssertionError();
        }
        return equals(a(c4798y.L(), h92, UnaryOperator.identity()));
    }

    public final H9 b(C4798y c4798y, final com.android.tools.r8.graph.M2 m22, final O8 o82, final BiFunction biFunction) {
        final C6876d9 e10 = o82.e();
        final C4724u1 b10 = c4798y.b();
        return a(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return H9.a(C6876d9.this, b10, o82, m22, biFunction, (H9) obj, (S60) obj2);
            }
        });
    }

    public static H9 b(BiFunction biFunction, H9 h92, S60 s60) {
        if (s60.a()) {
            return (H9) biFunction.apply(h92, s60);
        }
        int i10 = InterfaceC8008jy.f49436a;
        return a(C7667hv.a(1, s60), C7667hv.a(2, C7028e40.f47586c), "on stack");
    }

    public static C7667hv a(InterfaceC8008jy interfaceC8008jy, EnumC5477Kw0 enumC5477Kw0, int i10) {
        return a(C7667hv.a(1, interfaceC8008jy), C7667hv.a(enumC5477Kw0), "at local index " + i10);
    }

    public static H9 b(InterfaceC7495gt0 interfaceC7495gt0, S60 s60, H9 h92, S60 s602) {
        return (H9) interfaceC7495gt0.a(h92, s602, s60);
    }

    public static C7667hv a(String str, String str2, String str3) {
        return new C7667hv("Expected " + str2 + " " + str3 + ", but was " + str);
    }

    public final H9 a(C4798y c4798y, O8 o82, com.android.tools.r8.graph.M2 m22) {
        return a(c4798y, m22, o82, new C9900vG0());
    }

    public final H9 a(C4798y c4798y, O8 o82, EnumC5477Kw0 enumC5477Kw0) {
        return a(c4798y, enumC5477Kw0.a(c4798y.b()), o82, new C9900vG0());
    }

    public static H9 a(BiFunction biFunction, H9 h92, S60 s60) {
        if (s60.w()) {
            return (H9) biFunction.apply(h92, s60);
        }
        return a(C7667hv.a(1, s60), C7667hv.a(EnumC5477Kw0.f41824b), "on stack");
    }

    public static H9 a(C6876d9 c6876d9, C4724u1 c4724u1, O8 o82, com.android.tools.r8.graph.M2 m22, BiFunction biFunction, H9 h92, S60 s60) {
        if (s60.w() && c6876d9.b(s60.a(c4724u1, o82.c().s0()), m22)) {
            return (H9) biFunction.apply(h92, s60);
        }
        return a(C7667hv.a(1, s60), C7667hv.a(m22), "on stack");
    }

    public final H9 a(final InterfaceC7495gt0 interfaceC7495gt0) {
        return c(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                H9 c10;
                c10 = ((H9) obj).c(new BiFunction() {
                    @Override
                    public final Object apply(Object obj3, Object obj4) {
                        return H9.b(InterfaceC7495gt0.this, r2, (H9) obj3, (S60) obj4);
                    }
                });
                return c10;
            }
        });
    }

    public final H9 a(final BiFunction biFunction, final BiFunction biFunction2) {
        return a(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return H9.a(BiFunction.this, biFunction2, (H9) obj, (S60) obj2);
            }
        });
    }

    public static H9 a(BiFunction biFunction, BiFunction biFunction2, H9 h92, S60 s60) {
        return (H9) (s60.a() ? biFunction.apply(h92, s60) : biFunction2.apply(h92, s60));
    }

    public final H9 a(final InterfaceC7495gt0 interfaceC7495gt0, BiFunction biFunction) {
        return a(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                H9 c10;
                c10 = ((H9) obj).c(new BiFunction() {
                    @Override
                    public final Object apply(Object obj3, Object obj4) {
                        return H9.a(InterfaceC7495gt0.this, r2, (H9) obj3, (S60) obj4);
                    }
                });
                return c10;
            }
        }, biFunction);
    }

    public static H9 a(InterfaceC7495gt0 interfaceC7495gt0, S60 s60, H9 h92, S60 s602) {
        return (H9) interfaceC7495gt0.a(h92, s602, s60);
    }

    @Override
    public final H9 b(C4798y c4798y, H9 h92) {
        if (!f40696b && !c4798y.f().h()) {
            throw new AssertionError();
        }
        return a(c4798y.L(), h92, new UnaryOperator() {
            @Override
            public final Object apply(Object obj) {
                return H9.a((InterfaceC8008jy) obj);
            }
        });
    }

    public static InterfaceC8008jy a(InterfaceC8008jy interfaceC8008jy) {
        if (interfaceC8008jy.a()) {
            int i10 = InterfaceC8008jy.f49436a;
            return C7028e40.f47586c;
        }
        int i11 = InterfaceC8008jy.f49436a;
        return C9163qt0.f51907c;
    }

    public final H9 a(C4798y c4798y, H9 h92, UnaryOperator unaryOperator) {
        h92.getClass();
        if ((h92 instanceof C9038q7) || (this instanceof C7667hv)) {
            return this;
        }
        if (!(this instanceof C9038q7)) {
            if (h92 instanceof C7667hv) {
                return h92;
            }
            boolean z10 = f40696b;
            if (!z10 && !(this instanceof C8121kg)) {
                throw new AssertionError();
            }
            if (!z10 && !(h92 instanceof C8121kg)) {
                throw new AssertionError();
            }
            C8121kg d10 = d();
            C8121kg d11 = h92.d();
            d10.getClass();
            G9.a V10 = G9.V();
            C10564zF c10564zF = d11.f49709c;
            C8394mF c8394mF = new C8394mF(((C7893jF) d10.f49709c.b()).f49199c);
            C8394mF c8394mF2 = new C8394mF(((C7893jF) c10564zF.b()).f49199c);
            while (c8394mF.hasNext() && c8394mF2.hasNext()) {
                C8227lF a10 = c8394mF.a();
                int a11 = a10.a();
                InterfaceC8008jy interfaceC8008jy = (InterfaceC8008jy) a10.getValue();
                C8227lF a12 = c8394mF2.a();
                int a13 = a12.a();
                InterfaceC8008jy interfaceC8008jy2 = (InterfaceC8008jy) a12.getValue();
                if (a11 < a13) {
                    if (!C8121kg.f49708f && a11 >= a13) {
                        throw new AssertionError();
                    }
                    C8121kg.a(a11, V10);
                    c8394mF2.previous();
                } else if (a13 < a11) {
                    if (!C8121kg.f49708f && a13 >= a11) {
                        throw new AssertionError();
                    }
                    C8121kg.a(a13, V10);
                    c8394mF.previous();
                } else if (interfaceC8008jy.a()) {
                    if (interfaceC8008jy2.a()) {
                        V10.a(a11, interfaceC8008jy.x().a(c4798y, interfaceC8008jy2.x()));
                    } else {
                        C8121kg.a(a11, V10);
                    }
                } else if (interfaceC8008jy2.n()) {
                    AbstractC5247Gx0 e10 = interfaceC8008jy.e();
                    AbstractC5247Gx0 e11 = interfaceC8008jy2.e();
                    if (e10.g() != e11.g()) {
                        C8121kg.a(a11, V10);
                    } else {
                        if (e10 == e11) {
                            V10.a(a11, e10);
                        } else {
                            C8121kg.b(a11, V10);
                        }
                        C8121kg.a(a11, e10, c8394mF);
                        C8121kg.a(a11, e11, c8394mF2);
                    }
                } else {
                    C8121kg.a(a11, V10);
                }
            }
            if (c8394mF.hasNext()) {
                EF ef2 = (EF) c8394mF.next();
                if (((InterfaceC8008jy) ef2.getValue()).r()) {
                    C8121kg.a(ef2.a(), V10);
                } else {
                    C8121kg.a(c8394mF, ef2, V10, unaryOperator);
                }
                while (c8394mF.hasNext()) {
                    C8121kg.a(c8394mF, (EF) c8394mF.next(), V10, unaryOperator);
                }
            }
            if (c8394mF2.hasNext()) {
                EF ef3 = (EF) c8394mF2.next();
                if (((InterfaceC8008jy) ef3.getValue()).r()) {
                    C8121kg.a(ef3.a(), V10);
                } else {
                    C8121kg.a(c8394mF2, ef3, V10, unaryOperator);
                }
                while (c8394mF2.hasNext()) {
                    C8121kg.a(c8394mF2, (EF) c8394mF2.next(), V10, unaryOperator);
                }
            }
            C7667hv a14 = d10.a(c4798y, d11.f49710d, V10);
            if (a14 != null) {
                return a14;
            }
            InterfaceC7896jG interfaceC7896jG = V10.f40407a;
            YB yb2 = G9.f40402e;
            if (interfaceC7896jG == AbstractC8230lG.f49915a) {
                V10.f40407a = new C10564zF();
            }
            V10.b();
            G9 a15 = V10.a();
            if (!G9.f40403f && !(a15.f40404c instanceof C10564zF)) {
                throw new AssertionError();
            }
            h92 = new C8121kg((C10564zF) a15.f40404c, a15.W(), d10.f49711e);
        }
        return h92;
    }
}
