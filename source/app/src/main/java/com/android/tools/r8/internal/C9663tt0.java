package com.android.tools.r8.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;

public final class C9663tt0 {

    public static final C9663tt0 f52713e = new C9663tt0(0, 0, 1, "VZCBSIFJD");

    public static final C9663tt0 f52714f = new C9663tt0(1, 1, 2, "VZCBSIFJD");

    public static final C9663tt0 f52715g = new C9663tt0(2, 2, 3, "VZCBSIFJD");

    public static final C9663tt0 f52716h = new C9663tt0(3, 3, 4, "VZCBSIFJD");

    public static final C9663tt0 f52717i = new C9663tt0(4, 4, 5, "VZCBSIFJD");

    public static final C9663tt0 f52718j = new C9663tt0(5, 5, 6, "VZCBSIFJD");

    public static final C9663tt0 f52719k = new C9663tt0(6, 6, 7, "VZCBSIFJD");

    public static final C9663tt0 f52720l = new C9663tt0(7, 7, 8, "VZCBSIFJD");

    public static final C9663tt0 f52721m = new C9663tt0(8, 8, 9, "VZCBSIFJD");

    public final int f52722a;

    public final String f52723b;

    public final int f52724c;

    public final int f52725d;

    public C9663tt0(int i10, int i11, int i12, String str) {
        this.f52722a = i10;
        this.f52723b = str;
        this.f52724c = i11;
        this.f52725d = i12;
    }

    public static C9663tt0 a(String str, int i10, int i11) {
        char charAt = str.charAt(i10);
        if (charAt == '(') {
            return new C9663tt0(11, i10, i11, str);
        }
        if (charAt == 'F') {
            return f52719k;
        }
        if (charAt == 'L') {
            return new C9663tt0(10, i10 + 1, i11 - 1, str);
        }
        if (charAt == 'S') {
            return f52717i;
        }
        if (charAt == 'V') {
            return f52713e;
        }
        if (charAt == 'I') {
            return f52718j;
        }
        if (charAt == 'J') {
            return f52720l;
        }
        if (charAt == 'Z') {
            return f52714f;
        }
        if (charAt != '[') {
            switch (charAt) {
                case 'B':
                    return f52716h;
                case 'C':
                    return f52715g;
                case 'D':
                    return f52721m;
                default:
                    throw new IllegalArgumentException("Invalid descriptor: ".concat(str));
            }
        }
        return new C9663tt0(9, i10, i11, str);
    }

    public static C9663tt0[] b(String str) {
        C9663tt0[] c9663tt0Arr = new C9663tt0[a(str)];
        int i10 = 0;
        int i11 = 1;
        while (str.charAt(i11) != ')') {
            int i12 = i11;
            while (str.charAt(i12) == '[') {
                i12++;
            }
            int i13 = i12 + 1;
            if (str.charAt(i12) == 'L') {
                i13 = Math.max(i13, str.indexOf(59, i13) + 1);
            }
            c9663tt0Arr[i10] = a(str, i11, i13);
            i10++;
            i11 = i13;
        }
        return c9663tt0Arr;
    }

    public static C9663tt0 d(String str) {
        return new C9663tt0(str.charAt(0) == '[' ? 9 : 12, 0, str.length(), str);
    }

    public static int e(String str) {
        int i10 = 1;
        while (str.charAt(i10) != ')') {
            while (str.charAt(i10) == '[') {
                i10++;
            }
            int i11 = i10 + 1;
            i10 = str.charAt(i10) == 'L' ? Math.max(i11, str.indexOf(59, i11) + 1) : i11;
        }
        return i10 + 1;
    }

    public static C9663tt0 f(String str) {
        return a(str, 0, str.length());
    }

    public final int c() {
        int i10 = this.f52722a;
        if (i10 == 12) {
            return 10;
        }
        return i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C9663tt0)) {
            return false;
        }
        C9663tt0 c9663tt0 = (C9663tt0) obj;
        int i10 = this.f52722a;
        if (i10 == 12) {
            i10 = 10;
        }
        int i11 = c9663tt0.f52722a;
        if (i10 != (i11 != 12 ? i11 : 10)) {
            return false;
        }
        int i12 = this.f52724c;
        int i13 = this.f52725d;
        int i14 = c9663tt0.f52724c;
        if (i13 - i12 != c9663tt0.f52725d - i14) {
            return false;
        }
        while (i12 < i13) {
            if (this.f52723b.charAt(i12) != c9663tt0.f52723b.charAt(i14)) {
                return false;
            }
            i12++;
            i14++;
        }
        return true;
    }

    public final int hashCode() {
        int i10 = this.f52722a;
        int i11 = (i10 == 12 ? 10 : i10) * 13;
        if (i10 >= 9) {
            int i12 = this.f52725d;
            for (int i13 = this.f52724c; i13 < i12; i13++) {
                i11 = (this.f52723b.charAt(i13) + i11) * 17;
            }
        }
        return i11;
    }

    public final String toString() {
        return b();
    }

    public static int c(String str) {
        char charAt = str.charAt(1);
        int i10 = 1;
        int i11 = 1;
        while (charAt != ')') {
            if (charAt == 'J' || charAt == 'D') {
                i10++;
                i11 += 2;
            } else {
                while (str.charAt(i10) == '[') {
                    i10++;
                }
                int i12 = i10 + 1;
                if (str.charAt(i10) == 'L') {
                    i12 = Math.max(i12, str.indexOf(59, i12) + 1);
                }
                i11++;
                i10 = i12;
            }
            charAt = str.charAt(i10);
        }
        char charAt2 = str.charAt(i10 + 1);
        if (charAt2 == 'V') {
            return i11 << 2;
        }
        return (i11 << 2) | ((charAt2 == 'J' || charAt2 == 'D') ? 2 : 1);
    }

    public final String b() {
        int i10 = this.f52722a;
        if (i10 == 10) {
            return this.f52723b.substring(this.f52724c - 1, this.f52725d + 1);
        }
        if (i10 == 12) {
            return AbstractC4917Be0.a("L", this.f52723b.substring(this.f52724c, this.f52725d), ";");
        }
        return this.f52723b.substring(this.f52724c, this.f52725d);
    }

    public final String a() {
        switch (this.f52722a) {
            case 0:
                return "void";
            case 1:
                return TypedValues.Custom.S_BOOLEAN;
            case 2:
                return "char";
            case 3:
                return "byte";
            case 4:
                return "short";
            case 5:
                return "int";
            case 6:
                return TypedValues.Custom.S_FLOAT;
            case 7:
                return "long";
            case 8:
                return "double";
            case 9:
                int i10 = 1;
                int i11 = 1;
                while (this.f52723b.charAt(this.f52724c + i11) == '[') {
                    i11++;
                }
                StringBuilder sb2 = new StringBuilder(a(this.f52723b, this.f52724c + i11, this.f52725d).a());
                while (this.f52723b.charAt(this.f52724c + i10) == '[') {
                    i10++;
                }
                while (i10 > 0) {
                    sb2.append(okhttp3.v.f99450n);
                    i10--;
                }
                return sb2.toString();
            case 10:
            case 12:
                return this.f52723b.substring(this.f52724c, this.f52725d).replace('/', '.');
            case 11:
            default:
                throw new AssertionError();
        }
    }

    public static int a(String str) {
        int i10 = 0;
        int i11 = 1;
        while (str.charAt(i11) != ')') {
            while (str.charAt(i11) == '[') {
                i11++;
            }
            int i12 = i11 + 1;
            i11 = str.charAt(i11) == 'L' ? Math.max(i12, str.indexOf(59, i12) + 1) : i12;
            i10++;
        }
        return i10;
    }
}
