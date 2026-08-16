package org.tukaani.xz;

import java.io.IOException;
import java.io.OutputStream;

public class FinishableWrapperOutputStream extends FinishableOutputStream {
    protected OutputStream out;

    public FinishableWrapperOutputStream(OutputStream outputStream) {
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

    @Override
    public void write(int i10) throws IOException {
        this.out.write(i10);
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        this.out.write(bArr);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.out.write(bArr, i10, i11);
    }
}
