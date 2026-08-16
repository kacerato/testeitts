package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.InterfaceC12119l6;
import java.util.Map;
import java.util.Objects;

public final class X2 implements InterfaceC12119l6 {

    public final String f62964a;

    public final C12266c3 f62965b;

    public X2(C12266c3 c12266c3, String str) {
        this.f62964a = str;
        Objects.requireNonNull(c12266c3);
        this.f62965b = c12266c3;
    }

    @Override
    public final String a(String str) {
        Map map = (Map) this.f62965b.p().get(this.f62964a);
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return (String) map.get(str);
    }
}
