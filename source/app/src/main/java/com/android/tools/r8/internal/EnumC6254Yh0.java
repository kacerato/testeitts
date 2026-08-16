package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC6254Yh0 implements QI {

    public static final EnumC6254Yh0 f46061c = new EnumC6254Yh0("REFERENCE", 0, 0);

    public static final EnumC6254Yh0 f46062d = new EnumC6254Yh0("UNRECOGNIZED", 2, -1);

    public final int f46063b;

    public EnumC6254Yh0(String str, int i10, int i11) {
        this.f46063b = i11;
    }

    @Override
    public final int getNumber() {
        if (this != f46062d) {
            return this.f46063b;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
