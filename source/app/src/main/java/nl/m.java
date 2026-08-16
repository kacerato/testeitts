package nl;

public class m {

    public static final int f98331a = 4;

    public static final int f98332b = 16;

    public static final int f98333c = 64;

    public static final int f98334d = 67;

    public static final int f98335e = 7;

    public static final int f98336f = 2144;

    public static void a(byte[] bArr, int i10, int i11) {
        for (int i12 = 0; i12 != i11; i12++) {
            bArr[i12 + i10] = 0;
        }
    }

    public static void b(byte[] bArr, int i10, byte[] bArr2, int i11) {
        a(bArr, i10, f98336f);
        C14467k.b(bArr, i10, 2144L, bArr2, i11);
    }

    public static void c(C14457a c14457a, byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3, int i12, int i13) {
        for (int i14 = 0; i14 < 32; i14++) {
            bArr[i14 + i10] = bArr2[i14 + i11];
        }
        for (int i15 = 0; i15 < i13 && i15 < 16; i15++) {
            c14457a.e(bArr, i10, bArr, i10, bArr3, i12 + (i15 * 32));
        }
    }

    public void d(C14457a c14457a, byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3, int i12) {
        b(bArr, i10, bArr2, i11);
        for (int i13 = 0; i13 < 67; i13++) {
            int i14 = i10 + (i13 * 32);
            c(c14457a, bArr, i14, bArr, i14, bArr3, i12, 15);
        }
    }

    public void e(C14457a c14457a, byte[] bArr, int i10, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        int[] iArr = new int[67];
        int i11 = 0;
        int i12 = 0;
        while (i11 < 64) {
            byte b10 = bArr2[i11 / 2];
            iArr[i11] = b10 & 15;
            int i13 = (b10 & 255) >>> 4;
            iArr[i11 + 1] = i13;
            i12 = i12 + (15 - iArr[i11]) + (15 - i13);
            i11 += 2;
        }
        while (i11 < 67) {
            iArr[i11] = i12 & 15;
            i12 >>>= 4;
            i11++;
        }
        b(bArr, i10, bArr3, 0);
        for (int i14 = 0; i14 < 67; i14++) {
            int i15 = i10 + (i14 * 32);
            c(c14457a, bArr, i15, bArr, i15, bArr4, 0, iArr[i14]);
        }
    }

    public void f(C14457a c14457a, byte[] bArr, byte[] bArr2, int i10, byte[] bArr3, byte[] bArr4) {
        int[] iArr = new int[67];
        int i11 = 0;
        int i12 = 0;
        while (i11 < 64) {
            byte b10 = bArr3[i11 / 2];
            iArr[i11] = b10 & 15;
            int i13 = (b10 & 255) >>> 4;
            iArr[i11 + 1] = i13;
            i12 = i12 + (15 - iArr[i11]) + (15 - i13);
            i11 += 2;
        }
        while (i11 < 67) {
            iArr[i11] = i12 & 15;
            i12 >>>= 4;
            i11++;
        }
        for (int i14 = 0; i14 < 67; i14++) {
            int i15 = i14 * 32;
            int i16 = iArr[i14];
            c(c14457a, bArr, i15, bArr2, i10 + i15, bArr4, i16 * 32, 15 - i16);
        }
    }
}
