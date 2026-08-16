package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC6194Xg implements QI {

    public static final EnumC6194Xg f45784c = new EnumC6194Xg("ORIENTATION_UNSET", 0, 0);

    public static final EnumC6194Xg f45785d = new EnumC6194Xg("UNRECOGNIZED", 4, -1);

    public final int f45786b;

    public EnumC6194Xg(String str, int i10, int i11) {
        this.f45786b = i11;
    }

    @Override
    public final int getNumber() {
        if (this != f45785d) {
            return this.f45786b;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
