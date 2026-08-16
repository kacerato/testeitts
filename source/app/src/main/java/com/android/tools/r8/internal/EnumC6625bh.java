package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC6625bh implements QI {

    public static final EnumC6625bh f46824c = new EnumC6625bh("TOUCHSCREEN_UNSET", 0, 0);

    public static final EnumC6625bh f46825d = new EnumC6625bh("UNRECOGNIZED", 4, -1);

    public final int f46826b;

    public EnumC6625bh(String str, int i10, int i11) {
        this.f46826b = i11;
    }

    @Override
    public final int getNumber() {
        if (this != f46825d) {
            return this.f46826b;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
