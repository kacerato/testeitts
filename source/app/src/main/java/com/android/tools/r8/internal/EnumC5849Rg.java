package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC5849Rg implements QI {

    public static final EnumC5849Rg f43955c = new EnumC5849Rg("HDR_UNSET", 0, 0);

    public static final EnumC5849Rg f43956d = new EnumC5849Rg("UNRECOGNIZED", 3, -1);

    public final int f43957b;

    public EnumC5849Rg(String str, int i10, int i11) {
        this.f43957b = i11;
    }

    @Override
    public final int getNumber() {
        if (this != f43956d) {
            return this.f43957b;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
