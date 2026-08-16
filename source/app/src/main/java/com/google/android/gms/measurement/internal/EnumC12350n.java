package com.google.android.gms.measurement.internal;

public enum EnumC12350n {
    UNSET('0'),
    REMOTE_DEFAULT('1'),
    REMOTE_DELEGATION('2'),
    MANIFEST('3'),
    INITIALIZATION('4'),
    API('5'),
    CHILD_ACCOUNT('6'),
    TCF('7'),
    REMOTE_ENFORCED_DEFAULT('8'),
    FAILSAFE('9');

    private final char zzk;

    EnumC12350n(char c10) {
        this.zzk = c10;
    }

    public static EnumC12350n a(char c10) {
        for (EnumC12350n enumC12350n : values()) {
            if (enumC12350n.zzk == c10) {
                return enumC12350n;
            }
        }
        return UNSET;
    }

    public final char b() {
        return this.zzk;
    }
}
