package com.google.android.gms.internal.measurement;

import android.util.Log;
import javax.annotation.Nullable;

public final class C12144o4 extends AbstractC12215w4 {
    public C12144o4(C12162q4 c12162q4, String str, Double d10, boolean z10) {
        super(c12162q4, "measurement.test.double_flag", d10, true, null);
    }

    @Override
    @Nullable
    public final Object a(Object obj) {
        if (obj instanceof Double) {
            return (Double) obj;
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if (obj instanceof String) {
            try {
                return Double.valueOf(Double.parseDouble((String) obj));
            } catch (NumberFormatException unused) {
            }
        }
        String str = this.f62467b;
        String obj2 = obj.toString();
        StringBuilder sb2 = new StringBuilder(str.length() + 27 + obj2.length());
        sb2.append("Invalid double value for ");
        sb2.append(str);
        sb2.append(": ");
        sb2.append(obj2);
        Log.e("PhenotypeFlag", sb2.toString());
        return null;
    }
}
