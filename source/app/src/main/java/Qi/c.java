package Qi;

import Bi.InterfaceC2392y;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class c extends FilterInputStream {

    public InterfaceC2392y f22433b;

    public c(InputStream inputStream, InterfaceC2392y interfaceC2392y) {
        super(inputStream);
        this.f22433b = interfaceC2392y;
    }

    public InterfaceC2392y c() {
        return this.f22433b;
    }

    @Override
    public int read() throws IOException {
        int read = this.f92730in.read();
        if (read >= 0) {
            this.f22433b.update((byte) read);
        }
        return read;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int read = this.f92730in.read(bArr, i10, i11);
        if (read > 0) {
            this.f22433b.update(bArr, i10, read);
        }
        return read;
    }
}
