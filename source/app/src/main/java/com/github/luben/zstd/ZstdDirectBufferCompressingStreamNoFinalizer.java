package com.github.luben.zstd;

import com.github.luben.zstd.util.Native;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.nio.ByteBuffer;

public class ZstdDirectBufferCompressingStreamNoFinalizer implements Closeable, Flushable {
    private int level;
    private final long stream;
    private ByteBuffer target;
    private int consumed = 0;
    private int produced = 0;
    private boolean closed = false;
    private boolean initialized = false;
    private byte[] dict = null;
    private ZstdDictCompress fastDict = null;

    static {
        Native.load();
    }

    public ZstdDirectBufferCompressingStreamNoFinalizer(ByteBuffer byteBuffer, int i10) throws IOException {
        this.level = Zstd.defaultCompressionLevel();
        if (!byteBuffer.isDirect()) {
            throw new IllegalArgumentException("Target buffer should be a direct buffer");
        }
        this.target = byteBuffer;
        this.level = i10;
        this.stream = createCStream();
    }

    private native long compressDirectByteBuffer(long j10, ByteBuffer byteBuffer, int i10, int i11, ByteBuffer byteBuffer2, int i12, int i13);

    private static native long createCStream();

    private native long endStream(long j10, ByteBuffer byteBuffer, int i10, int i11);

    private native long flushStream(long j10, ByteBuffer byteBuffer, int i10, int i11);

    private static native long freeCStream(long j10);

    private native long initCStream(long j10, int i10);

    private native long initCStreamWithDict(long j10, byte[] bArr, int i10, int i11);

    private native long initCStreamWithFastDict(long j10, ZstdDictCompress zstdDictCompress);

    private static native long recommendedCOutSize();

    public static int recommendedOutputBufferSize() {
        return (int) recommendedCOutSize();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003c, code lost:
    
        if (r5.isDirect() == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0042, code lost:
    
        if (r3 <= 0) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004a, code lost:
    
        if (r10.target.hasRemaining() == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0057, code lost:
    
        if (r3 > 0) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0054, code lost:
    
        throw new java.io.IOException("The target buffer has no more space, even after flushing, and there are still bytes to compress");
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0061, code lost:
    
        throw new java.lang.IllegalArgumentException("Target buffer should be a direct buffer");
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0067, code lost:
    
        throw new com.github.luben.zstd.ZstdIOException(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0009, code lost:
    
        if (r10.initialized != false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000b, code lost:
    
        r5 = r10.stream;
        r7 = r10.target;
        r3 = endStream(r5, r7, r7.position(), r10.target.remaining());
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0022, code lost:
    
        if (com.github.luben.zstd.Zstd.isError(r3) != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0024, code lost:
    
        r5 = r10.target;
        r5.position(r5.position() + r10.produced);
        r5 = flushBuffer(r10.target);
        r10.target = r5;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        try {
        } finally {
            freeCStream(this.stream);
            this.closed = true;
            this.initialized = false;
            this.target = null;
        }
    }

    public void compress(ByteBuffer byteBuffer) throws IOException {
        long initCStreamWithDict;
        if (!byteBuffer.isDirect()) {
            throw new IllegalArgumentException("Source buffer should be a direct buffer");
        }
        if (this.closed) {
            throw new IOException("Stream closed");
        }
        if (!this.initialized) {
            ZstdDictCompress zstdDictCompress = this.fastDict;
            if (zstdDictCompress != null) {
                zstdDictCompress.acquireSharedLock();
                try {
                    initCStreamWithDict = initCStreamWithFastDict(this.stream, zstdDictCompress);
                } finally {
                    zstdDictCompress.releaseSharedLock();
                }
            } else {
                byte[] bArr = this.dict;
                initCStreamWithDict = bArr != null ? initCStreamWithDict(this.stream, bArr, bArr.length, this.level) : initCStream(this.stream, this.level);
            }
            if (Zstd.isError(initCStreamWithDict)) {
                throw new ZstdIOException(initCStreamWithDict);
            }
            this.initialized = true;
        }
        while (byteBuffer.hasRemaining()) {
            if (!this.target.hasRemaining()) {
                ByteBuffer flushBuffer = flushBuffer(this.target);
                this.target = flushBuffer;
                if (!flushBuffer.isDirect()) {
                    throw new IllegalArgumentException("Target buffer should be a direct buffer");
                }
                if (!this.target.hasRemaining()) {
                    throw new IOException("The target buffer has no more space, even after flushing, and there are still bytes to compress");
                }
            }
            long j10 = this.stream;
            ByteBuffer byteBuffer2 = this.target;
            long compressDirectByteBuffer = compressDirectByteBuffer(j10, byteBuffer2, byteBuffer2.position(), this.target.remaining(), byteBuffer, byteBuffer.position(), byteBuffer.remaining());
            if (Zstd.isError(compressDirectByteBuffer)) {
                throw new ZstdIOException(compressDirectByteBuffer);
            }
            ByteBuffer byteBuffer3 = this.target;
            byteBuffer3.position(byteBuffer3.position() + this.produced);
            byteBuffer.position(byteBuffer.position() + this.consumed);
        }
    }

    @Override
    public void flush() throws IOException {
        long flushStream;
        if (this.closed) {
            throw new IOException("Already closed");
        }
        if (!this.initialized) {
            return;
        }
        do {
            long j10 = this.stream;
            ByteBuffer byteBuffer = this.target;
            flushStream = flushStream(j10, byteBuffer, byteBuffer.position(), this.target.remaining());
            if (Zstd.isError(flushStream)) {
                throw new ZstdIOException(flushStream);
            }
            ByteBuffer byteBuffer2 = this.target;
            byteBuffer2.position(byteBuffer2.position() + this.produced);
            ByteBuffer flushBuffer = flushBuffer(this.target);
            this.target = flushBuffer;
            if (!flushBuffer.isDirect()) {
                throw new IllegalArgumentException("Target buffer should be a direct buffer");
            }
            if (flushStream > 0 && !this.target.hasRemaining()) {
                throw new IOException("The target buffer has no more space, even after flushing, and there are still bytes to compress");
            }
        } while (flushStream > 0);
    }

    public ByteBuffer flushBuffer(ByteBuffer byteBuffer) throws IOException {
        return byteBuffer;
    }

    public ZstdDirectBufferCompressingStreamNoFinalizer setDict(byte[] bArr) {
        if (!this.initialized) {
            this.dict = bArr;
            this.fastDict = null;
            return this;
        }
        throw new IllegalStateException("Change of parameter on initialized stream");
    }

    public ZstdDirectBufferCompressingStreamNoFinalizer setDict(ZstdDictCompress zstdDictCompress) {
        if (!this.initialized) {
            this.dict = null;
            this.fastDict = zstdDictCompress;
            return this;
        }
        throw new IllegalStateException("Change of parameter on initialized stream");
    }
}
