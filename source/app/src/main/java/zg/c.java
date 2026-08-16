package zg;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;

public abstract class c extends InputStream {

    public AbstractC16310b<?> f131311b;

    public byte[] f131312c = new byte[1];

    public c(AbstractC16310b<?> abstractC16310b) {
        this.f131311b = abstractC16310b;
    }

    public void a(InputStream inputStream, int i10) throws IOException {
        this.f131311b.b(inputStream, i10);
    }

    public byte[] c() {
        return this.f131311b.d();
    }

    @Override
    public void close() throws IOException {
        this.f131311b.close();
    }

    public int d(PushbackInputStream pushbackInputStream) throws IOException {
        return 0;
    }

    @Override
    public int read() throws IOException {
        if (read(this.f131312c) == -1) {
            return -1;
        }
        return this.f131312c[0];
    }

    @Override
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        return this.f131311b.read(bArr, i10, i11);
    }
}
