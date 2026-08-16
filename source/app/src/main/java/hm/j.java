package hm;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class j extends FilterOutputStream {
    public j(OutputStream outputStream) {
        super(outputStream);
    }

    @Override
    public void close() {
        throw new RuntimeException("close() called on UncloseableOutputStream");
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.out.write(bArr, i10, i11);
    }
}
