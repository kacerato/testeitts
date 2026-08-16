package com.github.luben.zstd;

import com.github.luben.zstd.util.Native;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public class ZstdInputStreamNoFinalizer extends FilterInputStream {
    private static final int srcBuffSize;
    private final BufferPool bufferPool;
    private long dstPos;
    private boolean frameFinished;
    private boolean isClosed;
    private boolean isContinuous;
    private boolean needRead;
    private final byte[] src;
    private final ByteBuffer srcByteBuffer;
    private long srcPos;
    private long srcSize;
    private final long stream;

    static {
        Native.load();
        srcBuffSize = (int) recommendedDInSize();
    }

    public ZstdInputStreamNoFinalizer(InputStream inputStream) throws IOException {
        this(inputStream, NoPool.INSTANCE);
    }

    private static native long createDStream();

    private native int decompressStream(long j10, byte[] bArr, int i10, byte[] bArr2, int i11);

    private static native int freeDStream(long j10);

    private native int initDStream(long j10);

    public static native long recommendedDInSize();

    public static native long recommendedDOutSize();

    @Override
    public synchronized int available() throws IOException {
        if (this.isClosed) {
            throw new IOException("Stream closed");
        }
        if (!this.needRead) {
            return 1;
        }
        return this.f92730in.available();
    }

    @Override
    public synchronized void close() throws IOException {
        if (this.isClosed) {
            return;
        }
        this.isClosed = true;
        this.bufferPool.release(this.srcByteBuffer);
        freeDStream(this.stream);
        this.f92730in.close();
    }

    public synchronized boolean getContinuous() {
        return this.isContinuous;
    }

    @Override
    public boolean markSupported() {
        return false;
    }

    @Override
    public synchronized int read(byte[] bArr, int i10, int i11) throws IOException {
        if (i10 >= 0) {
            if (i11 <= bArr.length - i10) {
                int i12 = 0;
                if (i11 == 0) {
                    return 0;
                }
                while (i12 == 0) {
                    i12 = readInternal(bArr, i10, i11);
                }
                return i12;
            }
        }
        throw new IndexOutOfBoundsException("Requested length " + i11 + " from offset " + i10 + " in buffer of size " + bArr.length);
    }

    public int readInternal(byte[] bArr, int i10, int i11) throws IOException {
        long j10;
        if (this.isClosed) {
            throw new IOException("Stream closed");
        }
        if (i10 < 0 || i11 > bArr.length - i10) {
            throw new IndexOutOfBoundsException("Requested length " + i11 + " from offset " + i10 + " in buffer of size " + bArr.length);
        }
        int i12 = i10 + i11;
        long j11 = i10;
        this.dstPos = j11;
        long j12 = -1;
        while (true) {
            j10 = this.dstPos;
            long j13 = i12;
            if (j10 >= j13 || j12 >= j10) {
                break;
            }
            if (this.needRead && (this.f92730in.available() > 0 || this.dstPos == j11)) {
                long read = this.f92730in.read(this.src, 0, srcBuffSize);
                this.srcSize = read;
                this.srcPos = 0L;
                if (read < 0) {
                    this.srcSize = 0L;
                    if (this.frameFinished) {
                        return -1;
                    }
                    if (!this.isContinuous) {
                        throw new ZstdIOException(Zstd.errCorruptionDetected(), "Truncated source");
                    }
                    long j14 = (int) (this.dstPos - j11);
                    this.srcSize = j14;
                    if (j14 > 0) {
                        return (int) j14;
                    }
                    return -1;
                }
                this.frameFinished = false;
            }
            long j15 = this.dstPos;
            int decompressStream = decompressStream(this.stream, bArr, i12, this.src, (int) this.srcSize);
            long j16 = decompressStream;
            if (Zstd.isError(j16)) {
                throw new ZstdIOException(j16);
            }
            if (decompressStream == 0) {
                this.frameFinished = true;
                this.needRead = this.srcPos == this.srcSize;
                return (int) (this.dstPos - j11);
            }
            if (this.dstPos < j13) {
                r14 = true;
            }
            this.needRead = r14;
            j12 = j15;
        }
        return (int) (j10 - j11);
    }

    public synchronized ZstdInputStreamNoFinalizer setContinuous(boolean z10) {
        this.isContinuous = z10;
        return this;
    }

    public synchronized ZstdInputStreamNoFinalizer setDict(byte[] bArr) throws IOException {
        long loadDictDecompress = Zstd.loadDictDecompress(this.stream, bArr, bArr.length);
        if (Zstd.isError(loadDictDecompress)) {
            throw new ZstdIOException(loadDictDecompress);
        }
        return this;
    }

    public synchronized ZstdInputStreamNoFinalizer setLongMax(int i10) throws IOException {
        long decompressionLongMax = Zstd.setDecompressionLongMax(this.stream, i10);
        if (Zstd.isError(decompressionLongMax)) {
            throw new ZstdIOException(decompressionLongMax);
        }
        return this;
    }

    public synchronized ZstdInputStreamNoFinalizer setRefMultipleDDicts(boolean z10) throws IOException {
        long refMultipleDDicts = Zstd.setRefMultipleDDicts(this.stream, z10);
        if (Zstd.isError(refMultipleDDicts)) {
            throw new ZstdIOException(refMultipleDDicts);
        }
        return this;
    }

    @Override
    public synchronized long skip(long j10) throws IOException {
        if (this.isClosed) {
            throw new IOException("Stream closed");
        }
        if (j10 <= 0) {
            return 0L;
        }
        int recommendedDOutSize = (int) recommendedDOutSize();
        if (recommendedDOutSize > j10) {
            recommendedDOutSize = (int) j10;
        }
        ByteBuffer byteBuffer = this.bufferPool.get(recommendedDOutSize);
        try {
            byte[] extractArray = Zstd.extractArray(byteBuffer);
            long j11 = j10;
            while (j11 > 0) {
                int read = read(extractArray, 0, (int) Math.min(recommendedDOutSize, j11));
                if (read < 0) {
                    break;
                }
                j11 -= read;
            }
            return j10 - j11;
        } finally {
            this.bufferPool.release(byteBuffer);
        }
    }

    public ZstdInputStreamNoFinalizer(InputStream inputStream, BufferPool bufferPool) throws IOException {
        super(inputStream);
        this.dstPos = 0L;
        this.srcPos = 0L;
        this.srcSize = 0L;
        this.needRead = true;
        this.isContinuous = false;
        this.frameFinished = true;
        this.isClosed = false;
        this.bufferPool = bufferPool;
        int i10 = srcBuffSize;
        ByteBuffer byteBuffer = bufferPool.get(i10);
        this.srcByteBuffer = byteBuffer;
        if (byteBuffer != null) {
            this.src = Zstd.extractArray(byteBuffer);
            synchronized (this) {
                long createDStream = createDStream();
                this.stream = createDStream;
                initDStream(createDStream);
            }
            return;
        }
        throw new ZstdIOException(Zstd.errMemoryAllocation(), "Cannot get ByteBuffer of size " + i10 + " from the BufferPool");
    }

    @Override
    public synchronized int read() throws IOException {
        try {
            byte[] bArr = new byte[1];
            int i10 = 0;
            while (i10 == 0) {
                i10 = readInternal(bArr, 0, 1);
            }
            if (i10 != 1) {
                return -1;
            }
            return bArr[0] & 255;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized ZstdInputStreamNoFinalizer setDict(ZstdDictDecompress zstdDictDecompress) throws IOException {
        zstdDictDecompress.acquireSharedLock();
        try {
            long loadFastDictDecompress = Zstd.loadFastDictDecompress(this.stream, zstdDictDecompress);
            if (Zstd.isError(loadFastDictDecompress)) {
                throw new ZstdIOException(loadFastDictDecompress);
            }
        } finally {
            zstdDictDecompress.releaseSharedLock();
        }
        return this;
    }
}
