package com.android.tools.r8.internal;

import java.text.SimpleDateFormat;
import java.util.Locale;

public abstract class Q60 {
    public static SimpleDateFormat a(int i10, int i11) {
        String str;
        String str2;
        StringBuilder sb2 = new StringBuilder();
        if (i10 == 0) {
            str = "EEEE, MMMM d, yyyy";
        } else if (i10 == 1) {
            str = "MMMM d, yyyy";
        } else if (i10 == 2) {
            str = "MMM d, yyyy";
        } else {
            if (i10 != 3) {
                throw new IllegalArgumentException(T60.a(i10, "Unknown DateFormat style: "));
            }
            str = "M/d/yy";
        }
        sb2.append(str);
        sb2.append(" ");
        if (i11 == 0 || i11 == 1) {
            str2 = "h:mm:ss a z";
        } else if (i11 == 2) {
            str2 = "h:mm:ss a";
        } else {
            if (i11 != 3) {
                throw new IllegalArgumentException(T60.a(i11, "Unknown DateFormat style: "));
            }
            str2 = "h:mm a";
        }
        sb2.append(str2);
        return new SimpleDateFormat(sb2.toString(), Locale.US);
    }
}
