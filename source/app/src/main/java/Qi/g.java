package Qi;

import Bi.S;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class g extends FilterInputStream {

    public S f22437b;

    public g(InputStream inputStream, S s10) {
        super(inputStream);
        this.f22437b = s10;
    }

    public S c() {
        return this.f22437b;
    }

    @Override
    public int read() throws IOException {
        int read = this.f92730in.read();
        if (read >= 0) {
            this.f22437b.update((byte) read);
        }
        return read;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int read = this.f92730in.read(bArr, i10, i11);
        if (read > 0) {
            this.f22437b.update(bArr, i10, read);
        }
        return read;
    }
}
