package org.brotli.dec;

import java.io.IOException;
import java.io.InputStream;

public class BrotliInputStream extends InputStream {
    public static final int DEFAULT_INTERNAL_BUFFER_SIZE = 16384;
    private byte[] buffer;
    private int bufferOffset;
    private int remainingBufferBytes;
    private final State state;

    public BrotliInputStream(InputStream inputStream) throws IOException {
        this(inputStream, 16384, null);
    }

    @Override
    public void close() throws IOException {
        State.close(this.state);
    }

    @Override
    public int read() throws IOException {
        if (this.bufferOffset >= this.remainingBufferBytes) {
            byte[] bArr = this.buffer;
            int read = read(bArr, 0, bArr.length);
            this.remainingBufferBytes = read;
            this.bufferOffset = 0;
            if (read == -1) {
                return -1;
            }
        }
        byte[] bArr2 = this.buffer;
        int i10 = this.bufferOffset;
        this.bufferOffset = i10 + 1;
        return bArr2[i10] & 255;
    }

    public BrotliInputStream(InputStream inputStream, int i10) throws IOException {
        this(inputStream, i10, null);
    }

    public BrotliInputStream(InputStream inputStream, int i10, byte[] bArr) throws IOException {
        State state = new State();
        this.state = state;
        if (i10 <= 0) {
            throw new IllegalArgumentException("Bad buffer size:" + i10);
        }
        if (inputStream != null) {
            this.buffer = new byte[i10];
            this.remainingBufferBytes = 0;
            this.bufferOffset = 0;
            try {
                State.setInput(state, inputStream);
                if (bArr != null) {
                    Decode.setCustomDictionary(state, bArr);
                    return;
                }
                return;
            } catch (BrotliRuntimeException e10) {
                throw new IOException("Brotli decoder initialization failed", e10);
            }
        }
        throw new IllegalArgumentException("source is null");
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (i10 < 0) {
            throw new IllegalArgumentException("Bad offset: " + i10);
        }
        if (i11 >= 0) {
            int i12 = i10 + i11;
            if (i12 > bArr.length) {
                throw new IllegalArgumentException("Buffer overflow: " + i12 + " > " + bArr.length);
            }
            if (i11 == 0) {
                return 0;
            }
            int max = Math.max(this.remainingBufferBytes - this.bufferOffset, 0);
            if (max != 0) {
                max = Math.min(max, i11);
                System.arraycopy(this.buffer, this.bufferOffset, bArr, i10, max);
                this.bufferOffset += max;
                i10 += max;
                i11 -= max;
                if (i11 == 0) {
                    return max;
                }
            }
            try {
                State state = this.state;
                state.output = bArr;
                state.outputOffset = i10;
                state.outputLength = i11;
                state.outputUsed = 0;
                Decode.decompress(state);
                int i13 = this.state.outputUsed;
                if (i13 == 0) {
                    return -1;
                }
                return i13 + max;
            } catch (BrotliRuntimeException e10) {
                throw new IOException("Brotli stream decoding failed", e10);
            }
        }
        throw new IllegalArgumentException("Bad length: " + i11);
    }
}
