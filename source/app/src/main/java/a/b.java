package A;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

public class b implements Closeable {

    public static final byte f47g = 13;

    public static final byte f48h = 10;

    public final InputStream f49b;

    public final Charset f50c;

    public byte[] f51d;

    public int f52e;

    public int f53f;

    public class a extends ByteArrayOutputStream {
        public a(int i10) {
            super(i10);
        }

        @Override
        public String toString() {
            int i10 = this.count;
            if (i10 > 0 && this.buf[i10 - 1] == 13) {
                i10--;
            }
            try {
                return new String(this.buf, 0, i10, b.this.f50c.name());
            } catch (UnsupportedEncodingException e10) {
                throw new AssertionError(e10);
            }
        }
    }

    public b(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    public final void c() throws IOException {
        InputStream inputStream = this.f49b;
        byte[] bArr = this.f51d;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read == -1) {
            throw new EOFException();
        }
        this.f52e = 0;
        this.f53f = read;
    }

    @Override
    public void close() throws IOException {
        synchronized (this.f49b) {
            try {
                if (this.f51d != null) {
                    this.f51d = null;
                    this.f49b.close();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean d() {
        return this.f53f == -1;
    }

    public String e() throws IOException {
        int i10;
        byte[] bArr;
        int i11;
        synchronized (this.f49b) {
            try {
                if (this.f51d == null) {
                    throw new IOException("LineReader is closed");
                }
                if (this.f52e >= this.f53f) {
                    c();
                }
                for (int i12 = this.f52e; i12 != this.f53f; i12++) {
                    byte[] bArr2 = this.f51d;
                    if (bArr2[i12] == 10) {
                        int i13 = this.f52e;
                        if (i12 != i13) {
                            i11 = i12 - 1;
                            if (bArr2[i11] == 13) {
                                String str = new String(bArr2, i13, i11 - i13, this.f50c.name());
                                this.f52e = i12 + 1;
                                return str;
                            }
                        }
                        i11 = i12;
                        String str2 = new String(bArr2, i13, i11 - i13, this.f50c.name());
                        this.f52e = i12 + 1;
                        return str2;
                    }
                }
                a aVar = new a((this.f53f - this.f52e) + 80);
                loop1: while (true) {
                    byte[] bArr3 = this.f51d;
                    int i14 = this.f52e;
                    aVar.write(bArr3, i14, this.f53f - i14);
                    this.f53f = -1;
                    c();
                    i10 = this.f52e;
                    while (i10 != this.f53f) {
                        bArr = this.f51d;
                        if (bArr[i10] == 10) {
                            break loop1;
                        }
                        i10++;
                    }
                }
                int i15 = this.f52e;
                if (i10 != i15) {
                    aVar.write(bArr, i15, i10 - i15);
                }
                this.f52e = i10 + 1;
                return aVar.toString();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public b(InputStream inputStream, int i10, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i10 >= 0) {
            if (charset.equals(c.f55a)) {
                this.f49b = inputStream;
                this.f50c = charset;
                this.f51d = new byte[i10];
                return;
            }
            throw new IllegalArgumentException("Unsupported encoding");
        }
        throw new IllegalArgumentException("capacity <= 0");
    }
}
