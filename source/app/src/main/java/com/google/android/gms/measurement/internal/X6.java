package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.Objects;

public final class X6 implements l7 {

    public final c7 f62969a;

    public X6(c7 c7Var) {
        Objects.requireNonNull(c7Var);
        this.f62969a = c7Var;
    }

    @Override
    public final void a(String str, String str2, Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            this.f62969a.b().t(new V6(this, str, str2, bundle));
            return;
        }
        c7 c7Var = this.f62969a;
        if (c7Var.w0() != null) {
            c7Var.w0().a().o().b("AppId not known when logging event", str2);
        }
    }
}
