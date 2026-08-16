package org.tukaani.xz.lz;

import java.io.DataInputStream;
import java.io.IOException;
import org.tukaani.xz.ArrayCache;
import org.tukaani.xz.CorruptedInputException;

public final class LZDecoder {
    static final boolean $assertionsDisabled = false;
    private final byte[] buf;
    private final int bufSize;
    private int full;
    private int pos;
    private int start;
    private int limit = 0;
    private int pendingLen = 0;
    private int pendingDist = 0;

    public LZDecoder(int i10, byte[] bArr, ArrayCache arrayCache) {
        this.start = 0;
        this.pos = 0;
        this.full = 0;
        this.bufSize = i10;
        byte[] byteArray = arrayCache.getByteArray(i10, false);
        this.buf = byteArray;
        if (bArr != null) {
            int min = Math.min(bArr.length, i10);
            this.pos = min;
            this.full = min;
            this.start = min;
            System.arraycopy(bArr, bArr.length - min, byteArray, 0, min);
        }
    }

    public void copyUncompressed(DataInputStream dataInputStream, int i10) throws IOException {
        int min = Math.min(this.bufSize - this.pos, i10);
        dataInputStream.readFully(this.buf, this.pos, min);
        int i11 = this.pos + min;
        this.pos = i11;
        if (this.full < i11) {
            this.full = i11;
        }
    }

    public int flush(byte[] bArr, int i10) {
        int i11 = this.pos;
        int i12 = this.start;
        int i13 = i11 - i12;
        if (i11 == this.bufSize) {
            this.pos = 0;
        }
        System.arraycopy(this.buf, i12, bArr, i10, i13);
        this.start = this.pos;
        return i13;
    }

    public int getByte(int i10) {
        int i11 = this.pos;
        int i12 = (i11 - i10) - 1;
        if (i10 >= i11) {
            i12 += this.bufSize;
        }
        return this.buf[i12] & 255;
    }

    public int getPos() {
        return this.pos;
    }

    public boolean hasPending() {
        return this.pendingLen > 0;
    }

    public boolean hasSpace() {
        return this.pos < this.limit;
    }

    public void putArraysToCache(ArrayCache arrayCache) {
        arrayCache.putArray(this.buf);
    }

    public void putByte(byte b10) {
        byte[] bArr = this.buf;
        int i10 = this.pos;
        int i11 = i10 + 1;
        this.pos = i11;
        bArr[i10] = b10;
        if (this.full < i11) {
            this.full = i11;
        }
    }

    public void repeat(int i10, int i11) throws IOException {
        int i12;
        if (i10 < 0 || i10 >= this.full) {
            throw new CorruptedInputException();
        }
        int min = Math.min(this.limit - this.pos, i11);
        this.pendingLen = i11 - min;
        this.pendingDist = i10;
        int i13 = (this.pos - i10) - 1;
        if (i13 < 0) {
            int i14 = this.bufSize;
            int i15 = i13 + i14;
            int min2 = Math.min(i14 - i15, min);
            byte[] bArr = this.buf;
            System.arraycopy(bArr, i15, bArr, this.pos, min2);
            this.pos += min2;
            min -= min2;
            if (min == 0) {
                return;
            } else {
                i13 = 0;
            }
        }
        do {
            int min3 = Math.min(min, this.pos - i13);
            byte[] bArr2 = this.buf;
            System.arraycopy(bArr2, i13, bArr2, this.pos, min3);
            i12 = this.pos + min3;
            this.pos = i12;
            min -= min3;
        } while (min > 0);
        if (this.full < i12) {
            this.full = i12;
        }
    }

    public void repeatPending() throws IOException {
        int i10 = this.pendingLen;
        if (i10 > 0) {
            repeat(this.pendingDist, i10);
        }
    }

    public void reset() {
        this.start = 0;
        this.pos = 0;
        this.full = 0;
        this.limit = 0;
        this.buf[this.bufSize - 1] = 0;
    }

    public void setLimit(int i10) {
        int i11 = this.bufSize;
        int i12 = this.pos;
        if (i11 - i12 <= i10) {
            this.limit = i11;
        } else {
            this.limit = i12 + i10;
        }
    }
}
