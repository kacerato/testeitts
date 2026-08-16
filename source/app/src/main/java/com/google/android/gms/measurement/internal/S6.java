package com.google.android.gms.measurement.internal;

import java.util.Map;
import java.util.Objects;

public final class S6 implements D2 {

    public final String f62922a;

    public final f7 f62923b;

    public final c7 f62924c;

    public S6(c7 c7Var, String str, f7 f7Var) {
        this.f62922a = str;
        this.f62923b = f7Var;
        Objects.requireNonNull(c7Var);
        this.f62924c = c7Var;
    }

    @Override
    public final void a(String str, int i10, Throwable th2, byte[] bArr, Map map) {
        this.f62924c.v(this.f62922a, i10, th2, bArr, this.f62923b);
    }
}
