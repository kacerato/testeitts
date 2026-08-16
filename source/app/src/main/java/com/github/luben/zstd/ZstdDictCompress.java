package com.github.luben.zstd;

import com.github.luben.zstd.util.Native;
import java.nio.ByteBuffer;

public class ZstdDictCompress extends SharedDictBase {
    private int level;
    private long nativePtr;

    static {
        Native.load();
    }

    public ZstdDictCompress(byte[] bArr, int i10) {
        this(bArr, 0, bArr.length, i10);
    }

    private native void free();

    private native void init(byte[] bArr, int i10, int i11, int i12);

    private native void initDirect(ByteBuffer byteBuffer, int i10, int i11, int i12);

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

    public int level() {
        return this.level;
    }

    public ZstdDictCompress(byte[] bArr, int i10, int i11, int i12) {
        this.nativePtr = 0L;
        Zstd.defaultCompressionLevel();
        this.level = i12;
        if (bArr.length - i10 >= 0) {
            init(bArr, i10, i11, i12);
            if (0 != this.nativePtr) {
                storeFence();
                return;
            }
            throw new IllegalStateException("ZSTD_createCDict failed");
        }
        throw new IllegalArgumentException("Dictionary buffer is to short");
    }

    public ZstdDictCompress(ByteBuffer byteBuffer, int i10) {
        this.nativePtr = 0L;
        Zstd.defaultCompressionLevel();
        this.level = i10;
        int limit = byteBuffer.limit() - byteBuffer.position();
        if (!byteBuffer.isDirect()) {
            throw new IllegalArgumentException("dict must be a direct buffer");
        }
        if (limit >= 0) {
            initDirect(byteBuffer, byteBuffer.position(), limit, i10);
            if (this.nativePtr != 0) {
                storeFence();
                return;
            }
            throw new IllegalStateException("ZSTD_createCDict failed");
        }
        throw new IllegalArgumentException("dict cannot be empty.");
    }
}
