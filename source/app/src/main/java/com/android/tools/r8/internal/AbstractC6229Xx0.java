package com.android.tools.r8.internal;

public abstract class AbstractC6229Xx0 {
    public static Object a(AbstractC4916Be abstractC4916Be, EnumC6000Tx0 enumC6000Tx0, int i10) {
        switch (enumC6000Tx0.ordinal()) {
            case 0:
                return Double.valueOf(abstractC4916Be.e());
            case 1:
                return Float.valueOf(abstractC4916Be.i());
            case 2:
                return Long.valueOf(abstractC4916Be.k());
            case 3:
                return Long.valueOf(abstractC4916Be.u());
            case 4:
                return Integer.valueOf(abstractC4916Be.j());
            case 5:
                return Long.valueOf(abstractC4916Be.h());
            case 6:
                return Integer.valueOf(abstractC4916Be.g());
            case 7:
                return Boolean.valueOf(abstractC4916Be.c());
            case 8:
                return i10 != 1 ? i10 != 2 ? abstractC4916Be.d() : abstractC4916Be.r() : abstractC4916Be.q();
            case 9:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle nested groups.");
            case 10:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle embedded messages.");
            case 11:
                return abstractC4916Be.d();
            case 12:
                return Integer.valueOf(abstractC4916Be.t());
            case 13:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle enums.");
            case 14:
                return Integer.valueOf(abstractC4916Be.m());
            case 15:
                return Long.valueOf(abstractC4916Be.n());
            case 16:
                return Integer.valueOf(abstractC4916Be.o());
            case 17:
                return Long.valueOf(abstractC4916Be.p());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }
}
