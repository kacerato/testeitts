package gl;

import com.google.common.collect.R1;

public class n {

    public static class a {

        public int[] f90111a = new int[4];

        public int[] f90112b = new int[16];
    }

    public static int a(int i10) {
        return -(i10 & 1);
    }

    public static void b(byte[] bArr, long[] jArr, int i10, int i11) {
        byte[] p10 = org.bouncycastle.util.a.p(bArr);
        int length = jArr.length / 2;
        a[] aVarArr = new a[length];
        int[] iArr = new int[jArr.length * 2];
        p.g(iArr, jArr);
        for (int i12 = 0; i12 < length; i12++) {
            aVarArr[i12] = new a();
            for (int i13 = 0; i13 < 4; i13++) {
                aVarArr[i12].f90111a[i13] = iArr[(i12 * 4) + i13];
            }
        }
        int[] iArr2 = new int[128];
        for (int i14 = 0; i14 < i10; i14++) {
            e(iArr2, aVarArr, i14 * i11, i11);
            int[] iArr3 = new int[128];
            g(iArr2, iArr3);
            iArr3[0] = iArr3[0] - (i11 * 64);
            p10[i14] = (byte) f(iArr3);
        }
        int[] iArr4 = new int[length * 4];
        int i15 = 0;
        for (int i16 = 0; i16 < length; i16++) {
            int[] iArr5 = aVarArr[i16].f90111a;
            System.arraycopy(iArr5, 0, iArr4, i15, iArr5.length);
            i15 += 4;
        }
        p.d(jArr, iArr4);
        System.arraycopy(p10, 0, bArr, 0, bArr.length);
    }

    public static void c(long[] jArr, byte[] bArr, int i10, int i11) {
        byte[] p10 = org.bouncycastle.util.a.p(bArr);
        int i12 = i10 * i11;
        a[] aVarArr = new a[i12];
        for (int i13 = 0; i13 < i12; i13++) {
            aVarArr[i13] = new a();
        }
        for (int i14 = 0; i14 < i10; i14++) {
            int i15 = i14 * i11;
            d(aVarArr[i15], p10[i14]);
            for (int i16 = 1; i16 < i11; i16++) {
                aVarArr[i15 + i16] = aVarArr[i15];
            }
        }
        int[] iArr = new int[i12 * 4];
        int i17 = 0;
        for (int i18 = 0; i18 < i12; i18++) {
            int[] iArr2 = aVarArr[i18].f90111a;
            System.arraycopy(iArr2, 0, iArr, i17, iArr2.length);
            i17 += 4;
        }
        p.d(jArr, iArr);
    }

    public static void d(a aVar, int i10) {
        int a10 = ((((a(i10 >> 7) ^ (a(i10) & R1.f66105i)) ^ (a(i10 >> 1) & (-858993460))) ^ (a(i10 >> 2) & (-252645136))) ^ (a(i10 >> 3) & (-16711936))) ^ (a(i10 >> 4) & (-65536));
        aVar.f90111a[0] = a10;
        int i11 = i10 >> 5;
        int a11 = a10 ^ a(i11);
        aVar.f90111a[1] = a11;
        int a12 = a(i10 >> 6) ^ a11;
        aVar.f90111a[3] = a12;
        aVar.f90111a[2] = a12 ^ a(i11);
    }

    public static void e(int[] iArr, a[] aVarArr, int i10, int i11) {
        for (int i12 = 0; i12 < 4; i12++) {
            for (int i13 = 0; i13 < 32; i13++) {
                iArr[(i12 * 32) + i13] = (aVarArr[i10].f90111a[i12] >> i13) & 1;
            }
        }
        for (int i14 = 1; i14 < i11; i14++) {
            for (int i15 = 0; i15 < 4; i15++) {
                for (int i16 = 0; i16 < 32; i16++) {
                    int i17 = (i15 * 32) + i16;
                    iArr[i17] = iArr[i17] + ((aVarArr[i14 + i10].f90111a[i15] >> i16) & 1);
                }
            }
        }
    }

    public static int f(int[] iArr) {
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < 128; i13++) {
            int i14 = iArr[i13];
            int i15 = i14 > 0 ? -1 : 0;
            int i16 = ((~i15) & (-i14)) | (i15 & i14);
            if (i16 > i12) {
                i10 = i14;
            }
            if (i16 > i12) {
                i11 = i13;
            }
            if (i16 > i12) {
                i12 = i16;
            }
        }
        return i11 | ((i10 > 0 ? 1 : 0) * 128);
    }

    public static void g(int[] iArr, int[] iArr2) {
        int[] s10 = org.bouncycastle.util.a.s(iArr);
        int[] s11 = org.bouncycastle.util.a.s(iArr2);
        int i10 = 0;
        while (true) {
            int[] iArr3 = s11;
            s11 = s10;
            s10 = iArr3;
            if (i10 >= 7) {
                System.arraycopy(s10, 0, iArr, 0, iArr.length);
                System.arraycopy(s11, 0, iArr2, 0, iArr2.length);
                return;
            }
            for (int i11 = 0; i11 < 64; i11++) {
                int i12 = i11 * 2;
                int i13 = i12 + 1;
                s10[i11] = s11[i12] + s11[i13];
                s10[i11 + 64] = s11[i12] - s11[i13];
            }
            i10++;
        }
    }
}
