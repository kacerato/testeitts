package com.github.luben.zstd;

import java.lang.ref.SoftReference;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Deque;

public class RecyclingBufferPool implements BufferPool {
    public static final BufferPool INSTANCE = new RecyclingBufferPool();
    private static final int buffSize = Math.max(Math.max((int) ZstdOutputStreamNoFinalizer.recommendedCOutSize(), (int) ZstdInputStreamNoFinalizer.recommendedDInSize()), (int) ZstdInputStreamNoFinalizer.recommendedDOutSize());
    private final Deque<SoftReference<ByteBuffer>> pool = new ArrayDeque();

    private RecyclingBufferPool() {
    }

    @Override
    public ByteBuffer get(int i10) {
        SoftReference<ByteBuffer> softReference;
        ByteBuffer byteBuffer;
        int i11 = buffSize;
        if (i10 > i11) {
            throw new RuntimeException("Unsupported buffer size: " + i10 + ". Supported buffer sizes: " + i11 + " or smaller.");
        }
        do {
            if (this.pool.isEmpty()) {
                softReference = null;
            } else {
                synchronized (this.pool) {
                    softReference = this.pool.pollFirst();
                }
            }
            if (softReference == null) {
                return ByteBuffer.allocate(buffSize);
            }
            byteBuffer = softReference.get();
        } while (byteBuffer == null);
        return byteBuffer;
    }

    @Override
    public void release(ByteBuffer byteBuffer) {
        if (byteBuffer.capacity() >= buffSize) {
            byteBuffer.clear();
            synchronized (this.pool) {
                this.pool.addLast(new SoftReference<>(byteBuffer));
            }
        }
    }
}
