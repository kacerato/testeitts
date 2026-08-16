package cl;

public class m {

    public C4219b f35025b;

    public int f35026c;

    public int f35027d;

    public p f35029f;

    public short[] f35024a = new short[256];

    public int f35028e = C4219b.i();

    public m(C4219b c4219b) {
        this.f35025b = c4219b;
        this.f35026c = c4219b.o();
        this.f35027d = c4219b.h();
        this.f35029f = c4219b.u();
    }

    public static void b(m mVar, m mVar2, m mVar3) {
        for (int i10 = 0; i10 < 64; i10++) {
            int i11 = i10 * 4;
            short i12 = mVar2.i(i11);
            int i13 = i11 + 1;
            short i14 = mVar2.i(i13);
            short i15 = mVar3.i(i11);
            short i16 = mVar3.i(i13);
            short[] sArr = l.f35022a;
            int i17 = i10 + 64;
            l.a(mVar, i11, i12, i14, i15, i16, sArr[i17]);
            int i18 = i11 + 2;
            int i19 = i11 + 3;
            l.a(mVar, i18, mVar2.i(i18), mVar2.i(i19), mVar3.i(i18), mVar3.i(i19), (short) (sArr[i17] * (-1)));
        }
    }

    public void a(m mVar) {
        for (int i10 = 0; i10 < 256; i10++) {
            q(i10, (short) (i(i10) + mVar.i(i10)));
        }
    }

    public byte[] c() {
        int i10 = 8;
        byte[] bArr = new byte[8];
        byte[] bArr2 = new byte[this.f35026c];
        d();
        int i11 = this.f35026c;
        if (i11 == 128) {
            int i12 = 0;
            int i13 = 0;
            while (i12 < 32) {
                int i14 = 0;
                while (i14 < i10) {
                    bArr[i14] = (byte) (((((i((i12 * 8) + i14) << 4) + 1665) * 80635) >> 28) & 15);
                    i14++;
                    i10 = 8;
                }
                bArr2[i13] = (byte) (bArr[0] | (bArr[1] << 4));
                bArr2[i13 + 1] = (byte) (bArr[2] | (bArr[3] << 4));
                bArr2[i13 + 2] = (byte) (bArr[4] | (bArr[5] << 4));
                bArr2[i13 + 3] = (byte) (bArr[6] | (bArr[7] << 4));
                i13 += 4;
                i12++;
                i10 = 8;
            }
        } else {
            if (i11 != 160) {
                throw new RuntimeException("PolyCompressedBytes is neither 128 or 160!");
            }
            int i15 = 0;
            for (int i16 = 0; i16 < 32; i16++) {
                for (int i17 = 0; i17 < 8; i17++) {
                    bArr[i17] = (byte) (((((i((i16 * 8) + i17) << 5) + 1664) * 40318) >> 27) & 31);
                }
                bArr2[i15] = (byte) (bArr[0] | (bArr[1] << 5));
                bArr2[i15 + 1] = (byte) ((bArr[1] >> 3) | (bArr[2] << 2) | (bArr[3] << 7));
                bArr2[i15 + 2] = (byte) ((bArr[3] >> 1) | (bArr[4] << 4));
                bArr2[i15 + 3] = (byte) ((bArr[4] >> 4) | (bArr[5] << 1) | (bArr[6] << 6));
                bArr2[i15 + 4] = (byte) ((bArr[6] >> 2) | (bArr[7] << 3));
                i15 += 5;
            }
        }
        return bArr2;
    }

    public void d() {
        for (int i10 = 0; i10 < 256; i10++) {
            q(i10, o.b(i(i10)));
        }
    }

    public void e() {
        for (int i10 = 0; i10 < 256; i10++) {
            q(i10, o.c(i(i10) * 1353));
        }
    }

    public void f(byte[] bArr) {
        int i10 = 6;
        int i11 = 7;
        int i12 = 5;
        int i13 = 4;
        if (this.f35025b.o() == 128) {
            int i14 = 0;
            for (int i15 = 0; i15 < 128; i15++) {
                int i16 = i15 * 2;
                q(i16, (short) (((((short) (bArr[i14] & 15)) * 3329) + 8) >> 4));
                q(i16 + 1, (short) (((((short) ((bArr[i14] & 255) >> 4)) * 3329) + 8) >> 4));
                i14++;
            }
            return;
        }
        if (this.f35025b.o() != 160) {
            throw new RuntimeException("PolyCompressedBytes is neither 128 or 160!");
        }
        int i17 = 0;
        int i18 = 0;
        while (i17 < 32) {
            byte b10 = bArr[i18];
            byte b11 = (byte) (b10 & 255);
            byte b12 = bArr[i18 + 1];
            byte b13 = (byte) (((b10 & 255) >> i12) | ((b12 & 255) << 3));
            byte b14 = (byte) ((b12 & 255) >> 2);
            int i19 = (b12 & 255) >> i11;
            byte b15 = bArr[i18 + 2];
            byte b16 = (byte) (((b15 & 255) << 1) | i19);
            byte b17 = bArr[i18 + 3];
            byte b18 = (byte) (((b15 & 255) >> i13) | ((b17 & 255) << i13));
            byte b19 = (byte) ((b17 & 255) >> 1);
            int i20 = (b17 & 255) >> i10;
            byte b20 = bArr[i18 + 4];
            byte[] bArr2 = {b11, b13, b14, b16, b18, b19, (byte) (((b20 & 255) << 2) | i20), (byte) ((b20 & 255) >> 3)};
            i18 += 5;
            for (int i21 = 0; i21 < 8; i21++) {
                q((i17 * 8) + i21, (short) ((((bArr2[i21] & 31) * C4219b.f34966u) + 16) >> 5));
            }
            i17++;
            i10 = 6;
            i12 = 5;
            i11 = 7;
            i13 = 4;
        }
    }

    public void g(byte[] bArr) {
        for (int i10 = 0; i10 < 128; i10++) {
            int i11 = i10 * 2;
            int i12 = i10 * 3;
            q(i11, (short) (((bArr[i12] & 255) | ((bArr[i12 + 1] & 255) << 8)) & 4095));
            q(i11 + 1, (short) ((((bArr[r4] & 255) >> 4) | ((bArr[i12 + 2] & 255) << 4)) & 4095));
        }
    }

    public void h(byte[] bArr) {
        if (bArr.length != 32) {
            throw new RuntimeException("KYBER_INDCPA_MSGBYTES must be equal to KYBER_N/8 bytes!");
        }
        for (int i10 = 0; i10 < 32; i10++) {
            for (int i11 = 0; i11 < 8; i11++) {
                q((i10 * 8) + i11, (short) (((short) (((short) (((bArr[i10] & 255) >> i11) & 1)) * (-1))) & 1665));
            }
        }
    }

    public short i(int i10) {
        return this.f35024a[i10];
    }

    public short[] j() {
        return this.f35024a;
    }

    public void k(byte[] bArr, byte b10) {
        byte[] bArr2 = new byte[(this.f35027d * 256) / 4];
        this.f35029f.d(bArr2, bArr, b10);
        C4218a.c(this, bArr2, this.f35027d);
    }

    public void l(byte[] bArr, byte b10) {
        byte[] bArr2 = new byte[(this.f35028e * 256) / 4];
        this.f35029f.d(bArr2, bArr, b10);
        C4218a.c(this, bArr2, this.f35028e);
    }

    public void m() {
        r(l.c(j()));
    }

    public void n() {
        r(l.d(j()));
        p();
    }

    public void o(m mVar) {
        for (int i10 = 0; i10 < 256; i10++) {
            q(i10, (short) (mVar.i(i10) - i(i10)));
        }
    }

    public void p() {
        for (int i10 = 0; i10 < 256; i10++) {
            q(i10, o.a(i(i10)));
        }
    }

    public void q(int i10, short s10) {
        this.f35024a[i10] = s10;
    }

    public void r(short[] sArr) {
        this.f35024a = sArr;
    }

    public byte[] s() {
        byte[] bArr = new byte[384];
        d();
        for (int i10 = 0; i10 < 128; i10++) {
            int i11 = i10 * 2;
            short i12 = i(i11);
            short i13 = i(i11 + 1);
            int i14 = i10 * 3;
            bArr[i14] = (byte) i12;
            bArr[i14 + 1] = (byte) ((i12 >> 8) | (i13 << 4));
            bArr[i14 + 2] = (byte) (i13 >> 4);
        }
        return bArr;
    }

    public byte[] t() {
        byte[] bArr = new byte[C4219b.k()];
        d();
        for (int i10 = 0; i10 < 32; i10++) {
            bArr[i10] = 0;
            for (int i11 = 0; i11 < 8; i11++) {
                bArr[i10] = (byte) (((byte) (((((((i((i10 * 8) + i11) & 65535) << 1) + 1665) * 80635) >> 28) & 1) << i11)) | bArr[i10]);
            }
        }
        return bArr;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[");
        int i10 = 0;
        while (true) {
            short[] sArr = this.f35024a;
            if (i10 >= sArr.length) {
                stringBuffer.append("]");
                return stringBuffer.toString();
            }
            stringBuffer.append((int) sArr[i10]);
            if (i10 != this.f35024a.length - 1) {
                stringBuffer.append(", ");
            }
            i10++;
        }
    }
}
