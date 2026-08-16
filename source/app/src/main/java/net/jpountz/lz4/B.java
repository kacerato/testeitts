package net.jpountz.lz4;

import java.nio.ByteOrder;

public enum B {
    ;

    static final boolean $assertionsDisabled = false;

    public static int a(byte[] bArr, int i10, int i11, int i12) {
        int numberOfTrailingZeros;
        int i13 = 0;
        while (i11 <= i12 - 8) {
            if (net.jpountz.util.d.i(bArr, i11) != net.jpountz.util.d.i(bArr, i10)) {
                if (net.jpountz.util.e.NATIVE_BYTE_ORDER == ByteOrder.BIG_ENDIAN) {
                    numberOfTrailingZeros = Long.numberOfLeadingZeros(net.jpountz.util.d.i(bArr, i10) ^ net.jpountz.util.d.i(bArr, i11));
                } else {
                    numberOfTrailingZeros = Long.numberOfTrailingZeros(net.jpountz.util.d.i(bArr, i10) ^ net.jpountz.util.d.i(bArr, i11));
                }
                return i13 + (numberOfTrailingZeros >>> 3);
            }
            i13 += 8;
            i10 += 8;
            i11 += 8;
        }
        while (i11 < i12) {
            int i14 = i10 + 1;
            int i15 = i11 + 1;
            if (net.jpountz.util.d.d(bArr, i10) != net.jpountz.util.d.d(bArr, i11)) {
                break;
            }
            i13++;
            i10 = i14;
            i11 = i15;
        }
        return i13;
    }

    public static int b(byte[] bArr, int i10, int i11, int i12, int i13) {
        int i14 = 0;
        while (i10 > i12 && i11 > i13) {
            i10--;
            i11--;
            if (net.jpountz.util.d.d(bArr, i10) != net.jpountz.util.d.d(bArr, i11)) {
                break;
            }
            i14++;
        }
        return i14;
    }

    public static int c(byte[] bArr, int i10, int i11, int i12, int i13, byte[] bArr2, int i14, int i15) {
        int i16;
        int i17;
        int i18 = i11 - i10;
        int i19 = i14 + 1;
        if (i18 >= 15) {
            i19 = m(i18 - 15, bArr2, i19);
            i16 = -16;
        } else {
            i16 = i18 << 4;
        }
        j(bArr, i10, bArr2, i19, i18);
        int i20 = i19 + i18;
        int i21 = i11 - i12;
        bArr2[i20] = (byte) i21;
        int i22 = i20 + 2;
        bArr2[i20 + 1] = (byte) (i21 >>> 8);
        int i23 = i13 - 4;
        if (i20 + 8 + (i23 >>> 8) > i15) {
            throw new LZ4Exception("maxDestLen is too small");
        }
        if (i23 >= 15) {
            i17 = i16 | 15;
            i22 = m(i13 - 19, bArr2, i22);
        } else {
            i17 = i23 | i16;
        }
        bArr2[i14] = (byte) i17;
        return i22;
    }

    public static int d(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        return z.i(bArr, i10, i11, bArr2, i12, i13);
    }

    public static boolean e(byte[] bArr, int i10, int i11) {
        return net.jpountz.util.d.e(bArr, i10) == net.jpountz.util.d.e(bArr, i11);
    }

    public static int g(byte[] bArr, int i10) {
        short m10 = net.jpountz.util.d.m(bArr, i10);
        if (net.jpountz.util.e.NATIVE_BYTE_ORDER == ByteOrder.BIG_ENDIAN) {
            m10 = Short.reverseBytes(m10);
        }
        return m10 & 65535;
    }

    public static void h(byte[] bArr, int i10, byte[] bArr2, int i11, int i12) {
        int i13 = i12 & (-8);
        j(bArr, i10, bArr2, i11, i13);
        int i14 = i12 & 7;
        for (int i15 = 0; i15 < i14; i15++) {
            net.jpountz.util.d.q(bArr2, i11 + i13 + i15, net.jpountz.util.d.d(bArr, i10 + i13 + i15));
        }
    }

    public static void i(byte[] bArr, int i10, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = i11 + i13;
            int i15 = i10 + i13;
            bArr[i14] = bArr[i15];
            net.jpountz.util.d.q(bArr, i14, net.jpountz.util.d.d(bArr, i15));
        }
    }

    public static void j(byte[] bArr, int i10, byte[] bArr2, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13 += 8) {
            net.jpountz.util.d.v(bArr2, i11 + i13, net.jpountz.util.d.i(bArr, i10 + i13));
        }
    }

    public static void k(byte[] bArr, int i10, int i11, int i12) {
        int i13 = i11 - i10;
        if (i13 < 4) {
            int i14 = 0;
            for (int i15 = 0; i15 < 4; i15++) {
                net.jpountz.util.d.q(bArr, i11 + i15, net.jpountz.util.d.d(bArr, i10 + i15));
            }
            int i16 = i11 + 4;
            int i17 = i10 + 4;
            int i18 = i16 - i17;
            if (i18 == 1) {
                i17 = i10 + 1;
            } else if (i18 == 2) {
                i17 = i10 + 2;
            } else if (i18 == 3) {
                i17 = i10 + 1;
                i14 = -1;
            } else if (i18 == 5) {
                i14 = 1;
            } else if (i18 == 6) {
                i14 = 2;
            } else if (i18 == 7) {
                i14 = 3;
            }
            net.jpountz.util.d.s(bArr, i16, net.jpountz.util.d.e(bArr, i17));
            i11 += 8;
            i10 = i17 - i14;
        } else if (i13 < 8) {
            net.jpountz.util.d.v(bArr, i11, net.jpountz.util.d.i(bArr, i10));
            i11 += i13;
        }
        while (i11 < i12) {
            net.jpountz.util.d.v(bArr, i11, net.jpountz.util.d.i(bArr, i10));
            i11 += 8;
            i10 += 8;
        }
    }

    public static int m(int i10, byte[] bArr, int i11) {
        while (i10 >= 255) {
            net.jpountz.util.d.r(bArr, i11, 255);
            i10 -= 255;
            i11++;
        }
        int i12 = i11 + 1;
        net.jpountz.util.d.r(bArr, i11, i10);
        return i12;
    }

    public static void o(byte[] bArr, int i10, int i11) {
        short s10 = (short) i11;
        if (net.jpountz.util.e.NATIVE_BYTE_ORDER == ByteOrder.BIG_ENDIAN) {
            s10 = Short.reverseBytes(s10);
        }
        net.jpountz.util.d.w(bArr, i10, s10);
    }
}
