package com.android.tools.r8.internal;

public enum ZU {
    UNKNOWN(-1),
    OBFUSCATED_TYPE_NAME_AS_KEY(0),
    OBFUSCATED_TYPE_NAME_AS_KEY_WITH_PARTITIONS(1);


    public static final ZU f46246f = OBFUSCATED_TYPE_NAME_AS_KEY_WITH_PARTITIONS;

    public final int f46248b;

    ZU(int i10) {
        this.f46248b = i10;
    }

    public static ZU a() {
        return f46246f;
    }
}
