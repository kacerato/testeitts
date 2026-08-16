package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Map;
import java.util.Objects;

public final class R6 implements D2 {

    public final String f62910a;

    public final List f62911b;

    public final c7 f62912c;

    public R6(c7 c7Var, String str, List list) {
        this.f62910a = str;
        this.f62911b = list;
        Objects.requireNonNull(c7Var);
        this.f62912c = c7Var;
    }

    @Override
    public final void a(String str, int i10, Throwable th2, byte[] bArr, Map map) {
        this.f62912c.z(true, i10, th2, bArr, this.f62910a, this.f62911b);
    }
}
