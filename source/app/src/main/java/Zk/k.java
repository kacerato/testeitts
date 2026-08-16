package Zk;

import Bi.a0;
import org.bouncycastle.util.p;

public class k {
    public static int a(byte[] bArr, int i10) {
        return (bArr[i10 / 8] >>> (i10 % 8)) & 1;
    }

    public static void b(byte[] bArr, int i10) {
        bArr[i10 / 8] = (byte) (bArr[r0] | (1 << (i10 % 8)));
    }

    public static void c(byte[] bArr, byte[] bArr2, int i10, int i11) {
        long j10 = i11;
        int i12 = 0;
        int i13 = 0;
        while (i12 < j10) {
            int i14 = i12 + 8;
            if (i14 >= i11) {
                int i15 = i10 + i12;
                int i16 = bArr2[i15];
                for (int i17 = (i11 - i12) - 1; i17 >= 1; i17--) {
                    i16 |= bArr2[i15 + i17] << i17;
                }
                bArr[i13] = (byte) i16;
            } else {
                int i18 = i12 + i10;
                int i19 = bArr2[i18];
                for (int i20 = 7; i20 >= 1; i20--) {
                    i19 |= bArr2[i18 + i20] << i20;
                }
                bArr[i13] = (byte) i19;
            }
            i13++;
            i12 = i14;
        }
    }

    public static void d(byte[] bArr, int i10, int i11, a0 a0Var) {
        byte[] bArr2 = new byte[4];
        for (int i12 = i11 - 1; i12 >= 0; i12--) {
            a0Var.h(bArr2, 0, 4);
            int r10 = ((int) (((p.r(bArr2, 0) & 4294967295L) * (i10 - i12)) >> 32)) + i12;
            if (a(bArr, r10) != 0) {
                r10 = i12;
            }
            b(bArr, r10);
        }
    }

    public static int e(byte[] bArr) {
        int i10 = 0;
        for (byte b10 : bArr) {
            i10 += b10;
        }
        return i10;
    }
}
