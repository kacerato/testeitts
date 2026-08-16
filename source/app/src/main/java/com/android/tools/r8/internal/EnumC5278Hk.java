package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC5278Hk implements QI {

    public static final EnumC5278Hk f40850c = new EnumC5278Hk("STRING", 0, 0);

    public static final EnumC5278Hk f40851d = new EnumC5278Hk("CORD", 1, 1);

    public static final EnumC5278Hk f40852e = new EnumC5278Hk("STRING_PIECE", 2, 2);

    public final int f40853b;

    public EnumC5278Hk(String str, int i10, int i11) {
        this.f40853b = i11;
    }

    public static EnumC5278Hk a(int i10) {
        if (i10 == 0) {
            return f40850c;
        }
        if (i10 == 1) {
            return f40851d;
        }
        if (i10 != 2) {
            return null;
        }
        return f40852e;
    }

    @Override
    public final int getNumber() {
        return this.f40853b;
    }
}
