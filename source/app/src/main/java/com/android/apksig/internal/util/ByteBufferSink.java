package com.android.apksig.internal.util;

import com.android.apksig.util.DataSink;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;

public class ByteBufferSink implements DataSink {
    private final ByteBuffer mBuffer;

    public ByteBufferSink(ByteBuffer byteBuffer) {
        this.mBuffer = byteBuffer;
    }

    @Override
    public void consume(byte[] bArr, int i10, int i11) throws IOException {
        try {
            this.mBuffer.put(bArr, i10, i11);
        } catch (BufferOverflowException e10) {
            throw new IOException("Insufficient space in output buffer for " + i11 + " bytes", e10);
        }
    }

    public ByteBuffer getBuffer() {
        return this.mBuffer;
    }

    @Override
    public void consume(ByteBuffer byteBuffer) throws IOException {
        int remaining = byteBuffer.remaining();
        try {
            this.mBuffer.put(byteBuffer);
        } catch (BufferOverflowException e10) {
            throw new IOException("Insufficient space in output buffer for " + remaining + " bytes", e10);
        }
    }
}
