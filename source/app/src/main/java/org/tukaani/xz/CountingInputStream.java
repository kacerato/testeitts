package org.tukaani.xz;

import java.io.IOException;
import java.io.InputStream;

class CountingInputStream extends CloseIgnoringInputStream {
    private long size;

    public CountingInputStream(InputStream inputStream) {
        super(inputStream);
        this.size = 0L;
    }

    public long getSize() {
        return this.size;
    }

    @Override
    public int read() throws IOException {
        int read = this.f92730in.read();
        if (read != -1) {
            long j10 = this.size;
            if (j10 >= 0) {
                this.size = j10 + 1;
            }
        }
        return read;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int read = this.f92730in.read(bArr, i10, i11);
        if (read > 0) {
            long j10 = this.size;
            if (j10 >= 0) {
                this.size = j10 + read;
            }
        }
        return read;
    }
}
