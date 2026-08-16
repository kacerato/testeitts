package fm;

import java.io.IOException;
import java.io.OutputStream;

public class C13262f extends OutputStream {

    public OutputStream f86597b;

    public OutputStream f86598c;

    public C13262f(OutputStream outputStream, OutputStream outputStream2) {
        this.f86597b = outputStream;
        this.f86598c = outputStream2;
    }

    @Override
    public void close() throws IOException {
        this.f86597b.close();
        this.f86598c.close();
    }

    @Override
    public void flush() throws IOException {
        this.f86597b.flush();
        this.f86598c.flush();
    }

    @Override
    public void write(int i10) throws IOException {
        this.f86597b.write(i10);
        this.f86598c.write(i10);
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        this.f86597b.write(bArr);
        this.f86598c.write(bArr);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.f86597b.write(bArr, i10, i11);
        this.f86598c.write(bArr, i10, i11);
    }
}
