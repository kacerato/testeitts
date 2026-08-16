package Vi;

import java.lang.reflect.Array;

public class j implements d {

    public long[][] f27085a;

    @Override
    public void a(long[] jArr) {
        long[][] jArr2 = this.f27085a;
        if (jArr2 == null) {
            this.f27085a = (long[][]) Array.newInstance(Long.TYPE, 256, 4);
        } else if (f.c(jArr, jArr2[1])) {
            return;
        }
        f.b(jArr, this.f27085a[1]);
        for (int i10 = 2; i10 < 256; i10 += 2) {
            long[][] jArr3 = this.f27085a;
            f.e(jArr3[i10 >> 1], jArr3[i10]);
            long[][] jArr4 = this.f27085a;
            f.a(jArr4[i10], jArr4[1], jArr4[i10 + 1]);
        }
    }

    @Override
    public void b(long[] jArr) {
        long[] jArr2 = new long[4];
        f.b(this.f27085a[((int) (jArr[3] >>> 56)) & 255], jArr2);
        for (int i10 = 30; i10 >= 0; i10--) {
            f.f(jArr2, jArr2);
            f.a(this.f27085a[((int) (jArr[i10 >>> 3] >>> ((i10 & 7) << 3))) & 255], jArr2, jArr2);
        }
        f.b(jArr2, jArr);
    }
}
