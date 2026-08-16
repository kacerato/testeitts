package al;

import java.lang.reflect.Array;

public class C3671a extends AbstractC3673c {
    public C3671a(int i10, int i11, int i12) {
        super(i10, i11, i12);
    }

    private void d(byte[] bArr, byte[] bArr2, int i10) {
        int i11;
        int i12;
        long[] jArr = new long[64];
        long[] jArr2 = new long[64];
        for (int i13 = 0; i13 < 64; i13++) {
            jArr[i13] = p.c(bArr, i13 * 8);
        }
        int i14 = 256;
        if (i10 == 0) {
            i11 = (this.f32340b * 2) + 40;
        } else {
            i11 = (this.f32340b * 2) + 40 + (((this.f32341c * 2) - 2) * 256);
            i14 = -256;
        }
        AbstractC3673c.b(jArr, jArr);
        int i15 = 0;
        while (true) {
            if (i15 > 5) {
                break;
            }
            for (int i16 = 0; i16 < 64; i16++) {
                jArr2[i16] = p.b(bArr2, (i16 * 4) + i11);
            }
            AbstractC3673c.b(jArr2, jArr2);
            e(jArr, jArr2, i15);
            i11 += i14;
            i15++;
        }
        AbstractC3673c.b(jArr, jArr);
        for (int i17 = 0; i17 <= 5; i17++) {
            for (int i18 = 0; i18 < 32; i18++) {
                jArr2[i18] = p.c(bArr2, (i18 * 8) + i11);
            }
            e(jArr, jArr2, i17);
            i11 += i14;
        }
        for (int i19 = 4; i19 >= 0; i19--) {
            for (int i20 = 0; i20 < 32; i20++) {
                jArr2[i20] = p.c(bArr2, (i20 * 8) + i11);
            }
            e(jArr, jArr2, i19);
            i11 += i14;
        }
        AbstractC3673c.b(jArr, jArr);
        for (i12 = 5; i12 >= 0; i12--) {
            for (int i21 = 0; i21 < 64; i21++) {
                jArr2[i21] = p.b(bArr2, (i21 * 4) + i11);
            }
            AbstractC3673c.b(jArr2, jArr2);
            e(jArr, jArr2, i12);
            i11 += i14;
        }
        AbstractC3673c.b(jArr, jArr);
        for (int i22 = 0; i22 < 64; i22++) {
            p.e(bArr, i22 * 8, jArr[i22]);
        }
    }

    public static void e(long[] jArr, long[] jArr2, int i10) {
        int i11 = 1 << i10;
        int i12 = 0;
        for (int i13 = 0; i13 < 64; i13 += i11 * 2) {
            int i14 = i13;
            while (i14 < i13 + i11) {
                long j10 = jArr[i14];
                int i15 = i14 + i11;
                long j11 = (jArr[i15] ^ j10) & jArr2[i12];
                jArr[i14] = j10 ^ j11;
                jArr[i15] = jArr[i15] ^ j11;
                i14++;
                i12++;
            }
        }
    }

    @Override
    public void a(short[] sArr, byte[] bArr) {
        int i10 = this.f32341c;
        byte[][] bArr2 = (byte[][]) Array.newInstance(Byte.TYPE, i10, (1 << i10) / 8);
        for (int i11 = 0; i11 < this.f32341c; i11++) {
            for (int i12 = 0; i12 < (1 << this.f32341c) / 8; i12++) {
                bArr2[i11][i12] = 0;
            }
        }
        int i13 = 0;
        while (true) {
            int i14 = this.f32341c;
            if (i13 >= (1 << i14)) {
                break;
            }
            short a10 = p.a((short) i13, i14);
            for (int i15 = 0; i15 < this.f32341c; i15++) {
                byte[] bArr3 = bArr2[i15];
                int i16 = i13 / 8;
                bArr3[i16] = (byte) (bArr3[i16] | (((a10 >> i15) & 1) << (i13 % 8)));
            }
            i13++;
        }
        for (int i17 = 0; i17 < this.f32341c; i17++) {
            d(bArr2[i17], bArr, 0);
        }
        for (int i18 = 0; i18 < this.f32339a; i18++) {
            sArr[i18] = 0;
            for (int i19 = this.f32341c - 1; i19 >= 0; i19--) {
                short s10 = (short) (sArr[i18] << 1);
                sArr[i18] = s10;
                sArr[i18] = (short) (s10 | ((bArr2[i19][i18 / 8] >> (i18 % 8)) & 1));
            }
        }
    }
}
