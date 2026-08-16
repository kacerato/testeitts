package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC5907Sg implements QI {

    public static final EnumC5907Sg f44266c = new EnumC5907Sg("KEYBOARD_UNSET", 0, 0);

    public static final EnumC5907Sg f44267d = new EnumC5907Sg("UNRECOGNIZED", 4, -1);

    public final int f44268b;

    public EnumC5907Sg(String str, int i10, int i11) {
        this.f44268b = i11;
    }

    @Override
    public final int getNumber() {
        if (this != f44267d) {
            return this.f44268b;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
