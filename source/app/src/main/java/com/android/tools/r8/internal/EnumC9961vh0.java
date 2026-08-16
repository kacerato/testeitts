package com.android.tools.r8.internal;

import android.security.keystore.KeyProperties;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC9961vh0 implements QI {

    public static final EnumC9961vh0 f53191c = new EnumC9961vh0(KeyProperties.DIGEST_NONE, 0, 0);

    public static final EnumC9961vh0 f53192d = new EnumC9961vh0("PUBLIC", 1, 1);

    public static final EnumC9961vh0 f53193e = new EnumC9961vh0("SYSTEM", 2, 2);

    public static final EnumC9961vh0 f53194f = new EnumC9961vh0("VENDOR", 3, 3);

    public static final EnumC9961vh0 f53195g = new EnumC9961vh0("PRODUCT", 4, 4);

    public static final EnumC9961vh0 f53196h = new EnumC9961vh0("SIGNATURE", 5, 5);

    public static final EnumC9961vh0 f53197i = new EnumC9961vh0("ODM", 6, 6);

    public static final EnumC9961vh0 f53198j = new EnumC9961vh0("OEM", 7, 7);

    public static final EnumC9961vh0 f53199k = new EnumC9961vh0("ACTOR", 8, 8);

    public static final EnumC9961vh0 f53200l = new EnumC9961vh0("CONFIG_SIGNATURE", 9, 9);

    public static final EnumC9961vh0 f53201m = new EnumC9961vh0("UNRECOGNIZED", 10, -1);

    public final int f53202b;

    public EnumC9961vh0(String str, int i10, int i11) {
        this.f53202b = i11;
    }

    @Override
    public final int getNumber() {
        if (this != f53201m) {
            return this.f53202b;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
