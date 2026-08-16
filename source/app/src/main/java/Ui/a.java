package Ui;

public class a implements c {

    public long[] f26188a;

    @Override
    public void a(byte[] bArr) {
        this.f26188a = e.k(bArr);
    }

    @Override
    public void b(long j10, byte[] bArr) {
        long[] I10 = e.I();
        if (j10 > 0) {
            long[] jArr = new long[2];
            e.n(this.f26188a, jArr);
            do {
                if ((1 & j10) != 0) {
                    e.t(I10, jArr);
                }
                e.K(jArr, jArr);
                j10 >>>= 1;
            } while (j10 > 0);
        }
        e.e(I10, bArr);
    }
}
