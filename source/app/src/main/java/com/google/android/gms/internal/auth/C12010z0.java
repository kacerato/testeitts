package com.google.android.gms.internal.auth;

import android.util.Log;
import javax.annotation.Nullable;

public final class C12010z0 extends H0 {
    public C12010z0(D0 d02, String str, Long l10, boolean z10) {
        super(d02, str, l10, true, null);
    }

    @Override
    @Nullable
    public final Object a(Object obj) {
        try {
            return Long.valueOf(Long.parseLong((String) obj));
        } catch (NumberFormatException unused) {
            Log.e("PhenotypeFlag", "Invalid long value for " + this.f61610b + ": " + ((String) obj));
            return null;
        }
    }
}
