package com.github.luben.zstd;

import com.github.luben.zstd.util.Native;
import java.nio.ByteBuffer;

public class ZstdDictDecompress extends SharedDictBase {
    private long nativePtr;

    static {
        Native.load();
    }

    public ZstdDictDecompress(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    private native void free();

    private native void init(byte[] bArr, int i10, int i11);

    private native void initDirect(ByteBuffer byteBuffer, int i10, int i11);

    @Override
    public void close() {
        super.close();
    }

    @Override
    public void doClose() {
        if (this.nativePtr != 0) {
            free();
            this.nativePtr = 0L;
        }
    }

    public ZstdDictDecompress(byte[] bArr, int i10, int i11) {
        this.nativePtr = 0L;
        init(bArr, i10, i11);
        if (this.nativePtr != 0) {
            storeFence();
            return;
        }
        throw new IllegalStateException("ZSTD_createDDict failed");
    }

    public ZstdDictDecompress(ByteBuffer byteBuffer) {
        this.nativePtr = 0L;
        int limit = byteBuffer.limit() - byteBuffer.position();
        if (!byteBuffer.isDirect()) {
            throw new IllegalArgumentException("dict must be a direct buffer");
        }
        if (limit >= 0) {
            initDirect(byteBuffer, byteBuffer.position(), limit);
            if (this.nativePtr != 0) {
                storeFence();
                return;
            }
            throw new IllegalStateException("ZSTD_createDDict failed");
        }
        throw new IllegalArgumentException("dict cannot be empty.");
    }
}
