package org.tukaani.xz;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.tukaani.xz.check.Check;
import org.tukaani.xz.common.DecoderUtil;
import org.tukaani.xz.common.StreamFlags;
import org.tukaani.xz.index.IndexHash;

public class SingleXZInputStream extends InputStream {
    private final ArrayCache arrayCache;
    private BlockInputStream blockDecoder;
    private final Check check;
    private boolean endReached;
    private IOException exception;

    private InputStream f103363in;
    private final IndexHash indexHash;
    private final int memoryLimit;
    private final StreamFlags streamHeaderFlags;
    private final byte[] tempBuf;
    private final boolean verifyCheck;

    public SingleXZInputStream(InputStream inputStream) throws IOException {
        this(inputStream, -1);
    }

    private static byte[] readStreamHeader(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[12];
        new DataInputStream(inputStream).readFully(bArr);
        return bArr;
    }

    private void validateStreamFooter() throws IOException {
        byte[] bArr = new byte[12];
        new DataInputStream(this.f103363in).readFully(bArr);
        StreamFlags decodeStreamFooter = DecoderUtil.decodeStreamFooter(bArr);
        if (!DecoderUtil.areStreamFlagsEqual(this.streamHeaderFlags, decodeStreamFooter) || this.indexHash.getIndexSize() != decodeStreamFooter.backwardSize) {
            throw new CorruptedInputException("XZ Stream Footer does not match Stream Header");
        }
    }

    @Override
    public int available() throws IOException {
        if (this.f103363in == null) {
            throw new XZIOException("Stream closed");
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        BlockInputStream blockInputStream = this.blockDecoder;
        if (blockInputStream == null) {
            return 0;
        }
        return blockInputStream.available();
    }

    @Override
    public void close() throws IOException {
        close(true);
    }

    public String getCheckName() {
        return this.check.getName();
    }

    public int getCheckType() {
        return this.streamHeaderFlags.checkType;
    }

    @Override
    public int read() throws IOException {
        if (read(this.tempBuf, 0, 1) == -1) {
            return -1;
        }
        return this.tempBuf[0] & 255;
    }

    public SingleXZInputStream(InputStream inputStream, int i10) throws IOException {
        this(inputStream, i10, true);
    }

    public void close(boolean z10) throws IOException {
        if (this.f103363in != null) {
            BlockInputStream blockInputStream = this.blockDecoder;
            if (blockInputStream != null) {
                blockInputStream.close();
                this.blockDecoder = null;
            }
            if (z10) {
                try {
                    this.f103363in.close();
                } finally {
                    this.f103363in = null;
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
        if (i11 == 0) {
            return 0;
        }
        if (this.f103363in == null) {
            throw new XZIOException("Stream closed");
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        if (this.endReached) {
            return -1;
        }
        int i13 = i11;
        int i14 = 0;
        int i15 = i10;
        while (i13 > 0) {
            try {
                if (this.blockDecoder == null) {
                    try {
                        this.blockDecoder = new BlockInputStream(this.f103363in, this.check, this.verifyCheck, this.memoryLimit, -1L, -1L, this.arrayCache);
                    } catch (IndexIndicatorException unused) {
                        this.indexHash.validate(this.f103363in);
                        validateStreamFooter();
                        this.endReached = true;
                        if (i14 > 0) {
                            return i14;
                        }
                        return -1;
                    }
                }
                int read = this.blockDecoder.read(bArr, i15, i13);
                if (read > 0) {
                    i14 += read;
                    i15 += read;
                    i13 -= read;
                } else if (read == -1) {
                    this.indexHash.add(this.blockDecoder.getUnpaddedSize(), this.blockDecoder.getUncompressedSize());
                    this.blockDecoder = null;
                }
            } catch (IOException e10) {
                this.exception = e10;
                if (i14 == 0) {
                    throw e10;
                }
            }
        }
        return i14;
    }

    public SingleXZInputStream(InputStream inputStream, int i10, ArrayCache arrayCache) throws IOException {
        this(inputStream, i10, true, arrayCache);
    }

    public SingleXZInputStream(InputStream inputStream, int i10, boolean z10) throws IOException {
        this(inputStream, i10, z10, ArrayCache.getDefaultCache());
    }

    public SingleXZInputStream(InputStream inputStream, int i10, boolean z10, ArrayCache arrayCache) throws IOException {
        this(inputStream, i10, z10, readStreamHeader(inputStream), arrayCache);
    }

    public SingleXZInputStream(InputStream inputStream, int i10, boolean z10, byte[] bArr, ArrayCache arrayCache) throws IOException {
        this.blockDecoder = null;
        this.indexHash = new IndexHash();
        this.endReached = false;
        this.exception = null;
        this.tempBuf = new byte[1];
        this.arrayCache = arrayCache;
        this.f103363in = inputStream;
        this.memoryLimit = i10;
        this.verifyCheck = z10;
        StreamFlags decodeStreamHeader = DecoderUtil.decodeStreamHeader(bArr);
        this.streamHeaderFlags = decodeStreamHeader;
        this.check = Check.getInstance(decodeStreamHeader.checkType);
    }

    public SingleXZInputStream(InputStream inputStream, ArrayCache arrayCache) throws IOException {
        this(inputStream, -1, arrayCache);
    }
}
