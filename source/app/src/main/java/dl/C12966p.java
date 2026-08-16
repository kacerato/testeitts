package dl;

public class C12966p {

    public byte[] f84822a = new byte[512];

    public long f84823b = 0;

    public int f84824c = 0;

    public byte[] f84825d = new byte[256];

    public long f84826e = 0;

    public int f84827f = 0;

    public C12955e f84828g = new C12955e();

    public final void a(int i10, int i11, int i12, int i13, int[] iArr) {
        int i14 = iArr[i10] + iArr[i11];
        iArr[i10] = i14;
        int i15 = i14 ^ iArr[i13];
        iArr[i13] = i15;
        int i16 = (i15 >>> 16) | (i15 << 16);
        iArr[i13] = i16;
        int i17 = iArr[i12] + i16;
        iArr[i12] = i17;
        int i18 = iArr[i11] ^ i17;
        iArr[i11] = i18;
        int i19 = (i18 >>> 20) | (i18 << 12);
        iArr[i11] = i19;
        int i20 = iArr[i10] + i19;
        iArr[i10] = i20;
        int i21 = iArr[i13] ^ i20;
        iArr[i13] = i21;
        int i22 = (i21 >>> 24) | (i21 << 8);
        iArr[i13] = i22;
        int i23 = iArr[i12] + i22;
        iArr[i12] = i23;
        int i24 = iArr[i11] ^ i23;
        iArr[i11] = i24;
        iArr[i11] = (i24 >>> 25) | (i24 << 7);
    }

    public void b(byte[] bArr, int i10, int i11) {
        while (i11 > 0) {
            byte[] bArr2 = this.f84822a;
            int length = bArr2.length - this.f84824c;
            if (length > i11) {
                length = i11;
            }
            System.arraycopy(bArr2, 0, bArr, i10, length);
            i10 += length;
            i11 -= length;
            int i12 = this.f84824c + length;
            this.f84824c = i12;
            if (i12 == this.f84822a.length) {
                f();
            }
        }
    }

    public long c() {
        int i10 = this.f84824c;
        if (i10 >= this.f84822a.length - 9) {
            f();
            i10 = 0;
        }
        this.f84824c = i10 + 8;
        byte[] bArr = this.f84822a;
        return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
    }

    public byte d() {
        byte[] bArr = this.f84822a;
        int i10 = this.f84824c;
        int i11 = i10 + 1;
        this.f84824c = i11;
        byte b10 = bArr[i10];
        if (i11 == bArr.length) {
            f();
        }
        return b10;
    }

    public void e(v vVar) {
        byte[] bArr = new byte[56];
        vVar.b(bArr, 0, 56);
        for (int i10 = 0; i10 < 14; i10++) {
            int i11 = i10 << 2;
            System.arraycopy(this.f84828g.d(((bArr[i11 + 1] & 255) << 8) | (bArr[i11] & 255) | ((bArr[i11 + 2] & 255) << 16) | ((bArr[i11 + 3] & 255) << 24)), 0, this.f84825d, i11, 4);
        }
        System.arraycopy(this.f84828g.e((this.f84828g.a(this.f84825d, 48) & 4294967295L) + ((4294967295L & this.f84828g.a(this.f84825d, 52)) << 32)), 0, this.f84825d, 48, 8);
        f();
    }

    public void f() {
        int[] iArr = {1634760805, 857760878, 2036477234, 1797285236};
        long c10 = this.f84828g.c(this.f84825d, 48);
        for (int i10 = 0; i10 < 8; i10++) {
            int[] iArr2 = new int[16];
            System.arraycopy(iArr, 0, iArr2, 0, 4);
            System.arraycopy(this.f84828g.b(this.f84825d, 0, 12), 0, iArr2, 4, 12);
            int i11 = 14;
            int i12 = (int) c10;
            iArr2[14] = iArr2[14] ^ i12;
            int i13 = (int) (c10 >>> 32);
            iArr2[15] = iArr2[15] ^ i13;
            int i14 = 0;
            while (i14 < 10) {
                a(0, 4, 8, 12, iArr2);
                a(1, 5, 9, 13, iArr2);
                a(2, 6, 10, 14, iArr2);
                a(3, 7, 11, 15, iArr2);
                a(0, 5, 10, 15, iArr2);
                a(1, 6, 11, 12, iArr2);
                a(2, 7, 8, 13, iArr2);
                a(3, 4, 9, 14, iArr2);
                i14++;
                i11 = i11;
                i12 = i12;
                i13 = i13;
            }
            int i15 = i13;
            int i16 = i12;
            int i17 = i11;
            for (int i18 = 0; i18 < 4; i18++) {
                iArr2[i18] = iArr2[i18] + iArr[i18];
            }
            for (int i19 = 4; i19 < i17; i19++) {
                iArr2[i19] = iArr2[i19] + this.f84828g.a(this.f84825d, (i19 * 4) - 16);
            }
            iArr2[i17] = iArr2[i17] + (this.f84828g.a(this.f84825d, 40) ^ i16);
            iArr2[15] = iArr2[15] + (this.f84828g.a(this.f84825d, 44) ^ i15);
            c10++;
            for (int i20 = 0; i20 < 16; i20++) {
                byte[] bArr = this.f84822a;
                int i21 = (i10 << 2) + (i20 << 5);
                int i22 = iArr2[i20];
                bArr[i21] = (byte) i22;
                bArr[i21 + 1] = (byte) (i22 >>> 8);
                bArr[i21 + 2] = (byte) (i22 >>> 16);
                bArr[i21 + 3] = (byte) (i22 >>> 24);
            }
        }
        System.arraycopy(this.f84828g.e(c10), 0, this.f84825d, 48, 8);
        this.f84824c = 0;
    }
}
