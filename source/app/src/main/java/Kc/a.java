package Kc;

import android.util.Half;

public class a {

    public short f11110a;

    public a() {
        this.f11110a = (short) 0;
    }

    public static short c(float f10) {
        int i10;
        int i11;
        int floatToIntBits = Float.floatToIntBits(f10);
        int i12 = (floatToIntBits >>> 16) & 32768;
        int i13 = Integer.MAX_VALUE & floatToIntBits;
        int i14 = i13 + 4096;
        if (i14 >= 1199570944) {
            if (i13 < 1199570944) {
                i11 = i12 | Half.MAX_VALUE;
            } else if (i14 < 2139095040) {
                i11 = i12 | 31744;
            } else {
                i12 |= 31744;
                i10 = (floatToIntBits & 8388607) >>> 13;
            }
            return (short) i11;
        }
        if (i14 >= 947912704) {
            i10 = (i13 - 939520000) >>> 13;
        } else {
            if (i14 < 855638016) {
                return (short) i12;
            }
            i10 = (i13 - 855633920) >>> 23;
        }
        i11 = i10 | i12;
        return (short) i11;
    }

    public static float f(short h10) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14 = (h10 >> 15) & 1;
        int i15 = (h10 >> 10) & 31;
        int i16 = h10 & 1023;
        if (i15 == 0) {
            if (i16 == 0) {
                i13 = 0;
                i12 = 0;
                return Float.intBitsToFloat((i13 << 23) | (i14 << 31) | i12);
            }
            while ((i16 & 1024) == 0) {
                i16 <<= 1;
                i15--;
            }
            i16 &= Half.LOWEST_VALUE;
            i10 = i15 + 113;
        } else {
            if (i15 == 31) {
                i11 = i16 << 13;
                i10 = 255;
                int i17 = i10;
                i12 = i11;
                i13 = i17;
                return Float.intBitsToFloat((i13 << 23) | (i14 << 31) | i12);
            }
            i10 = i15 + 112;
        }
        i11 = i16 << 13;
        int i172 = i10;
        i12 = i11;
        i13 = i172;
        return Float.intBitsToFloat((i13 << 23) | (i14 << 31) | i12);
    }

    public a a(a other) {
        return new a(d() + other.d());
    }

    public a b(a other) {
        return new a(d() / other.d());
    }

    public float d() {
        return f(this.f11110a);
    }

    public short e() {
        return this.f11110a;
    }

    public a g(a other) {
        return new a(d() * other.d());
    }

    public void h(float value) {
        this.f11110a = c(value);
    }

    public void i(short bits) {
        this.f11110a = bits;
    }

    public a j(a other) {
        return new a(d() - other.d());
    }

    public a(float value) {
        h(value);
    }
}
