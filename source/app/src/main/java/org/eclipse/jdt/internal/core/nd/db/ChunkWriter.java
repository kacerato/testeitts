package org.eclipse.jdt.internal.core.nd.db;

import java.io.IOException;
import java.nio.ByteBuffer;

public class ChunkWriter {
    private byte[] buffer;
    private long bytesWrittenSinceLastSleep;
    private double maxBytesPerMillisecond;
    private long totalBytesWritten;
    private long totalWriteTimeMs;
    private WriteCallback writeCallback;
    private SleepCallback sleepFunction = new SleepCallback() {
        @Override
        public final void sleep(long j10) {
            Thread.sleep(j10);
        }
    };
    private long lastWritePosition = 0;
    private long bufferStartPosition = 0;

    @FunctionalInterface
    public interface SleepCallback {
        void sleep(long j10) throws InterruptedException;
    }

    @FunctionalInterface
    public interface WriteCallback {
        boolean write(ByteBuffer byteBuffer, long j10) throws IOException;
    }

    public ChunkWriter(int i10, double d10, WriteCallback writeCallback) {
        this.buffer = new byte[i10];
        this.maxBytesPerMillisecond = d10;
        this.writeCallback = writeCallback;
    }

    public boolean flush() throws IOException {
        int i10 = (int) (this.lastWritePosition - this.bufferStartPosition);
        if (i10 == 0) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        boolean write = this.writeCallback.write(ByteBuffer.wrap(this.buffer, 0, i10), this.bufferStartPosition);
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        long j10 = i10;
        this.totalBytesWritten += j10;
        this.totalWriteTimeMs += currentTimeMillis2;
        long max = Math.max(0L, (this.bytesWrittenSinceLastSleep + j10) - ((long) (currentTimeMillis2 * this.maxBytesPerMillisecond)));
        this.bytesWrittenSinceLastSleep = max;
        long j11 = (long) (max / this.maxBytesPerMillisecond);
        if (j11 > 0) {
            try {
                this.sleepFunction.sleep(j11);
                this.bytesWrittenSinceLastSleep = (long) (this.bytesWrittenSinceLastSleep - (this.maxBytesPerMillisecond * j11));
            } catch (InterruptedException unused) {
                write = true;
            }
        }
        this.bufferStartPosition = this.lastWritePosition;
        return write;
    }

    public long getBytesWritten() {
        return this.totalBytesWritten;
    }

    public long getTotalWriteTimeMs() {
        return this.totalWriteTimeMs;
    }

    public void setSleepFunction(SleepCallback sleepCallback) {
        this.sleepFunction = sleepCallback;
    }

    public boolean write(long j10, byte[] bArr) throws IOException {
        long j11 = this.lastWritePosition;
        if (j10 == j11) {
            int i10 = (int) (j11 - this.bufferStartPosition);
            int length = bArr.length + i10;
            byte[] bArr2 = this.buffer;
            if (length <= bArr2.length) {
                System.arraycopy(bArr, 0, bArr2, i10, bArr.length);
                this.lastWritePosition = j10 + bArr.length;
                return false;
            }
        }
        boolean flush = flush();
        System.arraycopy(bArr, 0, this.buffer, 0, bArr.length);
        this.bufferStartPosition = j10;
        this.lastWritePosition = j10 + bArr.length;
        return flush;
    }
}
