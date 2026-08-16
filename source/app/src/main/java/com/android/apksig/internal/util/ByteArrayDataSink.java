package com.android.apksig.internal.util;

import com.android.apksig.util.DataSink;
import com.android.apksig.util.DataSource;
import com.android.apksig.util.ReadableDataSink;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

public class ByteArrayDataSink implements ReadableDataSink {
    private static final int MAX_READ_CHUNK_SIZE = 65536;
    private byte[] mArray;
    private int mSize;

    public class SliceDataSource implements DataSource {
        private final int mSliceOffset;
        private final int mSliceSize;

        private void checkChunkValid(long j10, long j11) {
            if (j10 < 0) {
                throw new IndexOutOfBoundsException("offset: " + j10);
            }
            if (j11 < 0) {
                throw new IndexOutOfBoundsException("size: " + j11);
            }
            int i10 = this.mSliceSize;
            if (j10 > i10) {
                throw new IndexOutOfBoundsException("offset (" + j10 + ") > source size (" + this.mSliceSize + ")");
            }
            long j12 = j10 + j11;
            if (j12 < j10) {
                throw new IndexOutOfBoundsException("offset (" + j10 + ") + size (" + j11 + ") overflow");
            }
            if (j12 <= i10) {
                return;
            }
            throw new IndexOutOfBoundsException("offset (" + j10 + ") + size (" + j11 + ") > source size (" + this.mSliceSize + ")");
        }

        @Override
        public void copyTo(long j10, int i10, ByteBuffer byteBuffer) throws IOException {
            checkChunkValid(j10, i10);
            byteBuffer.put(ByteArrayDataSink.this.mArray, (int) (this.mSliceOffset + j10), i10);
        }

        @Override
        public void feed(long j10, long j11, DataSink dataSink) throws IOException {
            checkChunkValid(j10, j11);
            dataSink.consume(ByteArrayDataSink.this.mArray, (int) (this.mSliceOffset + j10), (int) j11);
        }

        @Override
        public ByteBuffer getByteBuffer(long j10, int i10) throws IOException {
            checkChunkValid(j10, i10);
            return ByteBuffer.wrap(ByteArrayDataSink.this.mArray, (int) (this.mSliceOffset + j10), i10).slice();
        }

        @Override
        public long size() {
            return this.mSliceSize;
        }

        @Override
        public DataSource slice(long j10, long j11) {
            checkChunkValid(j10, j11);
            return new SliceDataSource((int) (this.mSliceOffset + j10), (int) j11);
        }

        private SliceDataSource(int i10, int i11) {
            this.mSliceOffset = i10;
            this.mSliceSize = i11;
        }
    }

    public ByteArrayDataSink() {
        this(65536);
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

    private void ensureAvailable(int i10) throws IOException {
        if (i10 <= 0) {
            return;
        }
        long j10 = this.mSize + i10;
        byte[] bArr = this.mArray;
        if (j10 <= bArr.length) {
            return;
        }
        if (j10 <= 2147483647L) {
            this.mArray = Arrays.copyOf(this.mArray, (int) Math.max(j10, (int) Math.min(bArr.length * 2, 2147483647L)));
            return;
        }
        throw new IOException("Required capacity too large: " + j10 + ", max: 2147483647");
    }

    @Override
    public void consume(byte[] bArr, int i10, int i11) throws IOException {
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("offset: " + i10);
        }
        if (i10 <= bArr.length) {
            if (i11 == 0) {
                return;
            }
            ensureAvailable(i11);
            System.arraycopy(bArr, i10, this.mArray, this.mSize, i11);
            this.mSize += i11;
            return;
        }
        throw new IndexOutOfBoundsException("offset: " + i10 + ", buf.length: " + bArr.length);
    }

    @Override
    public void copyTo(long j10, int i10, ByteBuffer byteBuffer) throws IOException {
        checkChunkValid(j10, i10);
        byteBuffer.put(this.mArray, (int) j10, i10);
    }

    @Override
    public void feed(long j10, long j11, DataSink dataSink) throws IOException {
        checkChunkValid(j10, j11);
        dataSink.consume(this.mArray, (int) j10, (int) j11);
    }

    @Override
    public ByteBuffer getByteBuffer(long j10, int i10) {
        checkChunkValid(j10, i10);
        return ByteBuffer.wrap(this.mArray, (int) j10, i10).slice();
    }

    @Override
    public long size() {
        return this.mSize;
    }

    @Override
    public DataSource slice(long j10, long j11) {
        checkChunkValid(j10, j11);
        return new SliceDataSource((int) j10, (int) j11);
    }

    public ByteArrayDataSink(int i10) {
        if (i10 >= 0) {
            this.mArray = new byte[i10];
            return;
        }
        throw new IllegalArgumentException("initial capacity: " + i10);
    }

    @Override
    public void consume(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.hasRemaining()) {
            if (byteBuffer.hasArray()) {
                consume(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
                byteBuffer.position(byteBuffer.limit());
                return;
            }
            ensureAvailable(byteBuffer.remaining());
            int min = Math.min(byteBuffer.remaining(), 65536);
            byte[] bArr = new byte[min];
            while (byteBuffer.hasRemaining()) {
                int min2 = Math.min(byteBuffer.remaining(), min);
                byteBuffer.get(bArr, 0, min2);
                System.arraycopy(bArr, 0, this.mArray, this.mSize, min2);
                this.mSize += min2;
            }
        }
    }
}
