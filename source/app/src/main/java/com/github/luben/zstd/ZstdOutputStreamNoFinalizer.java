package com.github.luben.zstd;

import com.github.luben.zstd.util.Native;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

public class ZstdOutputStreamNoFinalizer extends FilterOutputStream {
    private static final int dstSize;
    private final BufferPool bufferPool;
    private boolean closeFrameOnFlush;
    private final byte[] dst;
    private final ByteBuffer dstByteBuffer;
    private long dstPos;
    private boolean frameClosed;
    private boolean frameStarted;
    private boolean isClosed;
    private long srcPos;
    private final long stream;

    static {
        Native.load();
        dstSize = (int) recommendedCOutSize();
    }

    public ZstdOutputStreamNoFinalizer(OutputStream outputStream, int i10) throws IOException {
        this(outputStream, NoPool.INSTANCE);
        Zstd.setCompressionLevel(this.stream, i10);
    }

    private native int compressStream(long j10, byte[] bArr, int i10, byte[] bArr2, int i11);

    private static native long createCStream();

    private native int endStream(long j10, byte[] bArr, int i10);

    private native int flushStream(long j10, byte[] bArr, int i10);

    private static native int freeCStream(long j10);

    public static native long recommendedCOutSize();

    private native int resetCStream(long j10);

    @Override
    public synchronized void close() throws IOException {
        close(true);
    }

    public synchronized void closeWithoutClosingParentStream() throws IOException {
        close(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001d, code lost:
    
        if (com.github.luben.zstd.Zstd.isError(r2) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
    
        r6.out.write(r6.dst, 0, (int) r6.dstPos);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0029, code lost:
    
        if (r0 > 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002b, code lost:
    
        r6.frameClosed = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0054, code lost:
    
        r6.out.flush();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0036, code lost:
    
        throw new com.github.luben.zstd.ZstdIOException(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0037, code lost:
    
        r0 = flushStream(r6.stream, r6.dst, com.github.luben.zstd.ZstdOutputStreamNoFinalizer.dstSize);
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0046, code lost:
    
        if (com.github.luben.zstd.Zstd.isError(r2) != false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0048, code lost:
    
        r6.out.write(r6.dst, 0, (int) r6.dstPos);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0052, code lost:
    
        if (r0 > 0) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005f, code lost:
    
        throw new com.github.luben.zstd.ZstdIOException(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x000c, code lost:
    
        if (r6.closeFrameOnFlush != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x000e, code lost:
    
        r0 = endStream(r6.stream, r6.dst, com.github.luben.zstd.ZstdOutputStreamNoFinalizer.dstSize);
        r2 = r0;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void flush() throws IOException {
        try {
            if (this.isClosed) {
                throw new IOException("StreamClosed");
            }
            if (!this.frameClosed) {
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized ZstdOutputStreamNoFinalizer setChecksum(boolean z10) throws IOException {
        try {
            if (!this.frameClosed) {
                throw new IllegalStateException("Change of parameter on initialized stream");
            }
            long compressionChecksums = Zstd.setCompressionChecksums(this.stream, z10);
            if (Zstd.isError(compressionChecksums)) {
                throw new ZstdIOException(compressionChecksums);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this;
    }

    public synchronized ZstdOutputStreamNoFinalizer setCloseFrameOnFlush(boolean z10) {
        if (!this.frameClosed) {
            throw new IllegalStateException("Change of parameter on initialized stream");
        }
        this.closeFrameOnFlush = z10;
        return this;
    }

    public synchronized ZstdOutputStreamNoFinalizer setDict(byte[] bArr) throws IOException {
        try {
            if (this.frameClosed) {
                long loadDictCompress = Zstd.loadDictCompress(this.stream, bArr, bArr.length);
                if (Zstd.isError(loadDictCompress)) {
                    throw new ZstdIOException(loadDictCompress);
                }
            } else {
                throw new IllegalStateException("Change of parameter on initialized stream");
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this;
    }

    public synchronized ZstdOutputStreamNoFinalizer setLevel(int i10) throws IOException {
        try {
            if (!this.frameClosed) {
                throw new IllegalStateException("Change of parameter on initialized stream");
            }
            long compressionLevel = Zstd.setCompressionLevel(this.stream, i10);
            if (Zstd.isError(compressionLevel)) {
                throw new ZstdIOException(compressionLevel);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this;
    }

    public synchronized ZstdOutputStreamNoFinalizer setLong(int i10) throws IOException {
        try {
            if (!this.frameClosed) {
                throw new IllegalStateException("Change of parameter on initialized stream");
            }
            long compressionLong = Zstd.setCompressionLong(this.stream, i10);
            if (Zstd.isError(compressionLong)) {
                throw new ZstdIOException(compressionLong);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this;
    }

    public synchronized ZstdOutputStreamNoFinalizer setWorkers(int i10) throws IOException {
        try {
            if (!this.frameClosed) {
                throw new IllegalStateException("Change of parameter on initialized stream");
            }
            long compressionWorkers = Zstd.setCompressionWorkers(this.stream, i10);
            if (Zstd.isError(compressionWorkers)) {
                throw new ZstdIOException(compressionWorkers);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this;
    }

    @Override
    public synchronized void write(byte[] bArr, int i10, int i11) throws IOException {
        try {
            if (!this.isClosed) {
                if (this.frameClosed) {
                    long resetCStream = resetCStream(this.stream);
                    if (!Zstd.isError(resetCStream)) {
                        this.frameClosed = false;
                        this.frameStarted = true;
                    } else {
                        throw new ZstdIOException(resetCStream);
                    }
                }
                int i12 = i11 + i10;
                this.srcPos = i10;
                while (this.srcPos < i12) {
                    long compressStream = compressStream(this.stream, this.dst, dstSize, bArr, i12);
                    if (!Zstd.isError(compressStream)) {
                        long j10 = this.dstPos;
                        if (j10 > 0) {
                            this.out.write(this.dst, 0, (int) j10);
                        }
                    } else {
                        throw new ZstdIOException(compressStream);
                    }
                }
            } else {
                throw new IOException("StreamClosed");
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public ZstdOutputStreamNoFinalizer(OutputStream outputStream) throws IOException {
        this(outputStream, NoPool.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0025, code lost:
    
        if (r7.frameClosed == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0027, code lost:
    
        r1 = endStream(r7.stream, r7.dst, com.github.luben.zstd.ZstdOutputStreamNoFinalizer.dstSize);
        r3 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0036, code lost:
    
        if (com.github.luben.zstd.Zstd.isError(r3) != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0038, code lost:
    
        r7.out.write(r7.dst, 0, (int) r7.dstPos);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0042, code lost:
    
        if (r1 > 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004a, code lost:
    
        throw new com.github.luben.zstd.ZstdIOException(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004b, code lost:
    
        if (r8 == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x004d, code lost:
    
        r7.out.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0052, code lost:
    
        r7.isClosed = true;
        r7.bufferPool.release(r7.dstByteBuffer);
        freeCStream(r7.stream);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0060, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void close(boolean z10) throws IOException {
        if (this.isClosed) {
            return;
        }
        try {
            if (!this.frameStarted) {
                long resetCStream = resetCStream(this.stream);
                if (!Zstd.isError(resetCStream)) {
                    this.frameClosed = false;
                } else {
                    throw new ZstdIOException(resetCStream);
                }
            }
        } catch (Throwable th2) {
            this.isClosed = true;
            this.bufferPool.release(this.dstByteBuffer);
            freeCStream(this.stream);
            throw th2;
        }
    }

    public ZstdOutputStreamNoFinalizer(OutputStream outputStream, BufferPool bufferPool, int i10) throws IOException {
        this(outputStream, bufferPool);
        Zstd.setCompressionLevel(this.stream, i10);
    }

    public ZstdOutputStreamNoFinalizer(OutputStream outputStream, BufferPool bufferPool) throws IOException {
        super(outputStream);
        this.srcPos = 0L;
        this.dstPos = 0L;
        this.isClosed = false;
        this.closeFrameOnFlush = false;
        this.frameClosed = true;
        this.frameStarted = false;
        this.stream = createCStream();
        this.bufferPool = bufferPool;
        int i10 = dstSize;
        ByteBuffer byteBuffer = bufferPool.get(i10);
        this.dstByteBuffer = byteBuffer;
        if (byteBuffer != null) {
            this.dst = Zstd.extractArray(byteBuffer);
            return;
        }
        throw new ZstdIOException(Zstd.errMemoryAllocation(), "Cannot get ByteBuffer of size " + i10 + " from the BufferPool");
    }

    public synchronized ZstdOutputStreamNoFinalizer setDict(ZstdDictCompress zstdDictCompress) throws IOException {
        try {
            if (this.frameClosed) {
                long loadFastDictCompress = Zstd.loadFastDictCompress(this.stream, zstdDictCompress);
                if (Zstd.isError(loadFastDictCompress)) {
                    throw new ZstdIOException(loadFastDictCompress);
                }
            } else {
                throw new IllegalStateException("Change of parameter on initialized stream");
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this;
    }

    @Override
    public void write(int i10) throws IOException {
        write(new byte[]{(byte) i10}, 0, 1);
    }
}
