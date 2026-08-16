package fl;

import java.security.SecureRandom;

public class m extends l {

    public int f86545c;

    public m(int i10) {
        super((i10 >>> 3) + ((i10 & 7) != 0 ? 1 : 0));
        this.f86545c = 0;
    }

    @Override
    public void A(int i10, int i11) {
        int i12 = this.f86545c;
        if (i12 == 0) {
            super.A(i10, i11);
            return;
        }
        long[] jArr = this.f86543a;
        int i13 = this.f86544b + i10;
        jArr[i13] = jArr[i13] & ((-1) >>> ((8 - i12) << 3));
        super.A(i10 + 1, i11);
        long[] jArr2 = this.f86543a;
        int i14 = this.f86544b + i11 + 1;
        jArr2[i14] = jArr2[i14] & ((-1) << (this.f86545c << 3));
    }

    @Override
    public void J(int i10, long j10) {
        int i11 = this.f86545c;
        if (i11 == 0) {
            super.J(i10, j10);
            return;
        }
        long[] jArr = this.f86543a;
        int i12 = this.f86544b;
        int i13 = i12 + i10;
        jArr[i13] = jArr[i13] ^ (j10 << (i11 << 3));
        int i14 = i12 + i10 + 1;
        jArr[i14] = (j10 >>> ((8 - i11) << 3)) ^ jArr[i14];
    }

    @Override
    public void K(long j10) {
        int i10 = this.f86545c;
        if (i10 == 0) {
            super.K(j10);
            return;
        }
        long[] jArr = this.f86543a;
        int i11 = this.f86544b;
        jArr[i11] = jArr[i11] ^ (j10 << (i10 << 3));
        int i12 = i11 + 1;
        jArr[i12] = (j10 >>> ((8 - i10) << 3)) ^ jArr[i12];
    }

    @Override
    public void R(l lVar, int i10, long j10) {
        int i11 = this.f86545c;
        if (i11 == 0) {
            super.R(lVar, i10, j10);
            return;
        }
        int i12 = this.f86544b;
        int i13 = lVar.f86544b;
        int i14 = i11 << 3;
        int i15 = (8 - i11) << 3;
        int i16 = 0;
        while (i16 < i10) {
            int i17 = i13 + 1;
            long j11 = lVar.f86543a[i13] & j10;
            long[] jArr = this.f86543a;
            jArr[i12] = jArr[i12] ^ (j11 << i14);
            i12++;
            jArr[i12] = (j11 >>> i15) ^ jArr[i12];
            i16++;
            i13 = i17;
        }
    }

    @Override
    public byte[] W(int i10) {
        byte[] bArr = new byte[i10];
        int i11 = this.f86545c;
        while (true) {
            int i12 = this.f86545c;
            if (i11 >= i10 + i12) {
                return bArr;
            }
            bArr[i11 - i12] = (byte) (this.f86543a[this.f86544b + (i11 >>> 3)] >>> ((i11 & 7) << 3));
            i11++;
        }
    }

    public void X(m mVar) {
        this.f86543a = mVar.f86543a;
        this.f86544b = mVar.f86544b;
        this.f86545c = mVar.f86545c;
    }

    public void Y(int i10, byte[] bArr, int i11, int i12) {
        int i13 = i10 + this.f86545c;
        int i14 = this.f86544b + (i13 >>> 3);
        int i15 = i13 & 7;
        if (i15 != 0) {
            long[] jArr = this.f86543a;
            jArr[i14] = jArr[i14] & (~((-1) << (i15 << 3)));
            int i16 = 0;
            while (i15 < 8 && i16 < i12) {
                long[] jArr2 = this.f86543a;
                jArr2[i14] = jArr2[i14] | ((bArr[i11] & 255) << (i15 << 3));
                i11++;
                i16++;
                i15++;
            }
            i14++;
            i12 -= i16;
        }
        super.f(i14 - this.f86544b, bArr, i11, i12);
    }

    public void Z(int i10, SecureRandom secureRandom, int i11) {
        byte[] bArr = new byte[i11];
        secureRandom.nextBytes(bArr);
        Y(i10, bArr, 0, i11);
    }

    public byte a0() {
        return (byte) (this.f86543a[this.f86544b] >>> (this.f86545c << 3));
    }

    public byte b0(int i10) {
        int i11 = this.f86544b;
        int i12 = this.f86545c;
        return (byte) (this.f86543a[i11 + ((i10 + i12) >>> 3)] >>> (((i12 + i10) & 7) << 3));
    }

    public long c0() {
        int i10 = this.f86544b;
        long[] jArr = this.f86543a;
        if (i10 >= jArr.length) {
            return 0L;
        }
        int i11 = this.f86545c;
        if (i11 == 0) {
            return jArr[i10];
        }
        if (i10 == jArr.length - 1) {
            return jArr[i10] >>> (i11 << 3);
        }
        return (jArr[i10 + 1] << ((8 - i11) << 3)) | (jArr[i10] >>> (i11 << 3));
    }

    public long d0(int i10) {
        int i11 = i10 + this.f86544b;
        long[] jArr = this.f86543a;
        if (i11 >= jArr.length) {
            return 0L;
        }
        int i12 = this.f86545c;
        if (i12 == 0) {
            return jArr[i11];
        }
        if (i11 == jArr.length - 1) {
            return jArr[i11] >>> (i12 << 3);
        }
        return (jArr[i11 + 1] << ((8 - i12) << 3)) | (jArr[i11] >>> (i12 << 3));
    }

    public void e0() {
        int i10 = this.f86545c + 1;
        this.f86544b += i10 >>> 3;
        this.f86545c = i10 & 7;
    }

    @Override
    public void f(int i10, byte[] bArr, int i11, int i12) {
        int i13 = this.f86545c;
        if (i13 != 0) {
            int i14 = this.f86544b + i10;
            long[] jArr = this.f86543a;
            jArr[i14] = jArr[i14] & (~((-1) << (i13 << 3)));
            int i15 = 0;
            while (i13 < 8 && i15 < i12) {
                long[] jArr2 = this.f86543a;
                jArr2[i14] = jArr2[i14] | ((bArr[i11] & 255) << (i13 << 3));
                i11++;
                i15++;
                i13++;
            }
            i10++;
            i12 -= 8 - this.f86545c;
        }
        super.f(i10, bArr, i11, i12);
    }

    public void f0(int i10) {
        int i11 = this.f86545c + i10;
        this.f86544b += i11 >>> 3;
        this.f86545c = i11 & 7;
    }

    public void g0(int i10, long j10) {
        int i11 = i10 + this.f86545c + (this.f86544b << 3);
        int i12 = i11 >>> 3;
        long[] jArr = this.f86543a;
        int i13 = (i11 & 7) << 3;
        jArr[i12] = (((j10 & 255) << i13) | (~(255 << i13))) & jArr[i12];
    }

    @Override
    public long h() {
        int i10 = this.f86545c;
        if (i10 == 0) {
            return this.f86543a[this.f86544b];
        }
        long[] jArr = this.f86543a;
        int i11 = this.f86544b;
        return (jArr[i11 + 1] << ((8 - i10) << 3)) | (jArr[i11] >>> (i10 << 3));
    }

    public void h0(int i10, long j10, long j11) {
        int i11 = i10 + this.f86545c + (this.f86544b << 3);
        int i12 = i11 >>> 3;
        long[] jArr = this.f86543a;
        int i13 = (i11 & 7) << 3;
        long j12 = (((j10 & 255) << i13) | (~(255 << i13))) & jArr[i12];
        jArr[i12] = j12;
        jArr[i12] = j12 ^ ((j11 & 255) << i13);
    }

    @Override
    public long i(int i10) {
        int i11 = this.f86545c;
        if (i11 == 0) {
            return this.f86543a[this.f86544b + i10];
        }
        long[] jArr = this.f86543a;
        int i12 = this.f86544b;
        return (jArr[(i12 + i10) + 1] << ((8 - i11) << 3)) | (jArr[i12 + i10] >>> (i11 << 3));
    }

    public void i0(int i10) {
        long[] jArr = this.f86543a;
        int i11 = this.f86544b;
        long j10 = i10 & 255;
        int i12 = this.f86545c;
        jArr[i11] = (j10 << (i12 << 3)) | (jArr[i11] & ((-1) >>> ((8 - i12) << 3)));
    }

    public void j0(int i10) {
        this.f86545c = i10 & 7;
        this.f86544b = i10 >>> 3;
    }

    public void k0(int i10) {
        long[] jArr = this.f86543a;
        int i11 = this.f86544b;
        jArr[i11] = jArr[i11] ^ ((i10 & 255) << (this.f86545c << 3));
    }

    public int l0(byte[] bArr, int i10, int i11) {
        int i12 = 0;
        while (i12 < i11) {
            int i13 = i10 + 1;
            long[] jArr = this.f86543a;
            int i14 = this.f86544b;
            long j10 = jArr[i14];
            int i15 = this.f86545c + 1;
            this.f86545c = i15;
            bArr[i10] = (byte) (j10 >>> (r3 << 3));
            if (i15 == 8) {
                this.f86545c = 0;
                this.f86544b = i14 + 1;
            }
            i12++;
            i10 = i13;
        }
        return i10;
    }

    @Override
    public void o() {
        this.f86544b = 0;
        this.f86545c = 0;
    }

    @Override
    public void u(int i10, long j10) {
        int i11 = this.f86545c;
        if (i11 == 0) {
            super.J(i10, j10);
            return;
        }
        int i12 = i11 << 3;
        int i13 = (8 - i11) << 3;
        long[] jArr = this.f86543a;
        int i14 = this.f86544b;
        jArr[i14 + i10] = (j10 << i12) | (jArr[i14 + i10] & ((-1) >>> i13));
        jArr[i14 + i10 + 1] = (((-1) << i12) & jArr[i14 + i10 + 1]) | (j10 >>> i13);
    }

    @Override
    public void x(int i10, long j10) {
        int i11 = this.f86545c;
        if (i11 == 0) {
            super.x(i10, j10);
            return;
        }
        int i12 = i11 << 3;
        int i13 = (8 - i11) << 3;
        long[] jArr = this.f86543a;
        int i14 = this.f86544b;
        int i15 = i14 + i10;
        jArr[i15] = jArr[i15] & ((j10 << i12) | ((-1) >>> i13));
        int i16 = i14 + i10 + 1;
        jArr[i16] = (((-1) << i12) | (j10 >>> i13)) & jArr[i16];
    }

    public m(l lVar) {
        super(lVar);
        this.f86545c = 0;
    }

    public m(m mVar) {
        super(mVar);
        this.f86545c = mVar.f86545c;
    }

    public m(byte[] bArr) {
        super((bArr.length >> 3) + ((bArr.length & 7) != 0 ? 1 : 0));
        int i10 = 0;
        for (int i11 = 0; i10 < bArr.length && i11 < this.f86543a.length; i11++) {
            int i12 = 0;
            while (i12 < 8 && i10 < bArr.length) {
                long[] jArr = this.f86543a;
                jArr[i11] = jArr[i11] | ((bArr[i10] & 255) << (i12 << 3));
                i12++;
                i10++;
            }
        }
        this.f86545c = 0;
    }
}
