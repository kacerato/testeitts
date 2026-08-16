package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC8087kS {

    public static final EnumC8087kS f49637b = new EnumC8087kS(0, "ALLOW_ARGUMENT_REUSE_U4BIT");

    public static final EnumC8087kS f49638c = new EnumC8087kS(1, "ALLOW_ARGUMENT_REUSE_U8BIT");

    public static final EnumC8087kS f49639d = new EnumC8087kS(2, "ALLOW_ARGUMENT_REUSE_U8BIT_REFINEMENT");

    public static final EnumC8087kS f49640e = new EnumC8087kS(3, "ALLOW_ARGUMENT_REUSE_U8BIT_RETRY");

    public static final EnumC8087kS f49641f = new EnumC8087kS(4, "ALLOW_ARGUMENT_REUSE_U16BIT");

    public EnumC8087kS(int i10, String str) {
    }

    public final boolean a(int i10) {
        int ordinal = ordinal();
        if (ordinal != 0) {
            if (ordinal != 1 && ordinal != 2 && ordinal != 3) {
                if (ordinal == 4) {
                    return i10 != 65535;
                }
                throw new C5417Jv0();
            }
            if (i10 == 15) {
                return true;
            }
        }
        return false;
    }

    public final boolean b() {
        return this == f49639d;
    }

    public final boolean a() {
        return this == f49637b;
    }
}
