package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC6137Wg implements QI {

    public static final EnumC6137Wg f45501c = new EnumC6137Wg("NAVIGATION_UNSET", 0, 0);

    public static final EnumC6137Wg f45502d = new EnumC6137Wg("UNRECOGNIZED", 5, -1);

    public final int f45503b;

    public EnumC6137Wg(String str, int i10, int i11) {
        this.f45503b = i11;
    }

    @Override
    public final int getNumber() {
        if (this != f45502d) {
            return this.f45503b;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
