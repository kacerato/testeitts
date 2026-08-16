package com.jme3.util;

import java.nio.Buffer;
import java.nio.ByteBuffer;

public final class PrimitiveAllocator implements BufferAllocator {
    @Override
    public ByteBuffer allocate(int i10) {
        return ByteBuffer.allocateDirect(i10);
    }

    @Override
    public void destroyDirectBuffer(Buffer buffer) {
        System.err.println("Warning destroyBuffer not supported");
    }
}
