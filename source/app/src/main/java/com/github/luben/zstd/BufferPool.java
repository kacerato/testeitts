package com.github.luben.zstd;

import java.nio.ByteBuffer;

public interface BufferPool {
    ByteBuffer get(int i10);

    void release(ByteBuffer byteBuffer);
}
