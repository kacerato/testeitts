package org.tukaani.xz.rangecoder;

import java.io.DataInputStream;
import java.io.IOException;
import org.tukaani.xz.ArrayCache;
import org.tukaani.xz.CorruptedInputException;

public final class RangeDecoderFromBuffer extends RangeDecoder {
    private static final int INIT_SIZE = 5;
    private final byte[] buf;
    private int pos;

    public RangeDecoderFromBuffer(int i10, ArrayCache arrayCache) {
        byte[] byteArray = arrayCache.getByteArray(i10 - 5, false);
        this.buf = byteArray;
        this.pos = byteArray.length;
    }

    public boolean isFinished() {
        return this.pos == this.buf.length && this.code == 0;
    }

    @Override
    public void normalize() throws IOException {
        int i10 = this.range;
        if (((-16777216) & i10) == 0) {
            try {
                int i11 = this.code << 8;
                byte[] bArr = this.buf;
                int i12 = this.pos;
                this.pos = i12 + 1;
                this.code = i11 | (bArr[i12] & 255);
                this.range = i10 << 8;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new CorruptedInputException();
            }
        }
    }

    public void prepareInputBuffer(DataInputStream dataInputStream, int i10) throws IOException {
        if (i10 < 5) {
            throw new CorruptedInputException();
        }
        if (dataInputStream.readUnsignedByte() != 0) {
            throw new CorruptedInputException();
        }
        this.code = dataInputStream.readInt();
        this.range = -1;
        int i11 = i10 - 5;
        byte[] bArr = this.buf;
        int length = bArr.length - i11;
        this.pos = length;
        dataInputStream.readFully(bArr, length, i11);
    }

    public void putArraysToCache(ArrayCache arrayCache) {
        arrayCache.putArray(this.buf);
    }
}
