package org.tukaani.xz;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import org.tukaani.xz.check.Check;
import org.tukaani.xz.common.DecoderUtil;

class BlockInputStream extends InputStream {
    static final boolean $assertionsDisabled = false;
    private final Check check;
    private long compressedSizeInHeader;
    private long compressedSizeLimit;
    private InputStream filterChain;
    private final int headerSize;
    private final CountingInputStream inCounted;
    private final DataInputStream inData;
    private long uncompressedSizeInHeader;
    private final boolean verifyCheck;
    private long uncompressedSize = 0;
    private boolean endReached = false;
    private final byte[] tempBuf = new byte[1];

    public BlockInputStream(InputStream inputStream, Check check, boolean z10, int i10, long j10, long j11, ArrayCache arrayCache) throws IOException, IndexIndicatorException {
        String str;
        int i11;
        this.uncompressedSizeInHeader = -1L;
        this.compressedSizeInHeader = -1L;
        this.check = check;
        this.verifyCheck = z10;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.inData = dataInputStream;
        int readUnsignedByte = dataInputStream.readUnsignedByte();
        if (readUnsignedByte == 0) {
            throw new IndexIndicatorException();
        }
        int i12 = (readUnsignedByte + 1) * 4;
        this.headerSize = i12;
        byte[] bArr = new byte[i12];
        bArr[0] = (byte) readUnsignedByte;
        dataInputStream.readFully(bArr, 1, i12 - 1);
        if (!DecoderUtil.isCRC32Valid(bArr, 0, i12 - 4, i12 - 4)) {
            throw new CorruptedInputException("XZ Block Header is corrupt");
        }
        int i13 = bArr[1];
        if ((i13 & 60) != 0) {
            throw new UnsupportedOptionsException("Unsupported options in XZ Block Header");
        }
        int i14 = i13 & 3;
        int i15 = i14 + 1;
        long[] jArr = new long[i15];
        byte[][] bArr2 = new byte[i15];
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr, 2, i12 - 6);
        try {
            this.compressedSizeLimit = (9223372036854775804L - i12) - check.getSize();
            if ((bArr[1] & 64) != 0) {
                long decodeVLI = DecoderUtil.decodeVLI(byteArrayInputStream);
                this.compressedSizeInHeader = decodeVLI;
                if (decodeVLI != 0) {
                    i11 = i14;
                    str = "XZ Block Header is corrupt";
                    try {
                        if (decodeVLI <= this.compressedSizeLimit) {
                            this.compressedSizeLimit = decodeVLI;
                        }
                    } catch (IOException unused) {
                        throw new CorruptedInputException(str);
                    }
                }
                throw new CorruptedInputException();
            }
            i11 = i14;
            if ((bArr[1] & 128) != 0) {
                this.uncompressedSizeInHeader = DecoderUtil.decodeVLI(byteArrayInputStream);
            }
            int i16 = 0;
            while (i16 < i15) {
                jArr[i16] = DecoderUtil.decodeVLI(byteArrayInputStream);
                long decodeVLI2 = DecoderUtil.decodeVLI(byteArrayInputStream);
                int i17 = i11;
                if (decodeVLI2 > byteArrayInputStream.available()) {
                    throw new CorruptedInputException();
                }
                byte[] bArr3 = new byte[(int) decodeVLI2];
                bArr2[i16] = bArr3;
                byteArrayInputStream.read(bArr3);
                i16++;
                i11 = i17;
            }
            int i18 = i11;
            for (int available = byteArrayInputStream.available(); available > 0; available--) {
                if (byteArrayInputStream.read() != 0) {
                    throw new UnsupportedOptionsException("Unsupported options in XZ Block Header");
                }
            }
            if (j10 != -1) {
                long size = this.headerSize + check.getSize();
                if (size >= j10) {
                    throw new CorruptedInputException("XZ Index does not match a Block Header");
                }
                long j12 = j10 - size;
                if (j12 <= this.compressedSizeLimit) {
                    long j13 = this.compressedSizeInHeader;
                    if (j13 == -1 || j13 == j12) {
                        long j14 = this.uncompressedSizeInHeader;
                        if (j14 != -1 && j14 != j11) {
                            throw new CorruptedInputException("XZ Index does not match a Block Header");
                        }
                        this.compressedSizeLimit = j12;
                        this.compressedSizeInHeader = j12;
                        this.uncompressedSizeInHeader = j11;
                    }
                }
                throw new CorruptedInputException("XZ Index does not match a Block Header");
            }
            FilterDecoder[] filterDecoderArr = new FilterDecoder[i15];
            for (int i19 = 0; i19 < i15; i19++) {
                long j15 = jArr[i19];
                if (j15 == 33) {
                    filterDecoderArr[i19] = new LZMA2Decoder(bArr2[i19]);
                } else if (j15 == 3) {
                    filterDecoderArr[i19] = new DeltaDecoder(bArr2[i19]);
                } else {
                    if (!BCJCoder.isBCJFilterID(j15)) {
                        throw new UnsupportedOptionsException("Unknown Filter ID " + jArr[i19]);
                    }
                    filterDecoderArr[i19] = new BCJDecoder(jArr[i19], bArr2[i19]);
                }
            }
            RawCoder.validate(filterDecoderArr);
            if (i10 >= 0) {
                int i20 = 0;
                for (int i21 = 0; i21 < i15; i21++) {
                    i20 += filterDecoderArr[i21].getMemoryUsage();
                }
                if (i20 > i10) {
                    throw new MemoryLimitException(i20, i10);
                }
            }
            CountingInputStream countingInputStream = new CountingInputStream(inputStream);
            this.inCounted = countingInputStream;
            this.filterChain = countingInputStream;
            for (int i22 = i18; i22 >= 0; i22--) {
                this.filterChain = filterDecoderArr[i22].getInputStream(this.filterChain, arrayCache);
            }
        } catch (IOException unused2) {
            str = "XZ Block Header is corrupt";
        }
    }

    private void validate() throws IOException {
        long size = this.inCounted.getSize();
        long j10 = this.compressedSizeInHeader;
        if (j10 == -1 || j10 == size) {
            long j11 = this.uncompressedSizeInHeader;
            if (j11 == -1 || j11 == this.uncompressedSize) {
                while (true) {
                    long j12 = 1 + size;
                    if ((size & 3) == 0) {
                        byte[] bArr = new byte[this.check.getSize()];
                        this.inData.readFully(bArr);
                        if (!this.verifyCheck || Arrays.equals(this.check.finish(), bArr)) {
                            return;
                        }
                        throw new CorruptedInputException("Integrity check (" + this.check.getName() + ") does not match");
                    }
                    if (this.inData.readUnsignedByte() != 0) {
                        throw new CorruptedInputException();
                    }
                    size = j12;
                }
            }
        }
        throw new CorruptedInputException();
    }

    @Override
    public int available() throws IOException {
        return this.filterChain.available();
    }

    @Override
    public void close() {
        try {
            this.filterChain.close();
        } catch (IOException unused) {
        }
        this.filterChain = null;
    }

    public long getUncompressedSize() {
        return this.uncompressedSize;
    }

    public long getUnpaddedSize() {
        return this.headerSize + this.inCounted.getSize() + this.check.getSize();
    }

    @Override
    public int read() throws IOException {
        if (read(this.tempBuf, 0, 1) == -1) {
            return -1;
        }
        return this.tempBuf[0] & 255;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x005d, code lost:
    
        if (r0 == (-1)) goto L31;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (this.endReached) {
            return -1;
        }
        int read = this.filterChain.read(bArr, i10, i11);
        if (read > 0) {
            if (this.verifyCheck) {
                this.check.update(bArr, i10, read);
            }
            this.uncompressedSize += read;
            long size = this.inCounted.getSize();
            if (size >= 0 && size <= this.compressedSizeLimit) {
                long j10 = this.uncompressedSize;
                if (j10 >= 0) {
                    long j11 = this.uncompressedSizeInHeader;
                    if (j11 == -1 || j10 <= j11) {
                        if (read < i11 || j10 == j11) {
                            if (this.filterChain.read() != -1) {
                                throw new CorruptedInputException();
                            }
                            validate();
                            this.endReached = true;
                        }
                    }
                }
            }
            throw new CorruptedInputException();
        }
        return read;
    }
}
