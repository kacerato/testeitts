package com.github.luben.zstd;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class ZstdOutputStream extends FilterOutputStream {
    private ZstdOutputStreamNoFinalizer inner;

    @Deprecated
    public ZstdOutputStream(OutputStream outputStream, int i10, boolean z10, boolean z11) throws IOException {
        super(outputStream);
        ZstdOutputStreamNoFinalizer zstdOutputStreamNoFinalizer = new ZstdOutputStreamNoFinalizer(outputStream, i10);
        this.inner = zstdOutputStreamNoFinalizer;
        zstdOutputStreamNoFinalizer.setCloseFrameOnFlush(z10);
        this.inner.setChecksum(z11);
    }

    public static long recommendedCOutSize() {
        return ZstdOutputStreamNoFinalizer.recommendedCOutSize();
    }

    @Override
    public void close() throws IOException {
        this.inner.close();
    }

    public void finalize() throws Throwable {
        close();
    }

    @Override
    public void flush() throws IOException {
        this.inner.flush();
    }

    public ZstdOutputStream setChecksum(boolean z10) throws IOException {
        this.inner.setChecksum(z10);
        return this;
    }

    public ZstdOutputStream setCloseFrameOnFlush(boolean z10) {
        this.inner.setCloseFrameOnFlush(z10);
        return this;
    }

    public ZstdOutputStream setDict(byte[] bArr) throws IOException {
        this.inner.setDict(bArr);
        return this;
    }

    @Deprecated
    public void setFinalize(boolean z10) {
    }

    public ZstdOutputStream setLevel(int i10) throws IOException {
        this.inner.setLevel(i10);
        return this;
    }

    public ZstdOutputStream setLong(int i10) throws IOException {
        this.inner.setLong(i10);
        return this;
    }

    public ZstdOutputStream setWorkers(int i10) throws IOException {
        this.inner.setWorkers(i10);
        return this;
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.inner.write(bArr, i10, i11);
    }

    public ZstdOutputStream setDict(ZstdDictCompress zstdDictCompress) throws IOException {
        this.inner.setDict(zstdDictCompress);
        return this;
    }

    @Override
    public void write(int i10) throws IOException {
        this.inner.write(i10);
    }

    @Deprecated
    public ZstdOutputStream(OutputStream outputStream, int i10, boolean z10) throws IOException {
        super(outputStream);
        ZstdOutputStreamNoFinalizer zstdOutputStreamNoFinalizer = new ZstdOutputStreamNoFinalizer(outputStream, i10);
        this.inner = zstdOutputStreamNoFinalizer;
        zstdOutputStreamNoFinalizer.setCloseFrameOnFlush(z10);
    }

    public ZstdOutputStream(OutputStream outputStream, int i10) throws IOException {
        this(outputStream, NoPool.INSTANCE);
        this.inner.setLevel(i10);
    }

    public ZstdOutputStream(OutputStream outputStream) throws IOException {
        this(outputStream, NoPool.INSTANCE);
    }

    public ZstdOutputStream(OutputStream outputStream, BufferPool bufferPool, int i10) throws IOException {
        this(outputStream, bufferPool);
        this.inner.setLevel(i10);
    }

    public ZstdOutputStream(OutputStream outputStream, BufferPool bufferPool) throws IOException {
        super(outputStream);
        this.inner = new ZstdOutputStreamNoFinalizer(outputStream, bufferPool);
    }
}
