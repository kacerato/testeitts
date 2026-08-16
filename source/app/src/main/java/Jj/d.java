package Jj;

import java.io.IOException;
import java.io.OutputStream;
import javax.crypto.Mac;

public final class d extends OutputStream {

    public Mac f10634b;

    public d(Mac mac) {
        this.f10634b = mac;
    }

    public byte[] c() {
        return this.f10634b.doFinal();
    }

    @Override
    public void write(int i10) throws IOException {
        this.f10634b.update((byte) i10);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.f10634b.update(bArr, i10, i11);
    }
}
