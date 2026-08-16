package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC6458ah implements QI {

    public static final EnumC6458ah f46577c = new EnumC6458ah("SCREEN_ROUND_UNSET", 0, 0);

    public static final EnumC6458ah f46578d = new EnumC6458ah("UNRECOGNIZED", 3, -1);

    public final int f46579b;

    public EnumC6458ah(String str, int i10, int i11) {
        this.f46579b = i11;
    }

    @Override
    public final int getNumber() {
        if (this != f46578d) {
            return this.f46579b;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
