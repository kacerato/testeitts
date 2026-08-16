package com.android.apksig.internal.util;

import com.android.apksig.util.DataSink;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

public class OutputStreamDataSink implements DataSink {
    private static final int MAX_READ_CHUNK_SIZE = 65536;
    private final OutputStream mOut;

    public OutputStreamDataSink(OutputStream outputStream) {
        if (outputStream == null) {
            throw new NullPointerException("out == null");
        }
        this.mOut = outputStream;
    }

    @Override
    public void consume(byte[] bArr, int i10, int i11) throws IOException {
        this.mOut.write(bArr, i10, i11);
    }

    public OutputStream getOutputStream() {
        return this.mOut;
    }

    @Override
    public void consume(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.hasRemaining()) {
            if (byteBuffer.hasArray()) {
                this.mOut.write(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
                byteBuffer.position(byteBuffer.limit());
                return;
            }
            int min = Math.min(byteBuffer.remaining(), 65536);
            byte[] bArr = new byte[min];
            while (byteBuffer.hasRemaining()) {
                int min2 = Math.min(byteBuffer.remaining(), min);
                byteBuffer.get(bArr, 0, min2);
                this.mOut.write(bArr, 0, min2);
            }
        }
    }
}
