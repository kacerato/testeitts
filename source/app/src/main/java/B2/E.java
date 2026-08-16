package B2;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import javax.annotation.CheckForNull;
import w2.C15889f;

@k
@I2.j
public final class E extends AbstractC2343c implements Serializable {

    public static final q f1354d = new E(0, false);

    public static final q f1355e = new E(0, true);

    public static final q f1356f = new E(s.f1468a, true);

    public static final int f1357g = 4;

    public static final int f1358h = -862048943;

    public static final int f1359i = 461845907;

    public static final long f1360j = 0;

    public final int f1361b;

    public final boolean f1362c;

    @I2.a
    public static final class a extends AbstractC2344d {

        public int f1363a;

        public long f1364b;

        public int f1365c;

        public int f1366d = 0;

        public boolean f1367e = false;

        public a(int i10) {
            this.f1363a = i10;
        }

        @Override
        public p h() {
            w2.H.g0(!this.f1367e);
            this.f1367e = true;
            int z10 = this.f1363a ^ E.z((int) this.f1364b);
            this.f1363a = z10;
            return E.w(z10, this.f1366d);
        }

        public final void j(int i10, long j10) {
            long j11 = this.f1364b;
            int i11 = this.f1365c;
            long j12 = ((j10 & 4294967295L) << i11) | j11;
            this.f1364b = j12;
            int i12 = i11 + (i10 * 8);
            this.f1365c = i12;
            this.f1366d += i10;
            if (i12 >= 32) {
                this.f1363a = E.y(this.f1363a, E.z((int) j12));
                this.f1364b >>>= 32;
                this.f1365c -= 32;
            }
        }

        @Override
        public r a(byte b10) {
            j(1, b10 & 255);
            return this;
        }

        @Override
        public r c(char c10) {
            j(2, c10);
            return this;
        }

        @Override
        public r e(byte[] bArr, int i10, int i11) {
            w2.H.f0(i10, i10 + i11, bArr.length);
            int i12 = 0;
            while (true) {
                int i13 = i12 + 4;
                if (i13 > i11) {
                    break;
                }
                j(4, E.x(bArr, i12 + i10));
                i12 = i13;
            }
            while (i12 < i11) {
                a(bArr[i10 + i12]);
                i12++;
            }
            return this;
        }

        @Override
        public r f(ByteBuffer byteBuffer) {
            ByteOrder order = byteBuffer.order();
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            while (byteBuffer.remaining() >= 4) {
                putInt(byteBuffer.getInt());
            }
            while (byteBuffer.hasRemaining()) {
                a(byteBuffer.get());
            }
            byteBuffer.order(order);
            return this;
        }

        @Override
        public r g(CharSequence charSequence, Charset charset) {
            if (C15889f.f126321c.equals(charset)) {
                int length = charSequence.length();
                int i10 = 0;
                while (true) {
                    int i11 = i10 + 4;
                    if (i11 > length) {
                        break;
                    }
                    char charAt = charSequence.charAt(i10);
                    char charAt2 = charSequence.charAt(i10 + 1);
                    char charAt3 = charSequence.charAt(i10 + 2);
                    char charAt4 = charSequence.charAt(i10 + 3);
                    if (charAt >= '\u0080' || charAt2 >= '\u0080' || charAt3 >= '\u0080' || charAt4 >= '\u0080') {
                        break;
                    }
                    j(4, (charAt2 << '\b') | charAt | (charAt3 << 16) | (charAt4 << 24));
                    i10 = i11;
                }
                while (i10 < length) {
                    char charAt5 = charSequence.charAt(i10);
                    if (charAt5 < '\u0080') {
                        j(1, charAt5);
                    } else if (charAt5 < '\u0800') {
                        j(2, E.u(charAt5));
                    } else if (charAt5 >= '\ud800' && charAt5 <= '\udfff') {
                        int codePointAt = Character.codePointAt(charSequence, i10);
                        if (codePointAt == charAt5) {
                            b(charSequence.subSequence(i10, length).toString().getBytes(charset));
                            return this;
                        }
                        i10++;
                        j(4, E.v(codePointAt));
                    } else {
                        j(3, E.s(charAt5));
                    }
                    i10++;
                }
                return this;
            }
            return super.g(charSequence, charset);
        }

        @Override
        public r putInt(int i10) {
            j(4, i10);
            return this;
        }

        @Override
        public r putLong(long j10) {
            j(4, (int) j10);
            j(4, j10 >>> 32);
            return this;
        }
    }

    public E(int i10, boolean z10) {
        this.f1361b = i10;
        this.f1362c = z10;
    }

    public static long s(char c10) {
        return (c10 >>> '\f') | 224 | ((((c10 >>> 6) & 63) | 128) << 8) | (((c10 & '?') | 128) << 16);
    }

    public static long u(char c10) {
        return (c10 >>> 6) | 192 | (((c10 & '?') | 128) << 8);
    }

    public static long v(int i10) {
        return (i10 >>> 18) | 240 | ((((i10 >>> 12) & 63) | 128) << 8) | ((((i10 >>> 6) & 63) | 128) << 16) | (((i10 & 63) | 128) << 24);
    }

    public static p w(int i10, int i11) {
        int i12 = i10 ^ i11;
        int i13 = (i12 ^ (i12 >>> 16)) * (-2048144789);
        int i14 = (i13 ^ (i13 >>> 13)) * (-1028477387);
        return p.i(i14 ^ (i14 >>> 16));
    }

    public static int x(byte[] bArr, int i10) {
        return com.google.common.primitives.l.k(bArr[i10 + 3], bArr[i10 + 2], bArr[i10 + 1], bArr[i10]);
    }

    public static int y(int i10, int i11) {
        return (Integer.rotateLeft(i10 ^ i11, 13) * 5) - 430675100;
    }

    public static int z(int i10) {
        return Integer.rotateLeft(i10 * (-862048943), 15) * 461845907;
    }

    @Override
    public p c(int i10) {
        return w(y(this.f1361b, z(i10)), 4);
    }

    @Override
    public p d(long j10) {
        return w(y(y(this.f1361b, z((int) j10)), z((int) (j10 >>> 32))), 8);
    }

    public boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof E)) {
            return false;
        }
        E e10 = (E) obj;
        return this.f1361b == e10.f1361b && this.f1362c == e10.f1362c;
    }

    @Override
    public p f(CharSequence charSequence, Charset charset) {
        if (!C15889f.f126321c.equals(charset)) {
            return b(charSequence.toString().getBytes(charset));
        }
        int length = charSequence.length();
        int i10 = this.f1361b;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = i12 + 4;
            if (i14 > length) {
                break;
            }
            char charAt = charSequence.charAt(i12);
            char charAt2 = charSequence.charAt(i12 + 1);
            char charAt3 = charSequence.charAt(i12 + 2);
            char charAt4 = charSequence.charAt(i12 + 3);
            if (charAt >= '\u0080' || charAt2 >= '\u0080' || charAt3 >= '\u0080' || charAt4 >= '\u0080') {
                break;
            }
            i10 = y(i10, z((charAt2 << '\b') | charAt | (charAt3 << 16) | (charAt4 << 24)));
            i13 += 4;
            i12 = i14;
        }
        long j10 = 0;
        while (i12 < length) {
            char charAt5 = charSequence.charAt(i12);
            if (charAt5 < '\u0080') {
                j10 |= charAt5 << i11;
                i11 += 8;
                i13++;
            } else if (charAt5 < '\u0800') {
                j10 |= u(charAt5) << i11;
                i11 += 16;
                i13 += 2;
            } else if (charAt5 < '\ud800' || charAt5 > '\udfff') {
                j10 |= s(charAt5) << i11;
                i11 += 24;
                i13 += 3;
            } else {
                int codePointAt = Character.codePointAt(charSequence, i12);
                if (codePointAt == charAt5) {
                    return b(charSequence.toString().getBytes(charset));
                }
                i12++;
                j10 |= v(codePointAt) << i11;
                if (this.f1362c) {
                    i11 += 32;
                }
                i13 += 4;
            }
            if (i11 >= 32) {
                i10 = y(i10, z((int) j10));
                j10 >>>= 32;
                i11 -= 32;
            }
            i12++;
        }
        return w(z((int) j10) ^ i10, i13);
    }

    @Override
    public p g(CharSequence charSequence) {
        int i10 = this.f1361b;
        for (int i11 = 1; i11 < charSequence.length(); i11 += 2) {
            i10 = y(i10, z(charSequence.charAt(i11 - 1) | (charSequence.charAt(i11) << 16)));
        }
        if ((charSequence.length() & 1) == 1) {
            i10 ^= z(charSequence.charAt(charSequence.length() - 1));
        }
        return w(i10, charSequence.length() * 2);
    }

    @Override
    public int h() {
        return 32;
    }

    public int hashCode() {
        return E.class.hashCode() ^ this.f1361b;
    }

    @Override
    public r i() {
        return new a(this.f1361b);
    }

    @Override
    public p k(byte[] bArr, int i10, int i11) {
        w2.H.f0(i10, i10 + i11, bArr.length);
        int i12 = this.f1361b;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            int i15 = i14 + 4;
            if (i15 > i11) {
                break;
            }
            i12 = y(i12, z(x(bArr, i14 + i10)));
            i14 = i15;
        }
        int i16 = i14;
        int i17 = 0;
        while (i16 < i11) {
            i13 ^= com.google.common.primitives.v.p(bArr[i10 + i16]) << i17;
            i16++;
            i17 += 8;
        }
        return w(z(i13) ^ i12, i11);
    }

    public String toString() {
        int i10 = this.f1361b;
        StringBuilder sb2 = new StringBuilder(31);
        sb2.append("Hashing.murmur3_32(");
        sb2.append(i10);
        sb2.append(")");
        return sb2.toString();
    }
}
