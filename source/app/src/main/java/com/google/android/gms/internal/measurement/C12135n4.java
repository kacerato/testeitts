package com.google.android.gms.internal.measurement;

import android.util.Log;
import javax.annotation.Nullable;

public final class C12135n4 extends AbstractC12215w4 {
    public C12135n4(C12162q4 c12162q4, String str, Boolean bool, boolean z10) {
        super(c12162q4, str, bool, true, null);
    }

    @Override
    @Nullable
    public final Object a(Object obj) {
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (R3.f62105c.matcher(str).matches()) {
                return Boolean.TRUE;
            }
            if (R3.f62106d.matcher(str).matches()) {
                return Boolean.FALSE;
            }
        }
        String str2 = this.f62467b;
        String obj2 = obj.toString();
        StringBuilder sb2 = new StringBuilder(str2.length() + 28 + obj2.length());
        sb2.append("Invalid boolean value for ");
        sb2.append(str2);
        sb2.append(": ");
        sb2.append(obj2);
        Log.e("PhenotypeFlag", sb2.toString());
        return null;
    }
}
