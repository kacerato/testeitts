package Ui;

import java.lang.reflect.Array;
import org.bouncycastle.util.p;

public class h implements d {

    public byte[] f26198a;

    public long[][][] f26199b;

    @Override
    public void a(byte[] bArr) {
        if (this.f26199b == null) {
            this.f26199b = (long[][][]) Array.newInstance(Long.TYPE, 16, 256, 2);
        } else if (e.a(this.f26198a, bArr) != 0) {
            return;
        }
        byte[] bArr2 = new byte[16];
        this.f26198a = bArr2;
        e.l(bArr, bArr2);
        for (int i10 = 0; i10 < 16; i10++) {
            long[][][] jArr = this.f26199b;
            long[][] jArr2 = jArr[i10];
            if (i10 == 0) {
                e.j(this.f26198a, jArr2[1]);
                long[] jArr3 = jArr2[1];
                e.B(jArr3, jArr3);
            } else {
                e.F(jArr[i10 - 1][1], jArr2[1]);
            }
            for (int i11 = 2; i11 < 256; i11 += 2) {
                e.o(jArr2[i11 >> 1], jArr2[i11]);
                e.U(jArr2[i11], jArr2[1], jArr2[i11 + 1]);
            }
        }
    }

    @Override
    public void b(byte[] bArr) {
        long[][][] jArr = this.f26199b;
        long[] jArr2 = jArr[0][bArr[0] & 255];
        long[] jArr3 = jArr[1][bArr[1] & 255];
        long[] jArr4 = jArr[2][bArr[2] & 255];
        long[] jArr5 = jArr[3][bArr[3] & 255];
        long[] jArr6 = jArr[4][bArr[4] & 255];
        long[] jArr7 = jArr[5][bArr[5] & 255];
        long[] jArr8 = jArr[6][bArr[6] & 255];
        long[] jArr9 = jArr[7][bArr[7] & 255];
        long[] jArr10 = jArr[8][bArr[8] & 255];
        long[] jArr11 = jArr[9][bArr[9] & 255];
        long[] jArr12 = jArr[10][bArr[10] & 255];
        long[] jArr13 = jArr[11][bArr[11] & 255];
        long[] jArr14 = jArr[12][bArr[12] & 255];
        long[] jArr15 = jArr[13][bArr[13] & 255];
        long[] jArr16 = jArr[14][bArr[14] & 255];
        long[] jArr17 = jArr[15][bArr[15] & 255];
        long j10 = ((((((((((((((jArr2[0] ^ jArr3[0]) ^ jArr4[0]) ^ jArr5[0]) ^ jArr6[0]) ^ jArr7[0]) ^ jArr8[0]) ^ jArr9[0]) ^ jArr10[0]) ^ jArr11[0]) ^ jArr12[0]) ^ jArr13[0]) ^ jArr14[0]) ^ jArr15[0]) ^ jArr16[0]) ^ jArr17[0];
        long j11 = ((((jArr13[1] ^ ((((((((((jArr2[1] ^ jArr3[1]) ^ jArr4[1]) ^ jArr5[1]) ^ jArr6[1]) ^ jArr7[1]) ^ jArr8[1]) ^ jArr9[1]) ^ jArr10[1]) ^ jArr11[1]) ^ jArr12[1])) ^ jArr14[1]) ^ jArr15[1]) ^ jArr16[1]) ^ jArr17[1];
        p.D(j10, bArr, 0);
        p.D(j11, bArr, 8);
    }
}
