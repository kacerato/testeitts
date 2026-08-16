package com.android.tools.r8.shaking;

public class Z3 {

    public final String f57147a;

    public Z3(String str) {
        this.f57147a = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x003a, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(int i10, int i11, String str, String str2) {
        while (true) {
            if (i10 >= str.length()) {
                return i11 == str2.length();
            }
            char charAt = str.charAt(i10);
            if (charAt == '*') {
                int i12 = i10 + 1;
                boolean z10 = str.length() > i12 && str.charAt(i12) == '*';
                if (z10) {
                    i12 = i10 + 2;
                }
                if (i12 == str.length()) {
                    if (z10) {
                        return true;
                    }
                    return !(str2.indexOf(46, i11) != -1);
                }
                while (i11 < str2.length()) {
                    if (!z10 && str2.charAt(i11) == '.') {
                        return a(i12, i11, str, str2);
                    }
                    if (a(i12, i11, str, str2)) {
                        return true;
                    }
                    i11++;
                }
                return a(i12, str2.length(), str, str2);
            }
            if (charAt != '?') {
                if (i11 == str2.length()) {
                    break;
                }
                int i13 = i11 + 1;
                if (charAt != str2.charAt(i11)) {
                    break;
                }
                i11 = i13;
            } else {
                if (i11 == str2.length() || str2.charAt(i11) == '.') {
                    break;
                }
                i11++;
            }
            i10++;
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Z3) {
            return this.f57147a.equals(((Z3) obj).f57147a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f57147a.hashCode();
    }
}
