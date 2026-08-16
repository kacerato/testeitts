package org.tukaani.xz;

import java.io.DataOutputStream;
import java.io.IOException;

public class UncompressedLZMA2OutputStream extends FinishableOutputStream {
    private final ArrayCache arrayCache;
    private FinishableOutputStream out;
    private final DataOutputStream outData;
    private final byte[] uncompBuf;
    private int uncompPos = 0;
    private boolean dictResetNeeded = true;
    private boolean finished = false;
    private IOException exception = null;
    private final byte[] tempBuf = new byte[1];

    public UncompressedLZMA2OutputStream(FinishableOutputStream finishableOutputStream, ArrayCache arrayCache) {
        finishableOutputStream.getClass();
        this.out = finishableOutputStream;
        this.outData = new DataOutputStream(finishableOutputStream);
        this.arrayCache = arrayCache;
        this.uncompBuf = arrayCache.getByteArray(65536, false);
    }

    public static int getMemoryUsage() {
        return 70;
    }

    private void writeChunk() throws IOException {
        this.outData.writeByte(this.dictResetNeeded ? 1 : 2);
        this.outData.writeShort(this.uncompPos - 1);
        this.outData.write(this.uncompBuf, 0, this.uncompPos);
        this.uncompPos = 0;
        this.dictResetNeeded = false;
    }

    private void writeEndMarker() throws IOException {
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        if (this.finished) {
            throw new XZIOException("Stream finished or closed");
        }
        try {
            if (this.uncompPos > 0) {
                writeChunk();
            }
            this.out.write(0);
            this.finished = true;
            this.arrayCache.putArray(this.uncompBuf);
        } catch (IOException e10) {
            this.exception = e10;
            throw e10;
        }
    }

    @Override
    public void close() throws IOException {
        if (this.out != null) {
            if (!this.finished) {
                try {
                    writeEndMarker();
                } catch (IOException unused) {
                }
            }
            try {
                this.out.close();
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
        writeEndMarker();
        try {
            this.out.finish();
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
            if (this.uncompPos > 0) {
                writeChunk();
            }
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
            throw new XZIOException("Stream finished or closed");
        }
        while (i11 > 0) {
            try {
                int min = Math.min(65536 - this.uncompPos, i11);
                System.arraycopy(bArr, i10, this.uncompBuf, this.uncompPos, min);
                i11 -= min;
                int i13 = this.uncompPos + min;
                this.uncompPos = i13;
                if (i13 == 65536) {
                    writeChunk();
                }
            } catch (IOException e10) {
                this.exception = e10;
                throw e10;
            }
        }
    }
}
