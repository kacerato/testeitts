package Qi;

import Bi.I;
import java.io.IOException;
import java.io.OutputStream;

public class f extends OutputStream {

    public I f22436b;

    public f(I i10) {
        this.f22436b = i10;
    }

    public byte[] c() {
        byte[] bArr = new byte[this.f22436b.d()];
        this.f22436b.c(bArr, 0);
        return bArr;
    }

    @Override
    public void write(int i10) throws IOException {
        this.f22436b.update((byte) i10);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.f22436b.update(bArr, i10, i11);
    }
}
