package org.tukaani.xz;

import java.io.IOException;
import java.io.InputStream;
import org.tukaani.xz.simple.SimpleFilter;

class SimpleInputStream extends InputStream {
    static final boolean $assertionsDisabled = false;
    private static final int FILTER_BUF_SIZE = 4096;

    private InputStream f103362in;
    private final SimpleFilter simpleFilter;
    private final byte[] filterBuf = new byte[4096];
    private int pos = 0;
    private int filtered = 0;
    private int unfiltered = 0;
    private boolean endReached = false;
    private IOException exception = null;
    private final byte[] tempBuf = new byte[1];

    public SimpleInputStream(InputStream inputStream, SimpleFilter simpleFilter) {
        inputStream.getClass();
        this.f103362in = inputStream;
        this.simpleFilter = simpleFilter;
    }

    public static int getMemoryUsage() {
        return 5;
    }

    @Override
    public int available() throws IOException {
        if (this.f103362in == null) {
            throw new XZIOException("Stream closed");
        }
        IOException iOException = this.exception;
        if (iOException == null) {
            return this.filtered;
        }
        throw iOException;
    }

    @Override
    public void close() throws IOException {
        InputStream inputStream = this.f103362in;
        if (inputStream != null) {
            try {
                inputStream.close();
            } finally {
                this.f103362in = null;
            }
        }
    }

    @Override
    public int read() throws IOException {
        if (read(this.tempBuf, 0, 1) == -1) {
            return -1;
        }
        return this.tempBuf[0] & 255;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        if (i10 < 0 || i11 < 0 || (i12 = i10 + i11) < 0 || i12 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        if (i11 == 0) {
            return 0;
        }
        if (this.f103362in == null) {
            throw new XZIOException("Stream closed");
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        int i13 = 0;
        while (true) {
            try {
                int min = Math.min(this.filtered, i11);
                System.arraycopy(this.filterBuf, this.pos, bArr, i10, min);
                int i14 = this.pos + min;
                this.pos = i14;
                int i15 = this.filtered - min;
                this.filtered = i15;
                i10 += min;
                i11 -= min;
                i13 += min;
                int i16 = this.unfiltered;
                if (i14 + i15 + i16 == 4096) {
                    byte[] bArr2 = this.filterBuf;
                    System.arraycopy(bArr2, i14, bArr2, 0, i15 + i16);
                    this.pos = 0;
                }
                if (i11 == 0 || this.endReached) {
                    break;
                }
                int i17 = this.pos;
                int i18 = this.filtered;
                int i19 = this.unfiltered;
                int read = this.f103362in.read(this.filterBuf, i17 + i18 + i19, 4096 - ((i17 + i18) + i19));
                if (read == -1) {
                    this.endReached = true;
                    this.filtered = this.unfiltered;
                    this.unfiltered = 0;
                } else {
                    int i20 = this.unfiltered + read;
                    this.unfiltered = i20;
                    int code = this.simpleFilter.code(this.filterBuf, this.pos, i20);
                    this.filtered = code;
                    this.unfiltered -= code;
                }
            } catch (IOException e10) {
                this.exception = e10;
                throw e10;
            }
        }
        if (i13 > 0) {
            return i13;
        }
        return -1;
    }
}
