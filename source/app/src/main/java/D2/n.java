package D2;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import v2.InterfaceC15800a;
import w2.H;

@v2.c
@p
@InterfaceC15800a
public final class n extends FilterInputStream {

    public long f4786b;

    public long f4787c;

    public n(InputStream inputStream) {
        super((InputStream) H.E(inputStream));
        this.f4787c = -1L;
    }

    public long c() {
        return this.f4786b;
    }

    @Override
    public synchronized void mark(int i10) {
        this.f92730in.mark(i10);
        this.f4787c = this.f4786b;
    }

    @Override
    public int read() throws IOException {
        int read = this.f92730in.read();
        if (read != -1) {
            this.f4786b++;
        }
        return read;
    }

    @Override
    public synchronized void reset() throws IOException {
        if (!this.f92730in.markSupported()) {
            throw new IOException("Mark not supported");
        }
        if (this.f4787c == -1) {
            throw new IOException("Mark not set");
        }
        this.f92730in.reset();
        this.f4786b = this.f4787c;
    }

    @Override
    public long skip(long j10) throws IOException {
        long skip = this.f92730in.skip(j10);
        this.f4786b += skip;
        return skip;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int read = this.f92730in.read(bArr, i10, i11);
        if (read != -1) {
            this.f4786b += read;
        }
        return read;
    }
}
