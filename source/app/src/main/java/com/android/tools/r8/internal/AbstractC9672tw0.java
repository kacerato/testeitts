package com.android.tools.r8.internal;

public abstract class AbstractC9672tw0 {

    public static final AbstractC8838ow0 f52738a;

    static {
        f52738a = (AbstractC6671bw0.f46897e && AbstractC6671bw0.f46896d && !AbstractC9690u2.a()) ? new C9338rw0() : new C9005pw0();
    }

    public static int a(int i10, int i11) {
        if (i10 > -12 || i11 > -65) {
            return -1;
        }
        return i10 ^ (i11 << 8);
    }

    public static int a(int i10, int i11, int i12) {
        if (i10 > -12 || i11 > -65 || i12 > -65) {
            return -1;
        }
        return (i10 ^ (i11 << 8)) ^ (i12 << 16);
    }

    public static int a(String str) {
        int length = str.length();
        int i10 = 0;
        int i11 = 0;
        while (i11 < length && str.charAt(i11) < '\u0080') {
            i11++;
        }
        int i12 = length;
        while (true) {
            if (i11 >= length) {
                break;
            }
            char charAt = str.charAt(i11);
            if (charAt < '\u0800') {
                i12 += ('\u007f' - charAt) >>> 31;
                i11++;
            } else {
                int length2 = str.length();
                while (i11 < length2) {
                    char charAt2 = str.charAt(i11);
                    if (charAt2 < '\u0800') {
                        i10 += ('\u007f' - charAt2) >>> 31;
                    } else {
                        i10 += 2;
                        if ('\ud800' <= charAt2 && charAt2 <= '\udfff') {
                            if (Character.codePointAt(str, i11) < 65536) {
                                throw new C9172qw0(i11, length2);
                            }
                            i11++;
                        }
                    }
                    i11++;
                }
                i12 += i10;
            }
        }
        if (i12 >= length) {
            return i12;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i12 + 4294967296L));
    }
}
