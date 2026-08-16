package org.tukaani.xz;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

public class XZInputStream extends InputStream {
    private final ArrayCache arrayCache;
    private boolean endReached;
    private IOException exception;

    private InputStream f103364in;
    private final int memoryLimit;
    private final byte[] tempBuf;
    private final boolean verifyCheck;
    private SingleXZInputStream xzIn;

    public XZInputStream(InputStream inputStream) throws IOException {
        this(inputStream, -1);
    }

    private void prepareNextStream() throws IOException {
        DataInputStream dataInputStream = new DataInputStream(this.f103364in);
        byte[] bArr = new byte[12];
        while (dataInputStream.read(bArr, 0, 1) != -1) {
            dataInputStream.readFully(bArr, 1, 3);
            if (bArr[0] != 0 || bArr[1] != 0 || bArr[2] != 0 || bArr[3] != 0) {
                dataInputStream.readFully(bArr, 4, 8);
                try {
                    this.xzIn = new SingleXZInputStream(this.f103364in, this.memoryLimit, this.verifyCheck, bArr, this.arrayCache);
                    return;
                } catch (XZFormatException unused) {
                    throw new CorruptedInputException("Garbage after a valid XZ Stream");
                }
            }
        }
        this.endReached = true;
    }

    @Override
    public int available() throws IOException {
        if (this.f103364in == null) {
            throw new XZIOException("Stream closed");
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        SingleXZInputStream singleXZInputStream = this.xzIn;
        if (singleXZInputStream == null) {
            return 0;
        }
        return singleXZInputStream.available();
    }

    @Override
    public void close() throws IOException {
        close(true);
    }

    @Override
    public int read() throws IOException {
        if (read(this.tempBuf, 0, 1) == -1) {
            return -1;
        }
        return this.tempBuf[0] & 255;
    }

    public XZInputStream(InputStream inputStream, int i10) throws IOException {
        this(inputStream, i10, true);
    }

    public void close(boolean z10) throws IOException {
        if (this.f103364in != null) {
            SingleXZInputStream singleXZInputStream = this.xzIn;
            if (singleXZInputStream != null) {
                singleXZInputStream.close(false);
                this.xzIn = null;
            }
            if (z10) {
                try {
                    this.f103364in.close();
                } finally {
                    this.f103364in = null;
                }
            }
        }
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        if (i10 < 0 || i11 < 0 || (i12 = i10 + i11) < 0 || i12 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        int i13 = 0;
        if (i11 == 0) {
            return 0;
        }
        if (this.f103364in == null) {
            throw new XZIOException("Stream closed");
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        if (this.endReached) {
            return -1;
        }
        while (i11 > 0) {
            try {
                if (this.xzIn == null) {
                    prepareNextStream();
                    if (this.endReached) {
                        if (i13 == 0) {
                            return -1;
                        }
                        return i13;
                    }
                }
                int read = this.xzIn.read(bArr, i10, i11);
                if (read > 0) {
                    i13 += read;
                    i10 += read;
                    i11 -= read;
                } else if (read == -1) {
                    this.xzIn = null;
                }
            } catch (IOException e10) {
                this.exception = e10;
                if (i13 == 0) {
                    throw e10;
                }
            }
        }
        return i13;
    }

    public XZInputStream(InputStream inputStream, int i10, ArrayCache arrayCache) throws IOException {
        this(inputStream, i10, true, arrayCache);
    }

    public XZInputStream(InputStream inputStream, int i10, boolean z10) throws IOException {
        this(inputStream, i10, z10, ArrayCache.getDefaultCache());
    }

    public XZInputStream(InputStream inputStream, int i10, boolean z10, ArrayCache arrayCache) throws IOException {
        this.endReached = false;
        this.exception = null;
        this.tempBuf = new byte[1];
        this.arrayCache = arrayCache;
        this.f103364in = inputStream;
        this.memoryLimit = i10;
        this.verifyCheck = z10;
        this.xzIn = new SingleXZInputStream(inputStream, i10, z10, arrayCache);
    }

    public XZInputStream(InputStream inputStream, ArrayCache arrayCache) throws IOException {
        this(inputStream, -1, arrayCache);
    }
}
