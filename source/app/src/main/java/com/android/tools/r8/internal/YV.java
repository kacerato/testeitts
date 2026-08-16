package com.android.tools.r8.internal;

public enum YV {
    f45995b,
    f45996c,
    f45997d,
    f45998e,
    f45999f,
    f46000g,
    f46001h,
    f46002i,
    f46003j,
    f46004k;

    YV() {
    }

    public final boolean a() {
        return (this == f46003j || this == f46004k) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005a A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static YV a(YV yv, EnumC5592Mw0 enumC5592Mw0) {
        switch (enumC5592Mw0) {
            case f42461b:
                YV yv2 = f45995b;
                if (yv == yv2) {
                    return yv2;
                }
                return null;
            case f42462c:
                YV yv3 = f45999f;
                if (yv == yv3 || yv == f46003j) {
                    return yv3;
                }
                return null;
            case f42463d:
                YV yv4 = f46000g;
                if (yv == yv4 || yv == f46003j) {
                    return yv4;
                }
                return null;
            case f42464e:
                if (yv == f45999f || yv == f46000g || yv == f46003j) {
                    return yv;
                }
                return null;
            case f42465f:
                if (yv != f45999f && yv != f46000g && yv != f45995b && yv != f46003j) {
                    return null;
                }
                break;
            case f42466g:
                YV yv5 = f46001h;
                if (yv == yv5 || yv == f46004k) {
                    return yv5;
                }
                return null;
            case f42467h:
                YV yv6 = f46002i;
                if (yv == yv6 || yv == f46004k) {
                    return yv6;
                }
                return null;
            case f42468i:
                if (yv != f46001h && yv != f46002i && yv != f46004k) {
                    return null;
                }
                break;
            default:
                throw new C5417Jv0("Unexpected type constraint: " + ((Object) enumC5592Mw0));
        }
    }

    public static YV a(char c10) {
        if (c10 != 'F') {
            if (c10 != 'L' && c10 != 'N') {
                if (c10 == 'S') {
                    return f45998e;
                }
                if (c10 == 'V') {
                    throw new C6570bJ("No member type for void type.");
                }
                if (c10 == 'I') {
                    return f45999f;
                }
                if (c10 != 'J') {
                    if (c10 != 'Z') {
                        if (c10 != '[') {
                            switch (c10) {
                                case 'B':
                                    break;
                                case 'C':
                                    return f45997d;
                                case 'D':
                                    return f46002i;
                                default:
                                    throw new C5417Jv0("Invalid descriptor char '" + c10 + "'");
                            }
                        }
                    }
                    return f45996c;
                }
                return f46001h;
            }
            return f45995b;
        }
        return f46000g;
    }
}
