package B2;

import ag.C3629k;
import java.io.Serializable;
import javax.annotation.CheckForNull;

@k
public abstract class p {

    public static final char[] f1461b = C3629k.f32105a.toCharArray();

    public static final class a extends p implements Serializable {

        public static final long f1462d = 0;

        public final byte[] f1463c;

        public a(byte[] bArr) {
            this.f1463c = (byte[]) w2.H.E(bArr);
        }

        @Override
        public byte[] a() {
            return (byte[]) this.f1463c.clone();
        }

        @Override
        public int b() {
            byte[] bArr = this.f1463c;
            w2.H.n0(bArr.length >= 4, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes).", bArr.length);
            byte[] bArr2 = this.f1463c;
            return ((bArr2[3] & 255) << 24) | (bArr2[0] & 255) | ((bArr2[1] & 255) << 8) | ((bArr2[2] & 255) << 16);
        }

        @Override
        public long c() {
            byte[] bArr = this.f1463c;
            w2.H.n0(bArr.length >= 8, "HashCode#asLong() requires >= 8 bytes (it only has %s bytes).", bArr.length);
            return m();
        }

        @Override
        public int d() {
            return this.f1463c.length * 8;
        }

        @Override
        public boolean f(p pVar) {
            if (this.f1463c.length != pVar.l().length) {
                return false;
            }
            boolean z10 = true;
            int i10 = 0;
            while (true) {
                byte[] bArr = this.f1463c;
                if (i10 >= bArr.length) {
                    return z10;
                }
                z10 &= bArr[i10] == pVar.l()[i10];
                i10++;
            }
        }

        @Override
        public byte[] l() {
            return this.f1463c;
        }

        @Override
        public long m() {
            long j10 = this.f1463c[0] & 255;
            for (int i10 = 1; i10 < Math.min(this.f1463c.length, 8); i10++) {
                j10 |= (this.f1463c[i10] & 255) << (i10 * 8);
            }
            return j10;
        }

        @Override
        public void o(byte[] bArr, int i10, int i11) {
            System.arraycopy(this.f1463c, 0, bArr, i10, i11);
        }
    }

    public static final class b extends p implements Serializable {

        public static final long f1464d = 0;

        public final int f1465c;

        public b(int i10) {
            this.f1465c = i10;
        }

        @Override
        public byte[] a() {
            int i10 = this.f1465c;
            return new byte[]{(byte) i10, (byte) (i10 >> 8), (byte) (i10 >> 16), (byte) (i10 >> 24)};
        }

        @Override
        public int b() {
            return this.f1465c;
        }

        @Override
        public long c() {
            throw new IllegalStateException("this HashCode only has 32 bits; cannot create a long");
        }

        @Override
        public int d() {
            return 32;
        }

        @Override
        public boolean f(p pVar) {
            return this.f1465c == pVar.b();
        }

        @Override
        public long m() {
            return com.google.common.primitives.x.r(this.f1465c);
        }

        @Override
        public void o(byte[] bArr, int i10, int i11) {
            for (int i12 = 0; i12 < i11; i12++) {
                bArr[i10 + i12] = (byte) (this.f1465c >> (i12 * 8));
            }
        }
    }

    public static final class c extends p implements Serializable {

        public static final long f1466d = 0;

        public final long f1467c;

        public c(long j10) {
            this.f1467c = j10;
        }

        @Override
        public byte[] a() {
            return new byte[]{(byte) this.f1467c, (byte) (r0 >> 8), (byte) (r0 >> 16), (byte) (r0 >> 24), (byte) (r0 >> 32), (byte) (r0 >> 40), (byte) (r0 >> 48), (byte) (r0 >> 56)};
        }

        @Override
        public int b() {
            return (int) this.f1467c;
        }

        @Override
        public long c() {
            return this.f1467c;
        }

        @Override
        public int d() {
            return 64;
        }

        @Override
        public boolean f(p pVar) {
            return this.f1467c == pVar.c();
        }

        @Override
        public long m() {
            return this.f1467c;
        }

        @Override
        public void o(byte[] bArr, int i10, int i11) {
            for (int i12 = 0; i12 < i11; i12++) {
                bArr[i10 + i12] = (byte) (this.f1467c >> (i12 * 8));
            }
        }
    }

    public static int e(char c10) {
        if (c10 >= '0' && c10 <= '9') {
            return c10 - '0';
        }
        if (c10 >= 'a' && c10 <= 'f') {
            return c10 - 'W';
        }
        StringBuilder sb2 = new StringBuilder(32);
        sb2.append("Illegal hexadecimal character: ");
        sb2.append(c10);
        throw new IllegalArgumentException(sb2.toString());
    }

    public static p g(byte[] bArr) {
        w2.H.e(bArr.length >= 1, "A HashCode must contain at least 1 byte.");
        return h((byte[]) bArr.clone());
    }

    public static p h(byte[] bArr) {
        return new a(bArr);
    }

    public static p i(int i10) {
        return new b(i10);
    }

    public static p j(long j10) {
        return new c(j10);
    }

    public static p k(String str) {
        w2.H.u(str.length() >= 2, "input string (%s) must have at least 2 characters", str);
        w2.H.u(str.length() % 2 == 0, "input string (%s) must have an even number of characters", str);
        byte[] bArr = new byte[str.length() / 2];
        for (int i10 = 0; i10 < str.length(); i10 += 2) {
            bArr[i10 / 2] = (byte) ((e(str.charAt(i10)) << 4) + e(str.charAt(i10 + 1)));
        }
        return h(bArr);
    }

    public abstract byte[] a();

    public abstract int b();

    public abstract long c();

    public abstract int d();

    public final boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return d() == pVar.d() && f(pVar);
    }

    public abstract boolean f(p pVar);

    public final int hashCode() {
        if (d() >= 32) {
            return b();
        }
        byte[] l10 = l();
        int i10 = l10[0] & 255;
        for (int i11 = 1; i11 < l10.length; i11++) {
            i10 |= (l10[i11] & 255) << (i11 * 8);
        }
        return i10;
    }

    public byte[] l() {
        return a();
    }

    public abstract long m();

    @I2.a
    public int n(byte[] bArr, int i10, int i11) {
        int u10 = com.google.common.primitives.l.u(i11, d() / 8);
        w2.H.f0(i10, i10 + u10, bArr.length);
        o(bArr, i10, u10);
        return u10;
    }

    public abstract void o(byte[] bArr, int i10, int i11);

    public final String toString() {
        byte[] l10 = l();
        StringBuilder sb2 = new StringBuilder(l10.length * 2);
        for (byte b10 : l10) {
            char[] cArr = f1461b;
            sb2.append(cArr[(b10 >> 4) & 15]);
            sb2.append(cArr[b10 & 15]);
        }
        return sb2.toString();
    }
}
