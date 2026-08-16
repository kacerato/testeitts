package Si;

import org.bouncycastle.crypto.DataLengthException;

public class r extends s {
    public r() {
    }

    @Override
    public String b() {
        return "SipHash128-" + this.f23492a + "-" + this.f23493b;
    }

    @Override
    public int c(byte[] bArr, int i10) throws DataLengthException, IllegalStateException {
        this.f23500i = ((this.f23500i >>> ((7 - this.f23501j) << 3)) >>> 8) | ((((this.f23502k << 3) + r2) & 255) << 56);
        g();
        this.f23498g ^= 238;
        e(this.f23493b);
        long j10 = this.f23496e;
        long j11 = this.f23497f;
        long j12 = ((j10 ^ j11) ^ this.f23498g) ^ this.f23499h;
        this.f23497f = j11 ^ 221;
        e(this.f23493b);
        long j13 = ((this.f23496e ^ this.f23497f) ^ this.f23498g) ^ this.f23499h;
        reset();
        org.bouncycastle.util.p.J(j12, bArr, i10);
        org.bouncycastle.util.p.J(j13, bArr, i10 + 8);
        return 16;
    }

    @Override
    public int d() {
        return 16;
    }

    @Override
    public long f() throws DataLengthException, IllegalStateException {
        throw new UnsupportedOperationException("doFinal() is not supported");
    }

    @Override
    public void reset() {
        super.reset();
        this.f23497f ^= 238;
    }

    public r(int i10, int i11) {
        super(i10, i11);
    }
}
