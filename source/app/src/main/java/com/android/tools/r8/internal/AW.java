package com.android.tools.r8.internal;

import java.nio.charset.StandardCharsets;
import java.util.Collection;

public class AW {

    public final Collection f38628a;

    public AW(Collection collection) {
        this.f38628a = collection;
    }

    public Collection a() {
        return this.f38628a;
    }

    public static AW a(byte[] bArr) {
        return new AW(C10656zq0.a(new String(bArr, StandardCharsets.UTF_8), ';'));
    }
}
