package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC6958dh implements QI {

    public static final EnumC6958dh f47455c = new EnumC6958dh("UI_MODE_TYPE_UNSET", 0, 0);

    public static final EnumC6958dh f47456d = new EnumC6958dh("UNRECOGNIZED", 8, -1);

    public final int f47457b;

    public EnumC6958dh(String str, int i10, int i11) {
        this.f47457b = i11;
    }

    @Override
    public final int getNumber() {
        if (this != f47456d) {
            return this.f47457b;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
