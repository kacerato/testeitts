package org.tukaani.xz;

import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import org.tukaani.xz.check.Check;
import org.tukaani.xz.common.DecoderUtil;
import org.tukaani.xz.common.StreamFlags;
import org.tukaani.xz.index.BlockInfo;
import org.tukaani.xz.index.IndexDecoder;

public class SeekableXZInputStream extends SeekableInputStream {
    static final boolean $assertionsDisabled = false;
    private final ArrayCache arrayCache;
    private int blockCount;
    private BlockInputStream blockDecoder;
    private Check check;
    private int checkTypes;
    private final BlockInfo curBlockInfo;
    private long curPos;
    private boolean endReached;
    private IOException exception;

    private SeekableInputStream f103361in;
    private int indexMemoryUsage;
    private long largestBlockSize;
    private final int memoryLimit;
    private final BlockInfo queriedBlockInfo;
    private boolean seekNeeded;
    private long seekPos;
    private final ArrayList<IndexDecoder> streams;
    private final byte[] tempBuf;
    private long uncompressedSize;
    private final boolean verifyCheck;

    public SeekableXZInputStream(SeekableInputStream seekableInputStream) throws IOException {
        this(seekableInputStream, -1);
    }

    private void initBlockDecoder() throws IOException {
        try {
            BlockInputStream blockInputStream = this.blockDecoder;
            if (blockInputStream != null) {
                blockInputStream.close();
                this.blockDecoder = null;
            }
            SeekableInputStream seekableInputStream = this.f103361in;
            Check check = this.check;
            boolean z10 = this.verifyCheck;
            int i10 = this.memoryLimit;
            BlockInfo blockInfo = this.curBlockInfo;
            this.blockDecoder = new BlockInputStream(seekableInputStream, check, z10, i10, blockInfo.unpaddedSize, blockInfo.uncompressedSize, this.arrayCache);
        } catch (IndexIndicatorException unused) {
            throw new CorruptedInputException();
        } catch (MemoryLimitException e10) {
            int memoryNeeded = e10.getMemoryNeeded();
            int i11 = this.indexMemoryUsage;
            throw new MemoryLimitException(memoryNeeded + i11, this.memoryLimit + i11);
        }
    }

    private void locateBlockByNumber(BlockInfo blockInfo, int i10) {
        if (i10 < 0 || i10 >= this.blockCount) {
            throw new IndexOutOfBoundsException("Invalid XZ Block number: " + i10);
        }
        if (blockInfo.blockNumber == i10) {
            return;
        }
        int i11 = 0;
        while (true) {
            IndexDecoder indexDecoder = this.streams.get(i11);
            if (indexDecoder.hasRecord(i10)) {
                indexDecoder.setBlockInfo(blockInfo, i10);
                return;
            }
            i11++;
        }
    }

    private void locateBlockByPos(BlockInfo blockInfo, long j10) {
        if (j10 < 0 || j10 >= this.uncompressedSize) {
            throw new IndexOutOfBoundsException("Invalid uncompressed position: " + j10);
        }
        int i10 = 0;
        while (true) {
            IndexDecoder indexDecoder = this.streams.get(i10);
            if (indexDecoder.hasUncompressedOffset(j10)) {
                indexDecoder.locateBlock(blockInfo, j10);
                return;
            }
            i10++;
        }
    }

    private void seek() throws IOException {
        if (!this.seekNeeded) {
            if (this.curBlockInfo.hasNext()) {
                this.curBlockInfo.setNext();
                initBlockDecoder();
                return;
            }
            this.seekPos = this.curPos;
        }
        this.seekNeeded = false;
        long j10 = this.seekPos;
        if (j10 >= this.uncompressedSize) {
            this.curPos = j10;
            BlockInputStream blockInputStream = this.blockDecoder;
            if (blockInputStream != null) {
                blockInputStream.close();
                this.blockDecoder = null;
            }
            this.endReached = true;
            return;
        }
        this.endReached = false;
        locateBlockByPos(this.curBlockInfo, j10);
        long j11 = this.curPos;
        BlockInfo blockInfo = this.curBlockInfo;
        if (j11 <= blockInfo.uncompressedOffset || j11 > this.seekPos) {
            this.f103361in.seek(blockInfo.compressedOffset);
            this.check = Check.getInstance(this.curBlockInfo.getCheckType());
            initBlockDecoder();
            this.curPos = this.curBlockInfo.uncompressedOffset;
        }
        long j12 = this.seekPos;
        long j13 = this.curPos;
        if (j12 > j13) {
            long j14 = j12 - j13;
            if (this.blockDecoder.skip(j14) != j14) {
                throw new CorruptedInputException();
            }
            this.curPos = this.seekPos;
        }
    }

    @Override
    public int available() throws IOException {
        BlockInputStream blockInputStream;
        if (this.f103361in == null) {
            throw new XZIOException("Stream closed");
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        if (this.endReached || this.seekNeeded || (blockInputStream = this.blockDecoder) == null) {
            return 0;
        }
        return blockInputStream.available();
    }

    @Override
    public void close() throws IOException {
        close(true);
    }

    public int getBlockCheckType(int i10) {
        locateBlockByNumber(this.queriedBlockInfo, i10);
        return this.queriedBlockInfo.getCheckType();
    }

    public long getBlockCompPos(int i10) {
        locateBlockByNumber(this.queriedBlockInfo, i10);
        return this.queriedBlockInfo.compressedOffset;
    }

    public long getBlockCompSize(int i10) {
        locateBlockByNumber(this.queriedBlockInfo, i10);
        return (this.queriedBlockInfo.unpaddedSize + 3) & (-4);
    }

    public int getBlockCount() {
        return this.blockCount;
    }

    public int getBlockNumber(long j10) {
        locateBlockByPos(this.queriedBlockInfo, j10);
        return this.queriedBlockInfo.blockNumber;
    }

    public long getBlockPos(int i10) {
        locateBlockByNumber(this.queriedBlockInfo, i10);
        return this.queriedBlockInfo.uncompressedOffset;
    }

    public long getBlockSize(int i10) {
        locateBlockByNumber(this.queriedBlockInfo, i10);
        return this.queriedBlockInfo.uncompressedSize;
    }

    public int getCheckTypes() {
        return this.checkTypes;
    }

    public int getIndexMemoryUsage() {
        return this.indexMemoryUsage;
    }

    public long getLargestBlockSize() {
        return this.largestBlockSize;
    }

    public int getStreamCount() {
        return this.streams.size();
    }

    @Override
    public long length() {
        return this.uncompressedSize;
    }

    @Override
    public long position() throws IOException {
        if (this.f103361in != null) {
            return this.seekNeeded ? this.seekPos : this.curPos;
        }
        throw new XZIOException("Stream closed");
    }

    @Override
    public int read() throws IOException {
        if (read(this.tempBuf, 0, 1) == -1) {
            return -1;
        }
        return this.tempBuf[0] & 255;
    }

    public void seekToBlock(int i10) throws IOException {
        if (this.f103361in == null) {
            throw new XZIOException("Stream closed");
        }
        if (i10 >= 0 && i10 < this.blockCount) {
            this.seekPos = getBlockPos(i10);
            this.seekNeeded = true;
        } else {
            throw new XZIOException("Invalid XZ Block number: " + i10);
        }
    }

    public SeekableXZInputStream(SeekableInputStream seekableInputStream, int i10) throws IOException {
        this(seekableInputStream, i10, true);
    }

    public void close(boolean z10) throws IOException {
        if (this.f103361in != null) {
            BlockInputStream blockInputStream = this.blockDecoder;
            if (blockInputStream != null) {
                blockInputStream.close();
                this.blockDecoder = null;
            }
            if (z10) {
                try {
                    this.f103361in.close();
                } finally {
                    this.f103361in = null;
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
        if (this.f103361in == null) {
            throw new XZIOException("Stream closed");
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        try {
            if (this.seekNeeded) {
                seek();
            }
        } catch (IOException e10) {
            e = e10;
            if (e instanceof EOFException) {
                e = new CorruptedInputException();
            }
            this.exception = e;
            if (i13 == 0) {
                throw e;
            }
        }
        if (this.endReached) {
            return -1;
        }
        while (i11 > 0) {
            if (this.blockDecoder == null) {
                seek();
                if (this.endReached) {
                    break;
                }
            }
            int read = this.blockDecoder.read(bArr, i10, i11);
            if (read > 0) {
                this.curPos += read;
                i13 += read;
                i10 += read;
                i11 -= read;
            } else if (read == -1) {
                this.blockDecoder = null;
            }
        }
        return i13;
    }

    @Override
    public void seek(long j10) throws IOException {
        if (this.f103361in == null) {
            throw new XZIOException("Stream closed");
        }
        if (j10 >= 0) {
            this.seekPos = j10;
            this.seekNeeded = true;
        } else {
            throw new XZIOException("Negative seek position: " + j10);
        }
    }

    public SeekableXZInputStream(SeekableInputStream seekableInputStream, int i10, ArrayCache arrayCache) throws IOException {
        this(seekableInputStream, i10, true, arrayCache);
    }

    public SeekableXZInputStream(SeekableInputStream seekableInputStream, int i10, boolean z10) throws IOException {
        this(seekableInputStream, i10, z10, ArrayCache.getDefaultCache());
    }

    public SeekableXZInputStream(SeekableInputStream seekableInputStream, int i10, boolean z10, ArrayCache arrayCache) throws IOException {
        this.indexMemoryUsage = 0;
        this.streams = new ArrayList<>();
        this.checkTypes = 0;
        long j10 = 0;
        this.uncompressedSize = 0L;
        this.largestBlockSize = 0L;
        this.blockCount = 0;
        this.blockDecoder = null;
        this.curPos = 0L;
        this.seekNeeded = false;
        this.endReached = false;
        this.exception = null;
        int i11 = 1;
        this.tempBuf = new byte[1];
        this.arrayCache = arrayCache;
        this.verifyCheck = z10;
        this.f103361in = seekableInputStream;
        DataInputStream dataInputStream = new DataInputStream(seekableInputStream);
        seekableInputStream.seek(0L);
        byte[] bArr = XZ.HEADER_MAGIC;
        byte[] bArr2 = new byte[bArr.length];
        dataInputStream.readFully(bArr2);
        if (!Arrays.equals(bArr2, bArr)) {
            throw new XZFormatException();
        }
        long length = seekableInputStream.length();
        if ((3 & length) != 0) {
            throw new CorruptedInputException("XZ file size is not a multiple of 4 bytes");
        }
        byte[] bArr3 = new byte[12];
        int i12 = i10;
        while (true) {
            long j11 = j10;
            while (length > j10) {
                if (length < 12) {
                    throw new CorruptedInputException();
                }
                long j12 = length - 12;
                seekableInputStream.seek(j12);
                dataInputStream.readFully(bArr3);
                if (bArr3[8] == 0 && bArr3[9] == 0 && bArr3[10] == 0 && bArr3[11] == 0) {
                    j11 += 4;
                    length -= 4;
                    j10 = 0;
                } else {
                    StreamFlags decodeStreamFooter = DecoderUtil.decodeStreamFooter(bArr3);
                    if (decodeStreamFooter.backwardSize >= j12) {
                        throw new CorruptedInputException("Backward Size in XZ Stream Footer is too big");
                    }
                    this.check = Check.getInstance(decodeStreamFooter.checkType);
                    this.checkTypes |= i11 << decodeStreamFooter.checkType;
                    seekableInputStream.seek(j12 - decodeStreamFooter.backwardSize);
                    try {
                        IndexDecoder indexDecoder = new IndexDecoder(seekableInputStream, decodeStreamFooter, j11, i12);
                        this.indexMemoryUsage += indexDecoder.getMemoryUsage();
                        i12 = i12 >= 0 ? i12 - indexDecoder.getMemoryUsage() : i12;
                        if (this.largestBlockSize < indexDecoder.getLargestBlockSize()) {
                            this.largestBlockSize = indexDecoder.getLargestBlockSize();
                        }
                        long streamSize = indexDecoder.getStreamSize() - 12;
                        if (j12 < streamSize) {
                            throw new CorruptedInputException("XZ Index indicates too big compressed size for the XZ Stream");
                        }
                        length = j12 - streamSize;
                        seekableInputStream.seek(length);
                        dataInputStream.readFully(bArr3);
                        if (!DecoderUtil.areStreamFlagsEqual(DecoderUtil.decodeStreamHeader(bArr3), decodeStreamFooter)) {
                            throw new CorruptedInputException("XZ Stream Footer does not match Stream Header");
                        }
                        long uncompressedSize = this.uncompressedSize + indexDecoder.getUncompressedSize();
                        this.uncompressedSize = uncompressedSize;
                        if (uncompressedSize < 0) {
                            throw new UnsupportedOptionsException("XZ file is too big");
                        }
                        int recordCount = this.blockCount + indexDecoder.getRecordCount();
                        this.blockCount = recordCount;
                        if (recordCount < 0) {
                            throw new UnsupportedOptionsException("XZ file has over 2147483647 Blocks");
                        }
                        this.streams.add(indexDecoder);
                        j10 = 0;
                        i11 = 1;
                    } catch (MemoryLimitException e10) {
                        int memoryNeeded = e10.getMemoryNeeded();
                        int i13 = this.indexMemoryUsage;
                        throw new MemoryLimitException(memoryNeeded + i13, i12 + i13);
                    }
                }
            }
            this.memoryLimit = i12;
            ArrayList<IndexDecoder> arrayList = this.streams;
            IndexDecoder indexDecoder2 = arrayList.get(arrayList.size() - 1);
            int size = this.streams.size() - 2;
            while (size >= 0) {
                IndexDecoder indexDecoder3 = this.streams.get(size);
                indexDecoder3.setOffsets(indexDecoder2);
                size--;
                indexDecoder2 = indexDecoder3;
            }
            ArrayList<IndexDecoder> arrayList2 = this.streams;
            IndexDecoder indexDecoder4 = arrayList2.get(arrayList2.size() - 1);
            this.curBlockInfo = new BlockInfo(indexDecoder4);
            this.queriedBlockInfo = new BlockInfo(indexDecoder4);
            return;
        }
    }

    public SeekableXZInputStream(SeekableInputStream seekableInputStream, ArrayCache arrayCache) throws IOException {
        this(seekableInputStream, -1, arrayCache);
    }
}
