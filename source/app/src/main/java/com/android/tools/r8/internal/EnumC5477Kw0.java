package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import java.util.function.ToIntFunction;

public enum EnumC5477Kw0 implements InterfaceC5580Mq0<EnumC5477Kw0> {
    f41824b,
    f41825c,
    f41826d,
    f41827e,
    f41828f;

    EnumC5477Kw0() {
    }

    @Override
    public final EnumC5477Kw0 E() {
        return this;
    }

    @Override
    public final int compareTo(EnumC5477Kw0 enumC5477Kw0) {
        return compareTo(enumC5477Kw0);
    }

    public final boolean b() {
        return this == f41827e || this == f41828f;
    }

    public final int c() {
        return b() ? 2 : 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final int compareTo(C40 c40) {
        return compareTo((EnumC5477Kw0) c40);
    }

    public final D70 d() {
        int i10 = AbstractC5419Jw0.f41530c[ordinal()];
        if (i10 == 2) {
            return AbstractC8999pu0.k();
        }
        if (i10 == 3) {
            return AbstractC8999pu0.j();
        }
        if (i10 == 4) {
            return AbstractC8999pu0.l();
        }
        if (i10 == 5) {
            return AbstractC8999pu0.i();
        }
        throw new C5417Jv0("Unexpected type in conversion to primitive: " + ((Object) this));
    }

    @Override
    public final InterfaceC5638Nq0<EnumC5477Kw0> m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                EnumC5477Kw0.a(abstractC5754Pq0);
            }
        };
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return ((EnumC5477Kw0) obj).ordinal();
            }
        });
    }

    public final boolean a() {
        return this == f41824b;
    }

    public static EnumC5477Kw0 a(YV yv) {
        switch (yv) {
            case f45995b:
                return f41824b;
            case f45996c:
            case f45997d:
            case f45998e:
            case f45999f:
                return f41825c;
            case f46000g:
                return f41826d;
            case f46001h:
                return f41827e;
            case f46002i:
                return f41828f;
            case f46003j:
            case f46004k:
                throw new C5417Jv0("Unexpected imprecise type: " + ((Object) yv));
            default:
                throw new C5417Jv0("Unexpected member type: " + ((Object) yv));
        }
    }

    public static EnumC5477Kw0 a(char c10) {
        if (c10 != 'F') {
            if (c10 != 'L') {
                if (c10 != 'S') {
                    if (c10 == 'V') {
                        throw new C6570bJ("No value type for void type.");
                    }
                    if (c10 != 'I') {
                        if (c10 == 'J') {
                            return f41827e;
                        }
                        if (c10 != 'Z') {
                            if (c10 != '[') {
                                switch (c10) {
                                    case 'B':
                                    case 'C':
                                        break;
                                    case 'D':
                                        return f41828f;
                                    default:
                                        throw new C5417Jv0("Invalid descriptor char '" + c10 + "'");
                                }
                            }
                        }
                    }
                }
                return f41825c;
            }
            return f41824b;
        }
        return f41826d;
    }

    public static EnumC5477Kw0 a(com.android.tools.r8.graph.M2 m22) {
        return a((char) m22.f36592f.f36562f[0]);
    }

    public static EnumC5477Kw0 a(T10 t10) {
        switch (AbstractC5419Jw0.f41529b[t10.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                return f41825c;
            case 5:
                return f41826d;
            case 6:
                return f41827e;
            case 7:
                return f41828f;
            default:
                throw new C5417Jv0("Invalid numeric type '" + ((Object) t10) + "'");
        }
    }

    public static EnumC5477Kw0 a(AbstractC8999pu0 abstractC8999pu0) {
        if (abstractC8999pu0.y()) {
            return f41824b;
        }
        if (abstractC8999pu0 instanceof C9736uI) {
            return f41825c;
        }
        if (abstractC8999pu0 instanceof C5188Fx) {
            return f41826d;
        }
        if (abstractC8999pu0 instanceof C9593tU) {
            return f41827e;
        }
        if (abstractC8999pu0 instanceof C8160kt) {
            return f41828f;
        }
        throw new C5417Jv0("Unexpected conversion of imprecise type: " + ((Object) abstractC8999pu0));
    }

    public final com.android.tools.r8.graph.M2 a(C4724u1 c4724u1) {
        int i10 = AbstractC5419Jw0.f41530c[ordinal()];
        if (i10 == 1) {
            return c4724u1.f38068i2;
        }
        if (i10 == 2) {
            return c4724u1.f37884J1;
        }
        if (i10 == 3) {
            return c4724u1.f37877I1;
        }
        if (i10 == 4) {
            return c4724u1.f37891K1;
        }
        if (i10 == 5) {
            return c4724u1.f37870H1;
        }
        throw new C5417Jv0();
    }
}
