package com.android.tools.r8;

public final class C11699z2 {
    public static String a(String str, int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("count is negative: " + i10);
        }
        int length = str.length();
        if (i10 == 0 || length == 0) {
            return "";
        }
        if (i10 == 1) {
            return str;
        }
        if (str.length() <= Integer.MAX_VALUE / i10) {
            StringBuilder sb2 = new StringBuilder(length * i10);
            for (int i11 = 0; i11 < i10; i11++) {
                sb2.append(str);
            }
            return sb2.toString();
        }
        throw new OutOfMemoryError("Repeating " + str.length() + " bytes String " + i10 + " times will produce a String exceeding maximum size.");
    }
}
