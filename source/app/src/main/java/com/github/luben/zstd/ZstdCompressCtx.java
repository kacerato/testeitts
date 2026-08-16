package com.github.luben.zstd;

import com.github.luben.zstd.util.Native;
import java.nio.ByteBuffer;
import java.util.Arrays;

public class ZstdCompressCtx extends AutoCloseBase {
    private ZstdDictCompress compression_dict = null;
    private long nativePtr;

    static {
        Native.load();
    }

    public ZstdCompressCtx() {
        this.nativePtr = 0L;
        long init = init();
        this.nativePtr = init;
        if (0 == init) {
            throw new IllegalStateException("ZSTD_createCompressCtx failed");
        }
        storeFence();
    }

    private static native long compressByteArray0(long j10, byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13);

    private static native long compressDirectByteBuffer0(long j10, ByteBuffer byteBuffer, int i10, int i11, ByteBuffer byteBuffer2, int i12, int i13);

    private static native long compressDirectByteBufferStream0(long j10, ByteBuffer byteBuffer, int i10, int i11, ByteBuffer byteBuffer2, int i12, int i13, int i14);

    private void ensureOpen() {
        if (this.nativePtr == 0) {
            throw new IllegalStateException("Compression context is closed");
        }
    }

    private static native void free(long j10);

    private static native ZstdFrameProgression getFrameProgression0(long j10);

    private static native long init();

    private native long loadCDict0(long j10, byte[] bArr);

    private native long loadCDictFast0(long j10, ZstdDictCompress zstdDictCompress);

    private static native long reset0(long j10);

    private static native void setChecksum0(long j10, boolean z10);

    private static native void setContentSize0(long j10, boolean z10);

    private static native void setDictID0(long j10, boolean z10);

    private static native void setLevel0(long j10, int i10);

    private static native long setPledgedSrcSize0(long j10, long j11);

    @Override
    public void close() {
        super.close();
    }

    public int compress(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        int compressDirectByteBuffer = compressDirectByteBuffer(byteBuffer, byteBuffer.position(), byteBuffer.limit() - byteBuffer.position(), byteBuffer2, byteBuffer2.position(), byteBuffer2.limit() - byteBuffer2.position());
        byteBuffer2.position(byteBuffer2.limit());
        byteBuffer.position(byteBuffer.position() + compressDirectByteBuffer);
        return compressDirectByteBuffer;
    }

    public int compressByteArray(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        ensureOpen();
        acquireSharedLock();
        try {
            long compressByteArray0 = compressByteArray0(this.nativePtr, bArr, i10, i11, bArr2, i12, i13);
            if (Zstd.isError(compressByteArray0)) {
                throw new ZstdException(compressByteArray0);
            }
            if (compressByteArray0 > 2147483647L) {
                throw new ZstdException(Zstd.errGeneric(), "Output size is greater than MAX_INT");
            }
            int i14 = (int) compressByteArray0;
            releaseSharedLock();
            return i14;
        } catch (Throwable th2) {
            releaseSharedLock();
            throw th2;
        }
    }

    public int compressDirectByteBuffer(ByteBuffer byteBuffer, int i10, int i11, ByteBuffer byteBuffer2, int i12, int i13) {
        ensureOpen();
        if (!byteBuffer2.isDirect()) {
            throw new IllegalArgumentException("srcBuff must be a direct buffer");
        }
        if (!byteBuffer.isDirect()) {
            throw new IllegalArgumentException("dstBuff must be a direct buffer");
        }
        acquireSharedLock();
        try {
            long compressDirectByteBuffer0 = compressDirectByteBuffer0(this.nativePtr, byteBuffer, i10, i11, byteBuffer2, i12, i13);
            if (Zstd.isError(compressDirectByteBuffer0)) {
                throw new ZstdException(compressDirectByteBuffer0);
            }
            if (compressDirectByteBuffer0 > 2147483647L) {
                throw new ZstdException(Zstd.errGeneric(), "Output size is greater than MAX_INT");
            }
            int i14 = (int) compressDirectByteBuffer0;
            releaseSharedLock();
            return i14;
        } catch (Throwable th2) {
            releaseSharedLock();
            throw th2;
        }
    }

    public boolean compressDirectByteBufferStream(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, EndDirective endDirective) {
        ensureOpen();
        long compressDirectByteBufferStream0 = compressDirectByteBufferStream0(this.nativePtr, byteBuffer, byteBuffer.position(), byteBuffer.limit(), byteBuffer2, byteBuffer2.position(), byteBuffer2.limit(), endDirective.value());
        if ((2147483648L & compressDirectByteBufferStream0) != 0) {
            long j10 = 255 & compressDirectByteBufferStream0;
            throw new ZstdException(j10, Zstd.getErrorName(j10));
        }
        byteBuffer2.position((int) (2147483647L & compressDirectByteBufferStream0));
        byteBuffer.position(((int) (compressDirectByteBufferStream0 >>> 32)) & Integer.MAX_VALUE);
        return (compressDirectByteBufferStream0 >>> 63) == 1;
    }

    @Override
    public void doClose() {
        long j10 = this.nativePtr;
        if (j10 != 0) {
            free(j10);
            this.nativePtr = 0L;
        }
    }

    public ZstdFrameProgression getFrameProgression() {
        ensureOpen();
        return getFrameProgression0(this.nativePtr);
    }

    public ZstdCompressCtx loadDict(ZstdDictCompress zstdDictCompress) {
        ensureOpen();
        acquireSharedLock();
        zstdDictCompress.acquireSharedLock();
        try {
            long loadCDictFast0 = loadCDictFast0(this.nativePtr, zstdDictCompress);
            if (!Zstd.isError(loadCDictFast0)) {
                this.compression_dict = zstdDictCompress;
                return this;
            }
            throw new ZstdException(loadCDictFast0);
        } finally {
            zstdDictCompress.releaseSharedLock();
            releaseSharedLock();
        }
    }

    public void reset() {
        ensureOpen();
        long reset0 = reset0(this.nativePtr);
        if (Zstd.isError(reset0)) {
            throw new ZstdException(reset0);
        }
    }

    public ZstdCompressCtx setChecksum(boolean z10) {
        ensureOpen();
        acquireSharedLock();
        setChecksum0(this.nativePtr, z10);
        releaseSharedLock();
        return this;
    }

    public ZstdCompressCtx setContentSize(boolean z10) {
        ensureOpen();
        acquireSharedLock();
        setContentSize0(this.nativePtr, z10);
        releaseSharedLock();
        return this;
    }

    public ZstdCompressCtx setDictID(boolean z10) {
        ensureOpen();
        acquireSharedLock();
        setDictID0(this.nativePtr, z10);
        releaseSharedLock();
        return this;
    }

    public ZstdCompressCtx setLevel(int i10) {
        ensureOpen();
        acquireSharedLock();
        setLevel0(this.nativePtr, i10);
        releaseSharedLock();
        return this;
    }

    public ZstdCompressCtx setLong(int i10) {
        ensureOpen();
        acquireSharedLock();
        Zstd.setCompressionLong(this.nativePtr, i10);
        releaseSharedLock();
        return this;
    }

    public ZstdCompressCtx setMagicless(boolean z10) {
        ensureOpen();
        acquireSharedLock();
        Zstd.setCompressionMagicless(this.nativePtr, z10);
        releaseSharedLock();
        return this;
    }

    public void setPledgedSrcSize(long j10) {
        ensureOpen();
        long pledgedSrcSize0 = setPledgedSrcSize0(this.nativePtr, j10);
        if (Zstd.isError(pledgedSrcSize0)) {
            throw new ZstdException(pledgedSrcSize0);
        }
    }

    public ZstdCompressCtx setWorkers(int i10) {
        ensureOpen();
        acquireSharedLock();
        Zstd.setCompressionWorkers(this.nativePtr, i10);
        releaseSharedLock();
        return this;
    }

    public ByteBuffer compress(ByteBuffer byteBuffer) throws ZstdException {
        long compressBound = Zstd.compressBound(byteBuffer.limit() - byteBuffer.position());
        if (compressBound <= 2147483647L) {
            int i10 = (int) compressBound;
            ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i10);
            int compressDirectByteBuffer = compressDirectByteBuffer(allocateDirect, 0, i10, byteBuffer, byteBuffer.position(), byteBuffer.limit() - byteBuffer.position());
            byteBuffer.position(byteBuffer.limit());
            allocateDirect.limit(compressDirectByteBuffer);
            return allocateDirect;
        }
        throw new ZstdException(Zstd.errGeneric(), "Max output size is greater than MAX_INT");
    }

    public ZstdCompressCtx loadDict(byte[] bArr) {
        ensureOpen();
        acquireSharedLock();
        try {
            long loadCDict0 = loadCDict0(this.nativePtr, bArr);
            if (!Zstd.isError(loadCDict0)) {
                this.compression_dict = null;
                return this;
            }
            throw new ZstdException(loadCDict0);
        } finally {
            releaseSharedLock();
        }
    }

    public int compress(byte[] bArr, byte[] bArr2) {
        return compressByteArray(bArr, 0, bArr.length, bArr2, 0, bArr2.length);
    }

    public byte[] compress(byte[] bArr) {
        long compressBound = Zstd.compressBound(bArr.length);
        if (compressBound <= 2147483647L) {
            int i10 = (int) compressBound;
            byte[] bArr2 = new byte[i10];
            return Arrays.copyOfRange(bArr2, 0, compressByteArray(bArr2, 0, i10, bArr, 0, bArr.length));
        }
        throw new ZstdException(Zstd.errGeneric(), "Max output size is greater than MAX_INT");
    }
}
