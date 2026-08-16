package Qi;

import Bi.I;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class e extends FilterInputStream {

    public I f22435b;

    public e(InputStream inputStream, I i10) {
        super(inputStream);
        this.f22435b = i10;
    }

    public I c() {
        return this.f22435b;
    }

    @Override
    public int read() throws IOException {
        int read = this.f92730in.read();
        if (read >= 0) {
            this.f22435b.update((byte) read);
        }
        return read;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int read = this.f92730in.read(bArr, i10, i11);
        if (read >= 0) {
            this.f22435b.update(bArr, i10, read);
        }
        return read;
    }
}
