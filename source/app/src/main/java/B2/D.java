package B2;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import javax.annotation.CheckForNull;

@k
@I2.j
public final class D extends AbstractC2343c implements Serializable {

    public static final q f1344c = new D(0);

    public static final q f1345d = new D(s.f1468a);

    public static final long f1346e = 0;

    public final int f1347b;

    public static final class a extends AbstractC2346f {

        public static final int f1348g = 16;

        public static final long f1349h = -8663945395140668459L;

        public static final long f1350i = 5545529020109919103L;

        public long f1351d;

        public long f1352e;

        public int f1353f;

        public a(int i10) {
            super(16);
            long j10 = i10;
            this.f1351d = j10;
            this.f1352e = j10;
            this.f1353f = 0;
        }

        public static long q(long j10) {
            long j11 = (j10 ^ (j10 >>> 33)) * (-49064778989728563L);
            long j12 = (j11 ^ (j11 >>> 33)) * (-4265267296055464877L);
            return j12 ^ (j12 >>> 33);
        }

        public static long r(long j10) {
            return Long.rotateLeft(j10 * f1349h, 31) * f1350i;
        }

        public static long s(long j10) {
            return Long.rotateLeft(j10 * f1350i, 33) * f1349h;
        }

        @Override
        public p j() {
            long j10 = this.f1351d;
            int i10 = this.f1353f;
            long j11 = j10 ^ i10;
            long j12 = this.f1352e ^ i10;
            long j13 = j11 + j12;
            this.f1351d = j13;
            this.f1352e = j12 + j13;
            this.f1351d = q(j13);
            long q10 = q(this.f1352e);
            long j14 = this.f1351d + q10;
            this.f1351d = j14;
            this.f1352e = q10 + j14;
            return p.h(ByteBuffer.wrap(new byte[16]).order(ByteOrder.LITTLE_ENDIAN).putLong(this.f1351d).putLong(this.f1352e).array());
        }

        @Override
        public void m(ByteBuffer byteBuffer) {
            p(byteBuffer.getLong(), byteBuffer.getLong());
            this.f1353f += 16;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x001b. Please report as an issue. */
        @Override
        public void n(ByteBuffer byteBuffer) {
            long j10;
            long j11;
            long j12;
            long j13;
            long j14;
            long j15;
            long p10;
            this.f1353f += byteBuffer.remaining();
            long j16 = 0;
            switch (byteBuffer.remaining()) {
                case 1:
                    j10 = 0;
                    p10 = j10 ^ com.google.common.primitives.v.p(byteBuffer.get(0));
                    this.f1351d = r(p10) ^ this.f1351d;
                    this.f1352e ^= s(j16);
                    return;
                case 2:
                    j11 = 0;
                    j10 = j11 ^ (com.google.common.primitives.v.p(byteBuffer.get(1)) << 8);
                    p10 = j10 ^ com.google.common.primitives.v.p(byteBuffer.get(0));
                    this.f1351d = r(p10) ^ this.f1351d;
                    this.f1352e ^= s(j16);
                    return;
                case 3:
                    j12 = 0;
                    j11 = (com.google.common.primitives.v.p(byteBuffer.get(2)) << 16) ^ j12;
                    j10 = j11 ^ (com.google.common.primitives.v.p(byteBuffer.get(1)) << 8);
                    p10 = j10 ^ com.google.common.primitives.v.p(byteBuffer.get(0));
                    this.f1351d = r(p10) ^ this.f1351d;
                    this.f1352e ^= s(j16);
                    return;
                case 4:
                    j13 = 0;
                    j12 = j13 ^ (com.google.common.primitives.v.p(byteBuffer.get(3)) << 24);
                    j11 = (com.google.common.primitives.v.p(byteBuffer.get(2)) << 16) ^ j12;
                    j10 = j11 ^ (com.google.common.primitives.v.p(byteBuffer.get(1)) << 8);
                    p10 = j10 ^ com.google.common.primitives.v.p(byteBuffer.get(0));
                    this.f1351d = r(p10) ^ this.f1351d;
                    this.f1352e ^= s(j16);
                    return;
                case 5:
                    j14 = 0;
                    j13 = j14 ^ (com.google.common.primitives.v.p(byteBuffer.get(4)) << 32);
                    j12 = j13 ^ (com.google.common.primitives.v.p(byteBuffer.get(3)) << 24);
                    j11 = (com.google.common.primitives.v.p(byteBuffer.get(2)) << 16) ^ j12;
                    j10 = j11 ^ (com.google.common.primitives.v.p(byteBuffer.get(1)) << 8);
                    p10 = j10 ^ com.google.common.primitives.v.p(byteBuffer.get(0));
                    this.f1351d = r(p10) ^ this.f1351d;
                    this.f1352e ^= s(j16);
                    return;
                case 6:
                    j15 = 0;
                    j14 = (com.google.common.primitives.v.p(byteBuffer.get(5)) << 40) ^ j15;
                    j13 = j14 ^ (com.google.common.primitives.v.p(byteBuffer.get(4)) << 32);
                    j12 = j13 ^ (com.google.common.primitives.v.p(byteBuffer.get(3)) << 24);
                    j11 = (com.google.common.primitives.v.p(byteBuffer.get(2)) << 16) ^ j12;
                    j10 = j11 ^ (com.google.common.primitives.v.p(byteBuffer.get(1)) << 8);
                    p10 = j10 ^ com.google.common.primitives.v.p(byteBuffer.get(0));
                    this.f1351d = r(p10) ^ this.f1351d;
                    this.f1352e ^= s(j16);
                    return;
                case 7:
                    j15 = com.google.common.primitives.v.p(byteBuffer.get(6)) << 48;
                    j14 = (com.google.common.primitives.v.p(byteBuffer.get(5)) << 40) ^ j15;
                    j13 = j14 ^ (com.google.common.primitives.v.p(byteBuffer.get(4)) << 32);
                    j12 = j13 ^ (com.google.common.primitives.v.p(byteBuffer.get(3)) << 24);
                    j11 = (com.google.common.primitives.v.p(byteBuffer.get(2)) << 16) ^ j12;
                    j10 = j11 ^ (com.google.common.primitives.v.p(byteBuffer.get(1)) << 8);
                    p10 = j10 ^ com.google.common.primitives.v.p(byteBuffer.get(0));
                    this.f1351d = r(p10) ^ this.f1351d;
                    this.f1352e ^= s(j16);
                    return;
                case 8:
                    p10 = byteBuffer.getLong();
                    this.f1351d = r(p10) ^ this.f1351d;
                    this.f1352e ^= s(j16);
                    return;
                case 9:
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(8));
                    p10 = byteBuffer.getLong();
                    this.f1351d = r(p10) ^ this.f1351d;
                    this.f1352e ^= s(j16);
                    return;
                case 10:
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(9)) << 8;
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(8));
                    p10 = byteBuffer.getLong();
                    this.f1351d = r(p10) ^ this.f1351d;
                    this.f1352e ^= s(j16);
                    return;
                case 11:
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(10)) << 16;
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(9)) << 8;
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(8));
                    p10 = byteBuffer.getLong();
                    this.f1351d = r(p10) ^ this.f1351d;
                    this.f1352e ^= s(j16);
                    return;
                case 12:
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(11)) << 24;
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(10)) << 16;
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(9)) << 8;
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(8));
                    p10 = byteBuffer.getLong();
                    this.f1351d = r(p10) ^ this.f1351d;
                    this.f1352e ^= s(j16);
                    return;
                case 13:
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(12)) << 32;
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(11)) << 24;
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(10)) << 16;
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(9)) << 8;
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(8));
                    p10 = byteBuffer.getLong();
                    this.f1351d = r(p10) ^ this.f1351d;
                    this.f1352e ^= s(j16);
                    return;
                case 14:
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(13)) << 40;
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(12)) << 32;
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(11)) << 24;
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(10)) << 16;
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(9)) << 8;
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(8));
                    p10 = byteBuffer.getLong();
                    this.f1351d = r(p10) ^ this.f1351d;
                    this.f1352e ^= s(j16);
                    return;
                case 15:
                    j16 = com.google.common.primitives.v.p(byteBuffer.get(14)) << 48;
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(13)) << 40;
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(12)) << 32;
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(11)) << 24;
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(10)) << 16;
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(9)) << 8;
                    j16 ^= com.google.common.primitives.v.p(byteBuffer.get(8));
                    p10 = byteBuffer.getLong();
                    this.f1351d = r(p10) ^ this.f1351d;
                    this.f1352e ^= s(j16);
                    return;
                default:
                    throw new AssertionError((Object) "Should never get here.");
            }
        }

        public final void p(long j10, long j11) {
            long r10 = r(j10) ^ this.f1351d;
            this.f1351d = r10;
            long rotateLeft = Long.rotateLeft(r10, 27);
            long j12 = this.f1352e;
            this.f1351d = ((rotateLeft + j12) * 5) + 1390208809;
            long s10 = s(j11) ^ j12;
            this.f1352e = s10;
            this.f1352e = ((Long.rotateLeft(s10, 31) + this.f1351d) * 5) + 944331445;
        }
    }

    public D(int i10) {
        this.f1347b = i10;
    }

    public boolean equals(@CheckForNull Object obj) {
        return (obj instanceof D) && this.f1347b == ((D) obj).f1347b;
    }

    @Override
    public int h() {
        return 128;
    }

    public int hashCode() {
        return D.class.hashCode() ^ this.f1347b;
    }

    @Override
    public r i() {
        return new a(this.f1347b);
    }

    public String toString() {
        int i10 = this.f1347b;
        StringBuilder sb2 = new StringBuilder(32);
        sb2.append("Hashing.murmur3_128(");
        sb2.append(i10);
        sb2.append(")");
        return sb2.toString();
    }
}
