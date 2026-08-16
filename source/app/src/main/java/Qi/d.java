package Qi;

import Bi.InterfaceC2392y;
import java.io.IOException;
import java.io.OutputStream;

public class d extends OutputStream {

    public InterfaceC2392y f22434b;

    public d(InterfaceC2392y interfaceC2392y) {
        this.f22434b = interfaceC2392y;
    }

    public byte[] c() {
        byte[] bArr = new byte[this.f22434b.f()];
        this.f22434b.c(bArr, 0);
        return bArr;
    }

    @Override
    public void write(int i10) throws IOException {
        this.f22434b.update((byte) i10);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.f22434b.update(bArr, i10, i11);
    }
}
