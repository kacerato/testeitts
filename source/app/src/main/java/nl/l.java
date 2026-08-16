package nl;

public class l {

    public static class a {

        public int f98328a;

        public long f98329b;

        public long f98330c;

        public a() {
        }

        public a(a aVar) {
            this.f98328a = aVar.f98328a;
            this.f98329b = aVar.f98329b;
            this.f98330c = aVar.f98330c;
        }
    }

    public static void a(C14457a c14457a, byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3, a aVar) {
        byte[] bArr4 = new byte[32];
        byte[] bArr5 = new byte[m.f98336f];
        m mVar = new m();
        C14467k.a(c14457a, bArr4, 0, bArr3, aVar);
        mVar.d(c14457a, bArr5, 0, bArr4, 0, bArr2, i11);
        b(c14457a, bArr, i10, bArr5, 0, bArr2, i11);
    }

    public static void b(C14457a c14457a, byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3, int i12) {
        int i13;
        int i14 = 67;
        for (int i15 = 0; i15 < 7; i15++) {
            int i16 = 0;
            while (true) {
                i13 = i14 >>> 1;
                if (i16 >= i13) {
                    break;
                }
                c14457a.c(bArr2, i11 + (i16 * 32), bArr2, i11 + (i16 * 64), bArr3, i12 + (i15 * 64));
                i16++;
            }
            if ((i14 & 1) != 0) {
                System.arraycopy(bArr2, i11 + ((i14 - 1) * 32), bArr2, (i13 * 32) + i11, 32);
                i13++;
            }
            i14 = i13;
        }
        System.arraycopy(bArr2, i11, bArr, i10, 32);
    }

    public static void c(C14457a c14457a, byte[] bArr, int i10, int i11, byte[] bArr2, a aVar, byte[] bArr3, int i12) {
        a aVar2 = new a(aVar);
        int i13 = i11 + 1;
        byte[] bArr4 = new byte[i13 * 32];
        int[] iArr = new int[i13];
        int i14 = 1;
        int i15 = (int) (aVar2.f98330c + (1 << i11));
        int i16 = 0;
        while (aVar2.f98330c < i15) {
            a(c14457a, bArr4, i16 * 32, bArr3, i12, bArr2, aVar2);
            iArr[i16] = 0;
            int i17 = i16 + i14;
            while (i17 > i14) {
                int i18 = iArr[i17 - 1];
                int i19 = i17 - 2;
                if (i18 == iArr[i19]) {
                    int i20 = i19 * 32;
                    int i21 = i14;
                    int[] iArr2 = iArr;
                    c14457a.c(bArr4, i20, bArr4, i20, bArr3, i12 + ((i18 + 7) * 64));
                    iArr2[i19] = iArr2[i19] + i21;
                    i17--;
                    i14 = i21;
                    i15 = i15;
                    iArr = iArr2;
                }
            }
            aVar2.f98330c++;
            i16 = i17;
            i14 = i14;
            i15 = i15;
            iArr = iArr;
        }
        for (int i22 = 0; i22 < 32; i22++) {
            bArr[i10 + i22] = bArr4[i22];
        }
    }
}
