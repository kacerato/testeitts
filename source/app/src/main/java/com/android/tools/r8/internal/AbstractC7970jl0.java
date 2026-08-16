package com.android.tools.r8.internal;

import java.util.regex.Pattern;

public abstract class AbstractC7970jl0 {

    public static final AbstractC7552hC f49340a = AbstractC7552hC.a(".png", ".9.png", ".gif", ".jpeg", ".jpg", ".bmp", ".webp", ".avif");

    public static String a(String str) {
        StringBuilder sb2 = new StringBuilder(str.length() * 2);
        sb2.append('^');
        int length = str.length();
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            char charAt = str.charAt(i10);
            if (charAt == '*') {
                int a10 = a(sb2, str, i11, i10);
                int i12 = a10 + 1;
                if (i10 < length - 1) {
                    int i13 = i10 + 1;
                    if (str.charAt(i13) == '*') {
                        i12 = a10 + 2;
                        i10 = i13;
                    }
                }
                sb2.append(".*?");
                i11 = i12;
            } else if (charAt == '?') {
                i11 = a(sb2, str, i11, i10) + 1;
                sb2.append(".?");
            }
            i10++;
        }
        a(sb2, str, i11, str.length());
        sb2.append('$');
        return sb2.toString();
    }

    public static int a(StringBuilder sb2, String str, int i10, int i11) {
        if (i11 > i10) {
            for (int i12 = i10; i12 < i11; i12++) {
                char charAt = str.charAt(i12);
                if (!Character.isLetterOrDigit(charAt) && charAt != '/' && charAt != ' ') {
                    sb2.append(Pattern.quote(str.substring(i10, i11)));
                    return i11;
                }
            }
            while (i10 < i11) {
                sb2.append(str.charAt(i10));
                i10++;
            }
        }
        return i11;
    }
}
