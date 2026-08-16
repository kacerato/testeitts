package com.google.android.gms.internal.auth;

import android.util.Log;
import javax.annotation.Nullable;

public final class B0 extends H0 {
    public B0(D0 d02, String str, Double d10, boolean z10) {
        super(d02, str, d10, true, null);
    }

    @Override
    @Nullable
    public final Object a(Object obj) {
        try {
            return Double.valueOf(Double.parseDouble((String) obj));
        } catch (NumberFormatException unused) {
            Log.e("PhenotypeFlag", "Invalid double value for " + this.f61610b + ": " + ((String) obj));
            return null;
        }
    }
}
