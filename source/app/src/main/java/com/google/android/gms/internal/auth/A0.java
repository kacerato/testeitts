package com.google.android.gms.internal.auth;

import android.util.Log;
import javax.annotation.Nullable;

public final class A0 extends H0 {
    public A0(D0 d02, String str, Boolean bool, boolean z10) {
        super(d02, str, bool, true, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @Nullable
    public final Object a(Object obj) {
        if (C11931f0.f61723c.matcher(obj).matches()) {
            return Boolean.TRUE;
        }
        if (C11931f0.f61724d.matcher(obj).matches()) {
            return Boolean.FALSE;
        }
        Log.e("PhenotypeFlag", "Invalid boolean value for " + this.f61610b + ": " + ((String) obj));
        return null;
    }
}
