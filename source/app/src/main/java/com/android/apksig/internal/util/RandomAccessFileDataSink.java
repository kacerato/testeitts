package com.android.apksig.internal.util;

import com.android.apksig.util.DataSink;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

public class RandomAccessFileDataSink implements DataSink {
    private final RandomAccessFile mFile;
    private final FileChannel mFileChannel;
    private long mPosition;

    public RandomAccessFileDataSink(RandomAccessFile randomAccessFile) {
        this(randomAccessFile, 0L);
    }

    @Override
    public void consume(byte[] bArr, int i10, int i11) throws IOException {
        if (i10 >= 0) {
            if (i10 > bArr.length) {
                throw new IndexOutOfBoundsException("offset: " + i10 + ", buf.length: " + bArr.length);
            }
            if (i11 == 0) {
                return;
            }
            synchronized (this.mFile) {
                this.mFile.seek(this.mPosition);
                this.mFile.write(bArr, i10, i11);
                this.mPosition += i11;
            }
            return;
        }
        throw new IndexOutOfBoundsException("offset: " + i10);
    }

    public RandomAccessFile getFile() {
        return this.mFile;
    }

    public RandomAccessFileDataSink(RandomAccessFile randomAccessFile, long j10) {
        if (randomAccessFile == null) {
            throw new NullPointerException("file == null");
        }
        if (j10 >= 0) {
            this.mFile = randomAccessFile;
            this.mFileChannel = randomAccessFile.getChannel();
            this.mPosition = j10;
        } else {
            throw new IllegalArgumentException("startPosition: " + j10);
        }
    }

    @Override
    public void consume(ByteBuffer byteBuffer) throws IOException {
        int remaining = byteBuffer.remaining();
        if (remaining == 0) {
            return;
        }
        synchronized (this.mFile) {
            try {
                this.mFile.seek(this.mPosition);
                while (byteBuffer.hasRemaining()) {
                    this.mFileChannel.write(byteBuffer);
                }
                this.mPosition += remaining;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
