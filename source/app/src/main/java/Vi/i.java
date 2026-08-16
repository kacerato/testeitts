package Vi;

import java.lang.reflect.Array;

public class i implements d {

    public long[][] f27084a;

    @Override
    public void a(long[] jArr) {
        long[][] jArr2 = this.f27084a;
        if (jArr2 == null) {
            this.f27084a = (long[][]) Array.newInstance(Long.TYPE, 256, 2);
        } else if (e.c(jArr, jArr2[1])) {
            return;
        }
        e.b(jArr, this.f27084a[1]);
        for (int i10 = 2; i10 < 256; i10 += 2) {
            long[][] jArr3 = this.f27084a;
            e.e(jArr3[i10 >> 1], jArr3[i10]);
            long[][] jArr4 = this.f27084a;
            e.a(jArr4[i10], jArr4[1], jArr4[i10 + 1]);
        }
    }

    @Override
    public void b(long[] jArr) {
        long[] jArr2 = new long[2];
        e.b(this.f27084a[((int) (jArr[1] >>> 56)) & 255], jArr2);
        for (int i10 = 14; i10 >= 0; i10--) {
            e.f(jArr2, jArr2);
            e.a(this.f27084a[((int) (jArr[i10 >>> 3] >>> ((i10 & 7) << 3))) & 255], jArr2, jArr2);
        }
        e.b(jArr2, jArr);
    }
}
