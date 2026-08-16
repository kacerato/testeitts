package B2;

import java.io.Serializable;
import java.nio.ByteBuffer;
import javax.annotation.CheckForNull;

@k
@I2.j
public final class H extends AbstractC2343c implements Serializable {

    public static final q f1368f = new H(2, 4, 506097522914230528L, 1084818905618843912L);

    public static final long f1369g = 0;

    public final int f1370b;

    public final int f1371c;

    public final long f1372d;

    public final long f1373e;

    public static final class a extends AbstractC2346f {

        public static final int f1374l = 8;

        public final int f1375d;

        public final int f1376e;

        public long f1377f;

        public long f1378g;

        public long f1379h;

        public long f1380i;

        public long f1381j;

        public long f1382k;

        public a(int i10, int i11, long j10, long j11) {
            super(8);
            this.f1381j = 0L;
            this.f1382k = 0L;
            this.f1375d = i10;
            this.f1376e = i11;
            this.f1377f = 8317987319222330741L ^ j10;
            this.f1378g = 7237128888997146477L ^ j11;
            this.f1379h = 7816392313619706465L ^ j10;
            this.f1380i = 8387220255154660723L ^ j11;
        }

        @Override
        public p j() {
            long j10 = this.f1382k ^ (this.f1381j << 56);
            this.f1382k = j10;
            p(j10);
            this.f1379h ^= 255;
            q(this.f1376e);
            return p.j(((this.f1377f ^ this.f1378g) ^ this.f1379h) ^ this.f1380i);
        }

        @Override
        public void m(ByteBuffer byteBuffer) {
            this.f1381j += 8;
            p(byteBuffer.getLong());
        }

        @Override
        public void n(ByteBuffer byteBuffer) {
            this.f1381j += byteBuffer.remaining();
            int i10 = 0;
            while (byteBuffer.hasRemaining()) {
                this.f1382k ^= (byteBuffer.get() & 255) << i10;
                i10 += 8;
            }
        }

        public final void p(long j10) {
            this.f1380i ^= j10;
            q(this.f1375d);
            this.f1377f = j10 ^ this.f1377f;
        }

        public final void q(int i10) {
            for (int i11 = 0; i11 < i10; i11++) {
                long j10 = this.f1377f;
                long j11 = this.f1378g;
                this.f1377f = j10 + j11;
                this.f1379h += this.f1380i;
                this.f1378g = Long.rotateLeft(j11, 13);
                long rotateLeft = Long.rotateLeft(this.f1380i, 16);
                long j12 = this.f1378g;
                long j13 = this.f1377f;
                this.f1378g = j12 ^ j13;
                this.f1380i = rotateLeft ^ this.f1379h;
                long rotateLeft2 = Long.rotateLeft(j13, 32);
                long j14 = this.f1379h;
                long j15 = this.f1378g;
                this.f1379h = j14 + j15;
                this.f1377f = rotateLeft2 + this.f1380i;
                this.f1378g = Long.rotateLeft(j15, 17);
                long rotateLeft3 = Long.rotateLeft(this.f1380i, 21);
                long j16 = this.f1378g;
                long j17 = this.f1379h;
                this.f1378g = j16 ^ j17;
                this.f1380i = rotateLeft3 ^ this.f1377f;
                this.f1379h = Long.rotateLeft(j17, 32);
            }
        }
    }

    public H(int i10, int i11, long j10, long j11) {
        w2.H.k(i10 > 0, "The number of SipRound iterations (c=%s) during Compression must be positive.", i10);
        w2.H.k(i11 > 0, "The number of SipRound iterations (d=%s) during Finalization must be positive.", i11);
        this.f1370b = i10;
        this.f1371c = i11;
        this.f1372d = j10;
        this.f1373e = j11;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof H)) {
            return false;
        }
        H h10 = (H) obj;
        return this.f1370b == h10.f1370b && this.f1371c == h10.f1371c && this.f1372d == h10.f1372d && this.f1373e == h10.f1373e;
    }

    @Override
    public int h() {
        return 64;
    }

    public int hashCode() {
        return (int) ((((H.class.hashCode() ^ this.f1370b) ^ this.f1371c) ^ this.f1372d) ^ this.f1373e);
    }

    @Override
    public r i() {
        return new a(this.f1370b, this.f1371c, this.f1372d, this.f1373e);
    }

    public String toString() {
        int i10 = this.f1370b;
        int i11 = this.f1371c;
        long j10 = this.f1372d;
        long j11 = this.f1373e;
        StringBuilder sb2 = new StringBuilder(81);
        sb2.append("Hashing.sipHash");
        sb2.append(i10);
        sb2.append(i11);
        sb2.append("(");
        sb2.append(j10);
        sb2.append(", ");
        sb2.append(j11);
        sb2.append(")");
        return sb2.toString();
    }
}
