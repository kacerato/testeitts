package Tg;

import ag.a0;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import javax.annotation.Nullable;

public final class t implements e {

    public final C3089c f25055b = new C3089c();

    public final y f25056c;

    public boolean f25057d;

    public t(y yVar) {
        if (yVar == null) {
            throw new NullPointerException("source == null");
        }
        this.f25056c = yVar;
    }

    @Override
    public String A1(Charset charset) throws IOException {
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        this.f25055b.H(this.f25056c);
        return this.f25055b.A1(charset);
    }

    @Override
    public int B1() throws IOException {
        X1(1L);
        byte l10 = this.f25055b.l(0L);
        if ((l10 & 224) == 192) {
            X1(2L);
        } else if ((l10 & 240) == 224) {
            X1(3L);
        } else if ((l10 & 248) == 240) {
            X1(4L);
        }
        return this.f25055b.B1();
    }

    @Override
    public C3089c C() {
        return this.f25055b;
    }

    @Override
    public f C1() throws IOException {
        this.f25055b.H(this.f25056c);
        return this.f25055b.C1();
    }

    @Override
    public String D1() throws IOException {
        this.f25055b.H(this.f25056c);
        return this.f25055b.D1();
    }

    @Override
    public String E1(long j10, Charset charset) throws IOException {
        X1(j10);
        if (charset != null) {
            return this.f25055b.E1(j10, charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override
    public int F1(q qVar) throws IOException {
        if (this.f25057d) {
            throw new IllegalStateException("closed");
        }
        do {
            int B10 = this.f25055b.B(qVar, true);
            if (B10 == -1) {
                return -1;
            }
            if (B10 != -2) {
                this.f25055b.skip(qVar.f25039b[B10].S());
                return B10;
            }
        } while (this.f25056c.K(this.f25055b, 8192L) != -1);
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0031, code lost:
    
        if (r0 == 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0047, code lost:
    
        throw new java.lang.NumberFormatException(java.lang.String.format("Expected leading [0-9a-fA-F] character but was %#x", java.lang.Byte.valueOf(r2)));
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long G1() throws IOException {
        X1(1L);
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            if (!i(i11)) {
                break;
            }
            byte l10 = this.f25055b.l(i10);
            if ((l10 < 48 || l10 > 57) && ((l10 < 97 || l10 > 102) && (l10 < 65 || l10 > 70))) {
                break;
            }
            i10 = i11;
        }
        return this.f25055b.G1();
    }

    @Override
    public long H1(f fVar) throws IOException {
        return s1(fVar, 0L);
    }

    @Override
    public long J1(byte b10, long j10, long j11) throws IOException {
        if (this.f25057d) {
            throw new IllegalStateException("closed");
        }
        if (j10 < 0 || j11 < j10) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j10), Long.valueOf(j11)));
        }
        while (j10 < j11) {
            long J12 = this.f25055b.J1(b10, j10, j11);
            if (J12 == -1) {
                C3089c c3089c = this.f25055b;
                long j12 = c3089c.f24985c;
                if (j12 >= j11 || this.f25056c.K(c3089c, 8192L) == -1) {
                    break;
                }
                j10 = Math.max(j10, j12);
            } else {
                return J12;
            }
        }
        return -1L;
    }

    @Override
    public long K(C3089c c3089c, long j10) throws IOException {
        if (c3089c == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        if (this.f25057d) {
            throw new IllegalStateException("closed");
        }
        C3089c c3089c2 = this.f25055b;
        if (c3089c2.f24985c == 0 && this.f25056c.K(c3089c2, 8192L) == -1) {
            return -1L;
        }
        return this.f25055b.K(c3089c, Math.min(j10, this.f25055b.f24985c));
    }

    @Override
    public String K1(long j10) throws IOException {
        if (j10 < 0) {
            throw new IllegalArgumentException("limit < 0: " + j10);
        }
        long j11 = j10 == Long.MAX_VALUE ? Long.MAX_VALUE : j10 + 1;
        long J12 = J1((byte) 10, 0L, j11);
        if (J12 != -1) {
            return this.f25055b.z(J12);
        }
        if (j11 < Long.MAX_VALUE && i(j11) && this.f25055b.l(j11 - 1) == 13 && i(1 + j11) && this.f25055b.l(j11) == 10) {
            return this.f25055b.z(j11);
        }
        C3089c c3089c = new C3089c();
        C3089c c3089c2 = this.f25055b;
        c3089c2.f(c3089c, 0L, Math.min(32L, c3089c2.Q()));
        throw new EOFException("\\n not found: limit=" + Math.min(this.f25055b.Q(), j10) + " content=" + c3089c.C1().s() + a0.f32048F);
    }

    @Override
    public String L1() throws IOException {
        return K1(Long.MAX_VALUE);
    }

    @Override
    public byte[] M1(long j10) throws IOException {
        X1(j10);
        return this.f25055b.M1(j10);
    }

    @Override
    public void X1(long j10) throws IOException {
        if (!i(j10)) {
            throw new EOFException();
        }
    }

    @Override
    public long Y1(f fVar) throws IOException {
        return t1(fVar, 0L);
    }

    @Override
    public z a0() {
        return this.f25056c.a0();
    }

    @Override
    public boolean b2() throws IOException {
        if (this.f25057d) {
            throw new IllegalStateException("closed");
        }
        return this.f25055b.b2() && this.f25056c.K(this.f25055b, 8192L) == -1;
    }

    @Override
    public long c2() throws IOException {
        byte l10;
        X1(1L);
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            if (!i(i11)) {
                break;
            }
            l10 = this.f25055b.l(i10);
            if ((l10 < 48 || l10 > 57) && !(i10 == 0 && l10 == 45)) {
                break;
            }
            i10 = i11;
        }
        if (i10 == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9] or '-' character but was %#x", Byte.valueOf(l10)));
        }
        return this.f25055b.c2();
    }

    @Override
    public void close() throws IOException {
        if (this.f25057d) {
            return;
        }
        this.f25057d = true;
        this.f25056c.close();
        this.f25055b.c();
    }

    @Override
    public long d2(x xVar) throws IOException {
        if (xVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        long j10 = 0;
        while (this.f25056c.K(this.f25055b, 8192L) != -1) {
            long e10 = this.f25055b.e();
            if (e10 > 0) {
                j10 += e10;
                xVar.h0(this.f25055b, e10);
            }
        }
        if (this.f25055b.Q() <= 0) {
            return j10;
        }
        long Q10 = j10 + this.f25055b.Q();
        C3089c c3089c = this.f25055b;
        xVar.h0(c3089c, c3089c.Q());
        return Q10;
    }

    @Override
    public void f2(C3089c c3089c, long j10) throws IOException {
        try {
            X1(j10);
            this.f25055b.f2(c3089c, j10);
        } catch (EOFException e10) {
            c3089c.H(this.f25055b);
            throw e10;
        }
    }

    @Override
    public boolean g2(long j10, f fVar) throws IOException {
        return y1(j10, fVar, 0, fVar.S());
    }

    @Override
    public int h2() throws IOException {
        X1(4L);
        return this.f25055b.h2();
    }

    @Override
    public boolean i(long j10) throws IOException {
        C3089c c3089c;
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        if (this.f25057d) {
            throw new IllegalStateException("closed");
        }
        do {
            c3089c = this.f25055b;
            if (c3089c.f24985c >= j10) {
                return true;
            }
        } while (this.f25056c.K(c3089c, 8192L) != -1);
        return false;
    }

    @Override
    public boolean isOpen() {
        return !this.f25057d;
    }

    @Override
    public InputStream j2() {
        return new a();
    }

    @Override
    public long p1(byte b10) throws IOException {
        return J1(b10, 0L, Long.MAX_VALUE);
    }

    @Override
    public long q1(byte b10, long j10) throws IOException {
        return J1(b10, j10, Long.MAX_VALUE);
    }

    @Override
    @Nullable
    public String r1() throws IOException {
        long p12 = p1((byte) 10);
        if (p12 != -1) {
            return this.f25055b.z(p12);
        }
        long j10 = this.f25055b.f24985c;
        if (j10 != 0) {
            return w1(j10);
        }
        return null;
    }

    @Override
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override
    public byte readByte() throws IOException {
        X1(1L);
        return this.f25055b.readByte();
    }

    @Override
    public void readFully(byte[] bArr) throws IOException {
        try {
            X1(bArr.length);
            this.f25055b.readFully(bArr);
        } catch (EOFException e10) {
            int i10 = 0;
            while (true) {
                C3089c c3089c = this.f25055b;
                long j10 = c3089c.f24985c;
                if (j10 <= 0) {
                    throw e10;
                }
                int read = c3089c.read(bArr, i10, (int) j10);
                if (read == -1) {
                    throw new AssertionError();
                }
                i10 += read;
            }
        }
    }

    @Override
    public int readInt() throws IOException {
        X1(4L);
        return this.f25055b.readInt();
    }

    @Override
    public long readLong() throws IOException {
        X1(8L);
        return this.f25055b.readLong();
    }

    @Override
    public short readShort() throws IOException {
        X1(2L);
        return this.f25055b.readShort();
    }

    @Override
    public long s1(f fVar, long j10) throws IOException {
        if (this.f25057d) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long s12 = this.f25055b.s1(fVar, j10);
            if (s12 != -1) {
                return s12;
            }
            C3089c c3089c = this.f25055b;
            long j11 = c3089c.f24985c;
            if (this.f25056c.K(c3089c, 8192L) == -1) {
                return -1L;
            }
            j10 = Math.max(j10, j11);
        }
    }

    @Override
    public void skip(long j10) throws IOException {
        if (this.f25057d) {
            throw new IllegalStateException("closed");
        }
        while (j10 > 0) {
            C3089c c3089c = this.f25055b;
            if (c3089c.f24985c == 0 && this.f25056c.K(c3089c, 8192L) == -1) {
                throw new EOFException();
            }
            long min = Math.min(j10, this.f25055b.Q());
            this.f25055b.skip(min);
            j10 -= min;
        }
    }

    @Override
    public long t1(f fVar, long j10) throws IOException {
        if (this.f25057d) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long t12 = this.f25055b.t1(fVar, j10);
            if (t12 != -1) {
                return t12;
            }
            C3089c c3089c = this.f25055b;
            long j11 = c3089c.f24985c;
            if (this.f25056c.K(c3089c, 8192L) == -1) {
                return -1L;
            }
            j10 = Math.max(j10, (j11 - fVar.S()) + 1);
        }
    }

    public String toString() {
        return "buffer(" + ((Object) this.f25056c) + ")";
    }

    @Override
    public short u1() throws IOException {
        X1(2L);
        return this.f25055b.u1();
    }

    @Override
    public long v1() throws IOException {
        X1(8L);
        return this.f25055b.v1();
    }

    @Override
    public String w1(long j10) throws IOException {
        X1(j10);
        return this.f25055b.w1(j10);
    }

    @Override
    public f x1(long j10) throws IOException {
        X1(j10);
        return this.f25055b.x1(j10);
    }

    @Override
    public boolean y1(long j10, f fVar, int i10, int i11) throws IOException {
        if (this.f25057d) {
            throw new IllegalStateException("closed");
        }
        if (j10 < 0 || i10 < 0 || i11 < 0 || fVar.S() - i10 < i11) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            long j11 = i12 + j10;
            if (!i(1 + j11) || this.f25055b.l(j11) != fVar.r(i10 + i12)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public byte[] z1() throws IOException {
        this.f25055b.H(this.f25056c);
        return this.f25055b.z1();
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        long j10 = i11;
        B.b(bArr.length, i10, j10);
        C3089c c3089c = this.f25055b;
        if (c3089c.f24985c == 0 && this.f25056c.K(c3089c, 8192L) == -1) {
            return -1;
        }
        return this.f25055b.read(bArr, i10, (int) Math.min(j10, this.f25055b.f24985c));
    }

    public class a extends InputStream {
        public a() {
        }

        @Override
        public int available() throws IOException {
            t tVar = t.this;
            if (tVar.f25057d) {
                throw new IOException("closed");
            }
            return (int) Math.min(tVar.f25055b.f24985c, 2147483647L);
        }

        @Override
        public void close() throws IOException {
            t.this.close();
        }

        @Override
        public int read() throws IOException {
            t tVar = t.this;
            if (!tVar.f25057d) {
                C3089c c3089c = tVar.f25055b;
                if (c3089c.f24985c == 0 && tVar.f25056c.K(c3089c, 8192L) == -1) {
                    return -1;
                }
                return t.this.f25055b.readByte() & 255;
            }
            throw new IOException("closed");
        }

        public String toString() {
            return ((Object) t.this) + ".inputStream()";
        }

        @Override
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            if (!t.this.f25057d) {
                B.b(bArr.length, i10, i11);
                t tVar = t.this;
                C3089c c3089c = tVar.f25055b;
                if (c3089c.f24985c == 0 && tVar.f25056c.K(c3089c, 8192L) == -1) {
                    return -1;
                }
                return t.this.f25055b.read(bArr, i10, i11);
            }
            throw new IOException("closed");
        }
    }

    @Override
    public int read(ByteBuffer byteBuffer) throws IOException {
        C3089c c3089c = this.f25055b;
        if (c3089c.f24985c == 0 && this.f25056c.K(c3089c, 8192L) == -1) {
            return -1;
        }
        return this.f25055b.read(byteBuffer);
    }
}
