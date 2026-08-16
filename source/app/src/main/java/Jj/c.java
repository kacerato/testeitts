package Jj;

import java.io.IOException;
import java.io.OutputStream;
import java.security.MessageDigest;

public class c extends OutputStream {

    public MessageDigest f10633b;

    public c(MessageDigest messageDigest) {
        this.f10633b = messageDigest;
    }

    @Override
    public void write(int i10) throws IOException {
        this.f10633b.update((byte) i10);
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        this.f10633b.update(bArr);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.f10633b.update(bArr, i10, i11);
    }
}
