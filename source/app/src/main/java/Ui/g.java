package Ui;

import java.lang.reflect.Array;
import org.bouncycastle.util.p;

public class g implements d {

    public byte[] f26196a;

    public long[][] f26197b;

    @Override
    public void a(byte[] bArr) {
        if (this.f26197b == null) {
            this.f26197b = (long[][]) Array.newInstance(Long.TYPE, 256, 2);
        } else if (e.a(this.f26196a, bArr) != 0) {
            return;
        }
        byte[] bArr2 = new byte[16];
        this.f26196a = bArr2;
        e.l(bArr, bArr2);
        e.j(this.f26196a, this.f26197b[1]);
        long[] jArr = this.f26197b[1];
        e.B(jArr, jArr);
        for (int i10 = 2; i10 < 256; i10 += 2) {
            long[][] jArr2 = this.f26197b;
            e.o(jArr2[i10 >> 1], jArr2[i10]);
            long[][] jArr3 = this.f26197b;
            e.U(jArr3[i10], jArr3[1], jArr3[i10 + 1]);
        }
    }

    @Override
    public void b(byte[] bArr) {
        long[] jArr = this.f26197b[bArr[15] & 255];
        long j10 = jArr[0];
        long j11 = jArr[1];
        for (int i10 = 14; i10 >= 0; i10--) {
            long[] jArr2 = this.f26197b[bArr[i10] & 255];
            long j12 = j11 << 56;
            j11 = ((j11 >>> 8) | (j10 << 56)) ^ jArr2[1];
            j10 = (((((j10 >>> 8) ^ jArr2[0]) ^ j12) ^ (j12 >>> 1)) ^ (j12 >>> 2)) ^ (j12 >>> 7);
        }
        p.D(j10, bArr, 0);
        p.D(j11, bArr, 8);
    }
}
