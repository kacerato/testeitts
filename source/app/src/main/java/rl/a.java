package Rl;

import Wl.C3186b;
import Wl.u;
import java.math.BigInteger;

public final class a {

    public static final BigInteger f22872a = BigInteger.valueOf(0);

    public static final BigInteger f22873b = BigInteger.valueOf(1);

    public static byte[] a(int i10, int i11, Wl.g gVar) {
        if (gVar.c() != i10 || gVar.k() != i11) {
            throw new IllegalArgumentException("vector has wrong length or hamming weight");
        }
        int[] l10 = gVar.l();
        BigInteger a10 = u.a(i10, i11);
        BigInteger bigInteger = f22872a;
        int i12 = i10;
        for (int i13 = 0; i13 < i10; i13++) {
            a10 = a10.multiply(BigInteger.valueOf(i12 - i11)).divide(BigInteger.valueOf(i12));
            i12--;
            if ((l10[i13 >> 5] & (1 << (i13 & 31))) != 0) {
                bigInteger = bigInteger.add(a10);
                int i14 = i11 - 1;
                a10 = i12 == i14 ? f22873b : a10.multiply(BigInteger.valueOf(i11)).divide(BigInteger.valueOf(i12 - i14));
                i11 = i14;
            }
        }
        return C3186b.f(bigInteger);
    }

    public static Wl.g b(int i10, int i11, byte[] bArr) {
        if (i10 < i11) {
            throw new IllegalArgumentException("n < t");
        }
        BigInteger a10 = u.a(i10, i11);
        BigInteger bigInteger = new BigInteger(1, bArr);
        if (bigInteger.compareTo(a10) >= 0) {
            throw new IllegalArgumentException("Encoded number too large.");
        }
        Wl.g gVar = new Wl.g(i10);
        int i12 = i10;
        for (int i13 = 0; i13 < i10; i13++) {
            a10 = a10.multiply(BigInteger.valueOf(i12 - i11)).divide(BigInteger.valueOf(i12));
            i12--;
            if (a10.compareTo(bigInteger) <= 0) {
                gVar.m(i13);
                bigInteger = bigInteger.subtract(a10);
                int i14 = i11 - 1;
                a10 = i12 == i14 ? f22873b : a10.multiply(BigInteger.valueOf(i11)).divide(BigInteger.valueOf(i12 - i14));
                i11 = i14;
            }
        }
        return gVar;
    }

    public static byte[] c(int i10, int i11, byte[] bArr) {
        if (i10 < i11) {
            throw new IllegalArgumentException("n < t");
        }
        BigInteger a10 = u.a(i10, i11);
        int bitLength = a10.bitLength() - 1;
        int i12 = bitLength >> 3;
        int i13 = bitLength & 7;
        int i14 = 8;
        if (i13 == 0) {
            i12--;
            i13 = 8;
        }
        int i15 = i10 >> 3;
        int i16 = i10 & 7;
        if (i16 == 0) {
            i15--;
        } else {
            i14 = i16;
        }
        int i17 = i15 + 1;
        byte[] bArr2 = new byte[i17];
        if (bArr.length < i17) {
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            for (int length = bArr.length; length < i17; length++) {
                bArr2[length] = 0;
            }
        } else {
            System.arraycopy(bArr, 0, bArr2, 0, i15);
            bArr2[i15] = (byte) (bArr[i15] & ((1 << i14) - 1));
        }
        BigInteger bigInteger = f22872a;
        int i18 = i10;
        for (int i19 = 0; i19 < i10; i19++) {
            a10 = a10.multiply(new BigInteger(Integer.toString(i18 - i11))).divide(new BigInteger(Integer.toString(i18)));
            i18--;
            if (((byte) (bArr2[i19 >>> 3] & (1 << (i19 & 7)))) != 0) {
                bigInteger = bigInteger.add(a10);
                int i20 = i11 - 1;
                a10 = i18 == i20 ? f22873b : a10.multiply(new BigInteger(Integer.toString(i11))).divide(new BigInteger(Integer.toString(i18 - i20)));
                i11 = i20;
            }
        }
        int i21 = i12 + 1;
        byte[] bArr3 = new byte[i21];
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length < i21) {
            System.arraycopy(byteArray, 0, bArr3, 0, byteArray.length);
            for (int length2 = byteArray.length; length2 < i21; length2++) {
                bArr3[length2] = 0;
            }
        } else {
            System.arraycopy(byteArray, 0, bArr3, 0, i12);
            bArr3[i12] = (byte) (((1 << i13) - 1) & byteArray[i12]);
        }
        return bArr3;
    }
}
