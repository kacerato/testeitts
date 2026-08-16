package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC6251Yg implements QI {

    public static final EnumC6251Yg f46055c = new EnumC6251Yg("SCREEN_LAYOUT_LONG_UNSET", 0, 0);

    public static final EnumC6251Yg f46056d = new EnumC6251Yg("UNRECOGNIZED", 3, -1);

    public final int f46057b;

    public EnumC6251Yg(String str, int i10, int i11) {
        this.f46057b = i11;
    }

    @Override
    public final int getNumber() {
        if (this != f46056d) {
            return this.f46057b;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
