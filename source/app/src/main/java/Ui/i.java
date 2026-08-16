package Ui;

import java.lang.reflect.Array;
import org.bouncycastle.util.p;

public class i implements d {

    public byte[] f26200a;

    public long[][][] f26201b;

    @Override
    public void a(byte[] bArr) {
        if (this.f26201b == null) {
            this.f26201b = (long[][][]) Array.newInstance(Long.TYPE, 2, 256, 2);
        } else if (e.a(this.f26200a, bArr) != 0) {
            return;
        }
        byte[] bArr2 = new byte[16];
        this.f26200a = bArr2;
        e.l(bArr, bArr2);
        for (int i10 = 0; i10 < 2; i10++) {
            long[][][] jArr = this.f26201b;
            long[][] jArr2 = jArr[i10];
            if (i10 == 0) {
                e.j(this.f26200a, jArr2[1]);
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
        long[][][] jArr = this.f26201b;
        long[][] jArr2 = jArr[0];
        long[][] jArr3 = jArr[1];
        long[] jArr4 = jArr2[bArr[14] & 255];
        long[] jArr5 = jArr3[bArr[15] & 255];
        long j10 = jArr4[0] ^ jArr5[0];
        long j11 = jArr5[1] ^ jArr4[1];
        for (int i10 = 12; i10 >= 0; i10 -= 2) {
            long[] jArr6 = jArr2[bArr[i10] & 255];
            long[] jArr7 = jArr3[bArr[i10 + 1] & 255];
            long j12 = j11 << 48;
            j11 = (jArr6[1] ^ jArr7[1]) ^ ((j11 >>> 16) | (j10 << 48));
            j10 = (((((j10 >>> 16) ^ (jArr6[0] ^ jArr7[0])) ^ j12) ^ (j12 >>> 1)) ^ (j12 >>> 2)) ^ (j12 >>> 7);
        }
        p.D(j10, bArr, 0);
        p.D(j11, bArr, 8);
    }
}
