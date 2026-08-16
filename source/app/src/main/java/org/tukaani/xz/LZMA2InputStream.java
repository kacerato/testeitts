package org.tukaani.xz;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.tukaani.xz.lz.LZDecoder;
import org.tukaani.xz.lzma.LZMADecoder;
import org.tukaani.xz.rangecoder.RangeDecoderFromBuffer;

public class LZMA2InputStream extends InputStream {
    private static final int COMPRESSED_SIZE_MAX = 65536;
    public static final int DICT_SIZE_MAX = 2147483632;
    public static final int DICT_SIZE_MIN = 4096;
    private final ArrayCache arrayCache;
    private boolean endReached;
    private IOException exception;

    private DataInputStream f103352in;
    private boolean isLZMAChunk;
    private LZDecoder lz;
    private LZMADecoder lzma;
    private boolean needDictReset;
    private boolean needProps;

    private RangeDecoderFromBuffer f103353rc;
    private final byte[] tempBuf;
    private int uncompressedSize;

    public LZMA2InputStream(InputStream inputStream, int i10) {
        this(inputStream, i10, null);
    }

    private void decodeChunkHeader() throws IOException {
        int readUnsignedByte = this.f103352in.readUnsignedByte();
        if (readUnsignedByte == 0) {
            this.endReached = true;
            putArraysToCache();
            return;
        }
        if (readUnsignedByte >= 224 || readUnsignedByte == 1) {
            this.needProps = true;
            this.needDictReset = false;
            this.lz.reset();
        } else if (this.needDictReset) {
            throw new CorruptedInputException();
        }
        if (readUnsignedByte < 128) {
            if (readUnsignedByte > 2) {
                throw new CorruptedInputException();
            }
            this.isLZMAChunk = false;
            this.uncompressedSize = this.f103352in.readUnsignedShort() + 1;
            return;
        }
        this.isLZMAChunk = true;
        int i10 = (readUnsignedByte & 31) << 16;
        this.uncompressedSize = i10;
        this.uncompressedSize = i10 + this.f103352in.readUnsignedShort() + 1;
        int readUnsignedShort = this.f103352in.readUnsignedShort() + 1;
        if (readUnsignedByte >= 192) {
            this.needProps = false;
            decodeProps();
        } else {
            if (this.needProps) {
                throw new CorruptedInputException();
            }
            if (readUnsignedByte >= 160) {
                this.lzma.reset();
            }
        }
        this.f103353rc.prepareInputBuffer(this.f103352in, readUnsignedShort);
    }

    private void decodeProps() throws IOException {
        int readUnsignedByte = this.f103352in.readUnsignedByte();
        if (readUnsignedByte > 224) {
            throw new CorruptedInputException();
        }
        int i10 = readUnsignedByte / 45;
        int i11 = readUnsignedByte - (i10 * 45);
        int i12 = i11 / 9;
        int i13 = i11 - (i12 * 9);
        if (i13 + i12 > 4) {
            throw new CorruptedInputException();
        }
        this.lzma = new LZMADecoder(this.lz, this.f103353rc, i13, i12, i10);
    }

    private static int getDictSize(int i10) {
        if (i10 >= 4096 && i10 <= 2147483632) {
            return (i10 + 15) & (-16);
        }
        throw new IllegalArgumentException("Unsupported dictionary size " + i10);
    }

    public static int getMemoryUsage(int i10) {
        return (getDictSize(i10) / 1024) + 104;
    }

    private void putArraysToCache() {
        LZDecoder lZDecoder = this.lz;
        if (lZDecoder != null) {
            lZDecoder.putArraysToCache(this.arrayCache);
            this.lz = null;
            this.f103353rc.putArraysToCache(this.arrayCache);
            this.f103353rc = null;
        }
    }

    @Override
    public int available() throws IOException {
        DataInputStream dataInputStream = this.f103352in;
        if (dataInputStream == null) {
            throw new XZIOException("Stream closed");
        }
        IOException iOException = this.exception;
        if (iOException == null) {
            return this.isLZMAChunk ? this.uncompressedSize : Math.min(this.uncompressedSize, dataInputStream.available());
        }
        throw iOException;
    }

    @Override
    public void close() throws IOException {
        if (this.f103352in != null) {
            putArraysToCache();
            try {
                this.f103352in.close();
            } finally {
                this.f103352in = null;
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

    public LZMA2InputStream(InputStream inputStream, int i10, byte[] bArr) {
        this(inputStream, i10, bArr, ArrayCache.getDefaultCache());
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
        if (this.f103352in == null) {
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
                if (this.uncompressedSize == 0) {
                    decodeChunkHeader();
                    if (this.endReached) {
                        if (i13 == 0) {
                            return -1;
                        }
                        return i13;
                    }
                }
                int min = Math.min(this.uncompressedSize, i11);
                if (this.isLZMAChunk) {
                    this.lz.setLimit(min);
                    this.lzma.decode();
                } else {
                    this.lz.copyUncompressed(this.f103352in, min);
                }
                int flush = this.lz.flush(bArr, i10);
                i10 += flush;
                i11 -= flush;
                i13 += flush;
                int i14 = this.uncompressedSize - flush;
                this.uncompressedSize = i14;
                if (i14 == 0 && (!this.f103353rc.isFinished() || this.lz.hasPending())) {
                    throw new CorruptedInputException();
                }
            } catch (IOException e10) {
                this.exception = e10;
                throw e10;
            }
        }
        return i13;
    }

    public LZMA2InputStream(InputStream inputStream, int i10, byte[] bArr, ArrayCache arrayCache) {
        this.uncompressedSize = 0;
        this.isLZMAChunk = false;
        this.needDictReset = true;
        this.needProps = true;
        this.endReached = false;
        this.exception = null;
        this.tempBuf = new byte[1];
        inputStream.getClass();
        this.arrayCache = arrayCache;
        this.f103352in = new DataInputStream(inputStream);
        this.f103353rc = new RangeDecoderFromBuffer(65536, arrayCache);
        this.lz = new LZDecoder(getDictSize(i10), bArr, arrayCache);
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        this.needDictReset = false;
    }
}
