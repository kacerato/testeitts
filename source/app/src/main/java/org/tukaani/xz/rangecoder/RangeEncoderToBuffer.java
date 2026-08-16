package org.tukaani.xz.rangecoder;

import java.io.IOException;
import java.io.OutputStream;
import org.tukaani.xz.ArrayCache;

public final class RangeEncoderToBuffer extends RangeEncoder {
    private final byte[] buf;
    private int bufPos;

    public RangeEncoderToBuffer(int i10, ArrayCache arrayCache) {
        this.buf = arrayCache.getByteArray(i10, false);
        reset();
    }

    @Override
    public int finish() {
        try {
            super.finish();
            return this.bufPos;
        } catch (IOException unused) {
            throw new Error();
        }
    }

    @Override
    public int getPendingSize() {
        return this.bufPos + ((int) this.cacheSize) + 4;
    }

    public void putArraysToCache(ArrayCache arrayCache) {
        arrayCache.putArray(this.buf);
    }

    @Override
    public void reset() {
        super.reset();
        this.bufPos = 0;
    }

    public void write(OutputStream outputStream) throws IOException {
        outputStream.write(this.buf, 0, this.bufPos);
    }

    @Override
    public void writeByte(int i10) {
        byte[] bArr = this.buf;
        int i11 = this.bufPos;
        this.bufPos = i11 + 1;
        bArr[i11] = (byte) i10;
    }
}
