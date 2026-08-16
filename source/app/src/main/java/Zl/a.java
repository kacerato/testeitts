package Zl;

import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;

public class a {

    public static final int[] f31509a = {0, 0, 0, 1, 1, 1, -1, -1};

    public static final int[] f31510b = {0, 1, -1, 0, 1, -1, 0, 1};

    public static final int[] f31511c = {1, 1, 1, 0, 0, 0, 1, 0, 1};

    public static final int[] f31512d = {1, 1, 1, 1, 0, 0, 0, 1, 0};

    public static final int[] f31513e = {1, 0, 1, 0, 0, 1, 1, 1, 0};

    public static int[] a(byte[] bArr, int i10) {
        int[] iArr = new int[i10];
        int i11 = 0;
        int i12 = 0;
        while (i11 < bArr.length * 8) {
            int i13 = i(bArr, i11);
            int i14 = i11 + 2;
            int i15 = i(bArr, i11 + 1);
            i11 += 3;
            int i16 = (i13 * 4) + (i15 * 2) + i(bArr, i14);
            int i17 = i12 + 1;
            iArr[i12] = f31509a[i16];
            i12 += 2;
            iArr[i17] = f31510b[i16];
            if (i12 > i10 - 2) {
                break;
            }
        }
        return iArr;
    }

    public static int[] b(InputStream inputStream, int i10) throws IOException {
        return c(b.g(inputStream, (int) Math.ceil(((i10 * Math.log(3.0d)) / Math.log(2.0d)) / 8.0d)), i10);
    }

    public static int[] c(byte[] bArr, int i10) {
        BigInteger bigInteger = new BigInteger(1, bArr);
        int[] iArr = new int[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            int intValue = bigInteger.mod(BigInteger.valueOf(3L)).intValue();
            int i12 = intValue - 1;
            iArr[i11] = i12;
            if (i12 > 1) {
                iArr[i11] = intValue - 4;
            }
            bigInteger = bigInteger.divide(BigInteger.valueOf(3L));
        }
        return iArr;
    }

    public static int[] d(InputStream inputStream, int i10, int i11) throws IOException {
        return e(b.g(inputStream, (((31 - Integer.numberOfLeadingZeros(i11)) * i10) + 7) / 8), i10, i11);
    }

    public static int[] e(byte[] bArr, int i10, int i11) {
        int[] iArr = new int[i10];
        int numberOfLeadingZeros = 31 - Integer.numberOfLeadingZeros(i11);
        int i12 = i10 * numberOfLeadingZeros;
        int i13 = 0;
        for (int i14 = 0; i14 < i12; i14++) {
            if (i14 > 0 && i14 % numberOfLeadingZeros == 0) {
                i13++;
            }
            iArr[i13] = iArr[i13] + (i(bArr, i14) << (i14 % numberOfLeadingZeros));
        }
        return iArr;
    }

    public static byte[] f(int[] iArr) {
        byte[] bArr = new byte[((((iArr.length * 3) + 1) / 2) + 7) / 8];
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i10 < (iArr.length / 2) * 2) {
            int i13 = i10 + 1;
            int i14 = iArr[i10] + 1;
            i10 += 2;
            int i15 = iArr[i13] + 1;
            if (i14 == 0 && i15 == 0) {
                throw new IllegalStateException("Illegal encoding!");
            }
            int i16 = (i14 * 3) + i15;
            int[] iArr2 = {f31511c[i16], f31512d[i16], f31513e[i16]};
            for (int i17 = 0; i17 < 3; i17++) {
                bArr[i12] = (byte) (bArr[i12] | (iArr2[i17] << i11));
                if (i11 == 7) {
                    i12++;
                    i11 = 0;
                } else {
                    i11++;
                }
            }
        }
        return bArr;
    }

    public static byte[] g(int[] iArr) {
        BigInteger bigInteger = BigInteger.ZERO;
        for (int length = iArr.length - 1; length >= 0; length--) {
            bigInteger = bigInteger.multiply(BigInteger.valueOf(3L)).add(BigInteger.valueOf(iArr[length] + 1));
        }
        int bitLength = (BigInteger.valueOf(3L).pow(iArr.length).bitLength() + 7) / 8;
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length >= bitLength) {
            return byteArray.length > bitLength ? org.bouncycastle.util.a.X(byteArray, 1, byteArray.length) : byteArray;
        }
        byte[] bArr = new byte[bitLength];
        System.arraycopy(byteArray, 0, bArr, bitLength - byteArray.length, byteArray.length);
        return bArr;
    }

    public static byte[] h(int[] iArr, int i10) {
        int numberOfLeadingZeros = 31 - Integer.numberOfLeadingZeros(i10);
        byte[] bArr = new byte[((iArr.length * numberOfLeadingZeros) + 7) / 8];
        int i11 = 0;
        int i12 = 0;
        for (int i13 : iArr) {
            for (int i14 = 0; i14 < numberOfLeadingZeros; i14++) {
                bArr[i12] = (byte) ((((i13 >> i14) & 1) << i11) | bArr[i12]);
                if (i11 == 7) {
                    i12++;
                    i11 = 0;
                } else {
                    i11++;
                }
            }
        }
        return bArr;
    }

    public static int i(byte[] bArr, int i10) {
        return ((bArr[i10 / 8] & 255) >> (i10 % 8)) & 1;
    }
}
