package org.tukaani.xz.lz;

import java.io.IOException;
import java.io.OutputStream;
import org.tukaani.xz.ArrayCache;

public abstract class LZEncoder {
    static final boolean $assertionsDisabled = false;
    public static final int MF_BT4 = 20;
    public static final int MF_HC4 = 4;
    final byte[] buf;
    final int bufSize;
    private final int keepSizeAfter;
    private final int keepSizeBefore;
    final int matchLenMax;
    final int niceLen;
    int readPos = -1;
    private int readLimit = -1;
    private boolean finishing = false;
    private int writePos = 0;
    private int pendingSize = 0;

    public LZEncoder(int i10, int i11, int i12, int i13, int i14, ArrayCache arrayCache) {
        int bufSize = getBufSize(i10, i11, i12, i14);
        this.bufSize = bufSize;
        this.buf = arrayCache.getByteArray(bufSize, false);
        this.keepSizeBefore = i11 + i10;
        this.keepSizeAfter = i12 + i14;
        this.matchLenMax = i14;
        this.niceLen = i13;
    }

    private static int getBufSize(int i10, int i11, int i12, int i13) {
        return i11 + i10 + i12 + i13 + Math.min((i10 / 2) + 262144, 536870912);
    }

    public static LZEncoder getInstance(int i10, int i11, int i12, int i13, int i14, int i15, int i16, ArrayCache arrayCache) {
        if (i15 == 4) {
            return new HC4(i10, i11, i12, i13, i14, i16, arrayCache);
        }
        if (i15 == 20) {
            return new BT4(i10, i11, i12, i13, i14, i16, arrayCache);
        }
        throw new IllegalArgumentException();
    }

    public static int getMemoryUsage(int i10, int i11, int i12, int i13, int i14) {
        int memoryUsage;
        int bufSize = (getBufSize(i10, i11, i12, i13) / 1024) + 10;
        if (i14 == 4) {
            memoryUsage = HC4.getMemoryUsage(i10);
        } else {
            if (i14 != 20) {
                throw new IllegalArgumentException();
            }
            memoryUsage = BT4.getMemoryUsage(i10);
        }
        return bufSize + memoryUsage;
    }

    private void moveWindow() {
        int i10 = ((this.readPos + 1) - this.keepSizeBefore) & (-16);
        int i11 = this.writePos - i10;
        byte[] bArr = this.buf;
        System.arraycopy(bArr, i10, bArr, 0, i11);
        this.readPos -= i10;
        this.readLimit -= i10;
        this.writePos -= i10;
    }

    public static void normalize(int[] iArr, int i10, int i11) {
        for (int i12 = 0; i12 < i10; i12++) {
            int i13 = iArr[i12];
            if (i13 <= i11) {
                iArr[i12] = 0;
            } else {
                iArr[i12] = i13 - i11;
            }
        }
    }

    private void processPendingBytes() {
        int i10;
        int i11 = this.pendingSize;
        if (i11 <= 0 || (i10 = this.readPos) >= this.readLimit) {
            return;
        }
        this.readPos = i10 - i11;
        this.pendingSize = 0;
        skip(i11);
    }

    public void copyUncompressed(OutputStream outputStream, int i10, int i11) throws IOException {
        outputStream.write(this.buf, (this.readPos + 1) - i10, i11);
    }

    public int fillWindow(byte[] bArr, int i10, int i11) {
        if (this.readPos >= this.bufSize - this.keepSizeAfter) {
            moveWindow();
        }
        int i12 = this.bufSize;
        int i13 = this.writePos;
        if (i11 > i12 - i13) {
            i11 = i12 - i13;
        }
        System.arraycopy(bArr, i10, this.buf, i13, i11);
        int i14 = this.writePos + i11;
        this.writePos = i14;
        int i15 = this.keepSizeAfter;
        if (i14 >= i15) {
            this.readLimit = i14 - i15;
        }
        processPendingBytes();
        return i11;
    }

    public int getAvail() {
        return this.writePos - this.readPos;
    }

    public int getByte(int i10) {
        return this.buf[this.readPos - i10] & 255;
    }

    public int getMatchLen(int i10, int i11) {
        int i12 = (this.readPos - i10) - 1;
        int i13 = 0;
        while (i13 < i11) {
            byte[] bArr = this.buf;
            if (bArr[this.readPos + i13] != bArr[i12 + i13]) {
                break;
            }
            i13++;
        }
        return i13;
    }

    public abstract Matches getMatches();

    public int getPos() {
        return this.readPos;
    }

    public boolean hasEnoughData(int i10) {
        return this.readPos - i10 < this.readLimit;
    }

    public boolean isStarted() {
        return this.readPos != -1;
    }

    public int movePos(int i10, int i11) {
        int i12 = this.readPos + 1;
        this.readPos = i12;
        int i13 = this.writePos - i12;
        if (i13 >= i10) {
            return i13;
        }
        if (i13 >= i11 && this.finishing) {
            return i13;
        }
        this.pendingSize++;
        return 0;
    }

    public void putArraysToCache(ArrayCache arrayCache) {
        arrayCache.putArray(this.buf);
    }

    public void setFinishing() {
        this.readLimit = this.writePos - 1;
        this.finishing = true;
        processPendingBytes();
    }

    public void setFlushing() {
        this.readLimit = this.writePos - 1;
        processPendingBytes();
    }

    public void setPresetDict(int i10, byte[] bArr) {
        if (bArr != null) {
            int min = Math.min(bArr.length, i10);
            System.arraycopy(bArr, bArr.length - min, this.buf, 0, min);
            this.writePos += min;
            skip(min);
        }
    }

    public abstract void skip(int i10);

    public boolean verifyMatches(Matches matches) {
        int min = Math.min(getAvail(), this.matchLenMax);
        for (int i10 = 0; i10 < matches.count; i10++) {
            if (getMatchLen(matches.dist[i10], min) != matches.len[i10]) {
                return false;
            }
        }
        return true;
    }

    public int getByte(int i10, int i11) {
        return this.buf[(this.readPos + i10) - i11] & 255;
    }

    public int getMatchLen(int i10, int i11, int i12) {
        int i13 = this.readPos + i10;
        int i14 = (i13 - i11) - 1;
        int i15 = 0;
        while (i15 < i12) {
            byte[] bArr = this.buf;
            if (bArr[i13 + i15] != bArr[i14 + i15]) {
                break;
            }
            i15++;
        }
        return i15;
    }
}
