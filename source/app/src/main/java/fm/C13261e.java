package fm;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class C13261e extends InputStream {

    public final InputStream f86595b;

    public final OutputStream f86596c;

    public C13261e(InputStream inputStream, OutputStream outputStream) {
        this.f86595b = inputStream;
        this.f86596c = outputStream;
    }

    @Override
    public int available() throws IOException {
        return this.f86595b.available();
    }

    public OutputStream c() {
        return this.f86596c;
    }

    @Override
    public void close() throws IOException {
        this.f86595b.close();
        this.f86596c.close();
    }

    @Override
    public int read() throws IOException {
        int read = this.f86595b.read();
        if (read >= 0) {
            this.f86596c.write(read);
        }
        return read;
    }

    @Override
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int read = this.f86595b.read(bArr, i10, i11);
        if (read > 0) {
            this.f86596c.write(bArr, i10, read);
        }
        return read;
    }
}
