package org.tukaani.xz;

import java.io.IOException;
import java.io.OutputStream;

class CountingOutputStream extends FinishableOutputStream {
    private final OutputStream out;
    private long size = 0;

    public CountingOutputStream(OutputStream outputStream) {
        this.out = outputStream;
    }

    @Override
    public void close() throws IOException {
        this.out.close();
    }

    @Override
    public void flush() throws IOException {
        this.out.flush();
    }

    public long getSize() {
        return this.size;
    }

    @Override
    public void write(int i10) throws IOException {
        this.out.write(i10);
        long j10 = this.size;
        if (j10 >= 0) {
            this.size = j10 + 1;
        }
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.out.write(bArr, i10, i11);
        long j10 = this.size;
        if (j10 >= 0) {
            this.size = j10 + i11;
        }
    }
}
