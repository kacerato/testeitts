package Ag;

import java.io.IOException;
import java.io.OutputStream;

public abstract class c extends OutputStream {

    public b<?> f546b;

    public c(b<?> bVar) {
        this.f546b = bVar;
    }

    public void c() throws IOException {
        this.f546b.c();
    }

    @Override
    public void close() throws IOException {
        this.f546b.close();
    }

    public long d() {
        return this.f546b.e();
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
        this.f546b.write(bArr, i10, i11);
    }
}
