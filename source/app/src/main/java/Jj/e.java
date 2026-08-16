package Jj;

import java.io.IOException;
import java.io.OutputStream;
import javax.crypto.Mac;

public class e extends OutputStream {

    public Mac f10635b;

    public e(Mac mac) {
        this.f10635b = mac;
    }

    @Override
    public void write(int i10) throws IOException {
        this.f10635b.update((byte) i10);
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        this.f10635b.update(bArr);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.f10635b.update(bArr, i10, i11);
    }
}
