package org.tukaani.xz.index;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import org.tukaani.xz.CorruptedInputException;
import org.tukaani.xz.MemoryLimitException;
import org.tukaani.xz.SeekableInputStream;
import org.tukaani.xz.UnsupportedOptionsException;
import org.tukaani.xz.common.DecoderUtil;
import org.tukaani.xz.common.StreamFlags;

public class IndexDecoder extends IndexBase {
    static final boolean $assertionsDisabled = false;
    private long compressedOffset;
    private long largestBlockSize;
    private final int memoryUsage;
    private int recordOffset;
    private final StreamFlags streamFlags;
    private final long streamPadding;
    private final long[] uncompressed;
    private long uncompressedOffset;
    private final long[] unpadded;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    public IndexDecoder(SeekableInputStream seekableInputStream, StreamFlags streamFlags, long j10, int i10) throws IOException {
        super(new CorruptedInputException("XZ Index is corrupt"));
        long decodeVLI;
        String str;
        String str2 = i10;
        String str3 = "XZ Index is corrupt";
        this.largestBlockSize = 0L;
        this.recordOffset = 0;
        this.compressedOffset = 0L;
        this.uncompressedOffset = 0L;
        this.streamFlags = streamFlags;
        this.streamPadding = j10;
        long position = (seekableInputStream.position() + streamFlags.backwardSize) - 4;
        CRC32 crc32 = new CRC32();
        CheckedInputStream checkedInputStream = new CheckedInputStream(seekableInputStream, crc32);
        if (checkedInputStream.read() != 0) {
            throw new CorruptedInputException("XZ Index is corrupt");
        }
        try {
            decodeVLI = DecoderUtil.decodeVLI(checkedInputStream);
        } catch (EOFException unused) {
            str2 = "XZ Index is corrupt";
        }
        if (decodeVLI >= streamFlags.backwardSize / 2) {
            throw new CorruptedInputException("XZ Index is corrupt");
        }
        if (decodeVLI > 2147483647L) {
            throw new UnsupportedOptionsException("XZ Index has over 2147483647 Records");
        }
        int i11 = ((int) (((16 * decodeVLI) + 1023) / 1024)) + 1;
        this.memoryUsage = i11;
        if (str2 >= 0 && i11 > str2) {
            throw new MemoryLimitException(i11, str2);
        }
        int i12 = (int) decodeVLI;
        this.unpadded = new long[i12];
        this.uncompressed = new long[i12];
        int i13 = 0;
        while (i12 > 0) {
            long decodeVLI2 = DecoderUtil.decodeVLI(checkedInputStream);
            long decodeVLI3 = DecoderUtil.decodeVLI(checkedInputStream);
            if (seekableInputStream.position() > position) {
                str = str3;
                throw new CorruptedInputException(str);
            }
            String str4 = str3;
            try {
                this.unpadded[i13] = this.blocksSum + decodeVLI2;
                str = str4;
                try {
                    this.uncompressed[i13] = this.uncompressedSum + decodeVLI3;
                    i13++;
                    super.add(decodeVLI2, decodeVLI3);
                    if (this.largestBlockSize < decodeVLI3) {
                        this.largestBlockSize = decodeVLI3;
                    }
                    i12--;
                    str3 = str;
                } catch (EOFException unused2) {
                    str2 = str;
                }
            } catch (EOFException unused3) {
                str2 = str4;
            }
            str2 = str;
            throw new CorruptedInputException(str2);
        }
        String str5 = str3;
        int indexPaddingSize = getIndexPaddingSize();
        if (seekableInputStream.position() + indexPaddingSize != position) {
            throw new CorruptedInputException(str5);
        }
        while (true) {
            int i14 = indexPaddingSize - 1;
            if (indexPaddingSize <= 0) {
                long value = crc32.getValue();
                for (int i15 = 0; i15 < 4; i15++) {
                    if (((value >>> (i15 * 8)) & 255) != seekableInputStream.read()) {
                        throw new CorruptedInputException(str5);
                    }
                }
                return;
            }
            if (checkedInputStream.read() != 0) {
                throw new CorruptedInputException(str5);
            }
            indexPaddingSize = i14;
        }
    }

    @Override
    public long getIndexSize() {
        return super.getIndexSize();
    }

    public long getLargestBlockSize() {
        return this.largestBlockSize;
    }

    public int getMemoryUsage() {
        return this.memoryUsage;
    }

    public int getRecordCount() {
        return (int) this.recordCount;
    }

    public StreamFlags getStreamFlags() {
        return this.streamFlags;
    }

    @Override
    public long getStreamSize() {
        return super.getStreamSize();
    }

    public long getUncompressedSize() {
        return this.uncompressedSum;
    }

    public boolean hasRecord(int i10) {
        int i11 = this.recordOffset;
        return i10 >= i11 && ((long) i10) < ((long) i11) + this.recordCount;
    }

    public boolean hasUncompressedOffset(long j10) {
        long j11 = this.uncompressedOffset;
        return j10 >= j11 && j10 < j11 + this.uncompressedSum;
    }

    public void locateBlock(BlockInfo blockInfo, long j10) {
        long j11 = j10 - this.uncompressedOffset;
        int length = this.unpadded.length - 1;
        int i10 = 0;
        while (i10 < length) {
            int i11 = ((length - i10) / 2) + i10;
            if (this.uncompressed[i11] <= j11) {
                i10 = i11 + 1;
            } else {
                length = i11;
            }
        }
        setBlockInfo(blockInfo, this.recordOffset + i10);
    }

    public void setBlockInfo(BlockInfo blockInfo, int i10) {
        blockInfo.index = this;
        blockInfo.blockNumber = i10;
        int i11 = i10 - this.recordOffset;
        if (i11 == 0) {
            blockInfo.compressedOffset = 0L;
            blockInfo.uncompressedOffset = 0L;
        } else {
            int i12 = i11 - 1;
            blockInfo.compressedOffset = (this.unpadded[i12] + 3) & (-4);
            blockInfo.uncompressedOffset = this.uncompressed[i12];
        }
        long j10 = this.unpadded[i11];
        long j11 = blockInfo.compressedOffset;
        blockInfo.unpaddedSize = j10 - j11;
        long j12 = this.uncompressed[i11];
        long j13 = blockInfo.uncompressedOffset;
        blockInfo.uncompressedSize = j12 - j13;
        blockInfo.compressedOffset = j11 + this.compressedOffset + 12;
        blockInfo.uncompressedOffset = j13 + this.uncompressedOffset;
    }

    public void setOffsets(IndexDecoder indexDecoder) {
        this.recordOffset = indexDecoder.recordOffset + ((int) indexDecoder.recordCount);
        this.compressedOffset = indexDecoder.compressedOffset + indexDecoder.getStreamSize() + indexDecoder.streamPadding;
        this.uncompressedOffset = indexDecoder.uncompressedOffset + indexDecoder.uncompressedSum;
    }
}
