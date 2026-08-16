package net.jpountz.lz4;

public enum z {
    ;

    public static class a {

        public int f98110a;

        public int f98111b;

        public int f98112c;

        public int a() {
            return this.f98110a + this.f98112c;
        }

        public void b(int i10) {
            this.f98110a += i10;
            this.f98111b += i10;
            this.f98112c -= i10;
        }
    }

    public static int a(byte[] bArr, int i10, int i11, int i12) {
        int i13 = 0;
        while (i11 < i12) {
            int i14 = i10 + 1;
            int i15 = i11 + 1;
            if (bArr[i10] != bArr[i11]) {
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
            if (bArr[i10] != bArr[i11]) {
                break;
            }
            i14++;
        }
        return i14;
    }

    public static void c(byte[] bArr, int i10, byte[] bArr2, int i11) {
        for (int i12 = 0; i12 < 8; i12++) {
            bArr2[i11 + i12] = bArr[i10 + i12];
        }
    }

    public static void d(a aVar, a aVar2) {
        aVar2.f98112c = aVar.f98112c;
        aVar2.f98110a = aVar.f98110a;
        aVar2.f98111b = aVar.f98111b;
    }

    public static int e(byte[] bArr, int i10, int i11, int i12, int i13, byte[] bArr2, int i14, int i15) {
        int i16;
        int i17;
        int i18 = i11 - i10;
        int i19 = i14 + 1;
        if (i19 + i18 + 8 + (i18 >>> 8) > i15) {
            throw new LZ4Exception("maxDestLen is too small");
        }
        if (i18 >= 15) {
            i19 = r(i18 - 15, bArr2, i19);
            i16 = -16;
        } else {
            i16 = i18 << 4;
        }
        o(bArr, i10, bArr2, i19, i18);
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
            i22 = r(i13 - 19, bArr2, i22);
        } else {
            i17 = i23 | i16;
        }
        bArr2[i14] = (byte) i17;
        return i22;
    }

    public static int g(byte[] bArr, int i10) {
        return C.b(net.jpountz.util.c.e(bArr, i10));
    }

    public static int h(byte[] bArr, int i10) {
        return C.e(net.jpountz.util.c.e(bArr, i10));
    }

    public static int i(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        int i14;
        if (i12 + i11 + 1 + ((i11 + 240) / 255) > i13) {
            throw new LZ4Exception();
        }
        if (i11 >= 15) {
            bArr2[i12] = -16;
            i14 = r(i11 - 15, bArr2, i12 + 1);
        } else {
            bArr2[i12] = (byte) (i11 << 4);
            i14 = i12 + 1;
        }
        System.arraycopy(bArr, i10, bArr2, i14, i11);
        return i14 + i11;
    }

    public static boolean j(byte[] bArr, int i10, int i11) {
        return bArr[i10] == bArr[i11] && bArr[i10 + 1] == bArr[i11 + 1] && bArr[i10 + 2] == bArr[i11 + 2] && bArr[i10 + 3] == bArr[i11 + 3];
    }

    public static void k(byte[] bArr, int i10, byte[] bArr2, int i11, int i12) {
        System.arraycopy(bArr, i10, bArr2, i11, i12);
    }

    public static void m(byte[] bArr, int i10, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            bArr[i11 + i13] = bArr[i10 + i13];
        }
    }

    public static void o(byte[] bArr, int i10, byte[] bArr2, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13 += 8) {
            try {
                c(bArr, i10 + i13, bArr2, i11 + i13);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new LZ4Exception("Malformed input at offset " + i10);
            }
        }
    }

    public static void q(byte[] bArr, int i10, int i11, int i12) {
        do {
            c(bArr, i10, bArr, i11);
            i10 += 8;
            i11 += 8;
        } while (i11 < i12);
    }

    public static int r(int i10, byte[] bArr, int i11) {
        while (i10 >= 255) {
            bArr[i11] = -1;
            i10 -= 255;
            i11++;
        }
        int i12 = i11 + 1;
        bArr[i11] = (byte) i10;
        return i12;
    }
}
