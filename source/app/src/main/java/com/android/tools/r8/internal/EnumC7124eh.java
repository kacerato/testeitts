package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC7124eh implements QI {

    public static final EnumC7124eh f47748c = new EnumC7124eh("WIDE_COLOR_GAMUT_UNSET", 0, 0);

    public static final EnumC7124eh f47749d = new EnumC7124eh("UNRECOGNIZED", 3, -1);

    public final int f47750b;

    public EnumC7124eh(String str, int i10, int i11) {
        this.f47750b = i11;
    }

    @Override
    public final int getNumber() {
        if (this != f47749d) {
            return this.f47750b;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
