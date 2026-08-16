package com.jme3.util;

import java.nio.Buffer;
import java.nio.ByteBuffer;

public interface BufferAllocator {
    ByteBuffer allocate(int i10);

    void destroyDirectBuffer(Buffer buffer);
}
