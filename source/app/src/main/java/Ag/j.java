package Ag;

import java.io.IOException;
import java.io.OutputStream;

public class j extends OutputStream {

    public OutputStream f558c;

    public long f557b = 0;

    public boolean f559d = false;

    public j(OutputStream outputStream) {
        this.f558c = outputStream;
    }

    public void c() throws IOException {
        this.f559d = true;
    }

    @Override
    public void close() throws IOException {
    }

    public long d() {
        return this.f557b;
    }

    @Override
    public void write(int i10) throws IOException {
        write(new byte[]{(byte) i10});
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        if (!this.f559d) {
            this.f558c.write(bArr, i10, i11);
            this.f557b += i11;
            return;
        }
        throw new IllegalStateException("ZipEntryOutputStream is closed");
    }
}
