package com.android.tools.r8.shaking;

public final class C11182e4 {

    public final boolean f57256a;

    public final String f57257b;

    public C11182e4(String str, boolean z10) {
        this.f57256a = z10;
        this.f57257b = str;
    }

    public static boolean a(int i10, int i11, String str, String str2) {
        while (i10 < str.length()) {
            char charAt = str.charAt(i10);
            if (charAt != '*') {
                if (charAt != '?') {
                    if (i11 != str2.length()) {
                        int i12 = i11 + 1;
                        if (charAt == str2.charAt(i11)) {
                            i11 = i12;
                        }
                    }
                    return false;
                }
                if (i11 != str2.length()) {
                    int i13 = i11 + 1;
                    if (str2.charAt(i11) != '/') {
                        i11 = i13;
                    }
                }
                return false;
            }
            int i14 = i10 + 1;
            boolean z10 = str.length() > i14 && str.charAt(i14) == '*';
            int i15 = (z10 ? 2 : 1) + i10;
            if (i15 == str.length()) {
                return z10 || str2.indexOf(47, i11) == -1;
            }
            for (int i16 = i11; i16 < str2.length(); i16++) {
                if (!z10 && str2.charAt(i16) == '/') {
                    return a(i15, i16, str, str2);
                }
                if (a(i15, i16, str, str2)) {
                    return true;
                }
            }
            i10++;
        }
        return i11 == str2.length();
    }
}
