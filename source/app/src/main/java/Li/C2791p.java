package Li;

public class C2791p extends n0 {
    @Override
    public String b() {
        return "ChaCha7539";
    }

    @Override
    public void c() {
        int[] iArr = this.f14032c;
        int i10 = iArr[12] + 1;
        iArr[12] = i10;
        if (i10 == 0) {
            throw new IllegalStateException("attempt to increase counter past 2^32.");
        }
    }

    @Override
    public void e(long j10) {
        int i10 = (int) (j10 >>> 32);
        int i11 = (int) j10;
        if (i10 > 0) {
            throw new IllegalStateException("attempt to increase counter past 2^32.");
        }
        int[] iArr = this.f14032c;
        int i12 = iArr[12];
        int i13 = i11 + i12;
        iArr[12] = i13;
        if (i12 != 0 && i13 < i12) {
            throw new IllegalStateException("attempt to increase counter past 2^32.");
        }
    }

    @Override
    public void g(byte[] bArr) {
        C2792q.u(this.f14030a, this.f14032c, this.f14033d);
        org.bouncycastle.util.p.o(this.f14033d, bArr, 0);
    }

    @Override
    public long h() {
        return this.f14032c[12] & 4294967295L;
    }

    @Override
    public int k() {
        return 12;
    }

    @Override
    public void o() {
        this.f14032c[12] = 0;
    }

    @Override
    public void q() {
        int[] iArr = this.f14032c;
        int i10 = iArr[12];
        if (i10 == 0) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        iArr[12] = i10 - 1;
    }

    @Override
    public void r(long j10) {
        int i10 = (int) (j10 >>> 32);
        int i11 = (int) j10;
        if (i10 != 0) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        int[] iArr = this.f14032c;
        int i12 = iArr[12];
        if ((i12 & 4294967295L) < (4294967295L & i11)) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        iArr[12] = i12 - i11;
    }

    @Override
    public void t(byte[] bArr, byte[] bArr2) {
        if (bArr != null) {
            if (bArr.length != 32) {
                throw new IllegalArgumentException(b() + " requires 256 bit key");
            }
            n(bArr.length, this.f14032c, 0);
            org.bouncycastle.util.p.t(bArr, 0, this.f14032c, 4, 8);
        }
        org.bouncycastle.util.p.t(bArr2, 0, this.f14032c, 13, 3);
    }
}
