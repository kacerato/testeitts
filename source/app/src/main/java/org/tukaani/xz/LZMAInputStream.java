package org.tukaani.xz;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.tukaani.xz.lz.LZDecoder;
import org.tukaani.xz.lzma.LZMADecoder;
import org.tukaani.xz.rangecoder.RangeDecoderFromStream;

public class LZMAInputStream extends InputStream {
    static final boolean $assertionsDisabled = false;
    public static final int DICT_SIZE_MAX = 2147483632;
    private ArrayCache arrayCache;
    private boolean endReached;
    private IOException exception;

    private InputStream f103358in;
    private LZDecoder lz;
    private LZMADecoder lzma;

    private RangeDecoderFromStream f103359rc;
    private boolean relaxedEndCondition;
    private long remainingSize;
    private final byte[] tempBuf;

    public LZMAInputStream(InputStream inputStream) throws IOException {
        this(inputStream, -1);
    }

    private static int getDictSize(int i10) {
        if (i10 < 0 || i10 > 2147483632) {
            throw new IllegalArgumentException("LZMA dictionary is too big for this implementation");
        }
        if (i10 < 4096) {
            i10 = 4096;
        }
        return (i10 + 15) & (-16);
    }

    public static int getMemoryUsage(int i10, byte b10) throws UnsupportedOptionsException, CorruptedInputException {
        if (i10 < 0 || i10 > 2147483632) {
            throw new UnsupportedOptionsException("LZMA dictionary is too big for this implementation");
        }
        int i11 = b10 & 255;
        if (i11 > 224) {
            throw new CorruptedInputException("Invalid LZMA properties byte");
        }
        int i12 = i11 % 45;
        int i13 = i12 / 9;
        return getMemoryUsage(i10, i12 - (i13 * 9), i13);
    }

    private void initialize(InputStream inputStream, long j10, byte b10, int i10, byte[] bArr, ArrayCache arrayCache) throws IOException {
        if (j10 < -1) {
            throw new UnsupportedOptionsException("Uncompressed size is too big");
        }
        int i11 = b10 & 255;
        if (i11 > 224) {
            throw new CorruptedInputException("Invalid LZMA properties byte");
        }
        int i12 = i11 / 45;
        int i13 = i11 - (i12 * 45);
        int i14 = i13 / 9;
        int i15 = i13 - (i14 * 9);
        if (i10 < 0 || i10 > 2147483632) {
            throw new UnsupportedOptionsException("LZMA dictionary is too big for this implementation");
        }
        initialize(inputStream, j10, i15, i14, i12, i10, bArr, arrayCache);
    }

    private void putArraysToCache() {
        LZDecoder lZDecoder = this.lz;
        if (lZDecoder != null) {
            lZDecoder.putArraysToCache(this.arrayCache);
            this.lz = null;
        }
    }

    @Override
    public void close() throws IOException {
        if (this.f103358in != null) {
            putArraysToCache();
            try {
                this.f103358in.close();
            } finally {
                this.f103358in = null;
            }
        }
    }

    public void enableRelaxedEndCondition() {
        this.relaxedEndCondition = true;
    }

    @Override
    public int read() throws IOException {
        if (read(this.tempBuf, 0, 1) == -1) {
            return -1;
        }
        return this.tempBuf[0] & 255;
    }

    public LZMAInputStream(InputStream inputStream, int i10) throws IOException {
        this(inputStream, i10, ArrayCache.getDefaultCache());
    }

    public static int getMemoryUsage(int i10, int i11, int i12) {
        if (i11 < 0 || i11 > 8 || i12 < 0 || i12 > 4) {
            throw new IllegalArgumentException("Invalid lc or lp");
        }
        return (getDictSize(i10) / 1024) + 10 + ((1536 << (i11 + i12)) / 1024);
    }

    private void initialize(InputStream inputStream, long j10, int i10, int i11, int i12, int i13, byte[] bArr, ArrayCache arrayCache) throws IOException {
        if (j10 < -1 || i10 < 0 || i10 > 8 || i11 < 0 || i11 > 4 || i12 < 0 || i12 > 4) {
            throw new IllegalArgumentException();
        }
        this.f103358in = inputStream;
        this.arrayCache = arrayCache;
        int dictSize = getDictSize(i13);
        if (j10 >= 0 && dictSize > j10) {
            dictSize = getDictSize((int) j10);
        }
        this.lz = new LZDecoder(getDictSize(dictSize), bArr, arrayCache);
        RangeDecoderFromStream rangeDecoderFromStream = new RangeDecoderFromStream(inputStream);
        this.f103359rc = rangeDecoderFromStream;
        this.lzma = new LZMADecoder(this.lz, rangeDecoderFromStream, i10, i11, i12);
        this.remainingSize = j10;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        if (i10 < 0 || i11 < 0 || (i12 = i10 + i11) < 0 || i12 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        int i13 = 0;
        if (i11 == 0) {
            return 0;
        }
        if (this.f103358in == null) {
            throw new XZIOException("Stream closed");
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        if (this.endReached) {
            return -1;
        }
        while (i11 > 0) {
            try {
                long j10 = this.remainingSize;
                this.lz.setLimit((j10 < 0 || j10 >= ((long) i11)) ? i11 : (int) j10);
                try {
                    this.lzma.decode();
                } catch (CorruptedInputException e10) {
                    if (this.remainingSize != -1 || !this.lzma.endMarkerDetected()) {
                        throw e10;
                    }
                    this.endReached = true;
                    this.f103359rc.normalize();
                }
                int flush = this.lz.flush(bArr, i10);
                i10 += flush;
                i11 -= flush;
                i13 += flush;
                long j11 = this.remainingSize;
                if (j11 >= 0) {
                    long j12 = j11 - flush;
                    this.remainingSize = j12;
                    if (j12 == 0) {
                        this.endReached = true;
                    }
                }
                if (this.endReached) {
                    if (this.lz.hasPending() || !(this.relaxedEndCondition || this.f103359rc.isFinished())) {
                        throw new CorruptedInputException();
                    }
                    putArraysToCache();
                    if (i13 == 0) {
                        return -1;
                    }
                    return i13;
                }
            } catch (IOException e11) {
                this.exception = e11;
                throw e11;
            }
        }
        return i13;
    }

    public LZMAInputStream(InputStream inputStream, int i10, ArrayCache arrayCache) throws IOException {
        this.endReached = false;
        this.relaxedEndCondition = false;
        this.tempBuf = new byte[1];
        this.exception = null;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        byte readByte = dataInputStream.readByte();
        int i11 = 0;
        for (int i12 = 0; i12 < 4; i12++) {
            i11 |= dataInputStream.readUnsignedByte() << (i12 * 8);
        }
        long j10 = 0;
        for (int i13 = 0; i13 < 8; i13++) {
            j10 |= dataInputStream.readUnsignedByte() << (i13 * 8);
        }
        int memoryUsage = getMemoryUsage(i11, readByte);
        if (i10 != -1 && memoryUsage > i10) {
            throw new MemoryLimitException(memoryUsage, i10);
        }
        initialize(inputStream, j10, readByte, i11, null, arrayCache);
    }

    public LZMAInputStream(InputStream inputStream, long j10, byte b10, int i10) throws IOException {
        this.endReached = false;
        this.relaxedEndCondition = false;
        this.tempBuf = new byte[1];
        this.exception = null;
        initialize(inputStream, j10, b10, i10, null, ArrayCache.getDefaultCache());
    }

    public LZMAInputStream(InputStream inputStream, long j10, byte b10, int i10, byte[] bArr) throws IOException {
        this.endReached = false;
        this.relaxedEndCondition = false;
        this.tempBuf = new byte[1];
        this.exception = null;
        initialize(inputStream, j10, b10, i10, bArr, ArrayCache.getDefaultCache());
    }

    public LZMAInputStream(InputStream inputStream, long j10, byte b10, int i10, byte[] bArr, ArrayCache arrayCache) throws IOException {
        this.endReached = false;
        this.relaxedEndCondition = false;
        this.tempBuf = new byte[1];
        this.exception = null;
        initialize(inputStream, j10, b10, i10, bArr, arrayCache);
    }

    public LZMAInputStream(InputStream inputStream, long j10, int i10, int i11, int i12, int i13, byte[] bArr) throws IOException {
        this.endReached = false;
        this.relaxedEndCondition = false;
        this.tempBuf = new byte[1];
        this.exception = null;
        initialize(inputStream, j10, i10, i11, i12, i13, bArr, ArrayCache.getDefaultCache());
    }

    public LZMAInputStream(InputStream inputStream, long j10, int i10, int i11, int i12, int i13, byte[] bArr, ArrayCache arrayCache) throws IOException {
        this.endReached = false;
        this.relaxedEndCondition = false;
        this.tempBuf = new byte[1];
        this.exception = null;
        initialize(inputStream, j10, i10, i11, i12, i13, bArr, arrayCache);
    }

    public LZMAInputStream(InputStream inputStream, ArrayCache arrayCache) throws IOException {
        this(inputStream, -1, arrayCache);
    }
}
