package com.google.android.gms.internal.measurement;

import android.util.Log;
import javax.annotation.Nullable;

public final class C12126m4 extends AbstractC12215w4 {
    public C12126m4(C12162q4 c12162q4, String str, Long l10, boolean z10) {
        super(c12162q4, str, l10, true, null);
    }

    @Override
    @Nullable
    public final Object a(Object obj) {
        if (obj instanceof Long) {
            return (Long) obj;
        }
        if (obj instanceof String) {
            try {
                return Long.valueOf(Long.parseLong((String) obj));
            } catch (NumberFormatException unused) {
            }
        }
        String str = this.f62467b;
        String obj2 = obj.toString();
        StringBuilder sb2 = new StringBuilder(str.length() + 25 + obj2.length());
        sb2.append("Invalid long value for ");
        sb2.append(str);
        sb2.append(": ");
        sb2.append(obj2);
        Log.e("PhenotypeFlag", sb2.toString());
        return null;
    }
}
