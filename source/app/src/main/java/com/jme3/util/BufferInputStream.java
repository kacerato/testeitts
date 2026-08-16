package com.jme3.util;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public class BufferInputStream extends InputStream {
    ByteBuffer input;

    public BufferInputStream(ByteBuffer byteBuffer) {
        this.input = byteBuffer;
    }

    @Override
    public int available() {
        return this.input.remaining();
    }

    @Override
    public int read() throws IOException {
        if (this.input.remaining() == 0) {
            return -1;
        }
        return this.input.get() & 255;
    }

    @Override
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        if (bArr != null) {
            if (i10 < 0 || i11 < 0 || i11 > bArr.length - i10) {
                throw new IndexOutOfBoundsException();
            }
            if (i11 == 0) {
                return 0;
            }
            if (!this.input.hasRemaining()) {
                return -1;
            }
            int min = Math.min(i11, this.input.remaining());
            this.input.get(bArr, i10, min);
            return min;
        }
        throw new NullPointerException("b == null");
    }
}
