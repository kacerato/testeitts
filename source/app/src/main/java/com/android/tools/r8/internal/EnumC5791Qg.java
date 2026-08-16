package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC5791Qg implements QI {

    public static final EnumC5791Qg f43683c = new EnumC5791Qg("GRAM_GENDER_USET", 0, 0);

    public static final EnumC5791Qg f43684d = new EnumC5791Qg("UNRECOGNIZED", 4, -1);

    public final int f43685b;

    public EnumC5791Qg(String str, int i10, int i11) {
        this.f43685b = i11;
    }

    @Override
    public final int getNumber() {
        if (this != f43684d) {
            return this.f43685b;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
