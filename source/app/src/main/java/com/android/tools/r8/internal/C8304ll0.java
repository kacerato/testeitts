package com.android.tools.r8.internal;

import java.util.Objects;

public class C8304ll0 implements Comparable<C8304ll0> {

    public static final C8304ll0 f50094f = a(0, 0, 0);

    public static final C8304ll0 f50095g = a(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE);

    public final int f50096b;

    public final int f50097c;

    public final int f50098d;

    public final String f50099e;

    public C8304ll0(int i10, int i11, int i12, String str) {
        this.f50096b = i10;
        this.f50097c = i11;
        this.f50098d = i12;
        this.f50099e = str;
    }

    public static C8304ll0 a(String str) {
        int indexOf = str.indexOf(46);
        if (indexOf > 0) {
            int i10 = indexOf + 1;
            int indexOf2 = str.indexOf(46, i10);
            if (indexOf2 > i10) {
                int i11 = indexOf2 + 1;
                int indexOf3 = str.indexOf(45, i11);
                int i12 = -1;
                if (indexOf3 == -1) {
                    indexOf3 = str.length();
                } else if (indexOf3 > i11) {
                    i12 = str.length();
                } else {
                    throw new IllegalArgumentException("Invalid semantic version: " + str);
                }
                try {
                    return new C8304ll0(Integer.parseInt(str.substring(0, indexOf)), Integer.parseInt(str.substring(i10, indexOf2)), Integer.parseInt(str.substring(i11, indexOf3)), i12 < 0 ? null : str.substring(indexOf3 + 1, i12));
                } catch (NumberFormatException e10) {
                    throw new IllegalArgumentException("Invalid semantic version: " + str, e10);
                }
            }
            throw new IllegalArgumentException("Invalid semantic version: " + str);
        }
        throw new IllegalArgumentException("Invalid semantic version: " + str);
    }

    public static C8304ll0 d() {
        return f50095g;
    }

    public int b() {
        return this.f50097c;
    }

    public int c() {
        return this.f50098d;
    }

    @Override
    public final int compareTo(C8304ll0 c8304ll0) {
        C8304ll0 c8304ll02 = c8304ll0;
        if (equals(c8304ll02)) {
            return 0;
        }
        return a(c8304ll02) ? -1 : 1;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C8304ll0)) {
            return false;
        }
        C8304ll0 c8304ll0 = (C8304ll0) obj;
        return this.f50096b == c8304ll0.f50096b && this.f50097c == c8304ll0.f50097c && this.f50098d == c8304ll0.f50098d && Objects.equals(this.f50099e, c8304ll0.f50099e);
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f50096b), Integer.valueOf(this.f50097c), Integer.valueOf(this.f50098d), this.f50099e);
    }

    public String toString() {
        String str;
        int i10 = this.f50096b;
        int i11 = this.f50097c;
        int i12 = this.f50098d;
        String str2 = this.f50099e;
        if (str2 != null) {
            str = "-" + str2;
        } else {
            str = "";
        }
        return i10 + "." + i11 + "." + i12 + str;
    }

    public static C8304ll0 a(int i10, int i11, int i12) {
        return new C8304ll0(i10, i11, i12, null);
    }

    public int a() {
        return this.f50096b;
    }

    public boolean a(C8304ll0 c8304ll0) {
        int i10 = this.f50096b;
        int i11 = c8304ll0.f50096b;
        if (i10 == i11) {
            int i12 = this.f50097c;
            int i13 = c8304ll0.f50097c;
            if (i12 != i13) {
                if (i12 > i13) {
                    return true;
                }
            } else if (this.f50098d > c8304ll0.f50098d) {
                return true;
            }
        } else if (i10 > i11) {
            return true;
        }
        return equals(c8304ll0);
    }
}
