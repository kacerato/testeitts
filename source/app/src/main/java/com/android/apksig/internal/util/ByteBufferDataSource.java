package com.android.apksig.internal.util;

import com.android.apksig.util.DataSink;
import com.android.apksig.util.DataSource;
import java.io.IOException;
import java.nio.ByteBuffer;

public class ByteBufferDataSource implements DataSource {
    private final ByteBuffer mBuffer;
    private final int mSize;

    public ByteBufferDataSource(ByteBuffer byteBuffer) {
        this(byteBuffer, true);
    }

    private void checkChunkValid(long j10, long j11) {
        if (j10 < 0) {
            throw new IndexOutOfBoundsException("offset: " + j10);
        }
        if (j11 < 0) {
            throw new IndexOutOfBoundsException("size: " + j11);
        }
        int i10 = this.mSize;
        if (j10 > i10) {
            throw new IndexOutOfBoundsException("offset (" + j10 + ") > source size (" + this.mSize + ")");
        }
        long j12 = j10 + j11;
        if (j12 < j10) {
            throw new IndexOutOfBoundsException("offset (" + j10 + ") + size (" + j11 + ") overflow");
        }
        if (j12 <= i10) {
            return;
        }
        throw new IndexOutOfBoundsException("offset (" + j10 + ") + size (" + j11 + ") > source size (" + this.mSize + ")");
    }

    @Override
    public void copyTo(long j10, int i10, ByteBuffer byteBuffer) {
        byteBuffer.put(getByteBuffer(j10, i10));
    }

    @Override
    public void feed(long j10, long j11, DataSink dataSink) throws IOException {
        if (j11 >= 0 && j11 <= this.mSize) {
            dataSink.consume(getByteBuffer(j10, (int) j11));
            return;
        }
        throw new IndexOutOfBoundsException("size: " + j11 + ", source size: " + this.mSize);
    }

    @Override
    public ByteBuffer getByteBuffer(long j10, int i10) {
        ByteBuffer slice;
        checkChunkValid(j10, i10);
        int i11 = (int) j10;
        int i12 = i10 + i11;
        synchronized (this.mBuffer) {
            this.mBuffer.position(0);
            this.mBuffer.limit(i12);
            this.mBuffer.position(i11);
            slice = this.mBuffer.slice();
        }
        return slice;
    }

    @Override
    public long size() {
        return this.mSize;
    }

    private ByteBufferDataSource(ByteBuffer byteBuffer, boolean z10) {
        this.mBuffer = z10 ? byteBuffer.slice() : byteBuffer;
        this.mSize = byteBuffer.remaining();
    }

    @Override
    public ByteBufferDataSource slice(long j10, long j11) {
        if (j10 == 0 && j11 == this.mSize) {
            return this;
        }
        if (j11 >= 0 && j11 <= this.mSize) {
            return new ByteBufferDataSource(getByteBuffer(j10, (int) j11), false);
        }
        throw new IndexOutOfBoundsException("size: " + j11 + ", source size: " + this.mSize);
    }
}
