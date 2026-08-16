package org.tukaani.xz;

import java.io.IOException;
import java.io.InputStream;

public class DeltaInputStream extends InputStream {
    public static final int DISTANCE_MAX = 256;
    public static final int DISTANCE_MIN = 1;
    private final org.tukaani.xz.delta.DeltaDecoder delta;

    private InputStream f103351in;
    private IOException exception = null;
    private final byte[] tempBuf = new byte[1];

    public DeltaInputStream(InputStream inputStream, int i10) {
        inputStream.getClass();
        this.f103351in = inputStream;
        this.delta = new org.tukaani.xz.delta.DeltaDecoder(i10);
    }

    @Override
    public int available() throws IOException {
        InputStream inputStream = this.f103351in;
        if (inputStream == null) {
            throw new XZIOException("Stream closed");
        }
        IOException iOException = this.exception;
        if (iOException == null) {
            return inputStream.available();
        }
        throw iOException;
    }

    @Override
    public void close() throws IOException {
        InputStream inputStream = this.f103351in;
        if (inputStream != null) {
            try {
                inputStream.close();
            } finally {
                this.f103351in = null;
            }
        }
    }

    @Override
    public int read() throws IOException {
        if (read(this.tempBuf, 0, 1) == -1) {
            return -1;
        }
        return this.tempBuf[0] & 255;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (i11 == 0) {
            return 0;
        }
        InputStream inputStream = this.f103351in;
        if (inputStream == null) {
            throw new XZIOException("Stream closed");
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        try {
            int read = inputStream.read(bArr, i10, i11);
            if (read == -1) {
                return -1;
            }
            this.delta.decode(bArr, i10, read);
            return read;
        } catch (IOException e10) {
            this.exception = e10;
            throw e10;
        }
    }
}
