package org.bouncycastle.util;

public class j {
    public static boolean a(String str, int i10, int i11, int i12, int i13, boolean z10, int i14, int i15) {
        int i16 = i11 - i10;
        if ((i16 > i13) || (i16 < 1)) {
            return false;
        }
        if (((i16 > 1) && (!z10)) && Character.digit(str.charAt(i10), i12) <= 0) {
            return false;
        }
        int i17 = 0;
        while (i10 < i11) {
            int i18 = i10 + 1;
            int digit = Character.digit(str.charAt(i10), i12);
            if (digit < 0) {
                return false;
            }
            i17 = (i17 * i12) + digit;
            i10 = i18;
        }
        return (i17 >= i14) & (i17 <= i15);
    }

    public static boolean b(String str) {
        return a(str, 0, str.length(), 10, 2, false, 0, 32);
    }

    public static boolean c(String str, int i10, int i11) {
        return a(str, i10, i11, 10, 3, true, 0, 255);
    }

    public static boolean d(String str) {
        return a(str, 0, str.length(), 10, 3, false, 1, 128);
    }

    public static boolean e(String str, int i10, int i11) {
        return a(str, i10, i11, 16, 4, true, 0, 65535);
    }

    public static boolean f(String str) {
        return g(str) || i(str);
    }

    public static boolean g(String str) {
        int length = str.length();
        if (length < 7 || length > 15) {
            return false;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < 3; i11++) {
            int indexOf = str.indexOf(46, i10);
            if (!c(str, i10, indexOf)) {
                return false;
            }
            i10 = indexOf + 1;
        }
        return c(str, i10, length);
    }

    public static boolean h(String str) {
        int indexOf = str.indexOf("/");
        if (indexOf < 1) {
            return false;
        }
        String substring = str.substring(0, indexOf);
        String substring2 = str.substring(indexOf + 1);
        if (g(substring)) {
            return g(substring2) || b(substring2);
        }
        return false;
    }

    public static boolean i(String str) {
        int indexOf;
        if (str.length() == 0) {
            return false;
        }
        char charAt = str.charAt(0);
        if (charAt != ':' && Character.digit(charAt, 16) < 0) {
            return false;
        }
        String str2 = str + b3.s.f32937c;
        int i10 = 0;
        int i11 = 0;
        boolean z10 = false;
        while (i10 < str2.length() && (indexOf = str2.indexOf(58, i10)) >= i10) {
            if (i11 == 8) {
                return false;
            }
            if (i10 != indexOf) {
                String substring = str2.substring(i10, indexOf);
                if (indexOf == str2.length() - 1 && substring.indexOf(46) > 0) {
                    i11++;
                    if (i11 == 8 || !g(substring)) {
                        return false;
                    }
                } else if (!e(str2, i10, indexOf)) {
                    return false;
                }
            } else {
                if (indexOf != 1 && indexOf != str2.length() - 1 && z10) {
                    return false;
                }
                z10 = true;
            }
            i10 = indexOf + 1;
            i11++;
        }
        return i11 == 8 || z10;
    }

    public static boolean j(String str) {
        int indexOf = str.indexOf("/");
        if (indexOf < 1) {
            return false;
        }
        String substring = str.substring(0, indexOf);
        String substring2 = str.substring(indexOf + 1);
        if (i(substring)) {
            return i(substring2) || d(substring2);
        }
        return false;
    }

    public static boolean k(String str) {
        return h(str) || j(str);
    }
}
