package Tg;

import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

public final class s implements d {

    public final C3089c f25051b = new C3089c();

    public final x f25052c;

    public boolean f25053d;

    public s(x xVar) {
        if (xVar == null) {
            throw new NullPointerException("sink == null");
        }
        this.f25052c = xVar;
    }

    @Override
    public C3089c C() {
        return this.f25051b;
    }

    @Override
    public d D(f fVar) throws IOException {
        if (this.f25053d) {
            throw new IllegalStateException("closed");
        }
        this.f25051b.D(fVar);
        return W();
    }

    @Override
    public d E(long j10) throws IOException {
        if (this.f25053d) {
            throw new IllegalStateException("closed");
        }
        this.f25051b.E(j10);
        return W();
    }

    @Override
    public d F(String str, int i10, int i11) throws IOException {
        if (this.f25053d) {
            throw new IllegalStateException("closed");
        }
        this.f25051b.F(str, i10, i11);
        return W();
    }

    @Override
    public long H(y yVar) throws IOException {
        if (yVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j10 = 0;
        while (true) {
            long K10 = yVar.K(this.f25051b, 8192L);
            if (K10 == -1) {
                return j10;
            }
            j10 += K10;
            W();
        }
    }

    @Override
    public d I(String str, int i10, int i11, Charset charset) throws IOException {
        if (this.f25053d) {
            throw new IllegalStateException("closed");
        }
        this.f25051b.I(str, i10, i11, charset);
        return W();
    }

    @Override
    public d J(long j10) throws IOException {
        if (this.f25053d) {
            throw new IllegalStateException("closed");
        }
        this.f25051b.J(j10);
        return W();
    }

    @Override
    public d M(int i10) throws IOException {
        if (this.f25053d) {
            throw new IllegalStateException("closed");
        }
        this.f25051b.M(i10);
        return W();
    }

    @Override
    public d O(int i10) throws IOException {
        if (this.f25053d) {
            throw new IllegalStateException("closed");
        }
        this.f25051b.O(i10);
        return W();
    }

    @Override
    public d P(long j10) throws IOException {
        if (this.f25053d) {
            throw new IllegalStateException("closed");
        }
        this.f25051b.P(j10);
        return W();
    }

    @Override
    public d T() throws IOException {
        if (this.f25053d) {
            throw new IllegalStateException("closed");
        }
        long Q10 = this.f25051b.Q();
        if (Q10 > 0) {
            this.f25052c.h0(this.f25051b, Q10);
        }
        return this;
    }

    @Override
    public d U(int i10) throws IOException {
        if (this.f25053d) {
            throw new IllegalStateException("closed");
        }
        this.f25051b.U(i10);
        return W();
    }

    @Override
    public d W() throws IOException {
        if (this.f25053d) {
            throw new IllegalStateException("closed");
        }
        long e10 = this.f25051b.e();
        if (e10 > 0) {
            this.f25052c.h0(this.f25051b, e10);
        }
        return this;
    }

    @Override
    public d X(String str) throws IOException {
        if (this.f25053d) {
            throw new IllegalStateException("closed");
        }
        this.f25051b.X(str);
        return W();
    }

    @Override
    public z a0() {
        return this.f25052c.a0();
    }

    @Override
    public void close() throws IOException {
        if (this.f25053d) {
            return;
        }
        try {
            C3089c c3089c = this.f25051b;
            long j10 = c3089c.f24985c;
            if (j10 > 0) {
                this.f25052c.h0(c3089c, j10);
            }
            th = null;
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.f25052c.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.f25053d = true;
        if (th != null) {
            B.f(th);
        }
    }

    @Override
    public void flush() throws IOException {
        if (this.f25053d) {
            throw new IllegalStateException("closed");
        }
        C3089c c3089c = this.f25051b;
        long j10 = c3089c.f24985c;
        if (j10 > 0) {
            this.f25052c.h0(c3089c, j10);
        }
        this.f25052c.flush();
    }

    @Override
    public void h0(C3089c c3089c, long j10) throws IOException {
        if (this.f25053d) {
            throw new IllegalStateException("closed");
        }
        this.f25051b.h0(c3089c, j10);
        W();
    }

    @Override
    public boolean isOpen() {
        return !this.f25053d;
    }

    @Override
    public d l0(String str, Charset charset) throws IOException {
        if (this.f25053d) {
            throw new IllegalStateException("closed");
        }
        this.f25051b.l0(str, charset);
        return W();
    }

    @Override
    public OutputStream s0() {
        return new a();
    }

    @Override
    public d t0(y yVar, long j10) throws IOException {
        while (j10 > 0) {
            long K10 = yVar.K(this.f25051b, j10);
            if (K10 == -1) {
                throw new EOFException();
            }
            j10 -= K10;
            W();
        }
        return this;
    }

    public String toString() {
        return "buffer(" + ((Object) this.f25052c) + ")";
    }

    @Override
    public d write(byte[] bArr) throws IOException {
        if (!this.f25053d) {
            this.f25051b.write(bArr);
            return W();
        }
        throw new IllegalStateException("closed");
    }

    @Override
    public d writeByte(int i10) throws IOException {
        if (this.f25053d) {
            throw new IllegalStateException("closed");
        }
        this.f25051b.writeByte(i10);
        return W();
    }

    @Override
    public d writeInt(int i10) throws IOException {
        if (this.f25053d) {
            throw new IllegalStateException("closed");
        }
        this.f25051b.writeInt(i10);
        return W();
    }

    @Override
    public d writeLong(long j10) throws IOException {
        if (this.f25053d) {
            throw new IllegalStateException("closed");
        }
        this.f25051b.writeLong(j10);
        return W();
    }

    @Override
    public d writeShort(int i10) throws IOException {
        if (this.f25053d) {
            throw new IllegalStateException("closed");
        }
        this.f25051b.writeShort(i10);
        return W();
    }

    public class a extends OutputStream {
        public a() {
        }

        @Override
        public void close() throws IOException {
            s.this.close();
        }

        @Override
        public void flush() throws IOException {
            s sVar = s.this;
            if (sVar.f25053d) {
                return;
            }
            sVar.flush();
        }

        public String toString() {
            return ((Object) s.this) + ".outputStream()";
        }

        @Override
        public void write(int i10) throws IOException {
            s sVar = s.this;
            if (!sVar.f25053d) {
                sVar.f25051b.writeByte((byte) i10);
                s.this.W();
                return;
            }
            throw new IOException("closed");
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            s sVar = s.this;
            if (!sVar.f25053d) {
                sVar.f25051b.write(bArr, i10, i11);
                s.this.W();
                return;
            }
            throw new IOException("closed");
        }
    }

    @Override
    public d write(byte[] bArr, int i10, int i11) throws IOException {
        if (!this.f25053d) {
            this.f25051b.write(bArr, i10, i11);
            return W();
        }
        throw new IllegalStateException("closed");
    }

    @Override
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (!this.f25053d) {
            int write = this.f25051b.write(byteBuffer);
            W();
            return write;
        }
        throw new IllegalStateException("closed");
    }
}
