package com.google.common.primitives;

import java.util.Arrays;
import java.util.Comparator;
import w2.H;

@f
@v2.b
public final class u {

    public static final byte f67081a = 64;

    public enum a implements Comparator<byte[]> {
        INSTANCE;

        @Override
        public int compare(byte[] bArr, byte[] bArr2) {
            int min = Math.min(bArr.length, bArr2.length);
            for (int i10 = 0; i10 < min; i10++) {
                int b10 = u.b(bArr[i10], bArr2[i10]);
                if (b10 != 0) {
                    return b10;
                }
            }
            return bArr.length - bArr2.length;
        }

        @Override
        public String toString() {
            return "SignedBytes.lexicographicalComparator()";
        }
    }

    public static byte a(long j10) {
        byte b10 = (byte) j10;
        H.p(((long) b10) == j10, "Out of range: %s", j10);
        return b10;
    }

    public static int b(byte b10, byte b11) {
        return b10 - b11;
    }

    public static String c(String str, byte... bArr) {
        H.E(str);
        if (bArr.length == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(bArr.length * 5);
        sb2.append((int) bArr[0]);
        for (int i10 = 1; i10 < bArr.length; i10++) {
            sb2.append(str);
            sb2.append((int) bArr[i10]);
        }
        return sb2.toString();
    }

    public static Comparator<byte[]> d() {
        return a.INSTANCE;
    }

    public static byte e(byte... bArr) {
        H.d(bArr.length > 0);
        byte b10 = bArr[0];
        for (int i10 = 1; i10 < bArr.length; i10++) {
            byte b11 = bArr[i10];
            if (b11 > b10) {
                b10 = b11;
            }
        }
        return b10;
    }

    public static byte f(byte... bArr) {
        H.d(bArr.length > 0);
        byte b10 = bArr[0];
        for (int i10 = 1; i10 < bArr.length; i10++) {
            byte b11 = bArr[i10];
            if (b11 < b10) {
                b10 = b11;
            }
        }
        return b10;
    }

    public static byte g(long j10) {
        if (j10 > 127) {
            return Byte.MAX_VALUE;
        }
        if (j10 < -128) {
            return Byte.MIN_VALUE;
        }
        return (byte) j10;
    }

    public static void h(byte[] bArr) {
        H.E(bArr);
        i(bArr, 0, bArr.length);
    }

    public static void i(byte[] bArr, int i10, int i11) {
        H.E(bArr);
        H.f0(i10, i11, bArr.length);
        Arrays.sort(bArr, i10, i11);
        b.n(bArr, i10, i11);
    }
}
