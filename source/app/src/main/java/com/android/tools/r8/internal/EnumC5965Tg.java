package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC5965Tg implements QI {

    public static final EnumC5965Tg f44531c = new EnumC5965Tg("KEYS_HIDDEN_UNSET", 0, 0);

    public static final EnumC5965Tg f44532d = new EnumC5965Tg("UNRECOGNIZED", 4, -1);

    public final int f44533b;

    public EnumC5965Tg(String str, int i10, int i11) {
        this.f44533b = i11;
    }

    @Override
    public final int getNumber() {
        if (this != f44532d) {
            return this.f44533b;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
