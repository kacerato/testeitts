package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC6308Zg implements QI {

    public static final EnumC6308Zg f46310c = new EnumC6308Zg("SCREEN_LAYOUT_SIZE_UNSET", 0, 0);

    public static final EnumC6308Zg f46311d = new EnumC6308Zg("UNRECOGNIZED", 5, -1);

    public final int f46312b;

    public EnumC6308Zg(String str, int i10, int i11) {
        this.f46312b = i11;
    }

    @Override
    public final int getNumber() {
        if (this != f46311d) {
            return this.f46312b;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
