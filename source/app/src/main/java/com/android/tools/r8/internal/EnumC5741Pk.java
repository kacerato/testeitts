package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC5741Pk implements QI {

    public static final EnumC5741Pk f43353c = new EnumC5741Pk("SPEED", 0, 1);

    public static final EnumC5741Pk f43354d = new EnumC5741Pk("CODE_SIZE", 1, 2);

    public static final EnumC5741Pk f43355e = new EnumC5741Pk("LITE_RUNTIME", 2, 3);

    public final int f43356b;

    public EnumC5741Pk(String str, int i10, int i11) {
        this.f43356b = i11;
    }

    public static EnumC5741Pk a(int i10) {
        if (i10 == 1) {
            return f43353c;
        }
        if (i10 == 2) {
            return f43354d;
        }
        if (i10 != 3) {
            return null;
        }
        return f43355e;
    }

    @Override
    public final int getNumber() {
        return this.f43356b;
    }
}
