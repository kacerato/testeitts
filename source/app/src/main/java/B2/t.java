package B2;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import v2.InterfaceC15800a;

@k
@InterfaceC15800a
public final class t extends FilterInputStream {

    public final r f1475b;

    public t(q qVar, InputStream inputStream) {
        super((InputStream) w2.H.E(inputStream));
        this.f1475b = (r) w2.H.E(qVar.i());
    }

    public p c() {
        return this.f1475b.h();
    }

    @Override
    public void mark(int i10) {
    }

    @Override
    public boolean markSupported() {
        return false;
    }

    @Override
    @I2.a
    public int read() throws IOException {
        int read = this.f92730in.read();
        if (read != -1) {
            this.f1475b.a((byte) read);
        }
        return read;
    }

    @Override
    public void reset() throws IOException {
        throw new IOException("reset not supported");
    }

    @Override
    @I2.a
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int read = this.f92730in.read(bArr, i10, i11);
        if (read != -1) {
            this.f1475b.e(bArr, i10, read);
        }
        return read;
    }
}
