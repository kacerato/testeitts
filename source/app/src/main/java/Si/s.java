package Si;

import Bi.I;
import Bi.InterfaceC2379k;
import Xi.C3360o0;
import org.bouncycastle.crypto.DataLengthException;

public class s implements I {

    public final int f23492a;

    public final int f23493b;

    public long f23494c;

    public long f23495d;

    public long f23496e;

    public long f23497f;

    public long f23498g;

    public long f23499h;

    public long f23500i;

    public int f23501j;

    public int f23502k;

    public s() {
        this.f23500i = 0L;
        this.f23501j = 0;
        this.f23502k = 0;
        this.f23492a = 2;
        this.f23493b = 4;
    }

    public static long h(long j10, int i10) {
        return (j10 >>> (-i10)) | (j10 << i10);
    }

    @Override
    public void a(InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        if (!(interfaceC2379k instanceof C3360o0)) {
            throw new IllegalArgumentException("'params' must be an instance of KeyParameter");
        }
        byte[] b10 = ((C3360o0) interfaceC2379k).b();
        if (b10.length != 16) {
            throw new IllegalArgumentException("'params' must be a 128-bit key");
        }
        this.f23494c = org.bouncycastle.util.p.x(b10, 0);
        this.f23495d = org.bouncycastle.util.p.x(b10, 8);
        reset();
    }

    @Override
    public String b() {
        return "SipHash-" + this.f23492a + "-" + this.f23493b;
    }

    @Override
    public int c(byte[] bArr, int i10) throws DataLengthException, IllegalStateException {
        org.bouncycastle.util.p.J(f(), bArr, i10);
        return 8;
    }

    @Override
    public int d() {
        return 8;
    }

    public void e(int i10) {
        long j10 = this.f23496e;
        long j11 = this.f23497f;
        long j12 = this.f23498g;
        long j13 = this.f23499h;
        for (int i11 = 0; i11 < i10; i11++) {
            long j14 = j10 + j11;
            long j15 = j12 + j13;
            long h10 = h(j11, 13) ^ j14;
            long h11 = h(j13, 16) ^ j15;
            long j16 = j15 + h10;
            j10 = h(j14, 32) + h11;
            j11 = h(h10, 17) ^ j16;
            j13 = h(h11, 21) ^ j10;
            j12 = h(j16, 32);
        }
        this.f23496e = j10;
        this.f23497f = j11;
        this.f23498g = j12;
        this.f23499h = j13;
    }

    public long f() throws DataLengthException, IllegalStateException {
        this.f23500i = ((this.f23500i >>> ((7 - this.f23501j) << 3)) >>> 8) | ((((this.f23502k << 3) + r2) & 255) << 56);
        g();
        this.f23498g ^= 255;
        e(this.f23493b);
        long j10 = ((this.f23496e ^ this.f23497f) ^ this.f23498g) ^ this.f23499h;
        reset();
        return j10;
    }

    public void g() {
        this.f23502k++;
        this.f23499h ^= this.f23500i;
        e(this.f23492a);
        this.f23496e ^= this.f23500i;
    }

    @Override
    public void reset() {
        long j10 = this.f23494c;
        this.f23496e = 8317987319222330741L ^ j10;
        long j11 = this.f23495d;
        this.f23497f = 7237128888997146477L ^ j11;
        this.f23498g = j10 ^ 7816392313619706465L;
        this.f23499h = 8387220255154660723L ^ j11;
        this.f23500i = 0L;
        this.f23501j = 0;
        this.f23502k = 0;
    }

    @Override
    public void update(byte b10) throws IllegalStateException {
        this.f23500i = (this.f23500i >>> 8) | ((b10 & 255) << 56);
        int i10 = this.f23501j + 1;
        this.f23501j = i10;
        if (i10 == 8) {
            g();
            this.f23501j = 0;
        }
    }

    public s(int i10, int i11) {
        this.f23500i = 0L;
        this.f23501j = 0;
        this.f23502k = 0;
        this.f23492a = i10;
        this.f23493b = i11;
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) throws DataLengthException, IllegalStateException {
        int i12 = i11 & (-8);
        int i13 = this.f23501j;
        int i14 = 0;
        if (i13 == 0) {
            while (i14 < i12) {
                this.f23500i = org.bouncycastle.util.p.x(bArr, i10 + i14);
                g();
                i14 += 8;
            }
            while (i14 < i11) {
                long j10 = this.f23500i >>> 8;
                this.f23500i = j10;
                this.f23500i = j10 | ((bArr[i10 + i14] & 255) << 56);
                i14++;
            }
            this.f23501j = i11 - i12;
            return;
        }
        int i15 = i13 << 3;
        int i16 = 0;
        while (i16 < i12) {
            long x10 = org.bouncycastle.util.p.x(bArr, i10 + i16);
            this.f23500i = (this.f23500i >>> (-i15)) | (x10 << i15);
            g();
            this.f23500i = x10;
            i16 += 8;
        }
        while (i16 < i11) {
            long j11 = this.f23500i >>> 8;
            this.f23500i = j11;
            this.f23500i = j11 | ((bArr[i10 + i16] & 255) << 56);
            int i17 = this.f23501j + 1;
            this.f23501j = i17;
            if (i17 == 8) {
                g();
                this.f23501j = 0;
            }
            i16++;
        }
    }
}
