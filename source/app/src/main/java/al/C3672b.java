package al;

import android.util.Half;
import java.lang.reflect.Array;

public class C3672b extends AbstractC3673c {
    public C3672b(int i10, int i11, int i12) {
        super(i10, i11, i12);
    }

    public static void e(long[] jArr, long[] jArr2, int i10) {
        int i11 = 1 << i10;
        int i12 = 0;
        for (int i13 = 0; i13 < 128; i13 += i11 * 2) {
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

    public static void f(long[] jArr, long[] jArr2, int i10) {
        int i11 = 1 << i10;
        int i12 = 0;
        for (int i13 = 0; i13 < 64; i13 += i11 * 2) {
            for (int i14 = i13; i14 < i13 + i11; i14++) {
                long j10 = jArr[i14];
                int i15 = i14 + i11;
                int i16 = i12 + 1;
                long j11 = (jArr[i15] ^ j10) & jArr2[i12];
                jArr[i14] = j10 ^ j11;
                jArr[i15] = jArr[i15] ^ j11;
                int i17 = i14 + 64;
                long j12 = jArr[i17];
                int i18 = i17 + i11;
                i12 += 2;
                long j13 = jArr2[i16] & (jArr[i18] ^ j12);
                jArr[i17] = j12 ^ j13;
                jArr[i18] = jArr[i18] ^ j13;
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

    public void d(byte[] bArr, byte[] bArr2, int i10) {
        int i11;
        int i12;
        int i13;
        long[] jArr = new long[128];
        long[] jArr2 = new long[128];
        long[] jArr3 = new long[64];
        long[] jArr4 = new long[64];
        if (i10 == 0) {
            i11 = (this.f32340b * 2) + 40;
            i12 = 0;
        } else {
            i11 = (this.f32340b * 2) + 12328;
            i12 = Half.NEGATIVE_INFINITY;
        }
        for (int i14 = 0; i14 < 64; i14++) {
            int i15 = i14 * 16;
            jArr[i14] = p.c(bArr, i15);
            jArr[i14 + 64] = p.c(bArr, i15 + 8);
        }
        AbstractC3673c.c(jArr2, jArr, 0);
        AbstractC3673c.c(jArr2, jArr, 64);
        int i16 = 0;
        while (true) {
            if (i16 > 6) {
                break;
            }
            for (int i17 = 0; i17 < 64; i17++) {
                jArr3[i17] = p.c(bArr2, i11);
                i11 += 8;
            }
            i11 += i12;
            AbstractC3673c.b(jArr4, jArr3);
            e(jArr2, jArr4, i16);
            i16++;
        }
        AbstractC3673c.c(jArr, jArr2, 0);
        AbstractC3673c.c(jArr, jArr2, 64);
        for (int i18 = 0; i18 <= 5; i18++) {
            for (int i19 = 0; i19 < 64; i19++) {
                jArr3[i19] = p.c(bArr2, i11);
                i11 += 8;
            }
            i11 += i12;
            f(jArr, jArr3, i18);
        }
        for (int i20 = 4; i20 >= 0; i20--) {
            for (int i21 = 0; i21 < 64; i21++) {
                jArr3[i21] = p.c(bArr2, i11);
                i11 += 8;
            }
            i11 += i12;
            f(jArr, jArr3, i20);
        }
        AbstractC3673c.c(jArr2, jArr, 0);
        AbstractC3673c.c(jArr2, jArr, 64);
        for (i13 = 6; i13 >= 0; i13--) {
            for (int i22 = 0; i22 < 64; i22++) {
                jArr3[i22] = p.c(bArr2, i11);
                i11 += 8;
            }
            i11 += i12;
            AbstractC3673c.b(jArr4, jArr3);
            e(jArr2, jArr4, i13);
        }
        AbstractC3673c.c(jArr, jArr2, 0);
        AbstractC3673c.c(jArr, jArr2, 64);
        for (int i23 = 0; i23 < 64; i23++) {
            int i24 = i23 * 16;
            p.e(bArr, i24, jArr[i23]);
            p.e(bArr, i24 + 8, jArr[i23 + 64]);
        }
    }
}
