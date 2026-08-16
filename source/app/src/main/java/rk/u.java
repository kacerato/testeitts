package Rk;

import Bi.S;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.crypto.CryptoException;

public class u extends OutputStream {

    public S f22865b;

    public u(S s10) {
        this.f22865b = s10;
    }

    public byte[] c() throws CryptoException {
        return this.f22865b.c();
    }

    public boolean d(byte[] bArr) {
        return this.f22865b.b(bArr);
    }

    @Override
    public void write(int i10) throws IOException {
        this.f22865b.update((byte) i10);
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        this.f22865b.update(bArr, 0, bArr.length);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.f22865b.update(bArr, i10, i11);
    }
}
