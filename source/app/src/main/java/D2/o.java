package D2;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import w2.H;

@v2.c
@p
public final class o extends FilterOutputStream {

    public long f4788b;

    public o(OutputStream outputStream) {
        super((OutputStream) H.E(outputStream));
    }

    public long c() {
        return this.f4788b;
    }

    @Override
    public void close() throws IOException {
        this.out.close();
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.out.write(bArr, i10, i11);
        this.f4788b += i11;
    }

    @Override
    public void write(int i10) throws IOException {
        this.out.write(i10);
        this.f4788b++;
    }
}
