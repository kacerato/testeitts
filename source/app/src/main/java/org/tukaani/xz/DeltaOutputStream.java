package org.tukaani.xz;

import java.io.IOException;

public class DeltaOutputStream extends FinishableOutputStream {
    private static final int FILTER_BUF_SIZE = 4096;
    private final org.tukaani.xz.delta.DeltaEncoder delta;
    private FinishableOutputStream out;
    private final byte[] filterBuf = new byte[4096];
    private boolean finished = false;
    private IOException exception = null;
    private final byte[] tempBuf = new byte[1];

    public DeltaOutputStream(FinishableOutputStream finishableOutputStream, DeltaOptions deltaOptions) {
        this.out = finishableOutputStream;
        this.delta = new org.tukaani.xz.delta.DeltaEncoder(deltaOptions.getDistance());
    }

    public static int getMemoryUsage() {
        return 5;
    }

    @Override
    public void close() throws IOException {
        FinishableOutputStream finishableOutputStream = this.out;
        if (finishableOutputStream != null) {
            try {
                finishableOutputStream.close();
            } catch (IOException e10) {
                if (this.exception == null) {
                    this.exception = e10;
                }
            }
            this.out = null;
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
    }

    @Override
    public void finish() throws IOException {
        if (this.finished) {
            return;
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        try {
            this.out.finish();
            this.finished = true;
        } catch (IOException e10) {
            this.exception = e10;
            throw e10;
        }
    }

    @Override
    public void flush() throws IOException {
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        if (this.finished) {
            throw new XZIOException("Stream finished or closed");
        }
        try {
            this.out.flush();
        } catch (IOException e10) {
            this.exception = e10;
            throw e10;
        }
    }

    @Override
    public void write(int i10) throws IOException {
        byte[] bArr = this.tempBuf;
        bArr[0] = (byte) i10;
        write(bArr, 0, 1);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        if (i10 < 0 || i11 < 0 || (i12 = i10 + i11) < 0 || i12 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        if (this.finished) {
            throw new XZIOException("Stream finished");
        }
        while (i11 > 4096) {
            try {
                this.delta.encode(bArr, i10, 4096, this.filterBuf);
                this.out.write(this.filterBuf);
                i10 += 4096;
                i11 -= 4096;
            } catch (IOException e10) {
                this.exception = e10;
                throw e10;
            }
        }
        this.delta.encode(bArr, i10, i11, this.filterBuf);
        this.out.write(this.filterBuf, 0, i11);
    }
}
