package com.google.android.gms.measurement.internal;

public enum EnumC12332k5 {
    GOOGLE_ANALYTICS(0),
    GOOGLE_SIGNAL(1),
    SGTM(2),
    SGTM_CLIENT(3),
    GOOGLE_SIGNAL_PENDING(4),
    UNKNOWN(99);

    private final int zzg;

    EnumC12332k5(int i10) {
        this.zzg = i10;
    }

    public static EnumC12332k5 a(int i10) {
        for (EnumC12332k5 enumC12332k5 : values()) {
            if (enumC12332k5.zzg == i10) {
                return enumC12332k5;
            }
        }
        return UNKNOWN;
    }

    public final int N1() {
        return this.zzg;
    }
}
