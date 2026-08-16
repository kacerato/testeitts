package com.google.android.gms.measurement.internal;

import java.util.Collections;
import java.util.Map;

public final class O6 {

    public final String f62841a;

    public final Map f62842b;

    public final EnumC12332k5 f62843c;

    public final com.google.android.gms.internal.measurement.C3 f62844d;

    public O6(String str, Map map, EnumC12332k5 enumC12332k5, com.google.android.gms.internal.measurement.C3 c32) {
        this.f62841a = str;
        this.f62842b = map;
        this.f62843c = enumC12332k5;
        this.f62844d = c32;
    }

    public final String a() {
        return this.f62841a;
    }

    public final Map b() {
        Map map = this.f62842b;
        return map == null ? Collections.emptyMap() : map;
    }

    public final EnumC12332k5 c() {
        return this.f62843c;
    }

    public final com.google.android.gms.internal.measurement.C3 d() {
        return this.f62844d;
    }
}
