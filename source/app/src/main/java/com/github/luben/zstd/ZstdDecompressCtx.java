package com.github.luben.zstd;

import com.github.luben.zstd.util.Native;
import java.nio.ByteBuffer;
import java.util.Arrays;

public class ZstdDecompressCtx extends AutoCloseBase {
    private ZstdDictDecompress decompression_dict = null;
    private long nativePtr;

    static {
        Native.load();
    }

    public ZstdDecompressCtx() {
        this.nativePtr = 0L;
        long init = init();
        this.nativePtr = init;
        if (0 == init) {
            throw new IllegalStateException("ZSTD_createDeCompressCtx failed");
        }
        storeFence();
    }

    private static native long decompressByteArray0(long j10, byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13);

    private static native long decompressDirectByteBuffer0(long j10, ByteBuffer byteBuffer, int i10, int i11, ByteBuffer byteBuffer2, int i12, int i13);

    private static native long decompressDirectByteBufferStream0(long j10, ByteBuffer byteBuffer, int i10, int i11, ByteBuffer byteBuffer2, int i12, int i13);

    private void ensureOpen() {
        if (this.nativePtr == 0) {
            throw new IllegalStateException("Decompression context is closed");
        }
    }

    private static native void free(long j10);

    private static native long init();

    private static native long loadDDict0(long j10, byte[] bArr);

    private static native long loadDDictFast0(long j10, ZstdDictDecompress zstdDictDecompress);

    private static native void reset0(long j10);

    @Override
    public void close() {
        super.close();
    }

    public int decompress(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws ZstdException {
        int decompressDirectByteBuffer = decompressDirectByteBuffer(byteBuffer, byteBuffer.position(), byteBuffer.limit() - byteBuffer.position(), byteBuffer2, byteBuffer2.position(), byteBuffer2.limit() - byteBuffer2.position());
        byteBuffer2.position(byteBuffer2.limit());
        byteBuffer.position(byteBuffer.position() + decompressDirectByteBuffer);
        return decompressDirectByteBuffer;
    }

    public int decompressByteArray(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        ensureOpen();
        acquireSharedLock();
        try {
            long decompressByteArray0 = decompressByteArray0(this.nativePtr, bArr, i10, i11, bArr2, i12, i13);
            if (Zstd.isError(decompressByteArray0)) {
                throw new ZstdException(decompressByteArray0);
            }
            if (decompressByteArray0 > 2147483647L) {
                throw new ZstdException(Zstd.errGeneric(), "Output size is greater than MAX_INT");
            }
            int i14 = (int) decompressByteArray0;
            releaseSharedLock();
            return i14;
        } catch (Throwable th2) {
            releaseSharedLock();
            throw th2;
        }
    }

    public int decompressDirectByteBuffer(ByteBuffer byteBuffer, int i10, int i11, ByteBuffer byteBuffer2, int i12, int i13) {
        ensureOpen();
        if (!byteBuffer2.isDirect()) {
            throw new IllegalArgumentException("srcBuff must be a direct buffer");
        }
        if (!byteBuffer.isDirect()) {
            throw new IllegalArgumentException("dstBuff must be a direct buffer");
        }
        acquireSharedLock();
        try {
            long decompressDirectByteBuffer0 = decompressDirectByteBuffer0(this.nativePtr, byteBuffer, i10, i11, byteBuffer2, i12, i13);
            if (Zstd.isError(decompressDirectByteBuffer0)) {
                throw new ZstdException(decompressDirectByteBuffer0);
            }
            if (decompressDirectByteBuffer0 > 2147483647L) {
                throw new ZstdException(Zstd.errGeneric(), "Output size is greater than MAX_INT");
            }
            int i14 = (int) decompressDirectByteBuffer0;
            releaseSharedLock();
            return i14;
        } catch (Throwable th2) {
            releaseSharedLock();
            throw th2;
        }
    }

    public boolean decompressDirectByteBufferStream(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        ensureOpen();
        long decompressDirectByteBufferStream0 = decompressDirectByteBufferStream0(this.nativePtr, byteBuffer, byteBuffer.position(), byteBuffer.limit(), byteBuffer2, byteBuffer2.position(), byteBuffer2.limit());
        if ((2147483648L & decompressDirectByteBufferStream0) != 0) {
            long j10 = 255 & decompressDirectByteBufferStream0;
            throw new ZstdException(j10, Zstd.getErrorName(j10));
        }
        byteBuffer2.position((int) (2147483647L & decompressDirectByteBufferStream0));
        byteBuffer.position(((int) (decompressDirectByteBufferStream0 >>> 32)) & Integer.MAX_VALUE);
        return (decompressDirectByteBufferStream0 >>> 63) == 1;
    }

    @Override
    public void doClose() {
        long j10 = this.nativePtr;
        if (j10 != 0) {
            free(j10);
            this.nativePtr = 0L;
        }
    }

    public ZstdDecompressCtx loadDict(ZstdDictDecompress zstdDictDecompress) {
        ensureOpen();
        acquireSharedLock();
        zstdDictDecompress.acquireSharedLock();
        try {
            long loadDDictFast0 = loadDDictFast0(this.nativePtr, zstdDictDecompress);
            if (!Zstd.isError(loadDDictFast0)) {
                this.decompression_dict = zstdDictDecompress;
                return this;
            }
            throw new ZstdException(loadDDictFast0);
        } finally {
            zstdDictDecompress.releaseSharedLock();
            releaseSharedLock();
        }
    }

    public void reset() {
        ensureOpen();
        reset0(this.nativePtr);
    }

    public ZstdDecompressCtx setMagicless(boolean z10) {
        ensureOpen();
        acquireSharedLock();
        Zstd.setDecompressionMagicless(this.nativePtr, z10);
        releaseSharedLock();
        return this;
    }

    public ByteBuffer decompress(ByteBuffer byteBuffer, int i10) throws ZstdException {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i10);
        decompressDirectByteBuffer(allocateDirect, 0, i10, byteBuffer, byteBuffer.position(), byteBuffer.limit() - byteBuffer.position());
        byteBuffer.position(byteBuffer.limit());
        return allocateDirect;
    }

    public int decompress(byte[] bArr, byte[] bArr2) {
        return decompressByteArray(bArr, 0, bArr.length, bArr2, 0, bArr2.length);
    }

    public byte[] decompress(byte[] bArr, int i10) throws ZstdException {
        if (i10 >= 0) {
            byte[] bArr2 = new byte[i10];
            int decompress = decompress(bArr2, bArr);
            return decompress != i10 ? Arrays.copyOfRange(bArr2, 0, decompress) : bArr2;
        }
        throw new ZstdException(Zstd.errGeneric(), "Original size should not be negative");
    }

    public ZstdDecompressCtx loadDict(byte[] bArr) {
        ensureOpen();
        acquireSharedLock();
        try {
            long loadDDict0 = loadDDict0(this.nativePtr, bArr);
            if (!Zstd.isError(loadDDict0)) {
                this.decompression_dict = null;
                return this;
            }
            throw new ZstdException(loadDDict0);
        } finally {
            releaseSharedLock();
        }
    }
}
