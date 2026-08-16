package com.android.tools.r8;

import java.nio.ByteBuffer;

public interface ByteBufferProvider {
    default ByteBuffer acquireByteBuffer(int i10) {
        return ByteBuffer.allocate(i10);
    }

    default void releaseByteBuffer(ByteBuffer byteBuffer) {
    }
}
