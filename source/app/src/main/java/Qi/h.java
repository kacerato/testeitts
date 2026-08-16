package Qi;

import Bi.S;
import java.io.IOException;
import java.io.OutputStream;

public class h extends OutputStream {

    public S f22438b;

    public h(S s10) {
        this.f22438b = s10;
    }

    public S c() {
        return this.f22438b;
    }

    @Override
    public void write(int i10) throws IOException {
        this.f22438b.update((byte) i10);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.f22438b.update(bArr, i10, i11);
    }
}
