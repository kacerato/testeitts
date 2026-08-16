package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC6080Vg implements QI {

    public static final EnumC6080Vg f45117c = new EnumC6080Vg("NAV_HIDDEN_UNSET", 0, 0);

    public static final EnumC6080Vg f45118d = new EnumC6080Vg("UNRECOGNIZED", 3, -1);

    public final int f45119b;

    public EnumC6080Vg(String str, int i10, int i11) {
        this.f45119b = i11;
    }

    @Override
    public final int getNumber() {
        if (this != f45118d) {
            return this.f45119b;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
