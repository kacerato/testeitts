package com.android.apksig.internal.util;

import com.android.apksig.util.DataSink;
import com.android.apksig.util.DataSource;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;

public class FileChannelDataSource implements DataSource {
    private static final int MAX_READ_CHUNK_SIZE = 1048576;
    private final FileChannel mChannel;
    private final long mOffset;
    private final long mSize;

    public FileChannelDataSource(FileChannel fileChannel) {
        this.mChannel = fileChannel;
        this.mOffset = 0L;
        this.mSize = -1L;
    }

    private static void checkChunkValid(long j10, long j11, long j12) {
        if (j10 < 0) {
            throw new IndexOutOfBoundsException("offset: " + j10);
        }
        if (j11 < 0) {
            throw new IndexOutOfBoundsException("size: " + j11);
        }
        if (j10 > j12) {
            throw new IndexOutOfBoundsException("offset (" + j10 + ") > source size (" + j12 + ")");
        }
        long j13 = j10 + j11;
        if (j13 < j10) {
            throw new IndexOutOfBoundsException("offset (" + j10 + ") + size (" + j11 + ") overflow");
        }
        if (j13 <= j12) {
            return;
        }
        throw new IndexOutOfBoundsException("offset (" + j10 + ") + size (" + j11 + ") > source size (" + j12 + ")");
    }

    @Override
    public void copyTo(long j10, int i10, ByteBuffer byteBuffer) throws IOException {
        int read;
        checkChunkValid(j10, i10, size());
        if (i10 == 0) {
            return;
        }
        if (i10 > byteBuffer.remaining()) {
            throw new BufferOverflowException();
        }
        long j11 = this.mOffset + j10;
        int limit = byteBuffer.limit();
        try {
            byteBuffer.limit(byteBuffer.position() + i10);
            while (i10 > 0) {
                synchronized (this.mChannel) {
                    this.mChannel.position(j11);
                    read = this.mChannel.read(byteBuffer);
                }
                j11 += read;
                i10 -= read;
            }
        } finally {
            byteBuffer.limit(limit);
        }
    }

    @Override
    public void feed(long j10, long j11, DataSink dataSink) throws IOException {
        checkChunkValid(j10, j11, size());
        if (j11 == 0) {
            return;
        }
        long j12 = this.mOffset + j10;
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect((int) Math.min(j11, TagBits.HasNullTypeAnnotation));
        while (j11 > 0) {
            int min = (int) Math.min(j11, allocateDirect.capacity());
            allocateDirect.limit(min);
            synchronized (this.mChannel) {
                try {
                    this.mChannel.position(j12);
                    int i10 = min;
                    while (i10 > 0) {
                        int read = this.mChannel.read(allocateDirect);
                        if (read < 0) {
                            throw new IOException("Unexpected EOF encountered");
                        }
                        i10 -= read;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            allocateDirect.flip();
            dataSink.consume(allocateDirect);
            allocateDirect.clear();
            long j13 = min;
            j12 += j13;
            j11 -= j13;
        }
    }

    @Override
    public ByteBuffer getByteBuffer(long j10, int i10) throws IOException {
        if (i10 >= 0) {
            ByteBuffer allocate = ByteBuffer.allocate(i10);
            copyTo(j10, i10, allocate);
            allocate.flip();
            return allocate;
        }
        throw new IndexOutOfBoundsException("size: " + i10);
    }

    @Override
    public long size() {
        long j10 = this.mSize;
        if (j10 != -1) {
            return j10;
        }
        try {
            return this.mChannel.size();
        } catch (IOException unused) {
            return 0L;
        }
    }

    @Override
    public FileChannelDataSource slice(long j10, long j11) {
        long size = size();
        checkChunkValid(j10, j11, size);
        return (j10 == 0 && j11 == size) ? this : new FileChannelDataSource(this.mChannel, this.mOffset + j10, j11);
    }

    public FileChannelDataSource(FileChannel fileChannel, long j10, long j11) {
        if (j10 < 0) {
            throw new IndexOutOfBoundsException("offset: " + j11);
        }
        if (j11 >= 0) {
            this.mChannel = fileChannel;
            this.mOffset = j10;
            this.mSize = j11;
        } else {
            throw new IndexOutOfBoundsException("size: " + j11);
        }
    }
}
