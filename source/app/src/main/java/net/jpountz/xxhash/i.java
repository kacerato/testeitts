package net.jpountz.xxhash;

import net.jpountz.xxhash.g;

public final class i extends b {

    public static class a implements g.b {

        public static final g.b f98138a = new a();

        @Override
        public g a(long j10) {
            return new i(j10);
        }
    }

    public i(long j10) {
        super(j10);
    }

    @Override
    public long d() {
        long j10;
        int i10;
        if (this.f98126h >= 32) {
            long j11 = this.f98122d;
            long j12 = this.f98123e;
            long j13 = this.f98124f;
            j10 = ((((((Long.rotateLeft(j13 * (-4417276706812531889L), 31) * (-7046029288634856825L)) ^ (((((((((Long.rotateLeft(j11, 1) + Long.rotateLeft(j12, 7)) + Long.rotateLeft(j13, 12)) + Long.rotateLeft(r4, 18)) ^ (Long.rotateLeft(j11 * (-4417276706812531889L), 31) * (-7046029288634856825L))) * (-7046029288634856825L)) - 8796714831421723037L) ^ (Long.rotateLeft(j12 * (-4417276706812531889L), 31) * (-7046029288634856825L))) * (-7046029288634856825L)) - 8796714831421723037L)) * (-7046029288634856825L)) - 8796714831421723037L) ^ (Long.rotateLeft(this.f98125g * (-4417276706812531889L), 31) * (-7046029288634856825L))) * (-7046029288634856825L)) - 8796714831421723037L;
        } else {
            j10 = this.f98134b + 2870177450012600261L;
        }
        long j14 = j10 + this.f98126h;
        int i11 = 0;
        while (true) {
            i10 = this.f98121c;
            if (i11 > i10 - 8) {
                break;
            }
            j14 = (Long.rotateLeft(j14 ^ (Long.rotateLeft(net.jpountz.util.c.j(this.f98127i, i11) * (-4417276706812531889L), 31) * (-7046029288634856825L)), 27) * (-7046029288634856825L)) - 8796714831421723037L;
            i11 += 8;
        }
        if (i11 <= i10 - 4) {
            j14 = (Long.rotateLeft(j14 ^ ((net.jpountz.util.c.i(this.f98127i, i11) & 4294967295L) * (-7046029288634856825L)), 23) * (-4417276706812531889L)) + 1609587929392839161L;
            i11 += 4;
        }
        while (i11 < this.f98121c) {
            j14 = Long.rotateLeft(j14 ^ ((this.f98127i[i11] & 255) * 2870177450012600261L), 11) * (-7046029288634856825L);
            i11++;
        }
        long j15 = (j14 ^ (j14 >>> 33)) * (-4417276706812531889L);
        long j16 = (j15 ^ (j15 >>> 29)) * 1609587929392839161L;
        return j16 ^ (j16 >>> 32);
    }

    @Override
    public void f(byte[] bArr, int i10, int i11) {
        int i12 = i10;
        net.jpountz.util.c.c(bArr, i10, i11);
        this.f98126h += i11;
        int i13 = this.f98121c;
        if (i13 + i11 < 32) {
            System.arraycopy(bArr, i12, this.f98127i, i13, i11);
            this.f98121c += i11;
            return;
        }
        int i14 = i11 + i12;
        int i15 = 31;
        if (i13 > 0) {
            System.arraycopy(bArr, i12, this.f98127i, i13, 32 - i13);
            long j10 = this.f98122d + (net.jpountz.util.c.j(this.f98127i, 0) * (-4417276706812531889L));
            this.f98122d = j10;
            this.f98122d = Long.rotateLeft(j10, 31) * (-7046029288634856825L);
            long j11 = this.f98123e + (net.jpountz.util.c.j(this.f98127i, 8) * (-4417276706812531889L));
            this.f98123e = j11;
            this.f98123e = Long.rotateLeft(j11, 31) * (-7046029288634856825L);
            long j12 = this.f98124f + (net.jpountz.util.c.j(this.f98127i, 16) * (-4417276706812531889L));
            this.f98124f = j12;
            this.f98124f = Long.rotateLeft(j12, 31) * (-7046029288634856825L);
            long j13 = this.f98125g + (net.jpountz.util.c.j(this.f98127i, 24) * (-4417276706812531889L));
            this.f98125g = j13;
            this.f98125g = Long.rotateLeft(j13, 31) * (-7046029288634856825L);
            i12 += 32 - this.f98121c;
            this.f98121c = 0;
        }
        int i16 = i14 - 32;
        long j14 = this.f98122d;
        long j15 = this.f98123e;
        long j16 = this.f98124f;
        long j17 = this.f98125g;
        while (i12 <= i16) {
            j14 = Long.rotateLeft(j14 + (net.jpountz.util.c.j(bArr, i12) * (-4417276706812531889L)), i15) * (-7046029288634856825L);
            j15 = Long.rotateLeft(j15 + (net.jpountz.util.c.j(bArr, i12 + 8) * (-4417276706812531889L)), 31) * (-7046029288634856825L);
            j16 = Long.rotateLeft(j16 + (net.jpountz.util.c.j(bArr, i12 + 16) * (-4417276706812531889L)), 31) * (-7046029288634856825L);
            i15 = 31;
            j17 = Long.rotateLeft(j17 + (net.jpountz.util.c.j(bArr, i12 + 24) * (-4417276706812531889L)), 31) * (-7046029288634856825L);
            i12 += 32;
        }
        this.f98122d = j14;
        this.f98123e = j15;
        this.f98124f = j16;
        this.f98125g = j17;
        if (i12 < i14) {
            int i17 = i14 - i12;
            System.arraycopy(bArr, i12, this.f98127i, 0, i17);
            this.f98121c = i17;
        }
    }
}
