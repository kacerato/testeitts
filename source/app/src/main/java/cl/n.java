package cl;

public class n {

    public m[] f35030a;

    public C4219b f35031b;

    public int f35032c;

    public int f35033d;

    public n() throws Exception {
        throw new Exception("Requires Parameter");
    }

    public static void g(m mVar, n nVar, n nVar2, C4219b c4219b) {
        m mVar2 = new m(c4219b);
        m.b(mVar, nVar.f(0), nVar2.f(0));
        for (int i10 = 1; i10 < c4219b.n(); i10++) {
            m.b(mVar2, nVar.f(i10), nVar2.f(i10));
            mVar.a(mVar2);
        }
        mVar.p();
    }

    public void a(n nVar) {
        for (int i10 = 0; i10 < this.f35032c; i10++) {
            f(i10).a(nVar.f(i10));
        }
    }

    public byte[] b() {
        c();
        byte[] bArr = new byte[this.f35031b.q()];
        int i10 = 32;
        int i11 = 4;
        if (this.f35031b.q() == this.f35032c * 320) {
            short[] sArr = new short[4];
            int i12 = 0;
            int i13 = 0;
            while (i12 < this.f35032c) {
                int i14 = 0;
                while (i14 < 64) {
                    int i15 = 0;
                    while (i15 < i11) {
                        sArr[i15] = (short) (((((f(i12).i((i14 * 4) + i15) << 10) + 1665) * 1290167) >> 32) & 1023);
                        i15++;
                        i11 = 4;
                    }
                    short s10 = sArr[0];
                    bArr[i13] = (byte) s10;
                    short s11 = sArr[1];
                    bArr[i13 + 1] = (byte) ((s10 >> 8) | (s11 << 2));
                    short s12 = sArr[2];
                    bArr[i13 + 2] = (byte) ((s11 >> 6) | (s12 << 4));
                    int i16 = s12 >> 4;
                    short s13 = sArr[3];
                    bArr[i13 + 3] = (byte) ((s13 << 6) | i16);
                    bArr[i13 + 4] = (byte) (s13 >> 2);
                    i13 += 5;
                    i14++;
                    i11 = 4;
                }
                i12++;
                i11 = 4;
            }
        } else {
            if (this.f35031b.q() != this.f35032c * 352) {
                throw new RuntimeException("Kyber PolyVecCompressedBytes neither 320 * KyberK or 352 * KyberK!");
            }
            short[] sArr2 = new short[8];
            int i17 = 0;
            int i18 = 0;
            while (i17 < this.f35032c) {
                int i19 = 0;
                while (i19 < i10) {
                    for (int i20 = 0; i20 < 8; i20++) {
                        sArr2[i20] = (short) (((((f(i17).i((i19 * 8) + i20) << 11) + 1664) * 645084) >> 31) & 2047);
                    }
                    short s14 = sArr2[0];
                    bArr[i18] = (byte) s14;
                    short s15 = sArr2[1];
                    bArr[i18 + 1] = (byte) ((s14 >> 8) | (s15 << 3));
                    short s16 = sArr2[2];
                    bArr[i18 + 2] = (byte) ((s15 >> 5) | (s16 << 6));
                    bArr[i18 + 3] = (byte) (s16 >> 2);
                    int i21 = s16 >> 10;
                    short s17 = sArr2[3];
                    bArr[i18 + 4] = (byte) (i21 | (s17 << 1));
                    short s18 = sArr2[4];
                    bArr[i18 + 5] = (byte) ((s17 >> 7) | (s18 << 4));
                    short s19 = sArr2[5];
                    bArr[i18 + 6] = (byte) ((s18 >> 4) | (s19 << 7));
                    bArr[i18 + 7] = (byte) (s19 >> 1);
                    int i22 = s19 >> 9;
                    short s20 = sArr2[6];
                    bArr[i18 + 8] = (byte) (i22 | (s20 << 2));
                    int i23 = s20 >> 6;
                    short s21 = sArr2[7];
                    bArr[i18 + 9] = (byte) (i23 | (s21 << 5));
                    bArr[i18 + 10] = (byte) (s21 >> 3);
                    i18 += 11;
                    i19++;
                    i10 = 32;
                }
                i17++;
                i10 = 32;
            }
        }
        return bArr;
    }

    public void c() {
        for (int i10 = 0; i10 < this.f35032c; i10++) {
            f(i10).d();
        }
    }

    public void d(byte[] bArr) {
        short s10 = 7;
        short s11 = 5;
        int i10 = 3;
        short s12 = 6;
        int i11 = 8;
        short s13 = 4;
        int i12 = 0;
        if (this.f35031b.q() == this.f35032c * 320) {
            int i13 = 0;
            int i14 = 0;
            while (i13 < this.f35032c) {
                int i15 = 0;
                while (i15 < 64) {
                    int i16 = bArr[i14] & 255;
                    byte b10 = bArr[i14 + 1];
                    byte b11 = bArr[i14 + 2];
                    byte b12 = bArr[i14 + 3];
                    short[] sArr = {(short) (i16 | ((short) ((b10 & 255) << i11))), (short) (((b10 & 255) >> 2) | ((short) ((b11 & 255) << 6))), (short) (((short) ((b12 & 255) << 4)) | ((b11 & 255) >> 4)), (short) (((b12 & 255) >> 6) | ((short) ((bArr[i14 + 4] & 255) << 2)))};
                    i14 += 5;
                    for (int i17 = 0; i17 < 4; i17++) {
                        this.f35030a[i13].q((i15 * 4) + i17, (short) ((((sArr[i17] & 1023) * C4219b.f34966u) + 512) >> 10));
                    }
                    i15++;
                    i11 = 8;
                }
                i13++;
                i11 = 8;
            }
            return;
        }
        if (this.f35031b.q() != this.f35032c * 352) {
            throw new RuntimeException("Kyber PolyVecCompressedBytes neither 320 * KyberK or 352 * KyberK!");
        }
        int i18 = 0;
        int i19 = 0;
        while (i18 < this.f35032c) {
            int i20 = i12;
            while (i20 < 32) {
                int i21 = bArr[i19] & 255;
                byte b13 = bArr[i19 + 1];
                short s14 = (short) (i21 | (((short) (b13 & 255)) << 8));
                byte b14 = bArr[i19 + 2];
                short s15 = (short) (((b13 & 255) >> i10) | (((short) (b14 & 255)) << s11));
                int i22 = ((b14 & 255) >> s12) | (((short) (bArr[i19 + 3] & 255)) << 2);
                byte b15 = bArr[i19 + 4];
                short s16 = (short) (((short) ((b15 & 255) << 10)) | i22);
                int i23 = (b15 & 255) >> 1;
                byte b16 = bArr[i19 + 5];
                short s17 = (short) ((((short) (b16 & 255)) << s10) | i23);
                int i24 = (b16 & 255) >> s13;
                byte b17 = bArr[i19 + 6];
                short s18 = (short) ((((short) (b17 & 255)) << s13) | i24);
                int i25 = ((b17 & 255) >> s10) | (((short) (bArr[i19 + 7] & 255)) << 1);
                byte b18 = bArr[i19 + 8];
                short s19 = (short) (((short) ((b18 & 255) << 9)) | i25);
                int i26 = (b18 & 255) >> 2;
                byte b19 = bArr[i19 + 9];
                s11 = 5;
                short[] sArr2 = {s14, s15, s16, s17, s18, s19, (short) ((((short) (b19 & 255)) << s12) | i26), (short) (((b19 & 255) >> 5) | (((short) (bArr[i19 + 10] & 255)) << 3))};
                i19 += 11;
                for (int i27 = 0; i27 < 8; i27++) {
                    this.f35030a[i18].q((i20 * 8) + i27, (short) ((((sArr2[i27] & 2047) * C4219b.f34966u) + 1024) >> 11));
                }
                i20++;
                s12 = 6;
                s10 = 7;
                i12 = 0;
                s13 = 4;
                i10 = 3;
            }
            i18++;
            s10 = s10;
            s13 = s13;
            i10 = i10;
        }
    }

    public void e(byte[] bArr) {
        int i10 = 0;
        while (i10 < this.f35032c) {
            m f10 = f(i10);
            int i11 = i10 * 384;
            i10++;
            f10.g(org.bouncycastle.util.a.X(bArr, i11, i10 * 384));
        }
    }

    public m f(int i10) {
        return this.f35030a[i10];
    }

    public void h() {
        for (int i10 = 0; i10 < this.f35032c; i10++) {
            f(i10).m();
        }
    }

    public void i() {
        for (int i10 = 0; i10 < this.f35032c; i10++) {
            f(i10).n();
        }
    }

    public void j() {
        for (int i10 = 0; i10 < this.f35032c; i10++) {
            f(i10).p();
        }
    }

    public byte[] k() {
        byte[] bArr = new byte[this.f35033d];
        for (int i10 = 0; i10 < this.f35032c; i10++) {
            System.arraycopy(this.f35030a[i10].s(), 0, bArr, i10 * 384, 384);
        }
        return bArr;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[");
        for (int i10 = 0; i10 < this.f35032c; i10++) {
            stringBuffer.append(this.f35030a[i10].toString());
            if (i10 != this.f35032c - 1) {
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    public n(C4219b c4219b) {
        this.f35031b = c4219b;
        this.f35032c = c4219b.n();
        this.f35033d = c4219b.p();
        this.f35030a = new m[this.f35032c];
        for (int i10 = 0; i10 < this.f35032c; i10++) {
            this.f35030a[i10] = new m(c4219b);
        }
    }
}
