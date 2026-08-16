package com.android.tools.r8.internal;

import android.security.keystore.KeyProperties;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC8242lM implements PI {

    public static final EnumC8242lM f49954c = new EnumC8242lM(KeyProperties.DIGEST_NONE, 0, 0);

    public static final EnumC8242lM f49955d = new EnumC8242lM("INTERNAL_TO_CLASS_ID", 1, 1);

    public static final EnumC8242lM f49956e = new EnumC8242lM("DESC_TO_CLASS_ID", 2, 2);

    public final int f49957b;

    public EnumC8242lM(String str, int i10, int i11) {
        this.f49957b = i11;
    }

    @Override
    public final int getNumber() {
        return this.f49957b;
    }
}
