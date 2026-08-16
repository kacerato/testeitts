package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC5099Eh0 implements QI {

    public static final EnumC5099Eh0 f39984c = new EnumC5099Eh0("ZERO", 0, 0);

    public static final EnumC5099Eh0 f39985d = new EnumC5099Eh0("UNRECOGNIZED", 6, -1);

    public final int f39986b;

    public EnumC5099Eh0(String str, int i10, int i11) {
        this.f39986b = i11;
    }

    @Override
    public final int getNumber() {
        if (this != f39985d) {
            return this.f39986b;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
