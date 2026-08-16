package Li;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;

public class Z implements InterfaceC2374f {

    public static final int f13805d = 64;

    public static final int f13806e = 8;

    public static final long f13807f = -5196783011329398165L;

    public static final long f13808g = -7046029254386353131L;

    public int f13809a = 12;

    public long[] f13810b = null;

    public boolean f13811c;

    private long f(byte[] bArr, int i10) {
        long j10 = 0;
        for (int i11 = 7; i11 >= 0; i11--) {
            j10 = (j10 << 8) + (bArr[i11 + i10] & 255);
        }
        return j10;
    }

    private int i(byte[] bArr, int i10, byte[] bArr2, int i11) {
        long f10 = f(bArr, i10);
        long f11 = f(bArr, i10 + 8);
        for (int i12 = this.f13809a; i12 >= 1; i12--) {
            int i13 = i12 * 2;
            f11 = l(f11 - this.f13810b[i13 + 1], f10) ^ f10;
            f10 = l(f10 - this.f13810b[i13], f11) ^ f11;
        }
        n(f10 - this.f13810b[0], bArr2, i11);
        n(f11 - this.f13810b[1], bArr2, i11 + 8);
        return 16;
    }

    private int j(byte[] bArr, int i10, byte[] bArr2, int i11) {
        long f10 = f(bArr, i10) + this.f13810b[0];
        long f11 = f(bArr, i10 + 8) + this.f13810b[1];
        for (int i12 = 1; i12 <= this.f13809a; i12++) {
            int i13 = i12 * 2;
            f10 = k(f10 ^ f11, f11) + this.f13810b[i13];
            f11 = k(f11 ^ f10, f10) + this.f13810b[i13 + 1];
        }
        n(f10, bArr2, i11);
        n(f11, bArr2, i11 + 8);
        return 16;
    }

    private void m(byte[] bArr) {
        long[] jArr;
        int length = (bArr.length + 7) / 8;
        long[] jArr2 = new long[length];
        for (int i10 = 0; i10 != bArr.length; i10++) {
            int i11 = i10 / 8;
            jArr2[i11] = jArr2[i11] + ((bArr[i10] & 255) << ((i10 % 8) * 8));
        }
        long[] jArr3 = new long[(this.f13809a + 1) * 2];
        this.f13810b = jArr3;
        jArr3[0] = -5196783011329398165L;
        int i12 = 1;
        while (true) {
            jArr = this.f13810b;
            if (i12 >= jArr.length) {
                break;
            }
            jArr[i12] = jArr[i12 - 1] + f13808g;
            i12++;
        }
        int length2 = length > jArr.length ? length * 3 : jArr.length * 3;
        long j10 = 0;
        long j11 = 0;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < length2; i15++) {
            long[] jArr4 = this.f13810b;
            j10 = k(jArr4[i13] + j10 + j11, 3L);
            jArr4[i13] = j10;
            j11 = k(jArr2[i14] + j10 + j11, j11 + j10);
            jArr2[i14] = j11;
            i13 = (i13 + 1) % this.f13810b.length;
            i14 = (i14 + 1) % length;
        }
    }

    private void n(long j10, byte[] bArr, int i10) {
        for (int i11 = 0; i11 < 8; i11++) {
            bArr[i11 + i10] = (byte) j10;
            j10 >>>= 8;
        }
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (!(interfaceC2379k instanceof Xi.C0)) {
            throw new IllegalArgumentException("invalid parameter passed to RC564 init - " + interfaceC2379k.getClass().getName());
        }
        Xi.C0 c02 = (Xi.C0) interfaceC2379k;
        this.f13811c = z10;
        this.f13809a = c02.b();
        byte[] a10 = c02.a();
        m(a10);
        Bi.r.a(new Hi.c(b(), a10.length * 8, interfaceC2379k, x0.a(z10)));
    }

    @Override
    public String b() {
        return "RC5-64";
    }

    @Override
    public int c() {
        return 16;
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) {
        return this.f13811c ? j(bArr, i10, bArr2, i11) : i(bArr, i10, bArr2, i11);
    }

    public final long k(long j10, long j11) {
        long j12 = j11 & 63;
        return (j10 >>> ((int) (64 - j12))) | (j10 << ((int) j12));
    }

    public final long l(long j10, long j11) {
        long j12 = j11 & 63;
        return (j10 << ((int) (64 - j12))) | (j10 >>> ((int) j12));
    }

    @Override
    public void reset() {
    }
}
