package com.android.tools.r8.internal;

public enum EnumC5592Mw0 {
    f42461b,
    f42462c,
    f42463d,
    f42464e,
    f42465f,
    f42466g,
    f42467h,
    f42468i;

    EnumC5592Mw0() {
    }

    public final int a() {
        return (this == f42466g || this == f42467h || this == f42468i) ? 2 : 1;
    }

    public final D70 b() {
        int ordinal = ordinal();
        if (ordinal == 1) {
            return AbstractC8999pu0.k();
        }
        if (ordinal == 2) {
            return AbstractC8999pu0.j();
        }
        if (ordinal == 5) {
            return AbstractC8999pu0.l();
        }
        if (ordinal == 6) {
            return AbstractC8999pu0.i();
        }
        throw new C5417Jv0("Unexpected type in conversion to primitive: " + ((Object) this));
    }

    public static EnumC5592Mw0 a(EnumC5477Kw0 enumC5477Kw0) {
        int i10 = AbstractC5534Lw0.f42103a[enumC5477Kw0.ordinal()];
        if (i10 == 1) {
            return f42461b;
        }
        if (i10 == 2) {
            return f42462c;
        }
        if (i10 == 3) {
            return f42463d;
        }
        if (i10 == 4) {
            return f42466g;
        }
        if (i10 == 5) {
            return f42467h;
        }
        throw new C5417Jv0("Unexpected value type: " + ((Object) enumC5477Kw0));
    }

    public static EnumC5592Mw0 a(YV yv) {
        switch (yv.ordinal()) {
            case 0:
                return f42461b;
            case 1:
            case 2:
            case 3:
            case 4:
                return f42462c;
            case 5:
                return f42463d;
            case 6:
                return f42466g;
            case 7:
                return f42467h;
            case 8:
                return f42464e;
            case 9:
                return f42468i;
            default:
                throw new C5417Jv0("Unexpected member type: " + ((Object) yv));
        }
    }

    public static EnumC5592Mw0 a(char c10) {
        if (c10 != 'F') {
            if (c10 != 'L') {
                if (c10 != 'S') {
                    if (c10 == 'V') {
                        throw new C6570bJ("No value type for void type.");
                    }
                    if (c10 != 'I') {
                        if (c10 == 'J') {
                            return f42466g;
                        }
                        if (c10 != 'Z') {
                            if (c10 != '[') {
                                switch (c10) {
                                    case 'B':
                                    case 'C':
                                        break;
                                    case 'D':
                                        return f42467h;
                                    default:
                                        throw new C5417Jv0("Invalid descriptor char '" + c10 + "'");
                                }
                            }
                        }
                    }
                }
                return f42462c;
            }
            return f42461b;
        }
        return f42463d;
    }

    public static EnumC5592Mw0 a(com.android.tools.r8.graph.M2 m22) {
        return a((char) m22.f36592f.f36562f[0]);
    }

    public static EnumC5592Mw0 a(T10 t10) {
        switch (AbstractC5534Lw0.f42105c[t10.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                return f42462c;
            case 5:
                return f42463d;
            case 6:
                return f42466g;
            case 7:
                return f42467h;
            default:
                throw new C5417Jv0("Invalid numeric type '" + ((Object) t10) + "'");
        }
    }

    public static EnumC5592Mw0 a(AbstractC8999pu0 abstractC8999pu0) {
        if (abstractC8999pu0.y()) {
            return f42461b;
        }
        if (!abstractC8999pu0.u() && !(abstractC8999pu0 instanceof C9736uI)) {
            if (abstractC8999pu0 instanceof C5188Fx) {
                return f42463d;
            }
            if (abstractC8999pu0 instanceof C9593tU) {
                return f42466g;
            }
            if (abstractC8999pu0 instanceof C8160kt) {
                return f42467h;
            }
            if (abstractC8999pu0.z()) {
                return f42464e;
            }
            if (abstractC8999pu0.A()) {
                return f42468i;
            }
            if (abstractC8999pu0 instanceof C10328xs0) {
                return f42465f;
            }
            throw new C5417Jv0("Unexpected conversion of type: " + ((Object) abstractC8999pu0));
        }
        return f42462c;
    }
}
