package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC7632hj0 implements QI {

    public static final EnumC7632hj0 f48686c = new EnumC7632hj0("UNKNOWN", 0, 0);

    public static final EnumC7632hj0 f48687d = new EnumC7632hj0("UNRECOGNIZED", 3, -1);

    public final int f48688b;

    public EnumC7632hj0(String str, int i10, int i11) {
        this.f48688b = i11;
    }

    @Override
    public final int getNumber() {
        if (this != f48687d) {
            return this.f48688b;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
