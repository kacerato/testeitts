package Vi;

import java.lang.reflect.Array;

public class h implements d {

    public long[][] f27083a;

    @Override
    public void a(long[] jArr) {
        long[][] jArr2 = this.f27083a;
        if (jArr2 == null) {
            this.f27083a = (long[][]) Array.newInstance(Long.TYPE, 256, 8);
        } else if (g.c(jArr, jArr2[1])) {
            return;
        }
        g.b(jArr, this.f27083a[1]);
        for (int i10 = 2; i10 < 256; i10 += 2) {
            long[][] jArr3 = this.f27083a;
            g.e(jArr3[i10 >> 1], jArr3[i10]);
            long[][] jArr4 = this.f27083a;
            g.a(jArr4[i10], jArr4[1], jArr4[i10 + 1]);
        }
    }

    @Override
    public void b(long[] jArr) {
        long[] jArr2 = new long[8];
        g.b(this.f27083a[((int) (jArr[7] >>> 56)) & 255], jArr2);
        for (int i10 = 62; i10 >= 0; i10--) {
            g.f(jArr2, jArr2);
            g.a(this.f27083a[((int) (jArr[i10 >>> 3] >>> ((i10 & 7) << 3))) & 255], jArr2, jArr2);
        }
        g.b(jArr2, jArr);
    }
}
